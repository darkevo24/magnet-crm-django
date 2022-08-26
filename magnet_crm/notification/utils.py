from django.shortcuts import render
# # from core.forms.admin.main.main import *
# # from referal.models import *
from core.forms.main import *
from client.models import *
from django.shortcuts import render, redirect
from django.urls import reverse
from django.http import JsonResponse, HttpResponseRedirect
from client.forms import *
from django.db import IntegrityError, transaction
from django.contrib import messages
from staff.models import *
from datetime import datetime
from django.utils import timezone
import re

# def create_staff_notification(request, staff=None, data=None):
# 	try:
# 		with transaction.atomic():
# 			staff_notification = Staff_Notification()
# 			staff_notification.created_by = staff_notification.updated_by = request.user
# 			staff_notification.staff = staff
# 			staff_notification.notification = data['notification']
# 			staff_notification.notes = data['notes']
# 			staff_notification.save()
			

# 			return True

# 	except IntegrityError as e:
# 		print(e)

# 	return False

# def get_staff_notification(request, staff=None):
# 	staff_notifications = Staff_Notification.objects.filter(is_active=True, staff__profile__user__id=request.user.id).order_by('-crated_at')[:10]
# 	staff_notification_list = []
# 	for staff_notification in staff_notifications:
# 		temp = {}
# 		temp['notification_id'] = staff_notification.id
# 		temp['type'] = staff_notification.notification_type
# 		temp['client_id'] = ''
# 		temp['client_name'] = ''
# 		temp[']
# 		append(temp)


