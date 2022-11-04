from django.shortcuts import render
# # from core.forms.admin.main.main import *
# # from referal.models import *
from core.forms.main import *
from client.models import *
from staff.models import *
from django.shortcuts import render, redirect
from django.urls import reverse
from django.http import JsonResponse, HttpResponseRedirect
from client.forms import *
from django.db import IntegrityError, transaction
from django.contrib import messages
from client.models import *
from datetime import datetime
from django.utils import timezone
import re
from django.db.models import Q
import requests
import json
import pprint
from decimal import *


def create_client_journal(request, staff=None, client=None, journal_type=None):
	try:
		with transaction.atomic():
			client_journal = Client_Journey()
			client_journal.created_by = client_journal.updated_by = request.user
			client_journal.staff = staff
			client_journal.client = client
			client_journal.journal_type = journal_type
			client_journal.save()

			return True

	except IntegrityError as e:
		print(e)

	return False

def create_client_notification(request, staff=None, client=None, journal_type=None):
	try:
		with transaction.atomic():
			client_notification = Client_Notification()
			client_journal.created_by = client_journal.updated_by = request.user
			client_journal.staff = staff
			client_journal.client = client
			client_journal.journal_type = journal_type
			client_journal.save()

			return True

	except IntegrityError as e:
		print(e)

	return False

def check_client_duplicate(client, name, email):

	check_clients = Client.objects.filter((Q(nama=name) | Q(email=email)))
	check = False
	user = User.objects.filter(is_superuser=True).first()
	if check_clients.count() > 0 :
		check = True
		try:
			with transaction.atomic():
				for check_client in check_clients:
					client_duplicate_suspect = Client_Duplicate_Suspect()
					client_duplicate_suspect.client_old = check_client
					client_duplicate_suspect.client_new = client
					client_duplicate_suspect.created_by = client_duplicate_suspect.updated_by = user
					client_duplicate_suspect.save()
		except IntegrityError as e:
			print(e)

	return check

	
import mysql.connector
from mysql.connector import errorcode
def check_user_list():


	try:
		print('start')
		cnx = mysql.connector.connect(
			host="18.143.147.140",
			user='ivan',
			password='MajuBersama123',
			database='vifx'
		)
		print('start')
		mycursor = cnx.cursor()
		mycursor.execute("Show tables;")
		myresult = mycursor.fetchall()
		print(myresult,'myresult')
		for x in myresult:
			print(x)

		mycursor.execute("SHOW COLUMNS FROM v_users;")
		myresult = mycursor.fetchall()

		print("ini kolumnya ======")
		for x in myresult:
			print(x)

	except mysql.connector.Error as err:
		if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
			print("Something is wrong with your user name or password")
		elif err.errno == errorcode.ER_BAD_DB_ERROR:
			print("Database does not exist")
		else:
			print(err)
	else:
		cnx.close()

def get_client_position(user_id):
	client = Client.objects.filter(id=user_id).first()
	magnet_user_id = client.magnet_id
	try:

		cnx = mysql.connector.connect(
			host="13.229.114.255",
			user='ivan',
			password='MajuBersama123',
			database='vifx'
		)

		mycursor = cnx.cursor()
		mycursor.execute("Select id, user_id, login, account_type FROM vif_cabinet_legal_form_decleration WHERE user_id="+ str(magnet_user_id)+ " ORDER BY 'id' DESC LIMIT 2")
		login_mt5_ids = []
		myresult = mycursor.fetchall()
		for myresult in myresult:
			login_mt5_ids.append(myresult[2])
		print('connect to another db')
		pos_cnx = mysql.connector.connect(
				host="54.151.138.128",
				user='ivan',
				password='Keluarga999',
				database='position'
		)

		mycursor = pos_cnx.cursor()

		mycursor.execute("SHOW COLUMNS FROM pos;")
		count = 0
		myresult = mycursor.fetchall()
		for x in myresult:
			count += 1



		in_params = ','.join(['%s'] * len(login_mt5_ids))
		print('in_params', login_mt5_ids)
		sql = "SELECT * FROM pos WHERE login IN (%s)" % in_params
		mycursor.execute(sql, login_mt5_ids)
		my_pos_list = mycursor.fetchall()
		print(my_pos_list,"my_pos_list")
		print('my_pos_list', len(my_pos_list))
		# print(my_pos_list)
		for x in my_pos_list:
			count = 0
			for y in x:
				print(count, type(y), y)
				count +=1
		# mycursor.execute("SELECT * FROM pos ORDER BY id DESC LIMIT 1;")
		# myresult = mycursor.fetchall()
		# for x in myresult:
		# 		print(x)

		pos_cnx.close()
		return my_pos_list

	except mysql.connector.Error as err:
		if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
				print("Something is wrong with your user name or password")
		elif err.errno == errorcode.ER_BAD_DB_ERROR:
				print("Database does not exist")
		else:
				print(err)
	else:
		cnx.close()


def get_login_trades(user_id):
	client = Client.objects.filter(id=user_id).first()
	magnet_user_id = client.magnet_id
	try:
		with transaction.atomic():

			cnx = mysql.connector.connect(
				host="13.229.114.255",
				user='ivan',
				password='MajuBersama123',
				database='vifx'
			)

			mycursor = cnx.cursor()
			mycursor.execute("Select id, user_id, login, account_type FROM vif_cabinet_legal_form_decleration WHERE user_id="+ str(magnet_user_id)+ " ORDER BY 'id' DESC LIMIT 2")
			login_mt5_ids = []
			myresult = mycursor.fetchall()
			print(myresult,"myresult")
			for myresult in myresult:
				login_mt5_ids.append(myresult[2])


			data = {
				'logins': login_mt5_ids
			}
			print("ini data")
			res = requests.post('http://13.229.114.255/getLoginState', data=data)
			json_data = json.loads(res.text)
			# print(json_data['data'],"json_data['data']")
			return json_data

	except IntegrityError as e:
		print(e)

def get_login_trades_history(user_id,from_date=None,to_date=None):
	client = Client.objects.filter(id=user_id).first()
	magnet_user_id = client.magnet_id
	try:
		with transaction.atomic():

			cnx = mysql.connector.connect(
				host="13.229.114.255",
				user='ivan',
				password='MajuBersama123',
				database='vifx'
			)

			mycursor = cnx.cursor()
			mycursor.execute("Select id, user_id, login, account_type FROM vif_cabinet_legal_form_decleration WHERE user_id="+ str(magnet_user_id)+ " ORDER BY 'id' DESC LIMIT 2")
			login_mt5_ids = []
			myresult = mycursor.fetchall()
			print(myresult,"myresult")
			for myresult in myresult:
				login_mt5_ids.append(myresult[2])

			now = timezone.now()
			data = {
				# 'logins': login_mt5_ids,
				'logins': login_mt5_ids,
				'from':from_date,
                'to':to_date if to_date is not None else str(now.year)+"-"+str(now.month)+'-'+str(now.day),
			}
			print("ini data")
			res = requests.post('http://13.229.114.255/getLoginsTrades', data=data)
			json_data = json.loads(res.text)
			# print(json_data['data'],"json_data['data']")
			return json_data

	except IntegrityError as e:
		print(e)


def get_so_list(client_ids):
	
	try:
		with transaction.atomic():

			print("client_ids",client_ids)
			data = {
				# 'logins': login_mt5_ids,
				# 'userids': "20001,150023,151535,151533",
				'userids': client_ids,
			}
			print("ini data")
			res = requests.post('http://13.229.114.255/getUserFTD', data=data)
			json_data = json.loads(res.text)
			
			# print(json_data['data'],"json_data['data']")
			return json_data

	except IntegrityError as e:
		print(e)


def get_all_clinet_bonus(clients):
	clients = Client.objects.filter(id__in=clients)
	
	try:
		with transaction.atomic():

			cnx = mysql.connector.connect(
				host="13.229.114.255",
				user='ivan',
				password='MajuBersama123',
				database='vifx'
			)

			magnet_user_ids = []
			for x in clients:
				magnet_user_ids.append(x.magnet_id)
			# print(magnet_user_ids,'magnet_user_ids')
			# print("Select id, user_id, login, account_type FROM vif_cabinet_legal_form_decleration WHERE user_id in ("+ str(magnet_user_ids)[:-1][1:]+ ") ORDER BY 'id' DESC LIMIT 2")

			mycursor = cnx.cursor()
			mycursor.execute("Select id, user_id, login, account_type FROM vif_cabinet_legal_form_decleration WHERE user_id in ("+ str(magnet_user_ids)[:-1][1:]+ ") ORDER BY 'id' DESC ")
			login_mt5_ids = []
			myresult = mycursor.fetchall()
			# print(myresult,"myresult")
			client_user_id_login_dict = {}
			account_type_dict = {}
			for myresult in myresult:
				if myresult[2] != 'None' and myresult[2] != None:
					client_user_id_login_dict[str(myresult[2])]=str(myresult[1])
					login_mt5_ids.append(myresult[2])
					account_type_dict[str(myresult[2])] = myresult[3]

			
			login_mt5_ids = (str(login_mt5_ids)[:-1][1:]).replace(" ","")
			# print("login_mt5_ids",login_mt5_ids)

			now = timezone.now()
			data = {
				# 'logins': login_mt5_ids,
				'logins': login_mt5_ids,
				'from':'2022-10-01',
                'to':'2022-10-31',
			}
			res = requests.post('http://13.229.114.255/getLoginsTrades', data=data)
			json_data = json.loads(res.text)
			# print("json_data['data']",json_data['data'])


			login_dict = {}
			for data in json_data['data']:
				if data['action'] == 'buy':
					print("float(data['lot'])",float(data['lot']))
					if data['login'] not in login_dict:
						login_dict[data['login']] = Decimal(data['lot'])
					else:
						login_dict[data['login']] += Decimal(data['lot'])

				

			print(login_dict,"login_dict") 


			account_types = ['magneto','electro','elastico']
			total_lot = {
				'magneto':0,
				'magneto_pribadi':0,
				'electro':0,
				'electro_pribadi':0,
				'elastico':0,
				'elastico_pribadi':0,
			}

			counter_temp = 1
			for acc_type in account_types:
				for x in login_dict:
					if acc_type == account_type_dict[x]:
						print("account_type_dict[x]",account_type_dict[x],login_dict[x])
						if counter_temp == 2:
							total_lot[acc_type+"_pribadi"] += login_dict[x]
						else:
							total_lot[acc_type] += login_dict[x]
						counter_temp+=1
						# total_lot[acc_type] += login_dict[x]

			print("total_lot",total_lot)
			display_bonus_dict = {}

			for data_lot in login_dict:
				display_bonus_dict[data_lot] = {}
				display_bonus_dict[data_lot]['account_type'] = account_type_dict[data_lot]
				display_bonus_dict[data_lot]['bonus'] = 0
				display_bonus_dict[data_lot]['lot'] = login_dict[data_lot]

			total_bonus = 0
			counter = 1
			for acc_type in total_lot:

				# print("data_lot",data_lot,login_dict[data_lot],account_type_dict[data_lot])				

				# Start
				data_kantor = True if '_pribadi' not in acc_type else False

				# print("data_kantor ",data_kantor)
				pos = "FC"
				if '_pribadi' not in acc_type:
					account_type = acc_type
				else:
					account_type = acc_type.replace("_pribadi","")
					
				print(data_kantor,account_type,)
				month = 0 
				bonus = 0
				commision = 0
				
				if data_kantor:
					lot = total_lot[acc_type]
					print("LOTNYA SKG ",lot)
					tier_1 = True
					if account_type == "elastico":
						if lot >= 0 and lot <=30:
							tier_1 = True
						else:
							tier_1 = False

						if tier_1:
							if pos == "FC":
								if month >= 0 and month <= 2:
									bonus = 1
								else:
									bonus = 0.5
							elif pos == "SPV":
								if month >= 0 and month <= 2:
									bonus = 0.5
								else:
									bonus = 1
						else:
							if pos == "FC":
								if month >= 0 and month <= 2:
									bonus = 1.75
								else:
									bonus = 0.75
							elif pos == "SPV":
								if month >= 0 and month <= 2:
									bonus = 0.75
								else:
									bonus = 1.75
						commision = 5

					elif account_type == "elektro":
						if lot >= 0 and lot <=50:
							tier_1 = True
						else:
							tier_1 = False

						if tier_1:
							if pos == "FC":
								if month >= 0 and month <= 2:
									bonus = 0.75
								else:
									bonus = 0.25
							elif pos == "SPV":
								if month >= 0 and month <= 2:
									bonus = 0.25
								else:
									bonus = 0.75
						else:
							if pos == "FC":
								if month >= 0 and month <= 2:
									bonus = 1
								else:
									bonus = 0.5
							elif pos == "SPV":
								if month >= 0 and month <= 2:
									bonus = 0.5
								else:
									bonus = 1
						commision = 3

					elif account_type == "magneto":
						if lot >= 0 and lot <=100:
							tier_1 = True
						else:
							tier_1 = False

						if tier_1:
							if pos == "FC":
								if month >= 0 and month <= 2:
									bonus = 2
								else:
									bonus = 1
							elif pos == "SPV":
								if month >= 0 and month <= 2:
									bonus = 1
								else:
									bonus = 2
						else:
							if pos == "FC":
								if month >= 0 and month <= 2:
									bonus = 3
								else:
									bonus = 2
							elif pos == "SPV":
								if month >= 0 and month <= 2:
									bonus = 2
								else:
									bonus = 3
						commision = 10

				else:
					lot = total_lot[acc_type]
					if account_type == "elastico":
						if pos == "FC":
							bonus = 3
						elif pos == "SPV":
							bonus = 0.5
					elif account_type == "elektro":
						if pos == "FC":
							bonus = 1
						elif pos == "SPV":
							bonus = 0.5
					elif account_type == "magneto":
						if pos == "FC":
							bonus = 4
						elif pos == "SPV":
							bonus = 0.5
				temp_bonus = bonus * lot
				total_bonus += temp_bonus
				print("bonus * lot",bonus , lot,total_bonus)


			
			# print("bonus", bonus)

			# print("total bonus", total_bonus)

			# FINISH BONUS 2

			#START BONUS 3
			total_bonus_3 = 0 
			display_bonus_3_dict = {}
			for data_lot in login_dict:
				# print("data_lot",data_lot,login_dict[data_lot],account_type_dict[data_lot])
				account_type = account_type_dict[data_lot].lower()
				pos = "FC"
				bonus = 0 
				if pos == "IB":
					if account_type == "magneto":
						bonus = 4
					elif account_type == "elektro":
						bonus = 1
					elif account_type == "elastico":
						bonus = 2
				elif pos == "FC":
					if account_type == "magneto":
						bonus = 0.35
					elif account_type == "elektro":
						bonus = 0.5
					elif account_type == "elastico":
						bonus = 1
				elif pos == "SPV":
					if account_type == "magneto":
						bonus = 0.15
					elif account_type == "elektro":
						bonus = 0.25
					elif account_type == "elastico":
						bonus = 0.5

				display_bonus_3_dict[data_lot] = {}
				display_bonus_3_dict[data_lot]['account_type'] = account_type
				display_bonus_3_dict[data_lot]['bonus'] = bonus

				print("bonus",bonus)
				total_bonus_3 += bonus

			# print("total_bonus_3",total_bonus_3)

			# FINISH BONUS 2
			print("display_bonus_3_dict", display_bonus_3_dict)
			print("display_bonus_dict", display_bonus_dict)
			return total_bonus,total_bonus_3,display_bonus_dict,display_bonus_3_dict,client_user_id_login_dict

	except IntegrityError as e:
		print(e)
