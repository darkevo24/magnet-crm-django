import os
from celery import Celery
from django.conf import settings
from celery import shared_task 
from celery.schedules import crontab

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "magnet_crm.settings")
app = Celery("magnet_crm")
app.config_from_object("django.conf:settings")
app.autodiscover_tasks(settings.INSTALLED_APPS)



@app.task(bind=True)
def debug_task(self):
    print('Request: {0!r}'.format(self.request))

# @shared_task(name = "print_msg_main")
# def print_message(message, *args, **kwargs):
#   print(f"Celery is working!! Message is {message}")    
    
# app.conf.beat_schedule = {
#     #Scheduler Name
#     'print-message-ten-seconds': {
#         # Task Name (Name Specified in Decorator)
#         'task': 'print_msg_main',  
#         # Schedule      
#         'schedule': 10.0,
#         # Function Arguments 
#         'args': ("Hello",) 
#     },
   
# }  

