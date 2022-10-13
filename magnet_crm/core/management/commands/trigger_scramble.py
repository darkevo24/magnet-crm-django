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
from magnet_crm.task import *

class Command(BaseCommand):
	
	def handle(self, *args, **kwargs):
		print("Trigger Scramble")
		new_scramble_clients()

		


