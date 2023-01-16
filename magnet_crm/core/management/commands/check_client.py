from django.core.management.base import BaseCommand, CommandError

from django.contrib.auth.models import User
from django.db import IntegrityError, transaction
from datetime import datetime


from django.core import management
from django.core.management import call_command
from django.utils import timezone
from client.models import *
from staff.models import *

from core.models import *

import mysql.connector
from mysql.connector import errorcode

class Command(BaseCommand):
	help = 'Check Aecode Staffa'

	# def add_arguments(self, parser):
	#     parser.add_argument('poll_ids', nargs='+', type=int)

	# def add_arguments(self, parser):
		# parser.add_argument('username', type=str, help='username & password')

	def handle(self, *args, **kwargs):
		
		# cek_user.username = cek_user.email
		# cek_user.save()
		# print('-----')
		# print(cek_user.__dict__)
		# print(cek_user.username)

		try:
			with transaction.atomic():

				clients = Client.objects.filter(nama__icontains='Dhensu')
				for client in clients:
					print(client.nama, client.magnet_id)

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
				
				client_id = '152876'
				str_sql = "SELECT * FROM v_users WHERE  id = '" +  client_id + "';";
				
				mycursor.execute(str_sql)
				result = mycursor.fetchone()
				print(result)
				cnx.close()

				 

				



					

		except OSError as err:
			print("OS error: {0}".format(err))
		except ValueError:
			print("Could not convert data to an integer.")
		except BaseException as err:
			print(f"Unexpected {err}")
			raise

		


