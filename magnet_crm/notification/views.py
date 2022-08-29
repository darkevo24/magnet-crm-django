
from django.shortcuts import render
# # from core.forms.admin.main.main import *
# # from referal.models import *

from django.shortcuts import render, redirect
from django.urls import reverse
from django.http import JsonResponse, HttpResponseRedirect
from django.db import IntegrityError, transaction
from django.contrib import messages

import json

from notification.models import *
from django.utils import timezone

def create_notification(request, data={}):
	try: 
		with transaction.atomic():

			notification = Notification()
			notification.created_by = notification.updated_by = request.user
			notification.client = data['client_schedule']
			notification.staff = data['staff']
			notification.notification_type = data['notification_type']
			notification.notes = data['notes']
			notification.is_opened = False
			notification.save()
			return True
	except IntegrityError as e:
		print(e)

	return False

def get_notifications(request):
	notifications = Notification.objects.filter(is_active=True, staff__profile__user__id=request.user.id).prefetch_related('client_schedule__client').order_by('-created_at')[:10]
	notification_list = {}
	notification_list['notification_list'] = []
	unread = 0
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
			temp['url'] = reverse('client-detail-list', kwargs={'id_client': notification.client_schedule.client.id})
		else:
			temp['url'] = reverse('client-list')
		if notification.is_opened:
			unread += 0
		
		notification_list['notification_list'].append(temp) 

	notification_list['unread'] = unread

	return JsonResponse(notification_list)

def open_notification(request,notification_id):
	cur_notif = Notification.objects.filter(id=notification_id).first()
	cur_notif.is_opened = True
	cur_notif.updated_at = timezone.now()
	cur_notif.updated_by = request.user
	cur_notif.save()

	string_url = ''
	if cur_notif.notification_type == 'new_clients':
		string_url = reverse('client-list')
	elif cur_notif.notification_type == 'birthday':
		string_url = reverse('client-detail-list', kwargs={'id_client': cur_notif.client.id })
	else:
		string_url = reverse('client-detail-list', kwargs={'id_client': cur_notif.client_schedule.client.id })

	return redirect(reverse('client_transfer_new'))
