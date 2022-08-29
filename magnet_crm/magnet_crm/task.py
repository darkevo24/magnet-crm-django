import os

from celery import Celery
import os
import os, sys


from celery import shared_task
from core.models import * 
# import time
# from xlrd import open_workbook ,xldate_as_tuple
import datetime
from django.utils import timezone
from django.conf import settings
from datetime import time
from django.db import IntegrityError, transaction


from celery import Celery
from celery import shared_task  




# # from celery import Celery
# # from celery import task  


# # Set the default Django settings module for the 'celery' program.
# os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'magnet_crm.settings')

# # app = Celery('magnet_crm')
# app = Celery('tasks', broker='amqp://guest@localhost//')
# # Using a string here means the worker doesn't have to serialize
# # the configuration object to child processes.
# # - namespace='CELERY' means all celery-related configuration keys
# #   should have a `CELERY_` prefix.
# app.config_from_object('django.conf:settings')

# # Load task modules from all registered Django apps.
# app.autodiscover_tasks(settings.INSTALLED_APPS)
# print("masuk init celery")

# @app.task(bind=True)
# def debug_task(self):
#     print(f'Request: {self.request!r}')



@shared_task
def start_process():
	try:
		with transaction.atomic():
			print("1")
			print("2")
			print("3")
			
	except IntegrityError as e:
		print(e)
