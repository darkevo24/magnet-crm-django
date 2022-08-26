
from django.shortcuts import render
# # from core.forms.admin.main.main import *
# # from referal.models import *

from django.shortcuts import render, redirect
from django.urls import reverse
from django.http import JsonResponse, HttpResponseRedirect
from django.db import IntegrityError, transaction
from django.contrib import messages

import json

from staff.forms import *
from core.forms.main import *
from staff.models import *
from client.models import *
from django.utils import timezone

def get_staff_notification(request, staff=None):
	notifications = Notification.objects.filter(is_active=True, staff__profile__user__id=request.user.id).prefetch_related('client_schedule__client').order_by('-crated_at')[:10]
	notification_list = []
	for notification in notifications:
		temp = {}
		temp['notification_id'] = notification.id
		temp['type'] = notification.notification_type

		temp['client_id'] = ''
		temp['client_name'] = ''
		temp['client_schedule_id'] = ''
		if notification.client_schedule != None:
			temp['client_id'] = notification.client_schedule.client.id
			temp['client_name'] = notification.client_schedule.client.nama
			temp['client_schedule_id'] = notification.client_schedule.id
		append(temp) 

	return JsonResponse(temp)