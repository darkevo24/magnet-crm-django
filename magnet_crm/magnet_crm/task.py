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
from notification.views import create_notification 


from celery.schedules import crontab

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

app = Celery()
app.conf.beat_schedule = {
    # Executes every Monday morning at 7:30 a.m.
    'add-every-monday-morning': {
        'task': 'tasks.add',
        'schedule': crontab(minute='*/1'),
        'args': (16, 16),
    },
}


# app = Celery()
# @app.on_after_configure.connect
# def setup_periodic_tasks(sender, **kwargs):
#     # Calls test('hello') every 10 seconds.
#     sender.add_periodic_task(1.0, test.s('hello'), name='add every 10')

#     # Calls test('world') every 30 seconds
#     sender.add_periodic_task(30.0, test.s('world'), expires=10)

#     # Executes every Monday morning at 7:30 a.m.
#     sender.add_periodic_task(
#         crontab(hour=7, minute=30, day_of_week=1),
#         test.s('Happy Mondays!'),
#     )

@app.task
def test(arg):
    print(arg)

@shared_task
def start_process():
	try:
		with transaction.atomic():
			print("1")
			print("2")
			print("3")
			
	except IntegrityError as e:
		print(e)

@shared_task
def birthday():
	try:
		with transaction.atomic():
			now = timezone.now()
			clients = Client.object.filter(birthday__month=now.month, birthday__day=now.day)
			user = User.object.filter(is_superuser=True).first()
			data = {}
			for client in clients:
				data['client'] = client
				data['notification'] = 'birthday'
				data['notes'] = 'Happy birthday to ' + client.nama
				create_notification(user, data)
			
	except IntegrityError as e:
		print(e)
