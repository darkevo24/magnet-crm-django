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
import random

class Command(BaseCommand):
	help = 'BPKB check'

	# def add_arguments(self, parser):
	#     parser.add_argument('poll_ids', nargs='+', type=int)

	# def add_arguments(self, parser):
		# parser.add_argument('username', type=str, help='username & password')

	def handle(self, *args, **kwargs):
		main_user = User.objects.filter(email='super@admin.com').first()
		# cek_user.username = cek_user.email
		# cek_user.save()
		# print('-----')
		# print(cek_user.__dict__)
		# print(cek_user.username)

		try:
			with transaction.atomic():
				

				staff_list = Staff.objects.filter(is_active=True)
				for staff in staff_list:
					fullname = staff.profile.full_name.strip().lower()
					user = staff.profile.user
					user.email = fullname.replace(' ', '_') + '@magnet.co.id'
					user.username = user.email
					user.save()

					profile = staff.profile
					profile.email = user.email
					profile.save()

		except OSError as err:
			print("OS error: {0}".format(err))
		except ValueError:
			print("Could not convert data to an integer.")
		except BaseException as err:
			print(f"Unexpected {err}")
			raise

		


