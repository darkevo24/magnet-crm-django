from django.core.management.base import BaseCommand, CommandError

from django.contrib.auth.models import User
from django.db import IntegrityError, transaction
from datetime import datetime


from django.core import management
from django.core.management import call_command
from django.utils import timezone


from core.models import *
from staff.models import *
from client.models import *
import datetime
from django.utils import timezone
import pytz
import mysql.connector
from mysql.connector import errorcode

class Command(BaseCommand):
	help = 'BPKB check'

	# def add_arguments(self, parser):
	#     parser.add_argument('poll_ids', nargs='+', type=int)

	# def add_arguments(self, parser):
		# parser.add_argument('username', type=str, help='username & password')

	def handle(self, *args, **kwargs):

		now = timezone.now()

		cnx = mysql.connector.connect(
			host="54.151.138.128",
			user='ivan',
			password='MajuBersama123',
			database='vifx'
		)
		mycursor = cnx.cursor()
			
		last_id = 0
		tz = pytz.timezone('Asia/Jakarta')
		user = User.objects.filter(is_superuser=True).first()
		try:
			with transaction.atomic():
				string_sql = "SELECT * FROM v_users Where ID > " + str(last_id) + " ORDER BY ID ASC"
				
				mycursor.execute(string_sql)
				new_client_list = mycursor.fetchall()
				counter = 0
				# print("new_client_list",new_client_list)
				for new_client in new_client_list:
					client = Client.objects.filter(magnet_id=new_client[0]).first()
					if client != None:
						created_at = new_client[13].replace(tzinfo=tz)
						regis = Client_Journey()
						regis.client = client
						regis.journal_type = 'registered'
						regis.updated_by = regis.created_by = user
						regis.created_at = created_at
						regis.save()

					
					counter+=1
					print("client ke" + str(counter) + " client id :"+str(client.id))
					# print(client.id)

		except IntegrityError as e:
			print('error bung')
			print(e)

		


