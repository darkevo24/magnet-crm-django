
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

		try:
			with transaction.atomic():
				clients = Client.objects.filter(is_active=True, source='2')
				for c in clients:
					phone_number = c.phone_no
					print(phone_number[:2], phone_number[2:])
					if phone_number[:2] == '68':
						
						fixed_phone_number = '628' + phone_number[2:]
						print('ganti', fixed_phone_number, c.nama, c.phone_no)
						c.phone_no = fixed_phone_number
						c.updated_at = timezone.now()
						c.save()

				

		except:
			print('error bung')

		






	