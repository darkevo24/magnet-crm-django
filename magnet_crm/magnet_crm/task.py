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
from django_celery_beat.models import PeriodicTask, IntervalSchedule

import json
from datetime import datetime, timedelta
from django_celery_beat.models import CrontabSchedule, PeriodicTask

# schedule, created = IntervalSchedule.objects.get_or_create(
#     every=1,
#     period=IntervalSchedule.SECONDS,
# )

# PeriodicTask.objects.create(
#     interval=schedule,
#     name='news',          # simply describes this periodic task.
#     task='magnet_crm.tasks.test',
#     # args="ini dari periodic"  # name of task.
# )


schedule, _ = CrontabSchedule.objects.get_or_create(
    minute='0',
    hour='0',
    timezone="Asia/Jakarta"
    # day_of_week='*',
    # day_of_month='*',
    # month_of_year='*',
)

PeriodicTask.objects.create(
    crontab=schedule,                  # we created this above.
    name='Birthday1',          # simply describes this periodic task.
    task='magnet_crm.task.test',  # name of task.
    # args=json.dumps(['arg1', 'arg2']),
    # kwargs=json.dumps({
    #    'be_careful': True,
    # }),
    # expires=datetime.utcnow() + timedelta(seconds=30)
)


@shared_task
def test():
    print("ini dari task")

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
