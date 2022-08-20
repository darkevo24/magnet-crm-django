from django.core.management.base import BaseCommand, CommandError

from django.contrib.auth.models import User
from django.db import IntegrityError, transaction
from datetime import datetime


from django.core import management
from django.core.management import call_command
from django.utils import timezone


from core.models import *

class Command(BaseCommand):
	help = 'BPKB check'

	# def add_arguments(self, parser):
	#     parser.add_argument('poll_ids', nargs='+', type=int)

	# def add_arguments(self, parser):
		# parser.add_argument('username', type=str, help='username & password')

	def handle(self, *args, **kwargs):

		# cek_user = User.objects.filter(email='super@admin.com').first()
		# cek_user.username = cek_user.email
		# cek_user.save()
		# print('-----')
		# print(cek_user.__dict__)
		# print(cek_user.username)

		try:
			with transaction.atomic():
				user = User()
				user.email = 'super@admin.com'

				user.set_password('123123')
				user.save()

				profile = Profile()
				profile.user = user
				profile.full_name = 'super admin'
				profile.phone_no =  'phone_no'
				profile.created_by = user
				profile.updated_by = user
				profile.save()

		except:
			print('error bung')

		


