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

class Command(BaseCommand):
	help = 'BPKB check'

	# def add_arguments(self, parser):
	#     parser.add_argument('poll_ids', nargs='+', type=int)

	# def add_arguments(self, parser):
		# parser.add_argument('username', type=str, help='username & password')

	def handle(self, *args, **kwargs):
		try:
			with transaction.atomic():
				super_user = User.objects.filter(is_superuser=True).first()
				all_client = Client.objects.all()
				for client in all_client:
					# print(client.nama, client.aecode)
					client_staff = Client_Staff.objects.filter(is_active=True, staff__aecode=client.aecode).first()
					staff = Staff.objects.filter(is_active=True, aecode=client.aecode).first()
					if client.nama == 'adiityadwirizki':
						print(client, staff, client_staff)
					if client_staff == None and staff != None:
						new_client_staff = Client_Staff()
						new_client_staff.client = client
						new_client_staff.staff = staff
						new_client_staff.created_by = new_client_staff.updated_by = super_user
						new_client_staff.save()



		except IntegrityError as e:
			print('error bung')
			print(e)

		


