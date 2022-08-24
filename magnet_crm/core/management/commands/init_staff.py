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
				
				staff_level = Staff_Level.objects.filter(level=1).first()
				for x in range(1, 2):
					print(x)
					user = User()
					user.username = 'staff'+str(x)+'@hs.com'
					user.email = 'staff'+str(x)+'@hs.com'
					user.set_password('123123')
					user.save()

					profile = Profile()
					profile.user = user
					profile.email = user.email
					profile.full_name = 'Head Of Sales '
					profile.phone_no =  'phone_no_hs_'
					profile.created_by = main_user
					profile.save()

					head_of_sales = Staff()
					head_of_sales.staff_level = staff_level
					head_of_sales.profile = profile
					head_of_sales.created_by = main_user
					head_of_sales.save()

				staff_level = Staff_Level.objects.filter(level=2).first()
				for x in range(1, 4):
					print(x)
					user = User()
					user.username = 'staff'+str(x)+'@sm.com'
					user.email = 'staff'+str(x)+'@sm.com'
					user.set_password('123123')
					user.save()

					profile = Profile()
					profile.user = user
					profile.email = user.email
					profile.full_name = 'Supervisor Marketing '+str(x)
					profile.phone_no =  'phone_no_sm_'+str(x)
					profile.created_by = main_user
					profile.save()

					new_staff = Staff()
					new_staff.staff_level = staff_level
					new_staff.profile = profile
					new_staff.staff_parent = head_of_sales
					new_staff.created_by = main_user
					new_staff.save()

				staff_level = Staff_Level.objects.filter(level=3).first()
				three_staff = Staff.objects.filter(staff_level=staff_level)
				for x in range(1, 10):
					print(x)
					user = User()
					user.username = 'staff'+str(x)+'@fc.com'
					user.email = 'staff'+str(x)+'@fc.com'
					user.set_password('123123')
					user.save()

					profile = Profile()
					profile.user = user
					profile.email = user.email
					profile.full_name = 'Staff '+str(x)
					profile.phone_no =  'phone_no_fc_'+str(x)
					profile.created_by = main_user
					profile.save()

					if x<4 :
						staff_parent = Staff.objects.filter(staff_level=staff_level,profile__email='staff1@sm.com').first()
					elif x<4 :
						staff_parent = Staff.objects.filter(staff_level=staff_level,profile__email='staff1@sm.com').first()
					else :
						staff_parent = Staff.objects.filter(staff_level=staff_level,profile__email='staff1@sm.com').first()


					new_staff = Staff()
					new_staff.staff_level = staff_level
					new_staff.profile = profile
					new_staff.staff_parent = staff_parent
					new_staff.created_by = main_user
					new_staff.save()

				

				



					

		except OSError as err:
			print("OS error: {0}".format(err))
		except ValueError:
			print("Could not convert data to an integer.")
		except BaseException as err:
			print(f"Unexpected {err}")
			raise

		


