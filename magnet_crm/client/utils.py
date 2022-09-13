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
		cnx = mysql.connector.connect(
			host="3.1.223.222",
			user='ivan',
			password='MajuBersama123',
			database='vifx'
		)
		mycursor = cnx.cursor()
		mycursor.execute("Show tables;")
		myresult = mycursor.fetchall()

		for x in myresult:
			print(x)

		mycursor.execute("SHOW COLUMNS FROM vif_cabinet_legal_form_decleration;")
		myresult = mycursor.fetchall()

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
