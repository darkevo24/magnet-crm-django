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
		now = timezone.now()
		# cek_user.username = cek_user.email
		# cek_user.save()
		# print('-----')
		# print(cek_user.__dict__)
		# print(cek_user.username)

		try:
			with transaction.atomic():

				clients = Client.objects.filter(nama__icontains='Dhensu')
				clients = Client.objects.filter(is_active=True)
				print(clients.count())
				clients = Client.objects.filter(is_active=True).exclude(magnet_id='').exclude(magnet_id=None)
				print(clients.count())
				client_magnet_ids = []
				for client in clients:
					client_magnet_ids.append(client.magnet_id)

				print(client_magnet_ids)

				


				# for client in clients:
				# 	print(client.nama, client.magnet_id)

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
				print('show able', myresult)
				
				client_id = '152859'
				str_sql = "SELECT * FROM v_users WHERE id IN (""" + str(client_magnet_ids)[:-1][1:]+ ");"

				
				mycursor.execute(str_sql)
				results = mycursor.fetchall()
				client_id_name_dict = {}
				client_id_phone_dict = {}
				client_id_email_dict = {}
				for result in results:
					client_id_name_dict[result[0]] = result[1]
					client_id_phone_dict[result[0]] = result[10]
					client_id_email_dict[result[0]] = result[5]
				# print(result)
				# print(client_id_name_dict)
				# print(client_id_phone_dict)
				# print(client_id_email_dict)
				cnx.close()

				
				for client in clients:
					magnet_id = int(client.magnet_id)
					client_email = client_id_email_dict[magnet_id]
					client_name = client_id_name_dict[magnet_id]
					client_phone_number = client_id_phone_dict[magnet_id]
					print(client_email, client_name, client_phone_number)
					client.nama = client_name 
					client.phone_no = client_phone_number
					client.updated_at = now
					client.save()


				 

				



					

		except OSError as err:
			print("OS error: {0}".format(err))
		except ValueError:
			print("Could not convert data to an integer.")
		except BaseException as err:
			print(f"Unexpected {err}")
			raise

		


