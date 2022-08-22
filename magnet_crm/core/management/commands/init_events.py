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

		# cek_user = User.objects.filter(email='super@admin.com').first()
		# cek_user.username = cek_user.email
		# cek_user.save()
		# print('-----')
		# print(cek_user.__dict__)
		# print(cek_user.username)
		staff = Staff.objects.filter(is_active=True).first()
		client_names = ['budi', 'ester', 'jeanete', 'bambang']
		phone_no = '081280000'
		no_ktp = '0000000000001'
		counter = 1
		try:
			with transaction.atomic():
				user = User.objects.first()
				staff = Staff.objects.first()
				# client_schedule_list = Client_Schedule.objects.filter(is_active=True)
				# for c in client_schedule_list:
				# 	c.schedule_date = timezone.now() + datetime.timedelta(days=counter)
				# 	c.save()
				# 	counter += 1
				for client_name in client_names:
				# # 	user = User()
				# # 	email = client_name + '@gmail.com'
				# # 	user.username = email
				# # 	user.email = email
				# # 	user.set_password(email)
				# # 	user.save()

				# # 	profile = Profile()
				# # 	profile.user = user
				# # 	profile.full_name = client_name
				# # 	profile.email = email
				# # 	profile.phone_no = phone_no + str(counter)
				# # 	profile.no_ktp = no_ktp + str(counter)
				# # 	profile.created_by = profile.updated_by = user
				# # 	profile.save()

					client = Client()
					# client.profile = profile
					client.name = client_name
					client.created_by = client.updated_by = user
					client.save()

					client_staff = Client_Staff()
					client_staff.updated_by = client_staff.created_by = user
					client_staff.client = client
					client_staff.staff = staff
					client_staff.save()

					client_schedule = Client_Schedule()
					client_schedule.created_by = client_schedule.updated_by = user
					client_schedule.client = client
					client_schedule.staff = staff
					client_schedule.schedule_date = datetime.datetime.now() + datetime.timedelta(days=counter)
					client_schedule.save()
					counter += 1

		except IntegrityError as e:
			print('error bung')
			print(e)

		


