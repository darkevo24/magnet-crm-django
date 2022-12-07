
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

		try:
			with transaction.atomic():

				cnx = mysql.connector.connect(
					host="54.151.138.128",
					user='ivan',
					password='MajuBersama123',
					database='vifx'
				)

				super_user = User.objects.filter(is_superuser=True).first()
				string_sql = "Select user_id, login, account_type , updated_at, rate FROM vif_cabinet_legal_form_decleration ORDER BY 'id' ASC"
				mycursor.execute(string_sql)
				new_legal_form_declerations = mycursor.fetchall()
				for new_legal_form_decleration in new_legal_form_declerations:
					login_id = new_legal_form_declerations[1]
					if login_id != '' and login_id != None:
						client = Client.objects.filter(magnet_id=new_legal_form_declerations[0]).first()
						client_staff = Client_Staff.objects.filter(client__magnet_id=new_legal_form_declerations[0], is_active=True).first()
						account_type = new_legal_form_declerations[2]
						login_created_at = new_legal_form_declerations[3]
						rate = new_legal_form_declerations[4]
						print('login', login_id, account_type, updated_at, rate)
						client_journey = Client_Journey()
						client_journey.client_staff
						client_journey.journal_type = 'login_created'
						client_journey.extra = str(account_type) + ' ' + str(rate) + ' ' + login_id
						client_journey.updated_by = client_journey.created_at = super_user
						client_journey.save()

		except:
			print('error bung')

		






	