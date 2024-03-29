import os

from celery import Celery
import os
import os, sys


from celery import shared_task
from core.models import * 
# import time
# from xlrd import open_workbook ,xldate_as_tuple
import datetime
from django.utils import timezone
from django.conf import settings
from datetime import time
from django.db import IntegrityError, transaction


from celery import Celery
from celery import shared_task  
from notification.views import create_notification 


from celery.schedules import crontab
from django_celery_beat.models import PeriodicTask, IntervalSchedule

import json
from datetime import datetime, timedelta
from django_celery_beat.models import CrontabSchedule, PeriodicTask
from client.models import *
from django.utils.timezone import make_aware
from magnet_crm.celery import app

from ib.models import *
import pytz
app.conf.beat_schedule = {
    # Executes every Monday morning at 7:30 a.m.
    'add-sync-data-magnet': {
        'task': 'magnet_crm.task.sync_data_magnet',
        'schedule': crontab( minute='*/5'),
        
    },
    'add-every-monday-morning': {
        'task': 'magnet_crm.task.birthday',
        'schedule': crontab( minute=7, hour=13),
        
    },
    'add-every-new_scramble_clients-every-week': {
        'task': 'magnet_crm.task.new_scramble_clients',
        'schedule': crontab(0, 0, day_of_month='3,6,9,12'),
        
    },
}


import mysql.connector
from mysql.connector import errorcode



@shared_task
def test():
	print("ini dari task")

@shared_task
def start_process():
	try:
		with transaction.atomic():
			print("1")
			print("2")
			print("3")
			
	except IntegrityError as e:
		print(e)


@shared_task
def notif_schedule():
	try:
		with transaction.atomic():
			user = User.objects.filter(is_superuser=True).first()
			data = {}
			
			for client_staff in all_clients:
				data['client'] = client_staff.client
				data['notification_type'] = 'notification_followup'
				data['notes'] = 'Today Schedule with ' + client_staff.client.nama
				data['staff'] = client_staff.staff
				create_notification(user, data)
			
			
	except IntegrityError as e:
		print(e)


@shared_task
def scramble_clients():
	try:
		with transaction.atomic():
			# random staff
			user = User.objects.filter(is_superuser=True).first()
			staff = Client_Staff.objects.filter(is_active=True).first()
			all_staff_client = Client_Staff.objects.filter(is_active=True,staff=staff.staff)


			for x in all_staff_client:
				x.is_active=False
				x.updated_at=timezone.now()
				x.save()

				all_prev_parents = Client_Scramble.objects.filter(is_active=True,client=x.client)
				prev_parents=[]	
				print(prev_parents,'prev_parents')
				for y in all_prev_parents:
					print('all_prev_parents',y.staff_parent.id)
					prev_parents.append(y.staff_parent.id)
				prev_parents.append(x.staff.staff_parent)

				print("prev blocked",prev_parents)
				next_staff = Staff.objects.filter(is_active=True,staff_level__level=3).exclude(staff_parent__in=prev_parents).first()
				scramble = Client_Scramble()
				scramble.client = x.client
				scramble.staff_parent = x.staff.staff_parent
				scramble.from_staff = x.staff
				scramble.to_staff = next_staff
				scramble.created_by = user
				scramble.save()

				client_staff = Client_Staff()
				client_staff.client = x.client
				client_staff.staff = next_staff
				client_staff.created_by = user
				client_staff.save()


				data={}
				data['client'] = x.client
				data['notification_type'] = 'new_clients'
				data['notes'] = 'New Scrambled Client ' + x.client.nama
				data['staff'] = next_staff
				create_notification(user, data)
			
	except IntegrityError as e:
		print(e)


@shared_task
def new_scramble_clients():
	try:
		with transaction.atomic():
			# random staff
			user = User.objects.filter(is_superuser=True).first()
			
			three_month_ago = timezone.now()-timedelta(days=90)
			print(three_month_ago)

			selected_client = Client_Staff.objects.filter(is_active=True,created_at__lt=three_month_ago)			
			print(selected_client)


			for x in selected_client:
				x.is_active=False
				x.updated_at=timezone.now()
				x.save()

				all_prev_parents = Client_Scramble.objects.filter(is_active=True,client=x.client)
				prev_parents=[]
				prev_staffs=[]
				prev_parent_dict={}
				print(prev_parents,'prev_parents')
				for y in all_prev_parents:
					print('all_prev_parents',y.staff_parent.id)

					if y.staff_parent.id not in prev_parent_dict:
						prev_parent_dict[y.staff_parent.id] = 1
					else:
						prev_parent_dict[y.staff_parent.id]+=1

					prev_parents.append(y.staff_parent.id)
					prev_staffs.append(y.from_staff.id)
					prev_staffs.append(y.to_staff.id)

				prev_parents.append(x.staff.staff_parent)
				if x.staff.staff_parent.id not in prev_parent_dict:
					prev_parent_dict[x.staff.staff_parent.id] = 1
				else:
					prev_parent_dict[x.staff.staff_parent.id]+=1

				print("prev blocked",prev_parents)
				next_staff = Staff.objects.filter(is_active=True,staff_level__level=3).exclude(staff_parent__in=prev_parents).order_by('?').first()

				if next_staff == None:
					next_staff = Staff.objects.filter(is_active=True,staff_level__level=3).exclude(staff_in=prev_staffs,staff_parent=x.staff_parent).order_by('?').first()
				
				scramble = Client_Scramble()
				scramble.client = x.client
				scramble.staff_parent = x.staff.staff_parent
				scramble.from_staff = x.staff
				scramble.to_staff = next_staff
				scramble.created_by = user
				scramble.save()

				client_staff = Client_Staff()
				client_staff.client = x.client
				client_staff.staff = next_staff
				client_staff.created_by = user
				client_staff.save()
					


				data={}
				data['client'] = x.client
				data['notification_type'] = 'new_clients'
				data['notes'] = 'New Scrambled Client ' + x.client.nama
				data['staff'] = next_staff
				create_notification(user, data)


	except IntegrityError as e:
		print(e)



@shared_task
def birthday():
	print('check birthday')
	try:
		with transaction.atomic():
			now = timezone.localtime(timezone.now())
			clients = Client.objects.filter(birthday__month=now.month, birthday__day=now.day)
			all_clients = Client_Staff.objects.filter(client_id__in=clients.values_list('id',flat=True),is_active=True)
			user = User.objects.filter(is_superuser=True).first()
			data = {}
			
			for client_staff in all_clients:
				data['client'] = client_staff.client
				data['notification_type'] = 'birthday'
				data['notes'] = 'Today ' + client_staff.client.nama + " Birthday"
				data['staff'] = client_staff.staff
				
				create_notification(user, data)
			
	except IntegrityError as e:
		print(e)

@shared_task
def sync_data_magnet():
	try:
		with transaction.atomic():
			now = timezone.now()

			cnx = mysql.connector.connect(
				host="54.151.138.128",
				user='ivan',
				password='MajuBersama123',
				database='vifx'
			)
			mycursor = cnx.cursor()
			mycursor.execute("SELECT COUNT(*) from v_users")
			user_count = mycursor.fetchone()
			user = User.objects.filter(is_superuser=True).first()

			mycursor.execute("SELECT * FROM v_users ORDER BY ID DESC LIMIT 1")
			last_user_id = mycursor.fetchone()

			update = False
			sync_data_magnet = Sync_Data_Magnet.objects.all().first()
			if sync_data_magnet == None :
				update = True
			elif last_user_id != sync_data_magnet.last_user_id:
				update = True

			if sync_data_magnet == None:
				sync_data_magnet = Sync_Data_Magnet()
				sync_data_magnet.current_user_count = user_count[0]
				sync_data_magnet.last_user_id = last_user_id[0]
				sync_data_magnet.created_by = user
				sync_data_magnet.updated_by = user
				sync_data_magnet.save()
				start_from = 0
			else:
				if update:
					start_from = sync_data_magnet.last_user_id
				sync_data_magnet.current_user_count = user_count[0]
				sync_data_magnet.last_user_id = last_user_id[0]
				sync_data_magnet.updated_by = user
				sync_data_magnet.save()
				

			history_syncdata_magnet = History_SyncData_Magnet()
			history_syncdata_magnet.updated_by = history_syncdata_magnet.created_by = user
			history_syncdata_magnet.current_user_count = user_count[0]
			history_syncdata_magnet.last_user_id = last_user_id[0]
			history_syncdata_magnet.save()

			if update == True:
				update_client_data(mycursor, start_from, user)
				
			
			create_client_journey_mt5()
			check_user_deposit()

			check_aecode(mycursor, start_from, user)

			
			
	except IntegrityError as e:
		print(e)


@shared_task
def check_user_deposit():
	try:
		with transaction.atomic():
			user = User.objects.filter(is_superuser=True).first()

			now = timezone.now()
			cnx = mysql.connector.connect(
				host="54.151.138.128",
				user='ivan',
				password='MajuBersama123',
				database='vifx'
			)
			mycursor = cnx.cursor()
			string_sql = "SELECT user_id, login FROM vif_cabinet_legal_form_decleration"
			mycursor.execute(string_sql)
			all_data = mycursor.fetchall()
			arr_id = []
			print(all_data)
			for data in all_data:
				if data[1] != None and data[1] != '':
					arr_id.append(data[0])

			all_client = Client.objects.filter(is_active=True,magnet_id__in=arr_id,is_deposit=False)
			print("ini all client",all_client)
			for client in all_client:
				client.is_deposit = True
				client.updated_by = user
				client.save()


			
			
	except IntegrityError as e:
		print(e)


def update_client_data(mycursor, last_id, user):
	# print(last_id,"last_id")
	

	# string_sql = "DESCRIBE v_users;"
	# all_table = mycursor.execute(string_sql)
	# print(all_table);

	string_sql = "SELECT * FROM v_users Where ID > " + str(last_id) + " ORDER BY ID ASC"
	mycursor.execute(string_sql)
	new_client_list = mycursor.fetchall()
	counter = 0
	# print("new_client_list",new_client_list)
	for new_client in new_client_list:
		print('new_client',new_client)
		# print("add client baru dari task")
		client = Client()
		client.magnet_id = new_client[0]
		client.updated_by = client.created_by = user
		# client.create_ip = '127.0.0.1'
		client.nama = new_client[1] if new_client[1] != "" else (new_client[2] + new_client[3] + new_client[4])
		client.first_name = new_client[2] 
		client.last_name = new_client[4]
		client.middle_name = new_client[3]
		client.email = new_client[5]
		client.city = new_client[6]
		client.address = new_client[7]
		if "/" in new_client[8]: 
			# print(new_client[8],"new_client[8]")
			temp = new_client[8].split("/")
			client.birthday = temp[2]+"-"+temp[0]+"-"+temp[1]
		else:
			# print(new_client[8],"else_new_client[8] ")
			if (new_client[8] == "1990-04-31"):
				client.birthday = "1990-04-30"
			else:
				if new_client[8] != None and new_client[8] != "":
					# print("masuk kesini dongs" + str(new_client[8]))
					temp_birthday = new_client[8].split("-")

					if int(temp_birthday[1])  > 12:
						# print("lebih besar dari 12 ")
						client.birthday = temp_birthday[0]+"-"+temp_birthday[2]+"-"+temp_birthday[1]
					else :
						# print("lebih kecil dari 12 ")
						client.birthday = temp_birthday[0]+"-"+temp_birthday[1]+"-"+temp_birthday[2]
		
		tz = pytz.timezone('Asia/Jakarta')
		client.magnet_status = new_client[9]
		client.phone_no = new_client[10]
		client.id_verification_status = new_client[11]
		client.legal_status = new_client[12]
		client.magnet_created_at = new_client[13].replace(tzinfo=tz)
	
		


		client.created_at = new_client[13].replace(tzinfo=tz)
		client.magnet_updated_at = new_client[14].replace(tzinfo=tz)
		client.aecode = new_client[15]
		client.demologin = new_client[16]
		client.cdd = new_client[17]
		client.create_ip = new_client[18]


		
		# print("new_client[19]", '"'+str(new_client[19])+'"')
		# print("new_client[20]",new_client[20])
		# print("new_client[21]",new_client[21])
		print("new_client[24]",new_client[24])

		if new_client[19] == "google":
			print("Masuk IF GOOGLE")
			client.source = '2'
			client.source_detail_1 = '0'
			client.source_detail_2 = '4'
		elif new_client[19] == 'fb / ig' or new_client[19] == 'fb  ig':
			print("Masuk IF FB")
			client.source = '2'
			client.source_detail_1 = '0'
			client.source_detail_2 = '1'
		elif new_client[19] == 'discord':
			print("Masuk IF DISCORD")
			client.source = '2'
			client.source_detail_1 = '0'
			client.source_detail_2 = '5'
		else:
			print("Masuk ELSE NONE")
			client.source = None
			client.source_detail_1 = None
			client.source_detail_2 = None


		client.medium = new_client[20]
		client.campaign = new_client[21]
		client.term = new_client[22]
		client.content = new_client[23]
		client.gclid = new_client[24]
		client.is_registered = True
		
		
		
		client.save()
		print("saved!")
		regis = Client_Journey()
		regis.client = client
		regis.journal_type = 'registered'
		regis.updated_by = regis.created_by = user
		regis.save()
		regis.created_at = client.magnet_created_at
		regis.save()

		
		counter+=1
		print("client ke" + str(counter) + " client id :"+str(client.id))
		# print(client.id)

	print("total nambah "+str(counter))


def create_client_journey_mt5():
	cnx = mysql.connector.connect(
			host="54.151.138.128",
			user='ivan',
			password='MajuBersama123',
			database='vifx'
		)

		
	super_user = User.objects.filter(is_superuser=True).first()
	string_sql = "Select user_id, login, account_type , updated_at, rate, created_at FROM vif_cabinet_legal_form_decleration ORDER BY 'id' ASC"
	mycursor = cnx.cursor()
	mycursor.execute(string_sql)
	new_legal_form_declerations = mycursor.fetchall()
	try:
		with transaction.atomic():

			for new_legal_form_decleration in new_legal_form_declerations:
				magnet_id = str(new_legal_form_decleration[0])
				login_id = new_legal_form_decleration[1]
				
				if login_id != '' and login_id != None:
					print(new_legal_form_decleration[0], '???', type(new_legal_form_decleration[0]))
					client = Client.objects.filter(magnet_id=magnet_id, is_active=True).first()
					if client != None:
						print('ada ini')
						
						client_staff = Client_Staff.objects.filter(client__magnet_id=magnet_id, is_active=True).first()
						if client_staff != None:
							account_type = new_legal_form_decleration[2]
							rate = new_legal_form_decleration[4]
							extra_notes = str(account_type) + ' ' + str(rate) + ' ' + str(login_id)
							existing_client_journey = Client_Journey.objects.filter(client=client, extra=extra_notes, is_active=True, journal_type='mt5 created').first()
							if existing_client_journey == None:
									
								login_created_at = new_legal_form_decleration[3]
								
								client_journey = Client_Journey()
								client_journey.client = client
								client_journey.journal_type = 'mt5 created'
								client_journey.extra = extra_notes
								tz = pytz.timezone('Asia/Jakarta')
								client_journey.created_at = login_created_at.replace(tzinfo=tz)
								client_journey.updated_by = client_journey.created_by = super_user
								client_journey.save()


	except IntegrityError as e:
		print('error bung', e)




def check_aecode(mycursor, start_from, user):
	string_sql = "SELECT id, aecode FROM v_users Where aecode <> '991-000000' and  aecode <> '-000000' and aecode <> '0-00' ORDER BY ID ASC"

	string_sql = "SELECT id, aecode FROM v_users Where aecode <> '991-000000' and  aecode <> '-000000' and aecode <> '0-00' ORDER BY ID ASC"
	mycursor.execute(string_sql)
	new_client_list = mycursor.fetchall()
	for new_client in new_client_list:
		print(str(new_client[1])+"|"+str(new_client[0]))
		staff = Staff.objects.filter(aecode=str(new_client[1]), is_active=True).first()
		client = Client.objects.filter(magnet_id=str(new_client[0]), is_active=True).first()

		client_staff = Client_Staff.objects.filter(staff__aecode=str(new_client[1]), client__magnet_id=str(new_client[0]), is_active=True).first()
		if staff != None:
			if client_staff == None:
				
				if client != None and staff != None:
					client_staff = Client_Staff()
					client_staff.client = client
					client_staff.staff = staff
					client_staff.created_by = client_staff.updated_by = user
					client_staff.save()
		else:
			ib = IB.objects.filter(aecode=str(new_client[1]), is_active=True).first()
			if ib != None:
				exist_ib_client = IB_Client.objects.filter(client=client, ib=ib, is_active=True).first()
				if exist_ib_client == None:
					ib_client = IB_Client()
					ib_client.client = client
					ib_client.ib = ib
					ib_client.created_by = ib_client.updated_by = user
					ib_client.save()
				ib_client.save()










		

