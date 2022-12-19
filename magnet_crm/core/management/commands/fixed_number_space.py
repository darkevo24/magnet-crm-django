
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
	help = 'fix no hp'

	# def add_arguments(self, parser):
	#     parser.add_argument('poll_ids', nargs='+', type=int)

	# def add_arguments(self, parser):
		# parser.add_argument('username', type=str, help='username & password')

	def handle(self, *args, **kwargs):

		clients = Client.objects.filter(is_active=True)
		for c in clients:

			phone_number = c.phone_no
			if phone_number != ' ' and phone_number != '' and phone_number != None:
				phone_number = phone_number.strip()
				phone_number = phone_number.replace(' ', '')
				phone_number = phone_number.encode('ascii', 'ignore').decode("utf-8")
				phone_number = str(phone_number)
				# c.phone_no = phone_number
				# c.save()
				print(c.phone_no, c.nama)
		print('finished')
		# try:
		# 	with transaction.atomic():
		# 		clients = Client.objects.filter(is_active=True)
		# 		for c in clients:
		# 			phone_number = c.phone_no
		# 			print(phone_number, phone_number[0])
		# 			if phone_number[0] == ' ':
		# 				print('ada')


				

		# except:
		# 	print('error bung')