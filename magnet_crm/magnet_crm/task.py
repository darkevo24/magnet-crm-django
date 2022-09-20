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
# schedule, created = IntervalSchedule.objects.get_or_create(
#     every=1,
#     period=IntervalSchedule.SECONDS,
# )

# PeriodicTask.objects.create(
#     interval=schedule,
#     name='news',          # simply describes this periodic task.
#     task='magnet_crm.tasks.test',
#     # args="ini dari periodic"  # name of task.
# )


# schedule, _ = CrontabSchedule.objects.get_or_create(
#     minute='0',
#     hour='0',
#     timezone="Asia/Jakarta",
#     task='magnet_crm.task.test',
#     # day_of_week='*',
#     # day_of_month='*',
#     # month_of_year='*',
# )

# PeriodicTask.objects.create(
#     crontab=schedule,                  # we created this above.
#     name='Birthday1',          # simply describes this periodic task.
#     task='magnet_crm.task.test',  # name of task.
#     # args=json.dumps(['arg1', 'arg2']),
#     # kwargs=json.dumps({
#     #    'be_careful': True,
#     # }),
#     # expires=datetime.utcnow() + timedelta(seconds=30)
# )
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
def birthday():
	try:
		with transaction.atomic():
			now = timezone.now()
			clients = Client.objects.filter(birthday__month=now.month, birthday__day=now.day)
			user = User.objects.filter(is_superuser=True).first()
			data = {}
			for client in clients:
				data['client'] = client
				data['notification'] = 'birthday'
				data['notes'] = 'Happy birthday to ' + client.nama
				create_notification(user, data)
			
	except IntegrityError as e:
		print(e)

@shared_task
def birthday():
	try:
		with transaction.atomic():
			now = timezone.now()
			clients = Client.objects.filter(birthday__month=now.month, birthday__day=now.day)
			user = User.objects.filter(is_superuser=True).first()
			data = {}
			for client in clients:
				data['client'] = client
				data['notification'] = 'birthday'
				data['notes'] = 'Happy birthday to ' + client.nama
				create_notification(user, data)
			
	except IntegrityError as e:
		print(e)

@shared_task
def sync_data_magnet():
	try:
		with transaction.atomic():
			now = timezone.now()

			cnx = mysql.connector.connect(
				host="18.143.147.140",
				user='ivan',
				password='MajuBersama123',
				database='vifx'
			)
			mycursor = cnx.cursor()
			mycursor.execute("SELECT COUNT(*) from v_users")
			user_count = mycursor.fetchone()
			print(user_count[0], '????')
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
	

			
			
	except IntegrityError as e:
		print(e)


# 	nama = models.CharField(max_length=255)
# 	first_name = models.CharField(max_length=255) 
# 	last_name = models.CharField(max_length=255)
# 	middle_name = models.CharField(max_length=255)
# 	city = models.CharField(max_length=100)
# 	address = models.CharField(max_length=255)

# 	MAGNET_STATUS = [
# 		('active', 'Active'), 
# 		('inactive', 'Inactive'),
# 		('deleted', 'Deleted'),
# 	]
# 	magnet_status = models.CharField(max_length=255, choices=MAGNET_STATUS, default='active')
# 	id_verification_status = models.IntegerField(default=0)
# 	legal_status = models.IntegerField(default=0)
# 	magnet_created_by = 


# 'vif_cabinet_legal_form_decleration',)
# ('vif_cabinet_legal_form_personal',)
# ('id', 'int(10) unsigned', 'NO', '', '0', '')
# ('name', 'varchar(255)', 'NO', '', None, '')
# ('first_name', 'varchar(60)', 'NO', '', None, '')
# ('middle_name', 'varchar(20)', 'NO', '', None, '')
# ('last_name', 'varchar(50)', 'NO', '', None, '')
# ('email', 'varchar(255)', 'NO', '', None, '')
# ('city', 'varchar(100)', 'NO', '', None, '')
# ('address', 'varchar(255)', 'NO', '', None, '')
# ('dob', 'varchar(20)', 'NO', '', None, '')
# ('status', "enum('Active','Inactive','Deleted')", 'NO', '', None, '')
# ('phone_mobile', 'varchar(50)', 'NO', '', None, '')
# ('id_verification_status', 'tinyint(4)', 'NO', '', None, '')
# ('legal_status', 'tinyint(4)', 'NO', '', None, '')
# ('created_at', 'timestamp', 'YES', '', None, '')
# ('updated_at', 'timestamp', 'YES', '', None, '')
# ('aecode', 'varchar(20)', 'YES', '', None, '')
# ('demologin', 'int(10) unsigned', 'YES', '', None, '')
# ('cdd', 'tinyint(1)', 'NO', '', '0', '')
# ('create_ip', 'varchar(32)', 'YES', '', None, '')
# ('source', 'varchar(50)', 'YES', '', None, '')
# ('medium', 'varchar(50)', 'YES', '', None, '')
# ('campaign', 'varchar(50)', 'YES', '', None, '')
# ('term', 'varchar(50)', 'YES', '', None, '')
# ('content', 'varchar(50)', 'YES', '', None, '')
# ('gclid', 'varchar(128)', 'YES', '', None, '')

def update_client_data(mycursor, last_id, user):
	# print(last_id,"last_id")
	string_sql = "SELECT * FROM v_users Where ID > " + str(last_id) + " ORDER BY ID ASC"
	mycursor.execute(string_sql)
	new_client_list = mycursor.fetchall()
	counter = 0
	for new_client in new_client_list:
		
		# print("add client baru dari task")
		client = Client()
		client.magnet_id = new_client[0]
		client.updated_by = client.created_by = user
		# client.create_ip = '127.0.0.1'
		client.nama = new_client[1]
		client.first_name = new_client[2] 
		client.last_name = new_client[4]
		client.middle_name = new_client[3]
		client.email = new_client[5]
		client.city = new_client[6]
		client.address = new_client[7]
		if "/" in new_client[8]: 
			print(new_client[8],"new_client[8]")
			temp = new_client[8].split("/")
			client.birthday = temp[2]+"-"+temp[0]+"-"+temp[1]
		else:
			print(new_client[8],"else_new_client[8] ")
			if (new_client[8] == "1990-04-31"):
				client.birthday = "1990-04-30"
			else:
				client.birthday = new_client[8]	if new_client[8] != "" else None
			
		
		
		client.magnet_status = new_client[9]
		client.phone_no = new_client[10]
		client.id_verification_status = new_client[11]
		client.legal_status = new_client[12]
		client.magnet_created_at = new_client[13]
		client.magnet_updated_at = new_client[14]
		client.aecode = new_client[15]
		client.demologin = new_client[16]
		client.cdd = new_client[17]
		client.create_ip = new_client[18]
		client.source = new_client[19]
		# print(new_client[20],'new_client[20]')
		client.medium = new_client[20]
		# print(new_client[21],'new_client[21]')
		client.campaign = new_client[21]
		# print(new_client[22],'new_client[22]')
		client.term = new_client[22]
		# print(new_client[23],'new_client[23]')
		client.content = new_client[23]
		client.gclid = new_client[24]
		client.source = None
		client.source_detail_1 = None
		client.source_detail_2 = None
		client.save()
		counter+=1
		print("client ke" + str(counter) + " client id :"+str(client.id))
		# print(client.id)

	print("total nambah "+str(counter))




		

