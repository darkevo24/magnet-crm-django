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
from ib.models import *
import calendar
import pytz
from django.utils.timezone import make_aware

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
def get_client_magnet_id(client):
	print('get_client_magnet_id')
	cnx = mysql.connector.connect(
			host="54.151.138.128",
			user='ivan',
			password='MajuBersama123',
			database='vifx'
		)
	
	mycursor = cnx.cursor()
	mycursor.execute("SHOW COLUMNS FROM v_users;")
	myresult = mycursor.fetchall()
	client_email = str(client.email)
	print('show able', mycursor)
	for m in myresult:
		print(m)

	str_sql = "SELECT id FROM v_users WHERE  email = '" +  client_email + "';";
	print('sql str', str_sql)
	mycursor.execute(str_sql)
	result = mycursor.fetchone()
	cnx.close()

	if result != None and len(result) > 0 :
		return result[0]
	else:
		return None
def check_user_list(client):


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
		# connect to proxy db to query for MT5 IDs
		cnx = mysql.connector.connect(
			host="54.151.138.128",
			user='ivan',
			password='MajuBersama123',
			database='vifx'
		)
		mycursor = cnx.cursor()
		query = """SELECT id, user_id, login, account_type 
			FROM vif_cabinet_legal_form_decleration 
			WHERE user_id=""" + str(magnet_user_id) + """ 
			ORDER BY 'id' DESC LIMIT 2"""
		mycursor.execute(query)
		login_mt5_ids = []
		myresult = mycursor.fetchall()
		for myresult in myresult:
			login_mt5_ids.append(myresult[2])

		print('connect to another db')
		pos_cnx = mysql.connector.connect(
				host="54.255.131.102",
				user='ivan',
				password='Keluarga999',
				database='position'
		)
		mycursor = pos_cnx.cursor()
		

		# sql = "SHOW COLUMNS FROM data_magnet.mt5_positions"
		# mycursor.execute(sql)
		# show_columns = mycursor.fetchall()
		# print("show_columns",show_columns)
		

		my_pos_list = []
		pos_detail = []
		if len(login_mt5_ids)>0:
			query = """SELECT Position_ID,Volume,ContractSize,Symbol 
				FROM data_magnet.mt5_positions 
				WHERE login IN (""" + str(login_mt5_ids)[:-1][1:]+ ");"
			mycursor.execute(query)
			pos_detail = mycursor.fetchall()
			print("test_pos", pos_detail)
			
			mycursor = pos_cnx.cursor()
			in_params = ','.join(['%s'] * len(login_mt5_ids))
			print("17")
			print('in_params', login_mt5_ids)
			sql = "SELECT * FROM pos WHERE login IN (%s)" % in_params
			print("18",sql)
			mycursor.execute(sql, login_mt5_ids)
			print("19")
			my_pos_list = mycursor.fetchall()
			print("20")
			print(my_pos_list,"my_pos_list")
			print('my_pos_list', len(my_pos_list))
			# print(my_pos_list)

			pos_id = []
			print("21")
			for positions in my_pos_list:
				count = 0
				pos_id.append(positions[0])
				for position in positions:
					print(count, type(position), position)
					count +=1
			print("22")
			print("pos_id ",pos_id)

			pos_cnx.close()
			return my_pos_list, pos_detail
		# mycursor.execute("SELECT * FROM pos ORDER BY id DESC LIMIT 1;")
		# myresult = mycursor.fetchall()
		# for x in myresult:
		# 		print(x)
		else:
			pos_cnx.close()
			return [], []
		

	except mysql.connector.Error as err:
		if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
			print("Something is wrong with your user name or password")
		elif err.errno == errorcode.ER_BAD_DB_ERROR:
			print("Database does not exist")
		else:
			print(err)

		return [], []

	finally:
		cnx.close()


def get_login_trades(user_id):
	client = Client.objects.filter(id=user_id).first()
	magnet_user_id = client.magnet_id
	print(magnet_user_id, '<---')
	return None
	try:
		with transaction.atomic():

			cnx = mysql.connector.connect(
				host="54.151.138.128",
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
			res = requests.post('https://apireg.magnetfx.id/getLoginState', data=data)
			print("res: ", res)
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
				host="54.151.138.128",
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
			res = requests.post('http://54.151.138.128/getLoginsTrades', data=data)
			json_data = json.loads(res.text)
			# print(json_data['data'],"json_data['data']")
			return json_data

	except IntegrityError as e:
		print(e)


def get_ftd_list(client_ids):
	if client_ids != '':
		#for removing last comma
		client_ids = client_ids[:-1]
		#endof for

		data = {
			'userids': client_ids,
		}
		print('data ftd', data)

		response = requests.post('http://13.229.114.255/getUserFTD', data=data)
		print('response ftd', response)

		json_data = json.loads(response.text)
		return json_data['data']
	else:
		return []

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
			res = requests.post('http://54.151.138.128/getUserFTD', data=data)
			print("ressssss",res)
			json_data = json.loads(res.text)
			
			# print(json_data['data'],"json_data['data']")
			return json_data

	except IntegrityError as e:
		print(e)

def get_meta5_ids(magnet_ids, date, calculation_type):
	print('get_meta5_ids', magnet_ids, date, calculation_type)
	if magnet_ids != '':
		cnx = mysql.connector.connect(
			host="54.151.138.128",
			user='ivan',
			password='MajuBersama123',
			database='vifx'
		)

		mycursor = cnx.cursor()
		date_str = ''
		print('calculation_type', calculation_type)
		print('date -->', date)

		if date != None and date != '':
			date_str = date.strftime("%Y-%m-%d")
		str_sql = "Select id, user_id, login, account_type, rate, updated_at FROM vif_cabinet_legal_form_decleration WHERE user_id in ("+ str(magnet_ids)[:-1]+ ") ORDER BY 'id' DESC "
		if date != None and date != '' and calculation_type=='two_months':
			
			str_sql = "Select id, user_id, login, account_type, rate, updated_at FROM vif_cabinet_legal_form_decleration WHERE user_id in ("+ str(magnet_ids)[:-1]+ ") AND updated_at >= " + date_str + " ORDER BY 'id' DESC "
		elif date != None and date != '' and calculation_type=='more_than_two_months': 
			str_sql = "Select id, user_id, login, account_type, rate, updated_at FROM vif_cabinet_legal_form_decleration WHERE user_id in ("+ str(magnet_ids)[:-1]+ ") AND updated_at < " + date_str + " ORDER BY 'id' DESC "
		
		print('str_sql', str_sql,date, )
		mycursor.execute(str_sql)
		myresult = mycursor.fetchall()
		print('myresult', myresult)
		return myresult
	else:
		return {}

def master_calculate_lot_two_months_bonus(staffs, last_two_months_date, now, end_date):
	supervisor_list = Staff.objects.filter(staff_level__level=2, is_active=True)
	supervisor_staff_dict = {}
	staff_supervisor_dict = {}
	
	for staff in staffs:
		staff_id = str(staff.id)
		if staff_id not in staff_supervisor_dict:
			staff_supervisor_dict[staff_id] = staff.staff_parent


	client_staff_all_list = Client_Staff.objects.filter(
		staff__in=staffs,
		is_active=True,).exclude(client__source_detail_1=2, client__magnet_id='').exclude( client__magnet_id=None).prefetch_related('client', 'staff', 'staff__profile')
	
	staff_client_dict = {}
	client_staff_dict = {}
	client_detail_magnet_id_dict = {}
	meta_ids_lot_for_api = ''
	for client_staff in client_staff_all_list:
		staff_id = str(client_staff.staff.id)
		if client_staff.client.magnet_id != '' and client_staff.client.magnet_id != None:
			meta_ids_lot_for_api += ( client_staff.client.magnet_id + ',')
			if str(client_staff.client.magnet_id) not in client_detail_magnet_id_dict:
				
				client_detail_magnet_id_dict[str(client_staff.client.magnet_id)] = client_staff.client.nama

			staff_id = str(client_staff.id)
			if staff_id not in staff_client_dict:
				staff_client_dict[staff_id] = {}
			staff_client_dict[staff_id]['staff_name'] = client_staff.staff.profile.full_name
			staff_client_dict[staff_id]['client_trade_account'] = {}

			if str(client_staff.client.magnet_id) not in client_staff_dict :
				client_staff_dict[str(client_staff.client.magnet_id)] = client_staff.staff
			

	print('last_two_months_date', last_two_months_date,)
	
	#get meta5 ids
	user_login_details = get_meta5_ids(meta_ids_lot_for_api, last_two_months_date, 'two_months')
	print('user_login_details -->', user_login_details)
	meta5_ids = []
	user_magnet_detail_dict = {}
	mt5_account_type_dict = {}
	for user_login_detail in user_login_details:
		#user_login_detail[1] = magnet_id
		user_magnet_id = user_login_detail[1]
		if  user_magnet_id not in user_magnet_detail_dict:
			user_magnet_detail_dict[user_magnet_id] = []
		temp_dict = {}
		temp_dict['rate'] = user_login_detail[4]
		temp_dict['product_name'] = user_login_detail[3]
		temp_dict['cabinet_id'] = user_login_detail[0]
		temp_dict['meta_id'] = user_login_detail[2]
		temp_dict['created_at'] = user_login_detail[5]

		user_magnet_detail_dict[user_magnet_id].append(temp_dict)
		loop_meta_id = str(user_login_detail[2])
		if user_login_detail[2] != None:
			meta5_ids.append(loop_meta_id)
			if loop_meta_id not in mt5_account_type_dict:
				mt5_account_type_dict[loop_meta_id] = {}
			mt5_account_type_dict[loop_meta_id]['account_type'] = user_login_detail[3]
			mt5_account_type_dict[loop_meta_id]['rate'] = user_login_detail[4]
			mt5_account_type_dict[loop_meta_id]['created_at'] = user_login_detail[5]
			mt5_account_type_dict[loop_meta_id]['client_name'] = client_detail_magnet_id_dict[str(user_magnet_id)]
			mt5_account_type_dict[loop_meta_id]['staff_name'] = client_staff_dict[str(user_magnet_id)]
			staff = client_staff_dict[str(user_magnet_id)]
			supervisor = staff_supervisor_dict[str(staff.id)]
			mt5_account_type_dict[loop_meta_id]['supervisor_name'] = supervisor.profile.full_name
	
	meta5_id_string_for_post = ''
	for meta5_id in meta5_ids:
		meta5_id_string_for_post +=  ( str(meta5_id) + ',' )

	two_month_trades = {}
	bonus_account_type_dict = {}
	bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	if meta5_id_string_for_post != '':
		data_post_for_get_login_trades = {
			'logins': meta5_id_string_for_post[:-1],
			'from': str(now.year)+"-"+str(now.month)+"-"+"01",
	        'to':str(now.year)+"-"+str(now.month)+"-"+str(end_date),
		}
		print('data_post_for_get_login_trades two months',data_post_for_get_login_trades)
		
		# print(str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),'str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1])')
		res = requests.post('http://13.229.114.255/getLoginsTrades', data=data_post_for_get_login_trades)
		
		json_data = json.loads(res.text)
		last_two_months_account_trades = json_data['data']

		total_lot_dict = {}
		
		two_month_trades = {}
		utc_timezone = pytz.timezone('Asia/Jakarta')
		

		for last_two_months_account_trade in last_two_months_account_trades:
			if last_two_months_account_trade['entry'] == 'close':
				account_type = mt5_account_type_dict[last_two_months_account_trade['login']]['account_type']
				login_id = str(last_two_months_account_trade['login'])
				#group trades by login
				if last_two_months_account_trade['login'] not in two_month_trades:
					two_month_trades[login_id] = {}
					two_month_trades[login_id]['total_lot'] = 0
					two_month_trades[login_id]['client_name'] = mt5_account_type_dict[login_id]['client_name']
					two_month_trades[login_id]['rate'] = mt5_account_type_dict[login_id]['rate']
					two_month_trades[login_id]['created_at'] = mt5_account_type_dict[login_id]['created_at']
					jakarta_timezone = pytz.timezone('Asia/Jakarta')
					created_at_timezone = two_month_trades[login_id]['created_at'].replace(tzinfo=jakarta_timezone)
					two_month_trades[login_id]['account_ages'] = (now - created_at_timezone).days
					two_month_trades[login_id]['total_idr'] = 0
					two_month_trades[login_id]['total_usd'] = 0
					two_month_trades[login_id]['bonus_per_lot'] = 0
					two_month_trades[login_id]['staff_name'] = mt5_account_type_dict[login_id]['staff_name'] 
					two_month_trades[login_id]['supervisor_name'] = mt5_account_type_dict[login_id]['supervisor_name'] 
				#buat testing
				# account_type = 'magneto'

				str_rate = mt5_account_type_dict[last_two_months_account_trade['login']]['rate']
				loop_lot_decimal = Decimal(last_two_months_account_trade['lot'])
				loop_rate_decimal = Decimal(str_rate)
				if account_type not in total_lot_dict:
					total_lot_dict[account_type] = {}
				if str_rate not in total_lot_dict[account_type]:
					total_lot_dict[account_type][str_rate] = {}
					total_lot_dict[account_type][str_rate]['total_lot'] = 0
					total_lot_dict[account_type][str_rate]['total_idr'] = 0
					total_lot_dict[account_type][str_rate]['total_usd'] = 0
					total_lot_dict[account_type][str_rate]['bonus_tier'] = ''
				
				total_lot_dict[account_type][str_rate]['total_lot'] += loop_lot_decimal
				two_month_trades[login_id]['total_lot'] += loop_lot_decimal
			# print(type(loop_lot_decimal), type(loop_rate_decimal))
			# total_lot_dict[account_type][str_rate]['total_idr'] += ( loop_lot_decimal * loop_rate_decimal )

		


		# print(last_two_months_account_trades)
		print(total_lot_dict)
		for account_type, rate_trade_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_trade_dict.items():

				loop_total_lot = total_lot_dict[account_type][rate]['total_lot']
				decimal_rate = Decimal(rate)
				if account_type == 'elastico':

					#buat testing
					# total_lot_dict[account_type][rate]['total_lot'] = 30.001

					
					if loop_total_lot < 29.99:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.5) )
						total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.5) )
						total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
						total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.5)

					else:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.75) )
						total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.75) )
						total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
						total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.75)
				elif account_type == 'elektro':
					if loop_total_lot < 49.99:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.25) )
						total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.25) )
						total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
						total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.25)
					else:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.5) )
						total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.5) )
						total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
						total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.5)
				elif account_type == 'magneto':
					if loop_total_lot < 99.99:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1) )
						total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1) )
						total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
						total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1)
					else:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(2) )
						total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(2) )
						total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
						total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(2)
		print('after')
		

		for account_type, rate_bonus_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_bonus_dict.items():
				print('>', bonus_dict)
				bonus_account_type_dict[account_type]['total_idr'] += bonus_dict['total_idr']
				bonus_account_type_dict[account_type]['total_usd'] += bonus_dict['total_usd']
				bonus_account_type_dict[account_type]['total_lot'] += bonus_dict['total_lot']
				bonus_account_type_dict[account_type]['bonus_tier'] = bonus_dict['bonus_tier']
				bonus_account_type_dict[account_type]['bonus_lot_usd'] = bonus_dict['bonus_lot_usd']


		
		trade_list = []
		# print('0000000')
		# print(mt5_account_type_dict)
		for login_id, detail_dict in two_month_trades.items():
			# print('|||||',two_month_trades[login_id])
			account_type = two_month_trades[login_id]['account_type'] = mt5_account_type_dict[login_id]['account_type'] 
			two_month_trades[login_id]['bonus_lot_usd'] = bonus_account_type_dict[account_type]['bonus_lot_usd']
			two_month_trades[login_id]['total_usd'] = Decimal(two_month_trades[login_id]['total_lot']) * Decimal(two_month_trades[login_id]['bonus_lot_usd'])
			two_month_trades[login_id]['total_idr'] = Decimal(two_month_trades[login_id]['total_usd']) * Decimal(two_month_trades[login_id]['rate'])
		
	
	return bonus_account_type_dict, two_month_trades

def master_calculate_lot_more_than_two_months_bonus(staffs, last_two_months_date, now, end_date):
	supervisor_list = Staff.objects.filter(staff_level__level=2, is_active=True)
	supervisor_staff_dict = {}
	staff_supervisor_dict = {}
	
	for staff in staffs:
		staff_id = str(staff.id)
		if staff_id not in staff_supervisor_dict:
			staff_supervisor_dict[staff_id] = staff.staff_parent

	client_staff_all_list = Client_Staff.objects.filter(
		staff__in=staffs,
		client__magnet_created_at__lt= last_two_months_date,
		is_active=True,).exclude(client__source_detail_1=2, client__magnet_id='').exclude(client__magnet_id=None).prefetch_related('client')
	
	two_month_trades = {}
	bonus_account_type_dict = {}
	bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	client_staff_dict = {}
	client_magnet_id_created_at_dict = {}
	client_detail_magnet_id_dict = {}
	meta_ids_lot_for_api = ''
	for client_staff in client_staff_all_list:
		if client_staff.client.magnet_id != '' and client_staff.client.magnet_id != None:
			meta_ids_lot_for_api += ( client_staff.client.magnet_id + ',')
			if str(client_staff.client.magnet_id) not in client_magnet_id_created_at_dict:
				client_magnet_id_created_at_dict[str(client_staff.client.magnet_id)] = client_staff.client.magnet_created_at
				client_detail_magnet_id_dict[str(client_staff.client.magnet_id)] = client_staff.client.nama

			if str(client_staff.client.magnet_id) not in client_staff_dict :
				client_staff_dict[str(client_staff.client.magnet_id)] = client_staff.staff

	
	#get meta5 ids
	user_login_details = get_meta5_ids(meta_ids_lot_for_api, last_two_months_date, 'more_than_two_months')
	print(len(user_login_details),user_login_details ,  'mati disini')
	if len(user_login_details) > 0:
		print('more than two months user login details', user_login_details)
		meta5_ids = []
		user_magnet_detail_dict = {}
		mt5_account_type_dict = {}
		for user_login_detail in user_login_details:
			#user_login_detail[1] = magnet_id
			user_magnet_id = user_login_detail[1]
			if  user_magnet_id not in user_magnet_detail_dict:
				user_magnet_detail_dict[user_magnet_id] = []
			temp_dict = {}
			temp_dict['rate'] = user_login_detail[4]
			temp_dict['product_name'] = user_login_detail[3]
			temp_dict['cabinet_id'] = user_login_detail[0]
			temp_dict['meta_id'] = user_login_detail[2]
			

			user_magnet_detail_dict[user_magnet_id].append(temp_dict)
			loop_meta_id = str(user_login_detail[2])
			if user_login_detail[2] != None:
				meta5_ids.append(loop_meta_id)
				if loop_meta_id not in mt5_account_type_dict:
					mt5_account_type_dict[loop_meta_id] = {}
				mt5_account_type_dict[loop_meta_id]['account_type'] = user_login_detail[3]
				mt5_account_type_dict[loop_meta_id]['rate'] = user_login_detail[4]
				mt5_account_type_dict[loop_meta_id]['created_at'] = client_magnet_id_created_at_dict[str(user_magnet_id)]
				mt5_account_type_dict[loop_meta_id]['client_name'] = client_detail_magnet_id_dict[str(user_magnet_id)]
				mt5_account_type_dict[loop_meta_id]['staff_name'] = client_staff_dict[str(user_magnet_id)]
				staff = client_staff_dict[str(user_magnet_id)]
				supervisor = staff_supervisor_dict[str(staff.id)]
				mt5_account_type_dict[loop_meta_id]['supervisor_name'] = supervisor.profile.full_name

		# print('__________')
		# print(meta5_ids)
		# print(user_magnet_detail_dict)

		meta5_id_string_for_post = ''
		
		for meta5_id in meta5_ids:
			meta5_id_string_for_post +=  ( str(meta5_id) + ',' )


		if meta5_id_string_for_post != '':
			data_post_for_get_login_trades = {
				'logins': meta5_id_string_for_post[:-1],
				'from': str(now.year)+"-"+str(now.month)+"-"+"01",
		        'to':str(now.year)+"-"+str(now.month)+"-"+str(end_date),
			}
			print(data_post_for_get_login_trades)
			
			# print(str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),'str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1])')
			res = requests.post('http://13.229.114.255/getLoginsTrades', data=data_post_for_get_login_trades)
			
			json_data = json.loads(res.text)
			print('json_data', json_data)
			last_two_months_account_trades = json_data['data']
			total_lot_dict = {}
			
			
			print('more than two months trades', last_two_months_account_trades)
			for last_two_months_account_trade in last_two_months_account_trades:
				if last_two_months_account_trade['action'] == 'buy':
					account_type = mt5_account_type_dict[last_two_months_account_trade['login']]['account_type']
					login_id = str(last_two_months_account_trade['login'])
					jakarta_timezone = pytz.timezone('Asia/Jakarta')
					created_at_timezone = two_month_trades[login_id]['created_at'].replace(tzinfo=jakarta_timezone)

					if last_two_months_account_trade['login'] not in two_month_trades:
						two_month_trades[login_id] = {}
						two_month_trades[login_id]['total_lot'] = 0
						two_month_trades[login_id]['client_name'] = mt5_account_type_dict[login_id]['client_name']
						two_month_trades[login_id]['rate'] = mt5_account_type_dict[login_id]['rate']
						two_month_trades[login_id]['created_at'] = mt5_account_type_dict[login_id]['created_at']
						two_month_trades[login_id]['account_ages'] = (now - created_at_timezone).days
						two_month_trades[login_id]['staff_name'] = mt5_account_type_dict[login_id]['staff_name'] 
						two_month_trades[login_id]['supervisor_name'] = mt5_account_type_dict[login_id]['supervisor_name'] 
						two_month_trades[login_id]['total_idr'] = 0
						two_month_trades[login_id]['total_usd'] = 0
						two_month_trades[login_id]['bonus_per_lot'] = 0
					#buat testing
					# account_type = 'magneto'

					str_rate = mt5_account_type_dict[last_two_months_account_trade['login']]['rate']
					loop_lot_decimal = Decimal(last_two_months_account_trade['lot'])
					loop_rate_decimal = Decimal(str_rate)
					if account_type not in total_lot_dict:
						total_lot_dict[account_type] = {}
					if str_rate not in total_lot_dict[account_type]:
						total_lot_dict[account_type][str_rate] = {}
						total_lot_dict[account_type][str_rate]['total_lot'] = 0
						total_lot_dict[account_type][str_rate]['total_idr'] = 0
						total_lot_dict[account_type][str_rate]['total_usd'] = 0
						total_lot_dict[account_type][str_rate]['bonus_tier'] = ''
					
					total_lot_dict[account_type][str_rate]['total_lot'] += loop_lot_decimal
					two_month_trades[login_id]['total_lot'] += loop_lot_decimal
				# print(type(loop_lot_decimal), type(loop_rate_decimal))
				# total_lot_dict[account_type][str_rate]['total_idr'] += ( loop_lot_decimal * loop_rate_decimal )

			


			# print(last_two_months_account_trades)
			print(total_lot_dict)
			for account_type, rate_trade_dict in total_lot_dict.items():
				for rate, bonus_dict in rate_trade_dict.items():

					loop_total_lot = total_lot_dict[account_type][rate]['total_lot']
					decimal_rate = Decimal(rate)
					if account_type == 'elastico':

						#buat testing
						# total_lot_dict[account_type][rate]['total_lot'] = 30.001

						
						if loop_total_lot < 30:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1)

						else:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1.75) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1.75) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1.75)
					elif account_type == 'elektro':
						if loop_total_lot < 50:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.75) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.75) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.75)
						else:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1)
					elif account_type == 'magneto':
						if loop_total_lot < 100:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(2) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(2) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(2)
						else:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(3) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(3) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(3)
			print('after')
			bonus_account_type_dict = {}
			bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
			bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
			bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

			for account_type, rate_bonus_dict in total_lot_dict.items():
				for rate, bonus_dict in rate_bonus_dict.items():
					print('>', bonus_dict)
					bonus_account_type_dict[account_type]['total_idr'] += bonus_dict['total_idr']
					bonus_account_type_dict[account_type]['total_usd'] += bonus_dict['total_usd']
					bonus_account_type_dict[account_type]['total_lot'] += bonus_dict['total_lot']
					bonus_account_type_dict[account_type]['bonus_tier'] = bonus_dict['bonus_tier']
					bonus_account_type_dict[account_type]['bonus_lot_usd'] = bonus_dict['bonus_lot_usd']


			
			trade_list = []
			print('0000000')
			print(mt5_account_type_dict)
			for login_id, detail_dict in two_month_trades.items():
				# print('|||||',two_month_trades[login_id])
				account_type = two_month_trades[login_id]['account_type'] = mt5_account_type_dict[login_id]['account_type'] 
				two_month_trades[login_id]['bonus_lot_usd'] = bonus_account_type_dict[account_type]['bonus_lot_usd']
				two_month_trades[login_id]['total_usd'] = Decimal(two_month_trades[login_id]['total_lot']) * Decimal(two_month_trades[login_id]['bonus_lot_usd'])
				two_month_trades[login_id]['total_idr'] = Decimal(two_month_trades[login_id]['total_usd']) * Decimal(two_month_trades[login_id]['rate'])
				


			print('finish more than two months', two_month_trades)
			print(two_month_trades)

		return bonus_account_type_dict, two_month_trades
	else:
		return bonus_account_type_dict, {}	

def master_calculate_data_pribadi_bonus(staffs, now, end_date):
	supervisor_staff_dict = {}
	staff_supervisor_dict = {}
	
	for staff in staffs:
		staff_id = str(staff.id)
		if staff_id not in staff_supervisor_dict:
			staff_supervisor_dict[staff_id] = staff.staff_parent
	client_staff_all_list = Client_Staff.objects.filter(
		staff__in=staffs,
		client__source_detail_1=2,
		is_active=True,).exclude( (Q(client__magnet_id='') & Q(client__magnet_id=None)) ).prefetch_related('client')
	print(client_staff_all_list.count(), 'count')
	client_staff_dict = {}
	client_detail_magnet_id_dict = {}
	meta_ids_lot_for_api = ''
	for client_staff in client_staff_all_list:
		if client_staff.client.magnet_id != '' and client_staff.client.magnet_id != None:
			if client_staff.client.magnet_id != '' and client_staff.client.magnet_id  != None:
				meta_ids_lot_for_api += ( client_staff.client.magnet_id + ',')
				if str(client_staff.client.magnet_id) not in client_detail_magnet_id_dict:
					
					client_detail_magnet_id_dict[str(client_staff.client.magnet_id)] = client_staff.client.nama
				if str(client_staff.client.magnet_id) not in client_staff_dict :
					client_staff_dict[str(client_staff.client.magnet_id)] = client_staff.staff

	
	#get meta5 ids
	user_login_details = get_meta5_ids(meta_ids_lot_for_api, None, None)
	print('user_login_details -->', user_login_details)
	meta5_ids = []
	user_magnet_detail_dict = {}
	mt5_account_type_dict = {}
	for user_login_detail in user_login_details:
		#user_login_detail[1] = magnet_id
		user_magnet_id = user_login_detail[1]
		if  user_magnet_id not in user_magnet_detail_dict:
			user_magnet_detail_dict[user_magnet_id] = []
		temp_dict = {}
		temp_dict['rate'] = user_login_detail[4]
		temp_dict['product_name'] = user_login_detail[3]
		temp_dict['cabinet_id'] = user_login_detail[0]
		temp_dict['meta_id'] = user_login_detail[2]
		temp_dict['created_at'] = user_login_detail[5]

		user_magnet_detail_dict[user_magnet_id].append(temp_dict)
		loop_meta_id = str(user_login_detail[2])
		if user_login_detail[2] != None:
			meta5_ids.append(loop_meta_id)
			if loop_meta_id not in mt5_account_type_dict:
				mt5_account_type_dict[loop_meta_id] = {}
			mt5_account_type_dict[loop_meta_id]['account_type'] = user_login_detail[3]
			mt5_account_type_dict[loop_meta_id]['rate'] = user_login_detail[4]
			mt5_account_type_dict[loop_meta_id]['created_at'] = user_login_detail[5]
			mt5_account_type_dict[loop_meta_id]['client_name'] = client_detail_magnet_id_dict[str(user_magnet_id)]
			mt5_account_type_dict[loop_meta_id]['staff_name'] = client_staff_dict[str(user_magnet_id)]
			staff = client_staff_dict[str(user_magnet_id)]
			supervisor = staff_supervisor_dict[str(staff.id)]
			mt5_account_type_dict[loop_meta_id]['supervisor_name'] = supervisor.profile.full_name
	

	# print('__________')
	# print(meta5_ids)
	# print(user_magnet_detail_dict)

	meta5_id_string_for_post = ''
	for meta5_id in meta5_ids:
		meta5_id_string_for_post +=  ( str(meta5_id) + ',' )

	two_month_trades = {}
	bonus_account_type_dict = {}
	bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	if meta5_id_string_for_post != '':
		data_post_for_get_login_trades = {
			'logins': meta5_id_string_for_post[:-1],
			'from': str(now.year)+"-"+str(now.month)+"-"+"01",
	        'to':str(now.year)+"-"+str(now.month)+"-"+str(end_date),
		}
		
		
		# print(str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),'str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1])')
		res = requests.post('http://13.229.114.255/getLoginsTrades', data=data_post_for_get_login_trades)
		
		json_data = json.loads(res.text)
		last_two_months_account_trades = json_data['data']

		total_lot_dict = {}
		
		two_month_trades = {}
		utc_timezone = pytz.timezone('Asia/Jakarta')
		

		for last_two_months_account_trade in last_two_months_account_trades:
			if last_two_months_account_trade['entry'] == 'close':
				account_type = mt5_account_type_dict[last_two_months_account_trade['login']]['account_type']
				login_id = str(last_two_months_account_trade['login'])
				#group trades by login
				if last_two_months_account_trade['login'] not in two_month_trades:
					two_month_trades[login_id] = {}
					two_month_trades[login_id]['total_lot'] = 0
					two_month_trades[login_id]['client_name'] = mt5_account_type_dict[login_id]['client_name']
					two_month_trades[login_id]['rate'] = mt5_account_type_dict[login_id]['rate']
					two_month_trades[login_id]['created_at'] = mt5_account_type_dict[login_id]['created_at']
					jakarta_timezone = pytz.timezone('Asia/Jakarta')
					created_at_timezone = two_month_trades[login_id]['created_at'].replace(tzinfo=jakarta_timezone)
					two_month_trades[login_id]['account_ages'] = (now - created_at_timezone).days
					two_month_trades[login_id]['staff_name'] = mt5_account_type_dict[login_id]['staff_name'] 
					two_month_trades[login_id]['supervisor_name'] = mt5_account_type_dict[login_id]['supervisor_name'] 
					two_month_trades[login_id]['total_idr'] = 0
					two_month_trades[login_id]['total_usd'] = 0
					two_month_trades[login_id]['bonus_per_lot'] = 0
				#buat testing
				# account_type = 'magneto'

				str_rate = mt5_account_type_dict[last_two_months_account_trade['login']]['rate']
				loop_lot_decimal = Decimal(last_two_months_account_trade['lot'])
				loop_rate_decimal = Decimal(str_rate)
				if account_type not in total_lot_dict:
					total_lot_dict[account_type] = {}
				if str_rate not in total_lot_dict[account_type]:
					total_lot_dict[account_type][str_rate] = {}
					total_lot_dict[account_type][str_rate]['total_lot'] = 0
					total_lot_dict[account_type][str_rate]['total_idr'] = 0
					total_lot_dict[account_type][str_rate]['total_usd'] = 0
					total_lot_dict[account_type][str_rate]['bonus_tier'] = ''
				
				total_lot_dict[account_type][str_rate]['total_lot'] += loop_lot_decimal
				two_month_trades[login_id]['total_lot'] += loop_lot_decimal
			# print(type(loop_lot_decimal), type(loop_rate_decimal))
			# total_lot_dict[account_type][str_rate]['total_idr'] += ( loop_lot_decimal * loop_rate_decimal )

		


		# print(last_two_months_account_trades)
		print(total_lot_dict)
		for account_type, rate_trade_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_trade_dict.items():

				loop_total_lot = total_lot_dict[account_type][rate]['total_lot']
				decimal_rate = Decimal(rate)
				if account_type == 'elastico':

					#buat testing
					# total_lot_dict[account_type][rate]['total_lot'] = 30.001

					
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.5)

				elif account_type == 'elektro':
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.5)
					
				elif account_type == 'magneto':
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.5)
					
		print('after')
		

		for account_type, rate_bonus_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_bonus_dict.items():
				print('>', bonus_dict)
				bonus_account_type_dict[account_type]['total_idr'] += bonus_dict['total_idr']
				bonus_account_type_dict[account_type]['total_usd'] += bonus_dict['total_usd']
				bonus_account_type_dict[account_type]['total_lot'] += bonus_dict['total_lot']
				bonus_account_type_dict[account_type]['bonus_tier'] = bonus_dict['bonus_tier']
				bonus_account_type_dict[account_type]['bonus_lot_usd'] = bonus_dict['bonus_lot_usd']


		
		trade_list = []
		# print('0000000')
		# print(mt5_account_type_dict)
		for login_id, detail_dict in two_month_trades.items():
			# print('|||||',two_month_trades[login_id])
			account_type = two_month_trades[login_id]['account_type'] = mt5_account_type_dict[login_id]['account_type'] 
			two_month_trades[login_id]['bonus_lot_usd'] = bonus_account_type_dict[account_type]['bonus_lot_usd']
			two_month_trades[login_id]['total_usd'] = Decimal(two_month_trades[login_id]['total_lot']) * Decimal(two_month_trades[login_id]['bonus_lot_usd'])
			two_month_trades[login_id]['total_idr'] = Decimal(two_month_trades[login_id]['total_usd']) * Decimal(two_month_trades[login_id]['rate'])
		
	
	return bonus_account_type_dict, two_month_trades

def master_calculate_ib_bonus(staffs, now, end_date):
	client_staff_all_list = Client_Staff.objects.filter(
		staff__in=staffs,
		client__is_ib=True,
		is_active=True,).exclude(  (Q(client__magnet_id='') & Q(client__magnet_id=None)) ).prefetch_related('client')
	
	supervisor_staff_dict = {}
	staff_supervisor_dict = {}
	
	for staff in staffs:
		staff_id = str(staff.id)
		if staff_id not in staff_supervisor_dict:
			staff_supervisor_dict[staff_id] = staff.staff_parent

	
	client_detail_magnet_id_dict = {}
	client_staff_dict = {}
	meta_ids_lot_for_api = ''
	for client_staff in client_staff_all_list:
		if client_staff.client.magnet_id != '' and client_staff.client.magnet_id != None:
			meta_ids_lot_for_api += ( client_staff.client.magnet_id + ',')
			if str(client_staff.client.magnet_id) not in client_detail_magnet_id_dict:
				
				client_detail_magnet_id_dict[str(client_staff.client.magnet_id)] = client_staff.client.nama

			if str(client_staff.client.magnet_id) not in client_staff_dict :
				client_staff_dict[str(client_staff.client.magnet_id)] = client_staff.staff

	
	#get meta5 ids
	user_login_details = get_meta5_ids(meta_ids_lot_for_api, None, None)
	print('user_login_details -->', user_login_details)
	meta5_ids = []
	user_magnet_detail_dict = {}
	mt5_account_type_dict = {}
	for user_login_detail in user_login_details:
		#user_login_detail[1] = magnet_id
		user_magnet_id = user_login_detail[1]
		if  user_magnet_id not in user_magnet_detail_dict:
			user_magnet_detail_dict[user_magnet_id] = []
		temp_dict = {}
		temp_dict['rate'] = user_login_detail[4]
		temp_dict['product_name'] = user_login_detail[3]
		temp_dict['cabinet_id'] = user_login_detail[0]
		temp_dict['meta_id'] = user_login_detail[2]
		temp_dict['created_at'] = user_login_detail[5]

		user_magnet_detail_dict[user_magnet_id].append(temp_dict)
		loop_meta_id = str(user_login_detail[2])
		if user_login_detail[2] != None:
			meta5_ids.append(loop_meta_id)
			if loop_meta_id not in mt5_account_type_dict:
				mt5_account_type_dict[loop_meta_id] = {}
			mt5_account_type_dict[loop_meta_id]['account_type'] = user_login_detail[3]
			mt5_account_type_dict[loop_meta_id]['rate'] = user_login_detail[4]
			mt5_account_type_dict[loop_meta_id]['created_at'] = user_login_detail[5]
			mt5_account_type_dict[loop_meta_id]['client_name'] = client_detail_magnet_id_dict[str(user_magnet_id)]
			mt5_account_type_dict[loop_meta_id]['staff_name'] = client_staff_dict[str(user_magnet_id)]
			staff = client_staff_dict[str(user_magnet_id)]
			supervisor = staff_supervisor_dict[str(staff.id)]
			mt5_account_type_dict[loop_meta_id]['supervisor_name'] = supervisor.profile.full_name

	# print('__________')
	# print(meta5_ids)
	# print(user_magnet_detail_dict)

	meta5_id_string_for_post = ''
	for meta5_id in meta5_ids:
		meta5_id_string_for_post +=  ( str(meta5_id) + ',' )

	two_month_trades = {}
	bonus_account_type_dict = {}
	bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	if meta5_id_string_for_post != '':
		data_post_for_get_login_trades = {
			'logins': meta5_id_string_for_post[:-1],
			'from': str(now.year)+"-"+str(now.month)+"-"+"01",
	        'to':str(now.year)+"-"+str(now.month)+"-"+str(end_date),
		}
		
		
		# print(str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),'str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1])')
		res = requests.post('http://13.229.114.255/getLoginsTrades', data=data_post_for_get_login_trades)
		
		json_data = json.loads(res.text)
		last_two_months_account_trades = json_data['data']

		total_lot_dict = {}
		
		two_month_trades = {}
		utc_timezone = pytz.timezone('Asia/Jakarta')
		

		for last_two_months_account_trade in last_two_months_account_trades:
			if last_two_months_account_trade['entry'] == 'close':
				account_type = mt5_account_type_dict[last_two_months_account_trade['login']]['account_type']
				login_id = str(last_two_months_account_trade['login'])
				#group trades by login
				if last_two_months_account_trade['login'] not in two_month_trades:
					two_month_trades[login_id] = {}
					two_month_trades[login_id]['total_lot'] = 0
					two_month_trades[login_id]['client_name'] = mt5_account_type_dict[login_id]['client_name']
					two_month_trades[login_id]['rate'] = mt5_account_type_dict[login_id]['rate']
					two_month_trades[login_id]['created_at'] = mt5_account_type_dict[login_id]['created_at']
					two_month_trades[login_id]['staff_name'] = mt5_account_type_dict[login_id]['staff_name'] 
					two_month_trades[login_id]['supervisor_name'] = mt5_account_type_dict[login_id]['supervisor_name'] 
					jakarta_timezone = pytz.timezone('Asia/Jakarta')
					created_at_timezone = two_month_trades[login_id]['created_at'].replace(tzinfo=jakarta_timezone)
					two_month_trades[login_id]['account_ages'] = (now - created_at_timezone).days
					two_month_trades[login_id]['total_idr'] = 0
					two_month_trades[login_id]['total_usd'] = 0
					two_month_trades[login_id]['bonus_per_lot'] = 0
				#buat testing
				# account_type = 'magneto'

				str_rate = mt5_account_type_dict[last_two_months_account_trade['login']]['rate']
				loop_lot_decimal = Decimal(last_two_months_account_trade['lot'])
				loop_rate_decimal = Decimal(str_rate)
				if account_type not in total_lot_dict:
					total_lot_dict[account_type] = {}
				if str_rate not in total_lot_dict[account_type]:
					total_lot_dict[account_type][str_rate] = {}
					total_lot_dict[account_type][str_rate]['total_lot'] = 0
					total_lot_dict[account_type][str_rate]['total_idr'] = 0
					total_lot_dict[account_type][str_rate]['total_usd'] = 0
					total_lot_dict[account_type][str_rate]['bonus_tier'] = ''
				
				total_lot_dict[account_type][str_rate]['total_lot'] += loop_lot_decimal
				two_month_trades[login_id]['total_lot'] += loop_lot_decimal
			# print(type(loop_lot_decimal), type(loop_rate_decimal))
			# total_lot_dict[account_type][str_rate]['total_idr'] += ( loop_lot_decimal * loop_rate_decimal )

		


		# print(last_two_months_account_trades)
		print(total_lot_dict)
		for account_type, rate_trade_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_trade_dict.items():

				loop_total_lot = total_lot_dict[account_type][rate]['total_lot']
				decimal_rate = Decimal(rate)
				if account_type == 'elastico':

					#buat testing
					# total_lot_dict[account_type][rate]['total_lot'] = 30.001

					
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1)

				elif account_type == 'elektro':
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.5)
					
				elif account_type == 'magneto':
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.35) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.35) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.35)
					
		print('after')
		

		for account_type, rate_bonus_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_bonus_dict.items():
				print('>', bonus_dict)
				bonus_account_type_dict[account_type]['total_idr'] += bonus_dict['total_idr']
				bonus_account_type_dict[account_type]['total_usd'] += bonus_dict['total_usd']
				bonus_account_type_dict[account_type]['total_lot'] += bonus_dict['total_lot']
				bonus_account_type_dict[account_type]['bonus_tier'] = bonus_dict['bonus_tier']
				bonus_account_type_dict[account_type]['bonus_lot_usd'] = bonus_dict['bonus_lot_usd']


		
		trade_list = []
		# print('0000000')
		# print(mt5_account_type_dict)
		for login_id, detail_dict in two_month_trades.items():
			# print('|||||',two_month_trades[login_id])
			account_type = two_month_trades[login_id]['account_type'] = mt5_account_type_dict[login_id]['account_type'] 
			two_month_trades[login_id]['bonus_lot_usd'] = bonus_account_type_dict[account_type]['bonus_lot_usd']
			two_month_trades[login_id]['total_usd'] = Decimal(two_month_trades[login_id]['total_lot']) * Decimal(two_month_trades[login_id]['bonus_lot_usd'])
			two_month_trades[login_id]['total_idr'] = Decimal(two_month_trades[login_id]['total_usd']) * Decimal(two_month_trades[login_id]['rate'])
		
	
	return bonus_account_type_dict, two_month_trades
def supervisor_calculate_lot_two_months_bonus(staffs, last_two_months_date, now, end_date):

	client_staff_all_list = Client_Staff.objects.filter(
		staff__in=staffs,
		is_active=True,).exclude(client__source_detail_1=2, client__magnet_id='').exclude(client__magnet_id=None).prefetch_related('client', 'staff')
	print(client_staff_all_list.count(), 'count')
	staff_client_dict = {}
	client_staff_dict = {}
	client_detail_magnet_id_dict = {}
	meta_ids_lot_for_api = ''
	for client_staff in client_staff_all_list:
		if client_staff.client.magnet_id != '' and client_staff.client.magnet_id != None:
			meta_ids_lot_for_api += ( client_staff.client.magnet_id + ',')
			if str(client_staff.client.magnet_id) not in client_detail_magnet_id_dict:
				
				client_detail_magnet_id_dict[str(client_staff.client.magnet_id)] = client_staff.client.nama
			staff_id = str(client_staff.id)
			if staff_id not in staff_client_dict:
				staff_client_dict[staff_id] = {}
			staff_client_dict[staff_id]['staff_name'] = client_staff.staff.profile.full_name
			staff_client_dict[staff_id]['client_trade_account'] = {}

			if str(client_staff.client.magnet_id) not in client_staff_dict :
				client_staff_dict[str(client_staff.client.magnet_id)] = client_staff.staff
		

	print('last_two_months_date', last_two_months_date,)
	
	#get meta5 ids
	user_login_details = get_meta5_ids(meta_ids_lot_for_api, last_two_months_date, 'two_months')
	print('user_login_details -->', user_login_details)
	meta5_ids = []
	user_magnet_detail_dict = {}
	mt5_account_type_dict = {}
	for user_login_detail in user_login_details:
		#user_login_detail[1] = magnet_id
		user_magnet_id = user_login_detail[1]
		if  user_magnet_id not in user_magnet_detail_dict:
			user_magnet_detail_dict[user_magnet_id] = []
		temp_dict = {}
		temp_dict['rate'] = user_login_detail[4]
		temp_dict['product_name'] = user_login_detail[3]
		temp_dict['cabinet_id'] = user_login_detail[0]
		temp_dict['meta_id'] = user_login_detail[2]
		temp_dict['created_at'] = user_login_detail[5]

		user_magnet_detail_dict[user_magnet_id].append(temp_dict)
		loop_meta_id = str(user_login_detail[2])
		if user_login_detail[2] != None:
			meta5_ids.append(loop_meta_id)
			if loop_meta_id not in mt5_account_type_dict:
				mt5_account_type_dict[loop_meta_id] = {}
			mt5_account_type_dict[loop_meta_id]['account_type'] = user_login_detail[3]
			mt5_account_type_dict[loop_meta_id]['rate'] = user_login_detail[4]
			mt5_account_type_dict[loop_meta_id]['created_at'] = user_login_detail[5]
			mt5_account_type_dict[loop_meta_id]['client_name'] = client_detail_magnet_id_dict[str(user_magnet_id)]
			mt5_account_type_dict[loop_meta_id]['staff_name'] = client_staff_dict[str(user_magnet_id)]

	
	meta5_id_string_for_post = ''
	for meta5_id in meta5_ids:
		meta5_id_string_for_post +=  ( str(meta5_id) + ',' )

	two_month_trades = {}
	bonus_account_type_dict = {}
	bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	if meta5_id_string_for_post != '':
		data_post_for_get_login_trades = {
			'logins': meta5_id_string_for_post[:-1],
			'from': str(now.year)+"-"+str(now.month)+"-"+"01",
	        'to':str(now.year)+"-"+str(now.month)+"-"+str(end_date),
		}
		print('data_post_for_get_login_trades two months',data_post_for_get_login_trades)
		
		# print(str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),'str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1])')
		res = requests.post('http://13.229.114.255/getLoginsTrades', data=data_post_for_get_login_trades)
		
		json_data = json.loads(res.text)
		last_two_months_account_trades = json_data['data']

		total_lot_dict = {}
		
		two_month_trades = {}
		utc_timezone = pytz.timezone('Asia/Jakarta')
		

		for last_two_months_account_trade in last_two_months_account_trades:
			if last_two_months_account_trade['entry'] == 'close':
				account_type = mt5_account_type_dict[last_two_months_account_trade['login']]['account_type']
				login_id = str(last_two_months_account_trade['login'])
				#group trades by login
				if last_two_months_account_trade['login'] not in two_month_trades:
					two_month_trades[login_id] = {}
					two_month_trades[login_id]['total_lot'] = 0
					two_month_trades[login_id]['client_name'] = mt5_account_type_dict[login_id]['client_name']
					two_month_trades[login_id]['rate'] = mt5_account_type_dict[login_id]['rate']
					two_month_trades[login_id]['created_at'] = mt5_account_type_dict[login_id]['created_at']
					jakarta_timezone = pytz.timezone('Asia/Jakarta')
					created_at_timezone = two_month_trades[login_id]['created_at'].replace(tzinfo=jakarta_timezone)
					two_month_trades[login_id]['account_ages'] = (now - created_at_timezone).days
					two_month_trades[login_id]['total_idr'] = 0
					two_month_trades[login_id]['total_usd'] = 0
					two_month_trades[login_id]['bonus_per_lot'] = 0
					two_month_trades[login_id]['staff_name'] = mt5_account_type_dict[login_id]['staff_name'] 
				#buat testing
				# account_type = 'magneto'

				str_rate = mt5_account_type_dict[last_two_months_account_trade['login']]['rate']
				loop_lot_decimal = Decimal(last_two_months_account_trade['lot'])
				loop_rate_decimal = Decimal(str_rate)
				if account_type not in total_lot_dict:
					total_lot_dict[account_type] = {}
				if str_rate not in total_lot_dict[account_type]:
					total_lot_dict[account_type][str_rate] = {}
					total_lot_dict[account_type][str_rate]['total_lot'] = 0
					total_lot_dict[account_type][str_rate]['total_idr'] = 0
					total_lot_dict[account_type][str_rate]['total_usd'] = 0
					total_lot_dict[account_type][str_rate]['bonus_tier'] = ''
				
				total_lot_dict[account_type][str_rate]['total_lot'] += loop_lot_decimal
				two_month_trades[login_id]['total_lot'] += loop_lot_decimal
			# print(type(loop_lot_decimal), type(loop_rate_decimal))
			# total_lot_dict[account_type][str_rate]['total_idr'] += ( loop_lot_decimal * loop_rate_decimal )

		


		# print(last_two_months_account_trades)
		print(total_lot_dict)
		for account_type, rate_trade_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_trade_dict.items():

				loop_total_lot = total_lot_dict[account_type][rate]['total_lot']
				decimal_rate = Decimal(rate)
				if account_type == 'elastico':

					#buat testing
					# total_lot_dict[account_type][rate]['total_lot'] = 30.001

					
					if loop_total_lot < 29.99:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.5) )
						total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.5) )
						total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
						total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.5)

					else:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.75) )
						total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.75) )
						total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
						total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.75)
				elif account_type == 'elektro':
					if loop_total_lot < 49.99:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.25) )
						total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.25) )
						total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
						total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.25)
					else:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.5) )
						total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.5) )
						total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
						total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.5)
				elif account_type == 'magneto':
					if loop_total_lot < 99.99:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1) )
						total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1) )
						total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
						total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1)
					else:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(2) )
						total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(2) )
						total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
						total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(2)
		print('after')
		

		for account_type, rate_bonus_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_bonus_dict.items():
				print('>', bonus_dict)
				bonus_account_type_dict[account_type]['total_idr'] += bonus_dict['total_idr']
				bonus_account_type_dict[account_type]['total_usd'] += bonus_dict['total_usd']
				bonus_account_type_dict[account_type]['total_lot'] += bonus_dict['total_lot']
				bonus_account_type_dict[account_type]['bonus_tier'] = bonus_dict['bonus_tier']
				bonus_account_type_dict[account_type]['bonus_lot_usd'] = bonus_dict['bonus_lot_usd']


		
		trade_list = []
		# print('0000000')
		# print(mt5_account_type_dict)
		for login_id, detail_dict in two_month_trades.items():
			# print('|||||',two_month_trades[login_id])
			account_type = two_month_trades[login_id]['account_type'] = mt5_account_type_dict[login_id]['account_type'] 
			two_month_trades[login_id]['bonus_lot_usd'] = bonus_account_type_dict[account_type]['bonus_lot_usd']
			two_month_trades[login_id]['total_usd'] = Decimal(two_month_trades[login_id]['total_lot']) * Decimal(two_month_trades[login_id]['bonus_lot_usd'])
			two_month_trades[login_id]['total_idr'] = Decimal(two_month_trades[login_id]['total_usd']) * Decimal(two_month_trades[login_id]['rate'])
		
	
	return bonus_account_type_dict, two_month_trades


def supervisor_calculate_lot_more_than_two_months_bonus(staffs, last_two_months_date, now, end_date):
	client_staff_all_list = Client_Staff.objects.filter(
		staff__in=staffs,
		client__magnet_created_at__lt= last_two_months_date,
		is_active=True,).exclude(client__source_detail_1=2, client__magnet_id='').exclude(client__magnet_id=None).prefetch_related('client')
	
	two_month_trades = {}
	bonus_account_type_dict = {}
	bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	client_staff_dict = {}
	client_magnet_id_created_at_dict = {}
	client_detail_magnet_id_dict = {}
	meta_ids_lot_for_api = ''
	for client_staff in client_staff_all_list:
		if client_staff.client.magnet_id != '' and client_staff.client.magnet_id != None:
			meta_ids_lot_for_api += ( client_staff.client.magnet_id + ',')
			if str(client_staff.client.magnet_id) not in client_magnet_id_created_at_dict:
				client_magnet_id_created_at_dict[str(client_staff.client.magnet_id)] = client_staff.client.magnet_created_at
				client_detail_magnet_id_dict[str(client_staff.client.magnet_id)] = client_staff.client.nama

			if str(client_staff.client.magnet_id) not in client_staff_dict :
				client_staff_dict[str(client_staff.client.magnet_id)] = client_staff.staff

	
	#get meta5 ids
	user_login_details = get_meta5_ids(meta_ids_lot_for_api, last_two_months_date, 'more_than_two_months')
	print(len(user_login_details),user_login_details ,  'mati disini')
	if len(user_login_details) > 0:
		print('more than two months user login details', user_login_details)
		meta5_ids = []
		user_magnet_detail_dict = {}
		mt5_account_type_dict = {}
		for user_login_detail in user_login_details:
			#user_login_detail[1] = magnet_id
			user_magnet_id = user_login_detail[1]
			if  user_magnet_id not in user_magnet_detail_dict:
				user_magnet_detail_dict[user_magnet_id] = []
			temp_dict = {}
			temp_dict['rate'] = user_login_detail[4]
			temp_dict['product_name'] = user_login_detail[3]
			temp_dict['cabinet_id'] = user_login_detail[0]
			temp_dict['meta_id'] = user_login_detail[2]
			

			user_magnet_detail_dict[user_magnet_id].append(temp_dict)
			loop_meta_id = str(user_login_detail[2])
			if user_login_detail[2] != None:
				meta5_ids.append(loop_meta_id)
				if loop_meta_id not in mt5_account_type_dict:
					mt5_account_type_dict[loop_meta_id] = {}
				mt5_account_type_dict[loop_meta_id]['account_type'] = user_login_detail[3]
				mt5_account_type_dict[loop_meta_id]['rate'] = user_login_detail[4]
				mt5_account_type_dict[loop_meta_id]['created_at'] = client_magnet_id_created_at_dict[str(user_magnet_id)]
				mt5_account_type_dict[loop_meta_id]['client_name'] = client_detail_magnet_id_dict[str(user_magnet_id)]
				mt5_account_type_dict[loop_meta_id]['staff_name'] = client_staff_dict[str(user_magnet_id)]

		# print('__________')
		# print(meta5_ids)
		# print(user_magnet_detail_dict)

		meta5_id_string_for_post = ''
		
		for meta5_id in meta5_ids:
			meta5_id_string_for_post +=  ( str(meta5_id) + ',' )


		if meta5_id_string_for_post != '':
			data_post_for_get_login_trades = {
				'logins': meta5_id_string_for_post[:-1],
				'from': str(now.year)+"-"+str(now.month)+"-"+"01",
		        'to':str(now.year)+"-"+str(now.month)+"-"+str(end_date),
			}
			print(data_post_for_get_login_trades)
			
			# print(str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),'str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1])')
			res = requests.post('http://13.229.114.255/getLoginsTrades', data=data_post_for_get_login_trades)
			
			json_data = json.loads(res.text)
			print('json_data', json_data)
			last_two_months_account_trades = json_data['data']
			total_lot_dict = {}
			
			
			print('more than two months trades', last_two_months_account_trades)
			for last_two_months_account_trade in last_two_months_account_trades:
				if last_two_months_account_trade['action'] == 'buy':
					account_type = mt5_account_type_dict[last_two_months_account_trade['login']]['account_type']
					login_id = str(last_two_months_account_trade['login'])
					jakarta_timezone = pytz.timezone('Asia/Jakarta')
					created_at_timezone = two_month_trades[login_id]['created_at'].replace(tzinfo=jakarta_timezone)

					if last_two_months_account_trade['login'] not in two_month_trades:
						two_month_trades[login_id] = {}
						two_month_trades[login_id]['total_lot'] = 0
						two_month_trades[login_id]['client_name'] = mt5_account_type_dict[login_id]['client_name']
						two_month_trades[login_id]['rate'] = mt5_account_type_dict[login_id]['rate']
						two_month_trades[login_id]['created_at'] = mt5_account_type_dict[login_id]['created_at']
						two_month_trades[login_id]['account_ages'] = (now - created_at_timezone).days
						two_month_trades[login_id]['staff_name'] = mt5_account_type_dict[login_id]['staff_name'] 
						two_month_trades[login_id]['total_idr'] = 0
						two_month_trades[login_id]['total_usd'] = 0
						two_month_trades[login_id]['bonus_per_lot'] = 0
					#buat testing
					# account_type = 'magneto'

					str_rate = mt5_account_type_dict[last_two_months_account_trade['login']]['rate']
					loop_lot_decimal = Decimal(last_two_months_account_trade['lot'])
					loop_rate_decimal = Decimal(str_rate)
					if account_type not in total_lot_dict:
						total_lot_dict[account_type] = {}
					if str_rate not in total_lot_dict[account_type]:
						total_lot_dict[account_type][str_rate] = {}
						total_lot_dict[account_type][str_rate]['total_lot'] = 0
						total_lot_dict[account_type][str_rate]['total_idr'] = 0
						total_lot_dict[account_type][str_rate]['total_usd'] = 0
						total_lot_dict[account_type][str_rate]['bonus_tier'] = ''
					
					total_lot_dict[account_type][str_rate]['total_lot'] += loop_lot_decimal
					two_month_trades[login_id]['total_lot'] += loop_lot_decimal
				# print(type(loop_lot_decimal), type(loop_rate_decimal))
				# total_lot_dict[account_type][str_rate]['total_idr'] += ( loop_lot_decimal * loop_rate_decimal )

			


			# print(last_two_months_account_trades)
			print(total_lot_dict)
			for account_type, rate_trade_dict in total_lot_dict.items():
				for rate, bonus_dict in rate_trade_dict.items():

					loop_total_lot = total_lot_dict[account_type][rate]['total_lot']
					decimal_rate = Decimal(rate)
					if account_type == 'elastico':

						#buat testing
						# total_lot_dict[account_type][rate]['total_lot'] = 30.001

						
						if loop_total_lot < 30:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1)

						else:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1.75) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1.75) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1.75)
					elif account_type == 'elektro':
						if loop_total_lot < 50:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.75) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.75) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.75)
						else:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1)
					elif account_type == 'magneto':
						if loop_total_lot < 100:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(2) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(2) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(2)
						else:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(3) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(3) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(3)
			print('after')
			bonus_account_type_dict = {}
			bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
			bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
			bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

			for account_type, rate_bonus_dict in total_lot_dict.items():
				for rate, bonus_dict in rate_bonus_dict.items():
					print('>', bonus_dict)
					bonus_account_type_dict[account_type]['total_idr'] += bonus_dict['total_idr']
					bonus_account_type_dict[account_type]['total_usd'] += bonus_dict['total_usd']
					bonus_account_type_dict[account_type]['total_lot'] += bonus_dict['total_lot']
					bonus_account_type_dict[account_type]['bonus_tier'] = bonus_dict['bonus_tier']
					bonus_account_type_dict[account_type]['bonus_lot_usd'] = bonus_dict['bonus_lot_usd']


			
			trade_list = []
			print('0000000')
			print(mt5_account_type_dict)
			for login_id, detail_dict in two_month_trades.items():
				# print('|||||',two_month_trades[login_id])
				account_type = two_month_trades[login_id]['account_type'] = mt5_account_type_dict[login_id]['account_type'] 
				two_month_trades[login_id]['bonus_lot_usd'] = bonus_account_type_dict[account_type]['bonus_lot_usd']
				two_month_trades[login_id]['total_usd'] = Decimal(two_month_trades[login_id]['total_lot']) * Decimal(two_month_trades[login_id]['bonus_lot_usd'])
				two_month_trades[login_id]['total_idr'] = Decimal(two_month_trades[login_id]['total_usd']) * Decimal(two_month_trades[login_id]['rate'])
				


			print('finish more than two months', two_month_trades)
			print(two_month_trades)

		return bonus_account_type_dict, two_month_trades
	else:
		return bonus_account_type_dict, {}

def supervisor_calculate_data_pribadi_bonus(staffs, now, end_date):
	client_staff_all_list = Client_Staff.objects.filter(
		staff__in=staffs,
		client__source_detail_1=2,
		is_active=True,).exclude(client__magnet_id='').exclude(client__magnet_id=None).prefetch_related('client')
	print(client_staff_all_list.count(), 'count')
	client_staff_dict = {}
	client_detail_magnet_id_dict = {}
	meta_ids_lot_for_api = ''
	for client_staff in client_staff_all_list:
		if client_staff.client.magnet_id != '' and client_staff.client.magnet_id != None:
			meta_ids_lot_for_api += ( client_staff.client.magnet_id + ',')
			if str(client_staff.client.magnet_id) not in client_detail_magnet_id_dict:
				
				client_detail_magnet_id_dict[str(client_staff.client.magnet_id)] = client_staff.client.nama
			if str(client_staff.client.magnet_id) not in client_staff_dict :
				client_staff_dict[str(client_staff.client.magnet_id)] = client_staff.staff

	
	#get meta5 ids
	user_login_details = get_meta5_ids(meta_ids_lot_for_api, None, None)
	print('user_login_details -->', user_login_details)
	meta5_ids = []
	user_magnet_detail_dict = {}
	mt5_account_type_dict = {}
	for user_login_detail in user_login_details:
		#user_login_detail[1] = magnet_id
		user_magnet_id = user_login_detail[1]
		if  user_magnet_id not in user_magnet_detail_dict:
			user_magnet_detail_dict[user_magnet_id] = []
		temp_dict = {}
		temp_dict['rate'] = user_login_detail[4]
		temp_dict['product_name'] = user_login_detail[3]
		temp_dict['cabinet_id'] = user_login_detail[0]
		temp_dict['meta_id'] = user_login_detail[2]
		temp_dict['created_at'] = user_login_detail[5]

		user_magnet_detail_dict[user_magnet_id].append(temp_dict)
		loop_meta_id = str(user_login_detail[2])
		if user_login_detail[2] != None:
			meta5_ids.append(loop_meta_id)
			if loop_meta_id not in mt5_account_type_dict:
				mt5_account_type_dict[loop_meta_id] = {}
			mt5_account_type_dict[loop_meta_id]['account_type'] = user_login_detail[3]
			mt5_account_type_dict[loop_meta_id]['rate'] = user_login_detail[4]
			mt5_account_type_dict[loop_meta_id]['created_at'] = user_login_detail[5]
			mt5_account_type_dict[loop_meta_id]['client_name'] = client_detail_magnet_id_dict[str(user_magnet_id)]
			mt5_account_type_dict[loop_meta_id]['staff_name'] = client_staff_dict[str(user_magnet_id)]

	# print('__________')
	# print(meta5_ids)
	# print(user_magnet_detail_dict)

	meta5_id_string_for_post = ''
	for meta5_id in meta5_ids:
		meta5_id_string_for_post +=  ( str(meta5_id) + ',' )

	two_month_trades = {}
	bonus_account_type_dict = {}
	bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	if meta5_id_string_for_post != '':
		data_post_for_get_login_trades = {
			'logins': meta5_id_string_for_post[:-1],
			'from': str(now.year)+"-"+str(now.month)+"-"+"01",
	        'to':str(now.year)+"-"+str(now.month)+"-"+str(end_date),
		}
		
		
		# print(str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),'str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1])')
		res = requests.post('http://13.229.114.255/getLoginsTrades', data=data_post_for_get_login_trades)
		
		json_data = json.loads(res.text)
		last_two_months_account_trades = json_data['data']

		total_lot_dict = {}
		
		two_month_trades = {}
		utc_timezone = pytz.timezone('Asia/Jakarta')
		

		for last_two_months_account_trade in last_two_months_account_trades:
			if last_two_months_account_trade['entry'] == 'close':
				account_type = mt5_account_type_dict[last_two_months_account_trade['login']]['account_type']
				login_id = str(last_two_months_account_trade['login'])
				#group trades by login
				if last_two_months_account_trade['login'] not in two_month_trades:
					two_month_trades[login_id] = {}
					two_month_trades[login_id]['total_lot'] = 0
					two_month_trades[login_id]['client_name'] = mt5_account_type_dict[login_id]['client_name']
					two_month_trades[login_id]['rate'] = mt5_account_type_dict[login_id]['rate']
					two_month_trades[login_id]['created_at'] = mt5_account_type_dict[login_id]['created_at']
					jakarta_timezone = pytz.timezone('Asia/Jakarta')
					created_at_timezone = two_month_trades[login_id]['created_at'].replace(tzinfo=jakarta_timezone)
					two_month_trades[login_id]['account_ages'] = (now - created_at_timezone).days
					two_month_trades[login_id]['staff_name'] = mt5_account_type_dict[login_id]['staff_name'] 
					two_month_trades[login_id]['total_idr'] = 0
					two_month_trades[login_id]['total_usd'] = 0
					two_month_trades[login_id]['bonus_per_lot'] = 0
				#buat testing
				# account_type = 'magneto'

				str_rate = mt5_account_type_dict[last_two_months_account_trade['login']]['rate']
				loop_lot_decimal = Decimal(last_two_months_account_trade['lot'])
				loop_rate_decimal = Decimal(str_rate)
				if account_type not in total_lot_dict:
					total_lot_dict[account_type] = {}
				if str_rate not in total_lot_dict[account_type]:
					total_lot_dict[account_type][str_rate] = {}
					total_lot_dict[account_type][str_rate]['total_lot'] = 0
					total_lot_dict[account_type][str_rate]['total_idr'] = 0
					total_lot_dict[account_type][str_rate]['total_usd'] = 0
					total_lot_dict[account_type][str_rate]['bonus_tier'] = ''
				
				total_lot_dict[account_type][str_rate]['total_lot'] += loop_lot_decimal
				two_month_trades[login_id]['total_lot'] += loop_lot_decimal
			# print(type(loop_lot_decimal), type(loop_rate_decimal))
			# total_lot_dict[account_type][str_rate]['total_idr'] += ( loop_lot_decimal * loop_rate_decimal )

		


		# print(last_two_months_account_trades)
		print(total_lot_dict)
		for account_type, rate_trade_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_trade_dict.items():

				loop_total_lot = total_lot_dict[account_type][rate]['total_lot']
				decimal_rate = Decimal(rate)
				if account_type == 'elastico':

					#buat testing
					# total_lot_dict[account_type][rate]['total_lot'] = 30.001

					
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.5)

				elif account_type == 'elektro':
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.5)
					
				elif account_type == 'magneto':
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.5)
					
		print('after')
		

		for account_type, rate_bonus_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_bonus_dict.items():
				print('>', bonus_dict)
				bonus_account_type_dict[account_type]['total_idr'] += bonus_dict['total_idr']
				bonus_account_type_dict[account_type]['total_usd'] += bonus_dict['total_usd']
				bonus_account_type_dict[account_type]['total_lot'] += bonus_dict['total_lot']
				bonus_account_type_dict[account_type]['bonus_tier'] = bonus_dict['bonus_tier']
				bonus_account_type_dict[account_type]['bonus_lot_usd'] = bonus_dict['bonus_lot_usd']


		
		trade_list = []
		# print('0000000')
		# print(mt5_account_type_dict)
		for login_id, detail_dict in two_month_trades.items():
			# print('|||||',two_month_trades[login_id])
			account_type = two_month_trades[login_id]['account_type'] = mt5_account_type_dict[login_id]['account_type'] 
			two_month_trades[login_id]['bonus_lot_usd'] = bonus_account_type_dict[account_type]['bonus_lot_usd']
			two_month_trades[login_id]['total_usd'] = Decimal(two_month_trades[login_id]['total_lot']) * Decimal(two_month_trades[login_id]['bonus_lot_usd'])
			two_month_trades[login_id]['total_idr'] = Decimal(two_month_trades[login_id]['total_usd']) * Decimal(two_month_trades[login_id]['rate'])
		
	
	return bonus_account_type_dict, two_month_trades

def supervisor_calculate_ib_bonus(staffs, now, end_date):
	client_staff_all_list = Client_Staff.objects.filter(
		staff__in=staffs,
		client__is_ib=True,
		is_active=True,).exclude(client__magnet_id='').exclude(client__magnet_id=None).prefetch_related('client')
	print(client_staff_all_list.count(), 'count')
	
	client_detail_magnet_id_dict = {}
	client_staff_dict = {}
	meta_ids_lot_for_api = ''
	for client_staff in client_staff_all_list:
		if client_staff.client.magnet_id != '' and client_staff.client.magnet_id != None:
			meta_ids_lot_for_api += ( client_staff.client.magnet_id + ',')
			if str(client_staff.client.magnet_id) not in client_detail_magnet_id_dict:
				
				client_detail_magnet_id_dict[str(client_staff.client.magnet_id)] = client_staff.client.nama

			if str(client_staff.client.magnet_id) not in client_staff_dict :
				client_staff_dict[str(client_staff.client.magnet_id)] = client_staff.staff

	
	#get meta5 ids
	user_login_details = get_meta5_ids(meta_ids_lot_for_api, None, None)
	print('user_login_details -->', user_login_details)
	meta5_ids = []
	user_magnet_detail_dict = {}
	mt5_account_type_dict = {}
	for user_login_detail in user_login_details:
		#user_login_detail[1] = magnet_id
		user_magnet_id = user_login_detail[1]
		if  user_magnet_id not in user_magnet_detail_dict:
			user_magnet_detail_dict[user_magnet_id] = []
		temp_dict = {}
		temp_dict['rate'] = user_login_detail[4]
		temp_dict['product_name'] = user_login_detail[3]
		temp_dict['cabinet_id'] = user_login_detail[0]
		temp_dict['meta_id'] = user_login_detail[2]
		temp_dict['created_at'] = user_login_detail[5]

		user_magnet_detail_dict[user_magnet_id].append(temp_dict)
		loop_meta_id = str(user_login_detail[2])
		if user_login_detail[2] != None:
			meta5_ids.append(loop_meta_id)
			if loop_meta_id not in mt5_account_type_dict:
				mt5_account_type_dict[loop_meta_id] = {}
			mt5_account_type_dict[loop_meta_id]['account_type'] = user_login_detail[3]
			mt5_account_type_dict[loop_meta_id]['rate'] = user_login_detail[4]
			mt5_account_type_dict[loop_meta_id]['created_at'] = user_login_detail[5]
			mt5_account_type_dict[loop_meta_id]['client_name'] = client_detail_magnet_id_dict[str(user_magnet_id)]
			mt5_account_type_dict[loop_meta_id]['staff_name'] = client_staff_dict[str(user_magnet_id)]

	# print('__________')
	# print(meta5_ids)
	# print(user_magnet_detail_dict)

	meta5_id_string_for_post = ''
	for meta5_id in meta5_ids:
		meta5_id_string_for_post +=  ( str(meta5_id) + ',' )

	two_month_trades = {}
	bonus_account_type_dict = {}
	bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	if meta5_id_string_for_post != '':
		data_post_for_get_login_trades = {
			'logins': meta5_id_string_for_post[:-1],
			'from': str(now.year)+"-"+str(now.month)+"-"+"01",
	        'to':str(now.year)+"-"+str(now.month)+"-"+str(end_date),
		}
		
		
		# print(str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),'str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1])')
		res = requests.post('http://13.229.114.255/getLoginsTrades', data=data_post_for_get_login_trades)
		
		json_data = json.loads(res.text)
		last_two_months_account_trades = json_data['data']

		total_lot_dict = {}
		
		two_month_trades = {}
		utc_timezone = pytz.timezone('Asia/Jakarta')
		

		for last_two_months_account_trade in last_two_months_account_trades:
			if last_two_months_account_trade['entry'] == 'close':
				account_type = mt5_account_type_dict[last_two_months_account_trade['login']]['account_type']
				login_id = str(last_two_months_account_trade['login'])
				#group trades by login
				if last_two_months_account_trade['login'] not in two_month_trades:
					two_month_trades[login_id] = {}
					two_month_trades[login_id]['total_lot'] = 0
					two_month_trades[login_id]['client_name'] = mt5_account_type_dict[login_id]['client_name']
					two_month_trades[login_id]['rate'] = mt5_account_type_dict[login_id]['rate']
					two_month_trades[login_id]['created_at'] = mt5_account_type_dict[login_id]['created_at']
					two_month_trades[login_id]['staff_name'] = mt5_account_type_dict[login_id]['staff_name'] 
					jakarta_timezone = pytz.timezone('Asia/Jakarta')
					created_at_timezone = two_month_trades[login_id]['created_at'].replace(tzinfo=jakarta_timezone)
					two_month_trades[login_id]['account_ages'] = (now - created_at_timezone).days
					two_month_trades[login_id]['total_idr'] = 0
					two_month_trades[login_id]['total_usd'] = 0
					two_month_trades[login_id]['bonus_per_lot'] = 0
				#buat testing
				# account_type = 'magneto'

				str_rate = mt5_account_type_dict[last_two_months_account_trade['login']]['rate']
				loop_lot_decimal = Decimal(last_two_months_account_trade['lot'])
				loop_rate_decimal = Decimal(str_rate)
				if account_type not in total_lot_dict:
					total_lot_dict[account_type] = {}
				if str_rate not in total_lot_dict[account_type]:
					total_lot_dict[account_type][str_rate] = {}
					total_lot_dict[account_type][str_rate]['total_lot'] = 0
					total_lot_dict[account_type][str_rate]['total_idr'] = 0
					total_lot_dict[account_type][str_rate]['total_usd'] = 0
					total_lot_dict[account_type][str_rate]['bonus_tier'] = ''
				
				total_lot_dict[account_type][str_rate]['total_lot'] += loop_lot_decimal
				two_month_trades[login_id]['total_lot'] += loop_lot_decimal
			# print(type(loop_lot_decimal), type(loop_rate_decimal))
			# total_lot_dict[account_type][str_rate]['total_idr'] += ( loop_lot_decimal * loop_rate_decimal )

		


		# print(last_two_months_account_trades)
		print(total_lot_dict)
		for account_type, rate_trade_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_trade_dict.items():

				loop_total_lot = total_lot_dict[account_type][rate]['total_lot']
				decimal_rate = Decimal(rate)
				if account_type == 'elastico':

					#buat testing
					# total_lot_dict[account_type][rate]['total_lot'] = 30.001

					
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1)

				elif account_type == 'elektro':
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.5)
					
				elif account_type == 'magneto':
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.35) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.35) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.35)
					
		print('after')
		

		for account_type, rate_bonus_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_bonus_dict.items():
				print('>', bonus_dict)
				bonus_account_type_dict[account_type]['total_idr'] += bonus_dict['total_idr']
				bonus_account_type_dict[account_type]['total_usd'] += bonus_dict['total_usd']
				bonus_account_type_dict[account_type]['total_lot'] += bonus_dict['total_lot']
				bonus_account_type_dict[account_type]['bonus_tier'] = bonus_dict['bonus_tier']
				bonus_account_type_dict[account_type]['bonus_lot_usd'] = bonus_dict['bonus_lot_usd']


		
		trade_list = []
		# print('0000000')
		# print(mt5_account_type_dict)
		for login_id, detail_dict in two_month_trades.items():
			# print('|||||',two_month_trades[login_id])
			account_type = two_month_trades[login_id]['account_type'] = mt5_account_type_dict[login_id]['account_type'] 
			two_month_trades[login_id]['bonus_lot_usd'] = bonus_account_type_dict[account_type]['bonus_lot_usd']
			two_month_trades[login_id]['total_usd'] = Decimal(two_month_trades[login_id]['total_lot']) * Decimal(two_month_trades[login_id]['bonus_lot_usd'])
			two_month_trades[login_id]['total_idr'] = Decimal(two_month_trades[login_id]['total_usd']) * Decimal(two_month_trades[login_id]['rate'])
		
	
	return bonus_account_type_dict, two_month_trades

def calculate_lot_two_months_bonus(staff, last_two_months_date, now, end_date):

	client_staff_all_list = Client_Staff.objects.filter(
		staff=staff,
		is_active=True,).exclude(client__source_detail_1=2, client__magnet_id='').exclude(client__magnet_id=None).prefetch_related('client')
	print(client_staff_all_list.count(), 'count')
	
	client_detail_magnet_id_dict = {}
	meta_ids_lot_for_api = ''
	for client_staff in client_staff_all_list:
		if client_staff.client.magnet_id != '' and client_staff.client.magnet_id != None:
			meta_ids_lot_for_api += ( client_staff.client.magnet_id + ',')
			if str(client_staff.client.magnet_id) not in client_detail_magnet_id_dict:
				
				client_detail_magnet_id_dict[str(client_staff.client.magnet_id)] = client_staff.client.nama

	print('last_two_months_date', last_two_months_date,)
	
	#get meta5 ids
	user_login_details = get_meta5_ids(meta_ids_lot_for_api, last_two_months_date, 'two_months')
	print('user_login_details -->', user_login_details)
	meta5_ids = []
	user_magnet_detail_dict = {}
	mt5_account_type_dict = {}
	for user_login_detail in user_login_details:
		#user_login_detail[1] = magnet_id
		user_magnet_id = user_login_detail[1]
		if  user_magnet_id not in user_magnet_detail_dict:
			user_magnet_detail_dict[user_magnet_id] = []
		temp_dict = {}
		temp_dict['rate'] = user_login_detail[4]
		temp_dict['product_name'] = user_login_detail[3]
		temp_dict['cabinet_id'] = user_login_detail[0]
		temp_dict['meta_id'] = user_login_detail[2]
		temp_dict['created_at'] = user_login_detail[5]

		user_magnet_detail_dict[user_magnet_id].append(temp_dict)
		loop_meta_id = str(user_login_detail[2])
		if user_login_detail[2] != None:
			meta5_ids.append(loop_meta_id)
			if loop_meta_id not in mt5_account_type_dict:
				mt5_account_type_dict[loop_meta_id] = {}
			mt5_account_type_dict[loop_meta_id]['account_type'] = user_login_detail[3]
			mt5_account_type_dict[loop_meta_id]['rate'] = user_login_detail[4]
			mt5_account_type_dict[loop_meta_id]['created_at'] = user_login_detail[5]
			mt5_account_type_dict[loop_meta_id]['client_name'] = client_detail_magnet_id_dict[str(user_magnet_id)]

	# print('__________')
	# print(meta5_ids)
	# print(user_magnet_detail_dict)

	meta5_id_string_for_post = ''
	for meta5_id in meta5_ids:
		meta5_id_string_for_post +=  ( str(meta5_id) + ',' )

	two_month_trades = {}
	bonus_account_type_dict = {}
	bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	if meta5_id_string_for_post != '':
		data_post_for_get_login_trades = {
			'logins': meta5_id_string_for_post[:-1],
			'from': str(now.year)+"-"+str(now.month)+"-"+"01",
	        'to':str(now.year)+"-"+str(now.month)+"-"+str(end_date),
		}
		print('data_post_for_get_login_trades two months',data_post_for_get_login_trades)
		
		# print(str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),'str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1])')
		res = requests.post('http://13.229.114.255/getLoginsTrades', data=data_post_for_get_login_trades)
		
		json_data = json.loads(res.text)
		last_two_months_account_trades = json_data['data']

		total_lot_dict = {}
		
		two_month_trades = {}
		utc_timezone = pytz.timezone('Asia/Jakarta')
		

		for last_two_months_account_trade in last_two_months_account_trades:
			if last_two_months_account_trade['entry'] == 'close':
				account_type = mt5_account_type_dict[last_two_months_account_trade['login']]['account_type']
				login_id = str(last_two_months_account_trade['login'])
				#group trades by login
				if last_two_months_account_trade['login'] not in two_month_trades:
					two_month_trades[login_id] = {}
					two_month_trades[login_id]['total_lot'] = 0
					two_month_trades[login_id]['client_name'] = mt5_account_type_dict[login_id]['client_name']
					two_month_trades[login_id]['rate'] = mt5_account_type_dict[login_id]['rate']
					two_month_trades[login_id]['created_at'] = mt5_account_type_dict[login_id]['created_at']
					jakarta_timezone = pytz.timezone('Asia/Jakarta')
					created_at_timezone = two_month_trades[login_id]['created_at'].replace(tzinfo=jakarta_timezone)
					two_month_trades[login_id]['account_ages'] = (now - created_at_timezone).days
					two_month_trades[login_id]['total_idr'] = 0
					two_month_trades[login_id]['total_usd'] = 0
					two_month_trades[login_id]['bonus_per_lot'] = 0
				#buat testing
				# account_type = 'magneto'

				str_rate = mt5_account_type_dict[last_two_months_account_trade['login']]['rate']
				print('[][]', account_type, str_rate)
				loop_lot_decimal = Decimal(last_two_months_account_trade['lot'])
				loop_rate_decimal = Decimal(str_rate)
				if account_type not in total_lot_dict:
					total_lot_dict[account_type] = {}
				if str_rate not in total_lot_dict[account_type]:
					total_lot_dict[account_type][str_rate] = {}
					total_lot_dict[account_type][str_rate]['total_lot'] = 0
					total_lot_dict[account_type][str_rate]['total_idr'] = 0
					total_lot_dict[account_type][str_rate]['total_usd'] = 0
					total_lot_dict[account_type][str_rate]['bonus_tier'] = ''
				
				total_lot_dict[account_type][str_rate]['total_lot'] += loop_lot_decimal
				two_month_trades[login_id]['total_lot'] += loop_lot_decimal
			# print(type(loop_lot_decimal), type(loop_rate_decimal))
			# total_lot_dict[account_type][str_rate]['total_idr'] += ( loop_lot_decimal * loop_rate_decimal )

		


		# print(last_two_months_account_trades)
		print('++++++++', total_lot_dict)
		for account_type, rate_trade_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_trade_dict.items():

				loop_total_lot = total_lot_dict[account_type][rate]['total_lot']
				decimal_rate = Decimal(rate)
				if account_type == 'elastico':

					#buat testing
					# total_lot_dict[account_type][rate]['total_lot'] = 30.001

					
					if loop_total_lot < 29.99:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1) )
						total_lot_dict[account_type][rate]['total_usd'] += ( loop_total_lot * Decimal(1) )
						total_lot_dict[account_type][rate]['bonus_tier'] = 'Tier 1'
						total_lot_dict[account_type][rate]['bonus_lot_usd'] = Decimal(1)

					else:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1.75) )
						total_lot_dict[account_type][rate]['total_usd'] += ( loop_total_lot * Decimal(1.75) )
						total_lot_dict[account_type][rate]['bonus_tier'] = 'Tier 2'
						total_lot_dict[account_type][rate]['bonus_lot_usd'] = Decimal(1.75)
				elif account_type == 'elektro':
					if loop_total_lot < 49.99:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.75) )
						total_lot_dict[account_type][rate]['total_usd'] += ( loop_total_lot * Decimal(0.75) )
						total_lot_dict[account_type][rate]['bonus_tier'] = 'Tier 1'
						total_lot_dict[account_type][rate]['bonus_lot_usd'] = Decimal(0.75)
					else:
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1) )
						total_lot_dict[account_type][rate]['total_usd'] += ( loop_total_lot * Decimal(1) )
						total_lot_dict[account_type][rate]['bonus_tier'] = 'Tier 2'
						total_lot_dict[account_type][rate]['bonus_lot_usd'] = Decimal(1)
				elif account_type == 'magneto':
					if loop_total_lot < 99.99:
						print('error disini', total_lot_dict[account_type], str_rate)
						total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(2) )
						total_lot_dict[account_type][rate]['total_usd'] += ( loop_total_lot * Decimal(2) )
						total_lot_dict[account_type][rate]['bonus_tier'] = 'Tier 1'
						total_lot_dict[account_type][rate]['bonus_lot_usd'] = Decimal(2)
					else:
						total_lot_dict[account_type][str_rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(3) )
						total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(3) )
						total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
						total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(3)
		print('after')
		

		for account_type, rate_bonus_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_bonus_dict.items():
				print('>', bonus_dict)
				bonus_account_type_dict[account_type]['total_idr'] += bonus_dict['total_idr']
				bonus_account_type_dict[account_type]['total_usd'] += bonus_dict['total_usd']
				bonus_account_type_dict[account_type]['total_lot'] += bonus_dict['total_lot']
				bonus_account_type_dict[account_type]['bonus_tier'] = bonus_dict['bonus_tier']
				bonus_account_type_dict[account_type]['bonus_lot_usd'] = bonus_dict['bonus_lot_usd']


		
		trade_list = []
		# print('0000000')
		# print(mt5_account_type_dict)
		for login_id, detail_dict in two_month_trades.items():
			# print('|||||',two_month_trades[login_id])
			account_type = two_month_trades[login_id]['account_type'] = mt5_account_type_dict[login_id]['account_type'] 
			two_month_trades[login_id]['bonus_lot_usd'] = bonus_account_type_dict[account_type]['bonus_lot_usd']
			two_month_trades[login_id]['total_usd'] = Decimal(two_month_trades[login_id]['total_lot']) * Decimal(two_month_trades[login_id]['bonus_lot_usd'])
			two_month_trades[login_id]['total_idr'] = Decimal(two_month_trades[login_id]['total_usd']) * Decimal(two_month_trades[login_id]['rate'])
		
	
	return bonus_account_type_dict, two_month_trades

def calculate_lot_more_than_two_months_bonus(staff, last_two_months_date, now, end_date):
	client_staff_all_list = Client_Staff.objects.filter(
		staff=staff,
		client__magnet_created_at__lt= last_two_months_date,
		is_active=True,).exclude(client__source_detail_1=2, client__magnet_id='').exclude(client__magnet_id=None).prefetch_related('client')
	
	two_month_trades = {}
	bonus_account_type_dict = {}
	bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}


	client_magnet_id_created_at_dict = {}
	client_detail_magnet_id_dict = {}
	meta_ids_lot_for_api = ''
	for client_staff in client_staff_all_list:
		if client_staff.client.magnet_id != '' and client_staff != None:
			meta_ids_lot_for_api += ( client_staff.client.magnet_id + ',')
			if str(client_staff.client.magnet_id) not in client_magnet_id_created_at_dict:
				client_magnet_id_created_at_dict[str(client_staff.client.magnet_id)] = client_staff.client.magnet_created_at
				client_detail_magnet_id_dict[str(client_staff.client.magnet_id)] = client_staff.client.nama

	
	#get meta5 ids
	user_login_details = get_meta5_ids(meta_ids_lot_for_api, last_two_months_date, 'more_than_two_months')
	print(len(user_login_details),user_login_details ,  'mati disini')
	if len(user_login_details) > 0:
		print('more than two months user login details', user_login_details)
		meta5_ids = []
		user_magnet_detail_dict = {}
		mt5_account_type_dict = {}
		for user_login_detail in user_login_details:
			#user_login_detail[1] = magnet_id
			user_magnet_id = user_login_detail[1]
			if  user_magnet_id not in user_magnet_detail_dict:
				user_magnet_detail_dict[user_magnet_id] = []
			temp_dict = {}
			temp_dict['rate'] = user_login_detail[4]
			temp_dict['product_name'] = user_login_detail[3]
			temp_dict['cabinet_id'] = user_login_detail[0]
			temp_dict['meta_id'] = user_login_detail[2]
			

			user_magnet_detail_dict[user_magnet_id].append(temp_dict)
			loop_meta_id = str(user_login_detail[2])
			if user_login_detail[2] != None:
				meta5_ids.append(loop_meta_id)
				if loop_meta_id not in mt5_account_type_dict:
					mt5_account_type_dict[loop_meta_id] = {}
				mt5_account_type_dict[loop_meta_id]['account_type'] = user_login_detail[3]
				mt5_account_type_dict[loop_meta_id]['rate'] = user_login_detail[4]
				mt5_account_type_dict[loop_meta_id]['created_at'] = client_magnet_id_created_at_dict[str(user_magnet_id)]
				mt5_account_type_dict[loop_meta_id]['client_name'] = client_detail_magnet_id_dict[str(user_magnet_id)]

		# print('__________')
		# print(meta5_ids)
		# print(user_magnet_detail_dict)

		meta5_id_string_for_post = ''
		
		for meta5_id in meta5_ids:
			meta5_id_string_for_post +=  ( str(meta5_id) + ',' )


		if meta5_id_string_for_post != '':
			data_post_for_get_login_trades = {
				'logins': meta5_id_string_for_post[:-1],
				'from': str(now.year)+"-"+str(now.month)+"-"+"01",
		        'to':str(now.year)+"-"+str(now.month)+"-"+str(end_date),
			}
			print(data_post_for_get_login_trades)
			
			# print(str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),'str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1])')
			res = requests.post('http://13.229.114.255/getLoginsTrades', data=data_post_for_get_login_trades)
			
			json_data = json.loads(res.text)
			print('json_data', json_data)
			last_two_months_account_trades = json_data['data']
			total_lot_dict = {}
			
			
			print('more than two months trades', last_two_months_account_trades)
			for last_two_months_account_trade in last_two_months_account_trades:
				if last_two_months_account_trade['action'] == 'buy':
					account_type = mt5_account_type_dict[last_two_months_account_trade['login']]['account_type']
					login_id = str(last_two_months_account_trade['login'])
					jakarta_timezone = pytz.timezone('Asia/Jakarta')
					created_at_timezone = two_month_trades[login_id]['created_at'].replace(tzinfo=jakarta_timezone)

					if last_two_months_account_trade['login'] not in two_month_trades:
						two_month_trades[login_id] = {}
						two_month_trades[login_id]['total_lot'] = 0
						two_month_trades[login_id]['client_name'] = mt5_account_type_dict[login_id]['client_name']
						two_month_trades[login_id]['rate'] = mt5_account_type_dict[login_id]['rate']
						two_month_trades[login_id]['created_at'] = mt5_account_type_dict[login_id]['created_at']
						two_month_trades[login_id]['account_ages'] = (now - created_at_timezone).days
						two_month_trades[login_id]['total_idr'] = 0
						two_month_trades[login_id]['total_usd'] = 0
						two_month_trades[login_id]['bonus_per_lot'] = 0
					#buat testing
					# account_type = 'magneto'

					str_rate = mt5_account_type_dict[last_two_months_account_trade['login']]['rate']
					loop_lot_decimal = Decimal(last_two_months_account_trade['lot'])
					loop_rate_decimal = Decimal(str_rate)
					if account_type not in total_lot_dict:
						total_lot_dict[account_type] = {}
					if str_rate not in total_lot_dict[account_type]:
						total_lot_dict[account_type][str_rate] = {}
						total_lot_dict[account_type][str_rate]['total_lot'] = 0
						total_lot_dict[account_type][str_rate]['total_idr'] = 0
						total_lot_dict[account_type][str_rate]['total_usd'] = 0
						total_lot_dict[account_type][str_rate]['bonus_tier'] = ''
					
					total_lot_dict[account_type][str_rate]['total_lot'] += loop_lot_decimal
					two_month_trades[login_id]['total_lot'] += loop_lot_decimal
				# print(type(loop_lot_decimal), type(loop_rate_decimal))
				# total_lot_dict[account_type][str_rate]['total_idr'] += ( loop_lot_decimal * loop_rate_decimal )

			


			# print(last_two_months_account_trades)
			print(total_lot_dict)
			for account_type, rate_trade_dict in total_lot_dict.items():
				for rate, bonus_dict in rate_trade_dict.items():

					loop_total_lot = total_lot_dict[account_type][rate]['total_lot']
					decimal_rate = Decimal(rate)
					if account_type == 'elastico':

						#buat testing
						# total_lot_dict[account_type][rate]['total_lot'] = 30.001

						
						if loop_total_lot < 29.99:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1)

						else:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1.75) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1.75) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1.75)
					elif account_type == 'elektro':
						if loop_total_lot < 49.99:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.75) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.75) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.75)
						else:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1)
					elif account_type == 'magneto':
						if loop_total_lot < 99.99:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(2) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(2) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(2)
						else:
							total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(3) )
							total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(3) )
							total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 2'
							total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(3)
			print('after')
			bonus_account_type_dict = {}
			bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
			bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
			bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

			for account_type, rate_bonus_dict in total_lot_dict.items():
				for rate, bonus_dict in rate_bonus_dict.items():
					print('>', bonus_dict)
					bonus_account_type_dict[account_type]['total_idr'] += bonus_dict['total_idr']
					bonus_account_type_dict[account_type]['total_usd'] += bonus_dict['total_usd']
					bonus_account_type_dict[account_type]['total_lot'] += bonus_dict['total_lot']
					bonus_account_type_dict[account_type]['bonus_tier'] = bonus_dict['bonus_tier']
					bonus_account_type_dict[account_type]['bonus_lot_usd'] = bonus_dict['bonus_lot_usd']


			
			trade_list = []
			print('0000000')
			print(mt5_account_type_dict)
			for login_id, detail_dict in two_month_trades.items():
				# print('|||||',two_month_trades[login_id])
				account_type = two_month_trades[login_id]['account_type'] = mt5_account_type_dict[login_id]['account_type'] 
				two_month_trades[login_id]['bonus_lot_usd'] = bonus_account_type_dict[account_type]['bonus_lot_usd']
				two_month_trades[login_id]['total_usd'] = Decimal(two_month_trades[login_id]['total_lot']) * Decimal(two_month_trades[login_id]['bonus_lot_usd'])
				two_month_trades[login_id]['total_idr'] = Decimal(two_month_trades[login_id]['total_usd']) * Decimal(two_month_trades[login_id]['rate'])
				


			print('finish more than two months', two_month_trades)
			print(two_month_trades)

		return bonus_account_type_dict, two_month_trades
	else:
		return bonus_account_type_dict, {}

def calculate_data_pribadi_bonus(staff, now, end_date):
	client_staff_all_list = Client_Staff.objects.filter(
		staff=staff,
		client__source_detail_1=2,
		is_active=True).exclude(  (Q(client__magnet_id='') & Q(client__magnet_id=None)) ).prefetch_related('client')
	print(client_staff_all_list.count(), 'count')
	
	client_detail_magnet_id_dict = {}
	meta_ids_lot_for_api = ''
	for client_staff in client_staff_all_list:
		if client_staff.client.magnet_id != None and client_staff.client.magnet_id != '':
			meta_ids_lot_for_api += ( client_staff.client.magnet_id + ',')
			if str(client_staff.client.magnet_id) not in client_detail_magnet_id_dict:
				
				client_detail_magnet_id_dict[str(client_staff.client.magnet_id)] = client_staff.client.nama

	
	#get meta5 ids
	user_login_details = get_meta5_ids(meta_ids_lot_for_api, None, None)
	
	meta5_ids = []
	user_magnet_detail_dict = {}
	mt5_account_type_dict = {}
	for user_login_detail in user_login_details:
		#user_login_detail[1] = magnet_id
		user_magnet_id = user_login_detail[1]
		if  user_magnet_id not in user_magnet_detail_dict:
			user_magnet_detail_dict[user_magnet_id] = []
		temp_dict = {}
		temp_dict['rate'] = user_login_detail[4]
		temp_dict['product_name'] = user_login_detail[3]
		temp_dict['cabinet_id'] = user_login_detail[0]
		temp_dict['meta_id'] = user_login_detail[2]
		temp_dict['created_at'] = user_login_detail[5]

		user_magnet_detail_dict[user_magnet_id].append(temp_dict)
		loop_meta_id = str(user_login_detail[2])
		if user_login_detail[2] != None:
			meta5_ids.append(loop_meta_id)
			if loop_meta_id not in mt5_account_type_dict:
				mt5_account_type_dict[loop_meta_id] = {}
			mt5_account_type_dict[loop_meta_id]['account_type'] = user_login_detail[3]
			mt5_account_type_dict[loop_meta_id]['rate'] = user_login_detail[4]
			mt5_account_type_dict[loop_meta_id]['created_at'] = user_login_detail[5]
			mt5_account_type_dict[loop_meta_id]['client_name'] = client_detail_magnet_id_dict[str(user_magnet_id)]

	# print('__________')
	# print(meta5_ids)
	# print(user_magnet_detail_dict)

	meta5_id_string_for_post = ''
	for meta5_id in meta5_ids:
		meta5_id_string_for_post +=  ( str(meta5_id) + ',' )

	two_month_trades = {}
	bonus_account_type_dict = {}
	bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	if meta5_id_string_for_post != '':
		data_post_for_get_login_trades = {
			'logins': meta5_id_string_for_post[:-1],
			'from': str(now.year)+"-"+str(now.month)+"-"+"01",
	        'to':str(now.year)+"-"+str(now.month)+"-"+str(end_date),
		}
		
		
		# print(str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),'str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1])')
		res = requests.post('http://13.229.114.255/getLoginsTrades', data=data_post_for_get_login_trades)
		
		json_data = json.loads(res.text)
		last_two_months_account_trades = json_data['data']

		total_lot_dict = {}
		
		two_month_trades = {}
		utc_timezone = pytz.timezone('Asia/Jakarta')
		

		for last_two_months_account_trade in last_two_months_account_trades:
			if last_two_months_account_trade['entry'] == 'close':
				account_type = mt5_account_type_dict[last_two_months_account_trade['login']]['account_type']
				login_id = str(last_two_months_account_trade['login'])
				#group trades by login
				if last_two_months_account_trade['login'] not in two_month_trades:
					two_month_trades[login_id] = {}
					two_month_trades[login_id]['total_lot'] = 0
					two_month_trades[login_id]['client_name'] = mt5_account_type_dict[login_id]['client_name']
					two_month_trades[login_id]['rate'] = mt5_account_type_dict[login_id]['rate']
					two_month_trades[login_id]['created_at'] = mt5_account_type_dict[login_id]['created_at']
					jakarta_timezone = pytz.timezone('Asia/Jakarta')
					created_at_timezone = two_month_trades[login_id]['created_at'].replace(tzinfo=jakarta_timezone)
					two_month_trades[login_id]['account_ages'] = (now - created_at_timezone).days
					two_month_trades[login_id]['total_idr'] = 0
					two_month_trades[login_id]['total_usd'] = 0
					two_month_trades[login_id]['bonus_per_lot'] = 0
				#buat testing
				# account_type = 'magneto'

				str_rate = mt5_account_type_dict[last_two_months_account_trade['login']]['rate']
				loop_lot_decimal = Decimal(last_two_months_account_trade['lot'])
				loop_rate_decimal = Decimal(str_rate)
				if account_type not in total_lot_dict:
					total_lot_dict[account_type] = {}
				if str_rate not in total_lot_dict[account_type]:
					total_lot_dict[account_type][str_rate] = {}
					total_lot_dict[account_type][str_rate]['total_lot'] = 0
					total_lot_dict[account_type][str_rate]['total_idr'] = 0
					total_lot_dict[account_type][str_rate]['total_usd'] = 0
					total_lot_dict[account_type][str_rate]['bonus_tier'] = ''
				
				total_lot_dict[account_type][str_rate]['total_lot'] += loop_lot_decimal
				two_month_trades[login_id]['total_lot'] += loop_lot_decimal
			# print(type(loop_lot_decimal), type(loop_rate_decimal))
			# total_lot_dict[account_type][str_rate]['total_idr'] += ( loop_lot_decimal * loop_rate_decimal )

		


		# print(last_two_months_account_trades)
		print(total_lot_dict)
		for account_type, rate_trade_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_trade_dict.items():

				loop_total_lot = total_lot_dict[account_type][rate]['total_lot']
				decimal_rate = Decimal(rate)
				if account_type == 'elastico':

					#buat testing
					# total_lot_dict[account_type][rate]['total_lot'] = 30.001

					
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(3) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(3) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(3)

				elif account_type == 'elektro':
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1)
					
				elif account_type == 'magneto':
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(4) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(4) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(4)
					
		print('after')
		

		for account_type, rate_bonus_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_bonus_dict.items():
				print('>', bonus_dict)
				bonus_account_type_dict[account_type]['total_idr'] += bonus_dict['total_idr']
				bonus_account_type_dict[account_type]['total_usd'] += bonus_dict['total_usd']
				bonus_account_type_dict[account_type]['total_lot'] += bonus_dict['total_lot']
				bonus_account_type_dict[account_type]['bonus_tier'] = bonus_dict['bonus_tier']
				bonus_account_type_dict[account_type]['bonus_lot_usd'] = bonus_dict['bonus_lot_usd']


		
		trade_list = []
		# print('0000000')
		# print(mt5_account_type_dict)
		for login_id, detail_dict in two_month_trades.items():
			# print('|||||',two_month_trades[login_id])
			account_type = two_month_trades[login_id]['account_type'] = mt5_account_type_dict[login_id]['account_type'] 
			two_month_trades[login_id]['bonus_lot_usd'] = bonus_account_type_dict[account_type]['bonus_lot_usd']
			two_month_trades[login_id]['total_usd'] = Decimal(two_month_trades[login_id]['total_lot']) * Decimal(two_month_trades[login_id]['bonus_lot_usd'])
			two_month_trades[login_id]['total_idr'] = Decimal(two_month_trades[login_id]['total_usd']) * Decimal(two_month_trades[login_id]['rate'])
		
	
	return bonus_account_type_dict, two_month_trades

def calculate_ib_bonus(staff, now, end_date):
	client_staff_all_list = Client_Staff.objects.filter(
		staff=staff,
		client__is_ib=True,
		is_active=True,).exclude(  (Q(client__magnet_id='') & Q(client__magnet_id=None)) ).prefetch_related('client')
	print(client_staff_all_list.count(), 'count')
	
	client_detail_magnet_id_dict = {}
	meta_ids_lot_for_api = ''
	for client_staff in client_staff_all_list:
		if client_staff.client.magnet_id != None and client_staff.client.magnet_id != '':
			meta_ids_lot_for_api += ( client_staff.client.magnet_id + ',')
			if str(client_staff.client.magnet_id) not in client_detail_magnet_id_dict:
				
				client_detail_magnet_id_dict[str(client_staff.client.magnet_id)] = client_staff.client.nama

	
	#get meta5 ids
	user_login_details = get_meta5_ids(meta_ids_lot_for_api, None, None)
	print('user_login_details -->', user_login_details)
	meta5_ids = []
	user_magnet_detail_dict = {}
	mt5_account_type_dict = {}
	for user_login_detail in user_login_details:
		#user_login_detail[1] = magnet_id
		user_magnet_id = user_login_detail[1]
		if  user_magnet_id not in user_magnet_detail_dict:
			user_magnet_detail_dict[user_magnet_id] = []
		temp_dict = {}
		temp_dict['rate'] = user_login_detail[4]
		temp_dict['product_name'] = user_login_detail[3]
		temp_dict['cabinet_id'] = user_login_detail[0]
		temp_dict['meta_id'] = user_login_detail[2]
		temp_dict['created_at'] = user_login_detail[5]

		user_magnet_detail_dict[user_magnet_id].append(temp_dict)
		loop_meta_id = str(user_login_detail[2])
		if user_login_detail[2] != None:
			meta5_ids.append(loop_meta_id)
			if loop_meta_id not in mt5_account_type_dict:
				mt5_account_type_dict[loop_meta_id] = {}
			mt5_account_type_dict[loop_meta_id]['account_type'] = user_login_detail[3]
			mt5_account_type_dict[loop_meta_id]['rate'] = user_login_detail[4]
			mt5_account_type_dict[loop_meta_id]['created_at'] = user_login_detail[5]
			mt5_account_type_dict[loop_meta_id]['client_name'] = client_detail_magnet_id_dict[str(user_magnet_id)]

	# print('__________')
	# print(meta5_ids)
	# print(user_magnet_detail_dict)

	meta5_id_string_for_post = ''
	for meta5_id in meta5_ids:
		meta5_id_string_for_post +=  ( str(meta5_id) + ',' )

	two_month_trades = {}
	bonus_account_type_dict = {}
	bonus_account_type_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
	bonus_account_type_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	if meta5_id_string_for_post != '':
		data_post_for_get_login_trades = {
			'logins': meta5_id_string_for_post[:-1],
			'from': str(now.year)+"-"+str(now.month)+"-"+"01",
	        'to':str(now.year)+"-"+str(now.month)+"-"+str(end_date),
		}
		
		
		# print(str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),'str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1])')
		res = requests.post('http://13.229.114.255/getLoginsTrades', data=data_post_for_get_login_trades)
		
		json_data = json.loads(res.text)
		last_two_months_account_trades = json_data['data']

		total_lot_dict = {}
		
		two_month_trades = {}
		utc_timezone = pytz.timezone('Asia/Jakarta')
		

		for last_two_months_account_trade in last_two_months_account_trades:
			if last_two_months_account_trade['entry'] == 'close':
				account_type = mt5_account_type_dict[last_two_months_account_trade['login']]['account_type']
				login_id = str(last_two_months_account_trade['login'])
				#group trades by login
				if last_two_months_account_trade['login'] not in two_month_trades:
					two_month_trades[login_id] = {}
					two_month_trades[login_id]['total_lot'] = 0
					two_month_trades[login_id]['client_name'] = mt5_account_type_dict[login_id]['client_name']
					two_month_trades[login_id]['rate'] = mt5_account_type_dict[login_id]['rate']
					two_month_trades[login_id]['created_at'] = mt5_account_type_dict[login_id]['created_at']
					jakarta_timezone = pytz.timezone('Asia/Jakarta')
					created_at_timezone = two_month_trades[login_id]['created_at'].replace(tzinfo=jakarta_timezone)
					two_month_trades[login_id]['account_ages'] = (now - created_at_timezone).days
					two_month_trades[login_id]['total_idr'] = 0
					two_month_trades[login_id]['total_usd'] = 0
					two_month_trades[login_id]['bonus_per_lot'] = 0
				#buat testing
				# account_type = 'magneto'

				str_rate = mt5_account_type_dict[last_two_months_account_trade['login']]['rate']
				loop_lot_decimal = Decimal(last_two_months_account_trade['lot'])
				loop_rate_decimal = Decimal(str_rate)
				if account_type not in total_lot_dict:
					total_lot_dict[account_type] = {}
				if str_rate not in total_lot_dict[account_type]:
					total_lot_dict[account_type][str_rate] = {}
					total_lot_dict[account_type][str_rate]['total_lot'] = 0
					total_lot_dict[account_type][str_rate]['total_idr'] = 0
					total_lot_dict[account_type][str_rate]['total_usd'] = 0
					total_lot_dict[account_type][str_rate]['bonus_tier'] = ''
				
				total_lot_dict[account_type][str_rate]['total_lot'] += loop_lot_decimal
				two_month_trades[login_id]['total_lot'] += loop_lot_decimal
			# print(type(loop_lot_decimal), type(loop_rate_decimal))
			# total_lot_dict[account_type][str_rate]['total_idr'] += ( loop_lot_decimal * loop_rate_decimal )

		


		# print(last_two_months_account_trades)
		print(total_lot_dict)
		for account_type, rate_trade_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_trade_dict.items():

				loop_total_lot = total_lot_dict[account_type][rate]['total_lot']
				decimal_rate = Decimal(rate)
				if account_type == 'elastico':

					#buat testing
					# total_lot_dict[account_type][rate]['total_lot'] = 30.001

					
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(1) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(1) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(1)

				elif account_type == 'elektro':
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.5) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.5)
					
				elif account_type == 'magneto':
					
					total_lot_dict[account_type][rate]['total_idr'] += ( loop_total_lot * decimal_rate * Decimal(0.35) )
					total_lot_dict[account_type][str_rate]['total_usd'] += ( loop_total_lot * Decimal(0.35) )
					total_lot_dict[account_type][str_rate]['bonus_tier'] = 'Tier 1'
					total_lot_dict[account_type][str_rate]['bonus_lot_usd'] = Decimal(0.35)
					
		print('after')
		

		for account_type, rate_bonus_dict in total_lot_dict.items():
			for rate, bonus_dict in rate_bonus_dict.items():
				print('>', bonus_dict)
				bonus_account_type_dict[account_type]['total_idr'] += bonus_dict['total_idr']
				bonus_account_type_dict[account_type]['total_usd'] += bonus_dict['total_usd']
				bonus_account_type_dict[account_type]['total_lot'] += bonus_dict['total_lot']
				bonus_account_type_dict[account_type]['bonus_tier'] = bonus_dict['bonus_tier']
				bonus_account_type_dict[account_type]['bonus_lot_usd'] = bonus_dict['bonus_lot_usd']


		
		trade_list = []
		# print('0000000')
		# print(mt5_account_type_dict)
		for login_id, detail_dict in two_month_trades.items():
			# print('|||||',two_month_trades[login_id])
			account_type = two_month_trades[login_id]['account_type'] = mt5_account_type_dict[login_id]['account_type'] 
			two_month_trades[login_id]['bonus_lot_usd'] = bonus_account_type_dict[account_type]['bonus_lot_usd']
			two_month_trades[login_id]['total_usd'] = Decimal(two_month_trades[login_id]['total_lot']) * Decimal(two_month_trades[login_id]['bonus_lot_usd'])
			two_month_trades[login_id]['total_idr'] = Decimal(two_month_trades[login_id]['total_usd']) * Decimal(two_month_trades[login_id]['rate'])
		
	
	return bonus_account_type_dict, two_month_trades

def get_all_clinet_bonus(clients,staff,now):
	clients = Client.objects.filter(id__in=clients)
		
	client_dict={}
	
	for x in clients:
		client_dict[x.magnet_id] = x

	try:
		with transaction.atomic():

			cnx = mysql.connector.connect(
				host="54.151.138.128",
				user='ivan',
				password='MajuBersama123',
				database='vifx'
			)

			magnet_user_ids = []
			dict_personal = []
			for x in clients:
				magnet_user_ids.append(x.magnet_id)
				if x.source == 0:
					dict_personal.append(x.magnet_id)
		
			print(magnet_user_ids,'magnet_user_ids')
			# print("Select id, user_id, login, account_type FROM vif_cabinet_legal_form_decleration WHERE user_id in ("+ str(magnet_user_ids)[:-1][1:]+ ") ORDER BY 'id' DESC LIMIT 2")

			mycursor = cnx.cursor()
			mycursor.execute("Select id, user_id, login, account_type, rate FROM vif_cabinet_legal_form_decleration WHERE user_id in ("+ str(magnet_user_ids)[:-1][1:]+ ") ORDER BY 'id' DESC ")
			login_mt5_ids = []
			myresult = mycursor.fetchall()
			print(myresult,"myresult")
			client_user_id_login_dict = {}
			account_type_dict = {}
			rate_dict = {}

			for myresult in myresult:
				if myresult[2] != 'None' and myresult[2] != None:
					client_user_id_login_dict[str(myresult[2])]=str(myresult[1])
					login_mt5_ids.append(myresult[2])
					account_type_dict[str(myresult[2])] = myresult[3]
					rate_dict[str(myresult[2])] = myresult[4]

			print("account_type_dict",account_type_dict)
			login_mt5_ids = (str(login_mt5_ids)[:-1][1:]).replace(" ","")
			# print("login_mt5_ids",login_mt5_ids)

			# now = timezone.now()
			data = {
				# 'logins': login_mt5_ids,
				'logins': login_mt5_ids,
				'from': str(now.year)+"-"+str(now.month)+"-"+"01",
                'to':str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),
			}
			# print(str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),'str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1])')
			res = requests.post('http://54.151.138.128/getLoginsTrades', data=data)
			json_data = json.loads(res.text)
			# print("json_data['data']",json_data['data'])


			login_dict = {}
			if 'data' in json_data:
				for data in json_data['data']:
					if data['action'] == 'buy':
						print("float(data['lot'])",float(data['lot']))
						if data['login'] not in login_dict:
							login_dict[data['login']] = Decimal(data['lot'])
						else:
							login_dict[data['login']] += Decimal(data['lot'])

				

			print(login_dict,"login_dict") 


			account_types = ['magneto','elektro','elastico']
			total_lot = {
				'magneto':0,
				'magneto_pribadi':0,
				'elektro':0,
				'elektro_pribadi':0,
				'elastico':0,
				'elastico_pribadi':0,
			}

			bonus_month_login_dict = {}
			counter_temp = 1
			for acc_type in account_types:
				for x in login_dict:
					if acc_type == account_type_dict[x]:
						print("account_type_dict[x]",account_type_dict,account_type_dict[x],login_dict[x])
						# print("client_user_id_login_dict[x]",client_user_id_login_dict[x],dict_personal)
						if client_user_id_login_dict[x] in dict_personal:
							total_lot[acc_type+'_pribadi'] += login_dict[x]
						else:
							total_lot[acc_type] += login_dict[x]
						counter_temp+=1
						# total_lot[acc_type] += login_dict[x]

			print("total_lot",total_lot)
			display_bonus_dict = {}
			bonus_month_dict = {}
			for data_lot in login_dict:
				print("data_lot",data_lot)
				display_bonus_dict[data_lot] = {}
				display_bonus_dict[data_lot]['account_type'] = account_type_dict[data_lot]
				display_bonus_dict[data_lot]['bonus'] = 0
				display_bonus_dict[data_lot]['lot'] = login_dict[data_lot]
				print(dict_personal,client_user_id_login_dict[data_lot])
				if client_user_id_login_dict[data_lot] in dict_personal:
					print("Masuk personal")
					display_bonus_dict[data_lot]['is_personal'] = True
				else:
					print("Tidak Masuk personal")
					display_bonus_dict[data_lot]['is_personal'] = False
				if data_lot not in bonus_month_dict:
					bonus_month_dict[data_lot] = {}	
				print("client_user_id_login_dict[data_lot]",client_user_id_login_dict[data_lot])
				bonus_month_dict[data_lot]['month'] = client_dict[client_user_id_login_dict[data_lot]].created_at - now

			print("bonus_month_dict",bonus_month_dict)
			print("display_bonus_dict",display_bonus_dict)
			total_bonus = 0
			total_bonus_pribadi = 0
			counter = 1

			info_account_dict = {}
			for acc_type in total_lot:
				print("acc_type",acc_type)
				# print("data_lot",data_lot,login_dict[data_lot],account_type_dict[data_lot])				

				# Start
				data_kantor = True if '_pribadi' not in acc_type else False

				# print("data_kantor ",data_kantor)
				pos = staff.staff_level.level_name
				is_pribadi = False
				if '_pribadi' not in acc_type:
					account_type = acc_type
					is_pribadi = False
				else:
					account_type = acc_type.replace("_pribadi","")
					is_pribadi = True
					
				# print(data_kantor,account_type,)
				month = 1
				bonus = 0
				commision = 0

				lot = total_lot[acc_type]
				info_account_dict[acc_type] = {}
				info_account_dict[acc_type]['total_lot']=lot
				info_account_dict[acc_type]['month']=month
				info_account_dict[acc_type]['tier']= "-"
				print("info_account_dict",info_account_dict)
				if data_kantor:
					print("LOTNYA SKG ",lot)
					tier_1 = True
					if account_type == "elastico":
						if lot <= 0 or lot == 0 or lot == '0':
							tier_1 = True
							info_account_dict[acc_type]['tier']= '-'
						elif lot > 0 and lot <=30:
							print("masuk 2")
							tier_1 = True
							info_account_dict[acc_type]['tier']= 'Tier 1'
						else:
							print("masuk 3")
							tier_1 = False
							info_account_dict[acc_type]['tier']= 'Tier 2'

						if tier_1:
							if pos == "Financial Consultant":
								if month >= 0 and month <= 2:
									bonus = 1
								else:
									bonus = 0.5
							elif pos == "Supervisor Marketing":
								if month >= 0 and month <= 2:
									bonus = 0.5
								else:
									bonus = 1
						else:
							if pos == "Financial Consultant":
								if month >= 0 and month <= 2:
									bonus = 1.75
								else:
									bonus = 0.75
							elif pos == "Supervisor Marketing":
								if month >= 0 and month <= 2:
									bonus = 0.75
								else:
									bonus = 1.75
						commision = 5

					elif account_type == "elektro":
						if lot <= 0 or lot == 0 or lot == '0':
							tier_1 = True
							info_account_dict[acc_type]['tier']= '-'
						elif lot >= 0 and lot <=50:
							tier_1 = True
							info_account_dict[acc_type]['tier']= 'Tier 1'
						else:
							tier_1 = False
							info_account_dict[acc_type]['tier']= 'Tier 2'

						if tier_1:
							if pos == "Financial Consultant":
								if month >= 0 and month <= 2:
									bonus = 0.75
								else:
									bonus = 0.25
							elif pos == "Supervisor Marketing":
								if month >= 0 and month <= 2:
									bonus = 0.25
								else:
									bonus = 0.75
						else:
							if pos == "Financial Consultant":
								if month >= 0 and month <= 2:
									bonus = 1
								else:
									bonus = 0.5
							elif pos == "Supervisor Marketing":
								if month >= 0 and month <= 2:
									bonus = 0.5
								else:
									bonus = 1
						commision = 3

					elif account_type == "magneto":
						if lot <= 0 or lot == 0 or lot == '0':
							tier_1 = True
							info_account_dict[acc_type]['tier']= '-'
						elif lot >= 0 and lot <=100:
							tier_1 = True
							info_account_dict[acc_type]['tier']= 'Tier 1'
						else:
							tier_1 = False
							info_account_dict[acc_type]['tier']= 'Tier 2'

						if tier_1:
							if pos == "Financial Consultant":
								if month >= 0 and month <= 2:
									bonus = 2
								else:
									bonus = 1
							elif pos == "Supervisor Marketing":
								if month >= 0 and month <= 2:
									bonus = 1
								else:
									bonus = 2
						else:
							if pos == "Financial Consultant":
								if month >= 0 and month <= 2:
									bonus = 3
								else:
									bonus = 2
							elif pos == "Supervisor Marketing":
								if month >= 0 and month <= 2:
									bonus = 2
								else:
									bonus = 3
						commision = 10

					temp_bonus = float(bonus * lot)
					total_bonus += float(temp_bonus)
				else:
					if account_type == "elastico":
						if pos == "Financial Consultant":
							bonus = 3
						elif pos == "Supervisor Marketing":
							bonus = 0.5
					elif account_type == "elektro":
						if pos == "Financial Consultant":
							bonus = 1
						elif pos == "Supervisor Marketing":
							bonus = 0.5
					elif account_type == "magneto":
						if pos == "Financial Consultant":
							bonus = 4
						elif pos == "Supervisor Marketing":
							bonus = 0.5
					temp_bonus = float(bonus * lot)
					total_bonus_pribadi += float(temp_bonus)
				


			
			# print("bonus", bonus)

			# print("total bonus", total_bonus)

			# FINISH BONUS 2

			#START BONUS 3
			total_bonus_3 = 0 
			display_bonus_3_dict = {}
			for data_lot in login_dict:
				# print("data_lot",data_lot,login_dict[data_lot],account_type_dict[data_lot])
				account_type = account_type_dict[data_lot].lower()
				pos = staff.staff_level.level_name
				bonus = 0 
				if pos == "IB":
					if account_type == "magneto":
						bonus = 4
					elif account_type == "elektro":
						bonus = 1
					elif account_type == "elastico":
						bonus = 2
				elif pos == "Financial Consultant":
					if account_type == "magneto":
						bonus = 0.35
					elif account_type == "elektro":
						bonus = 0.5
					elif account_type == "elastico":
						bonus = 1
				elif pos == "Supervisor Marketing":
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
			return total_bonus,total_bonus_pribadi,total_bonus_3,display_bonus_dict,display_bonus_3_dict,client_user_id_login_dict,info_account_dict,rate_dict

	except IntegrityError as e:
		print(e)


def get_all_clinet_bonus_new(clients,staff,now):
	clients = Client.objects.filter(id__in=clients)
		
	client_dict = {}
	client_acc_age_dict = {}
	for x in clients:
		client_dict[x.magnet_id] = x
		now = x.created_at.replace(day=now.day,year=now.year,month=now.month)
		client_acc_age_dict[x.magnet_id] = (x.created_at - now).days
		print("client_acc_age_dict[x.magnet_id]",client_acc_age_dict[x.magnet_id])

	print("client_acc_age_dict",client_acc_age_dict)
	try:
		with transaction.atomic():

			cnx = mysql.connector.connect(
				host="54.151.138.128",
				user='ivan',
				password='MajuBersama123',
				database='vifx'
			)

			magnet_user_ids = []
			dict_personal = []
			for x in clients:
				magnet_user_ids.append(x.magnet_id)
				if x.source == 0:
					dict_personal.append(x.magnet_id)
		
			# print(magnet_user_ids,'magnet_user_ids')
			# print("Select id, user_id, login, account_type FROM vif_cabinet_legal_form_decleration WHERE user_id in ("+ str(magnet_user_ids)[:-1][1:]+ ") ORDER BY 'id' DESC LIMIT 2")

			mycursor = cnx.cursor()
			mycursor.execute("Select id, user_id, login, account_type, rate FROM vif_cabinet_legal_form_decleration WHERE user_id in ("+ str(magnet_user_ids)[:-1][1:]+ ") ORDER BY 'id' DESC ")
			login_mt5_ids = []
			myresult = mycursor.fetchall()
			# print(myresult,"myresult")
			client_user_id_login_dict = {}
			account_type_dict = {}
			rate_dict = {}

			for myresult in myresult:
				if myresult[2] != 'None' and myresult[2] != None:
					client_user_id_login_dict[str(myresult[2])]=str(myresult[1])
					login_mt5_ids.append(myresult[2])
					account_type_dict[str(myresult[2])] = myresult[3]
					rate_dict[str(myresult[2])] = myresult[4]

			# print("account_type_dict",account_type_dict)
			login_mt5_ids = (str(login_mt5_ids)[:-1][1:]).replace(" ","")
			# print("login_mt5_ids",login_mt5_ids)

			# now = timezone.now()
			data = {
				# 'logins': login_mt5_ids,
				'logins': login_mt5_ids,
				'from': str(now.year)+"-"+str(now.month)+"-"+"01",
                'to':str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),
			}
			# print(str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1]),'str(now.year)+"-"+str(now.month)+"-"+str(calendar.monthrange(now.year, now.month)[1])')
			res = requests.post('http://54.151.138.128/getLoginsTrades', data=data)
			json_data = json.loads(res.text)
			# print("json_data['data']",json_data['data'])


			
			


			login_dict = {}
			if 'data' in json_data:
				for data in json_data['data']:
					if data['action'] == 'buy':
						print("json_data",data)
						# print("float(data['lot'])",float(data['lot']))
						if data['login'] not in login_dict:
							login_dict[data['login']] = Decimal(data['lot'])
						else:
							login_dict[data['login']] += Decimal(data['lot'])

				

			print(login_dict,"login_dict") 



			display_bonus_dict = {}
			
			for data_lot in login_dict:
				print("data_lot",data_lot)
				display_bonus_dict[data_lot] = {}
				display_bonus_dict[data_lot]['account_type'] = account_type_dict[data_lot]
				display_bonus_dict[data_lot]['bonus'] = 0
				display_bonus_dict[data_lot]['lot'] = login_dict[data_lot]
				print(dict_personal,client_user_id_login_dict[data_lot])
				if client_user_id_login_dict[data_lot] in dict_personal:
					display_bonus_dict[data_lot]['is_personal'] = True
				else:
					display_bonus_dict[data_lot]['is_personal'] = False
				
			print("display_bonus_dict",display_bonus_dict)

			

			# counter_temp = 1
			# for x in login_dict:
			# 	if client_user_id_login_dict[x] in dict_personal:
			# 		total_lot[acc_type+'_pribadi'] += login_dict[x]
			# 	else:
			# 		total_lot[acc_type] += login_dict[x]


			categories = {
				'magneto_less':0,
				'magneto_more':0,
				'magneto_pribadi':0,

				'elektro_less':0,
				'elektro_more':0,
				'elektro_pribadi':0,

				'elastico_less':0,
				'elastico_more':0,
				'elastico_pribadi':0,
			}

			account_types = ['magneto','elektro','elastico']
			info_login_account_dict = {}
			for acc_type in account_types:
				for x in login_dict:
					if acc_type == account_type_dict[x]:
						if client_user_id_login_dict[x] in dict_personal:
							categories[acc_type+'_pribadi'] += login_dict[x]
							info_login_account_dict[x] = acc_type+"_pribadi"
						else:
							print(client_acc_age_dict[client_user_id_login_dict[x]])
							if client_acc_age_dict[client_user_id_login_dict[x]] < 60:
								categories[acc_type+"_less"] += login_dict[x]
								info_login_account_dict[x] = acc_type+"_less"
							else:
								categories[acc_type+"_more"] += login_dict[x]
								info_login_account_dict[x] = acc_type+"_more"
			# print("info_login_account_dict",info_login_account_dict)
			print("categories",categories)
			total_bonus = 0
			total_bonus_pribadi = 0
			counter = 1

			info_account_dict = {}
			info_bonus_formula_dict = {}
			for acc_type in categories:
				print("acc_type",acc_type)
				# print("data_lot",data_lot,login_dict[data_lot],account_type_dict[data_lot])				

				# Start
				data_kantor = True if '_pribadi' not in acc_type else False

				# print("data_kantor ",data_kantor)
				pos = staff.staff_level.level_name
				is_pribadi = False
				if '_pribadi' not in acc_type:
					account_type = acc_type.replace("_less","")
					account_type = account_type.replace("_more","")
					is_pribadi = False
				else:
					account_type = acc_type.replace("_pribadi","")
					is_pribadi = True
					
				# print(data_kantor,account_type,)
				month = 9 if '_more' in acc_type else 0
				bonus = 0
				commision = 0


				lot = float(categories[acc_type])
				
				info_account_dict[acc_type] = {}
				info_account_dict[acc_type]['total_lot']=lot
				info_account_dict[acc_type]['tier']= "-"
				print("info_account_dict[acc_type]", data_kantor,acc_type)
				if data_kantor:
					print("LOTNYA SKG ",lot,account_type)
					tier_1 = True
					if account_type == "elastico":
						if lot <= 0 or lot == 0 or lot == '0':
							print("masuk 1")
							tier_1 = True
							info_account_dict[acc_type]['tier']= '-'
						elif lot > 0 and lot <=30:
							print("masuk 2")
							tier_1 = True
							info_account_dict[acc_type]['tier']= 'Tier 1'
						else:
							print("masuk 3")
							tier_1 = False
							info_account_dict[acc_type]['tier']= 'Tier 2'

						if tier_1:
							if pos == "Financial Consultant":
								if month >= 0 and month <= 2:
									bonus = 1
								else:
									bonus = 0.5
							elif pos == "Supervisor Marketing":
								if month >= 0 and month <= 2:
									bonus = 0.5
								else:
									bonus = 1
						else:
							if pos == "Financial Consultant":
								if month >= 0 and month <= 2:
									bonus = 1.75
								else:
									bonus = 0.75
							elif pos == "Supervisor Marketing":
								if month >= 0 and month <= 2:
									bonus = 0.75
								else:
									bonus = 1.75
						commision = 5

					elif account_type == "elektro":
						if lot <= 0 or lot == 0 or lot == '0':
							tier_1 = True
							info_account_dict[acc_type]['tier']= '-'
						elif lot >= 0 and lot <=50:
							tier_1 = True
							info_account_dict[acc_type]['tier']= 'Tier 1'
						else:
							tier_1 = False
							info_account_dict[acc_type]['tier']= 'Tier 2'

						if tier_1:
							if pos == "Financial Consultant":
								if month >= 0 and month <= 2:
									bonus = 0.75
								else:
									bonus = 0.25
							elif pos == "Supervisor Marketing":
								if month >= 0 and month <= 2:
									bonus = 0.25
								else:
									bonus = 0.75
						else:
							if pos == "Financial Consultant":
								if month >= 0 and month <= 2:
									bonus = 1
								else:
									bonus = 0.5
							elif pos == "Supervisor Marketing":
								if month >= 0 and month <= 2:
									bonus = 0.5
								else:
									bonus = 1
						commision = 3

					elif account_type == "magneto":
						if lot <= 0 or lot == 0 or lot == '0':
							tier_1 = True
							info_account_dict[acc_type]['tier']= '-'
						elif lot >= 0 and lot <=100:
							tier_1 = True
							info_account_dict[acc_type]['tier']= 'Tier 1'
						else:
							tier_1 = False
							info_account_dict[acc_type]['tier']= 'Tier 2'

						if tier_1:
							if pos == "Financial Consultant":
								if month >= 0 and month <= 2:
									bonus = 2
								else:
									bonus = 1
							elif pos == "Supervisor Marketing":
								if month >= 0 and month <= 2:
									bonus = 1
								else:
									bonus = 2
						else:
							if pos == "Financial Consultant":
								if month >= 0 and month <= 2:
									bonus = 3
								else:
									bonus = 2
							elif pos == "Supervisor Marketing":
								if month >= 0 and month <= 2:
									bonus = 2
								else:
									bonus = 3
						commision = 10

					
					temp_bonus = float(bonus * lot)
					print("temp_bonus",temp_bonus)
					total_bonus += float(temp_bonus)
					info_bonus_formula_dict[acc_type] = bonus
				else:
					if account_type == "elastico":
						if pos == "Financial Consultant":
							bonus = 3
						elif pos == "Supervisor Marketing":
							bonus = 0.5
					elif account_type == "elektro":
						if pos == "Financial Consultant":
							bonus = 1
						elif pos == "Supervisor Marketing":
							bonus = 0.5
					elif account_type == "magneto":
						if pos == "Financial Consultant":
							bonus = 4
						elif pos == "Supervisor Marketing":
							bonus = 0.5
					temp_bonus = float(bonus * lot)
					total_bonus_pribadi += float(temp_bonus)
					info_bonus_formula_dict[acc_type] = bonus

			print("info_bonus_formula_dict",info_bonus_formula_dict)
			print("info_account_dict",info_account_dict)
			print("total_bonus",total_bonus)
			
			# print("bonus", bonus)

			# print("total bonus", total_bonus)

			# FINISH BONUS 2

			#START BONUS 3
			total_bonus_3 = 0 
			display_bonus_3_dict = {}
			for data_lot in login_dict:
				# print("data_lot",data_lot,login_dict[data_lot],account_type_dict[data_lot])
				account_type = account_type_dict[data_lot].lower()
				pos = staff.staff_level.level_name
				bonus = 0 
				if pos == "IB":
					if account_type == "magneto":
						bonus = 4
					elif account_type == "elektro":
						bonus = 1
					elif account_type == "elastico":
						bonus = 2
				elif pos == "Financial Consultant":
					if account_type == "magneto":
						bonus = 0.35
					elif account_type == "elektro":
						bonus = 0.5
					elif account_type == "elastico":
						bonus = 1
				elif pos == "Supervisor Marketing":
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
			return total_bonus,total_bonus_pribadi,total_bonus_3,display_bonus_dict,display_bonus_3_dict,client_user_id_login_dict,info_account_dict,rate_dict,client_acc_age_dict,info_bonus_formula_dict,info_login_account_dict

	except IntegrityError as e:
		print(e)


def get_ib_bonus(ib,now):
	ib_staff = IB_Staff.objects.filter(is_active=True,ib=ib).first()

	staff = None
	staff_supervisor = None
	
	if ib_staff is not None:
		staff = ib_staff.staff
		staff_supervisor = ib_staff.staff.staff_parent

	# now = timezone.now()
	all_staff_clients = Client_Staff.objects.filter(is_active=True,staff=staff,created_at__year=now.year,created_at__month=now.month).exclude(client__magnet_id=None)
	# all_staff_clients = Client_Staff.objects.filter(is_active=True,staff=staff)


	cnx = mysql.connector.connect(
		host="54.151.138.128",
		user='ivan',
		password='MajuBersama123',
		database='vifx'
	)

	magnet_user_ids = []
	for x in all_staff_clients:
		magnet_user_ids.append(x.client.magnet_id)

	account_type_dict = {}
	total_bonus_dict = {} 
	dict_bonus_info = {}
	if len(magnet_user_ids)>0:
		mycursor = cnx.cursor()
		mycursor.execute("Select id, user_id, login, account_type, rate FROM vif_cabinet_legal_form_decleration WHERE user_id in ("+ str(magnet_user_ids)[:-1][1:]+ ") ORDER BY 'id' DESC ")
		myresult = mycursor.fetchall()

		client_calculation={
			'magneto':0,
			'elektro':0,
			'elastico':0,
		}

		
		for myresult in myresult:
			if myresult[2] != 'None' and myresult[2] != None:
				client_calculation[myresult[3]] += 1

				account_type_dict[str(myresult[1])] = myresult[3]


		#START BONUS 3

		dict_fin = [
			'magneto_IB',
			'magneto_Financial Consultant',
			'magneto_Supervisor Marketing',
			'elektro_IB',
			'elektro_Financial Consultant',
			'elektro_Supervisor Marketing',
			'elastico_IB',
			'elastico_Financial Consultant',
			'elastico_Supervisor Marketing']
			
		all_role = ['IB','Financial Consultant','Supervisor Marketing']
		
		print("dict_fin",dict_fin)
		for data in dict_fin:
			account_type = data.split("_")[0]
			pos = data.split("_")[1]
			bonus = 0 
			if pos == "IB":
				if account_type == "magneto":
					bonus = 4
				elif account_type == "elektro":
					bonus = 1
				elif account_type == "elastico":
					bonus = 2
			elif pos == "Financial Consultant":
				if account_type == "magneto":
					bonus = 0.35
				elif account_type == "elektro":
					bonus = 0.5
				elif account_type == "elastico":
					bonus = 1
			elif pos == "Supervisor Marketing":
				if account_type == "magneto":
					bonus = 0.15
				elif account_type == "elektro":
					bonus = 0.25
				elif account_type == "elastico":
					bonus = 0.5
	 
			print("data",data)
			dict_bonus_info[data] = {}
			dict_bonus_info[data]['account_type'] = account_type
			dict_bonus_info[data]['bonus'] = (bonus * client_calculation[account_type])

			print("dict_bonus_info",dict_bonus_info)
			if account_type not in total_bonus_dict:
				total_bonus_dict[account_type] = 0
			total_bonus_dict[account_type] += dict_bonus_info[data]['bonus']

			print("total_bonus_dict",total_bonus_dict)

	return dict_bonus_info,total_bonus_dict,account_type_dict,all_staff_clients

