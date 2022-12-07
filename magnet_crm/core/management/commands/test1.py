
from django.core.management.base import BaseCommand, CommandError

from django.contrib.auth.models import User
from django.db import IntegrityError, transaction
from datetime import datetime
import requests

from django.core import management
from django.core.management import call_command
from django.utils import timezone


from core.models import *
import mysql.connector
from mysql.connector import errorcode
from client.models import *
from staff.models import * 
class Command(BaseCommand):
	help = 'check_user_journey_deposit'

	# def add_arguments(self, parser):
	#     parser.add_argument('poll_ids', nargs='+', type=int)

	# def add_arguments(self, parser):
		# parser.add_argument('username', type=str, help='username & password')

	def handle(self, *args, **kwargs):

		# try:
		# 	with transaction.atomic():
		print('start')
		cnx = mysql.connector.connect(
			host="54.151.138.128",
			user='ivan',
			password='MajuBersama123',
			database='vifx'
		)

		
		super_user = User.objects.filter(is_superuser=True).first()
		string_sql = "Select user_id, login, account_type , updated_at, rate FROM vif_cabinet_legal_form_decleration ORDER BY 'id' ASC"
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
							print('>>>>',client.magnet_id)
							client_staff = Client_Staff.objects.filter(client__magnet_id=magnet_id, is_active=True).first()
							if client_staff != None:
								account_type = new_legal_form_decleration[2]
								login_created_at = new_legal_form_decleration[3]
								rate = new_legal_form_decleration[4]
								client_journey = Client_Journey()
								client_journey.client = client
								client_journey.staff = client_staff.staff
								client_journey.journal_type = 'mt5 created'
								client_journey.extra = str(account_type) + ' ' + str(rate) + ' ' + str(login_id)
								client_journey.created_at = login_created_at
								client_journey.updated_by = client_journey.created_by = super_user
								client_journey.save()

		except IntegrityError as e:
			print('error bung', e)

		






	