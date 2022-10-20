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
				host="52.221.225.32",
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
		print('in_params', in_params)
		sql = "SELECT * FROM pos WHERE login IN (%s)" % in_params
		mycursor.execute(sql, login_mt5_ids)
		my_pos_list = mycursor.fetchall()

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