from django.shortcuts import render
# # from core.forms.admin.main.main import *
# # from referal.models import *

from django.shortcuts import render, redirect
from django.urls import reverse
from django.http import JsonResponse, HttpResponseRedirect
from client.forms import *
from django.db import IntegrityError, transaction
from django.contrib import messages

from datetime import datetime
from django.utils import timezone
import re

from core.forms.main import *
from client.models import *
from staff.models import *
from client.forms import *
from client.utils import *
CLEANR = re.compile('<.*?>') 

def client_list(request):
	template = 'admin/client/client_list.html'
	client_list = Client.objects.filter(is_active=True).order_by("created_at")

	# messages.success(request, 'Profile details updated.')
	context = {
		'client_list': client_list,
	}
	return render(request,template,context=context)

def client_add(request):
	template = 'admin/client/client_add.html'
	client_form = ClientForm(request.POST or None)


	if request.POST:
		try:
			with transaction.atomic():

				if client_form.is_valid() :
					
					client = client_form.save(commit=False)
					client.created_by = request.user
					client.save()

					return redirect(reverse('client-list'))
				else:
					print(client_form.errors )
					print(client_form.errors)

		except IntegrityError as e:
			print(e)

	context = {
		'client_form': client_form,

	}
	return render(request,template,context=context)

def client_edit(request,id_client):
	template = 'admin/client/client_add.html'

	client = Client.objects.filter(id=id_client,is_active=True).first()
	client_form = ClientForm(request.POST or None,instance=client)


	if request.POST:
		try:
			with transaction.atomic():

				if client_form.is_valid() :
					
					client = client_form.save(commit=False)
					client.updated_by = request.user
					client.updated_at = timezone.now()
					client.save()

					return redirect(reverse('client-list'))
				else:
					print(client_form.errors)

		except IntegrityError as e:
			print(e)

	context = {
		'client_form': client_form,

	}
	return render(request,template,context=context)

def client_delete(request,id_client):
	
	client = Client.objects.filter(id=id_client).first()
	client.is_active = False
	client.updated_by = request.user
	client.updated_at = timezone.now()
	client.save()
	return redirect(reverse('client-list'))


def client_followup_list(request,id_client):
	template = 'admin/client/client_followup_list.html'
	cur_staff = Staff.objects.filter(profile__user=request.user).first()
	client_followup_list = Client_Followup.objects.filter(is_active=True,staff=cur_staff,client__id=id_client)

	
	context = {
		'client_followup_list': client_followup_list,
		'id_client':id_client,
	}
	return render(request,template,context=context)


def cleanhtml(raw_html):
	  cleantext = re.sub(CLEANR, '', raw_html)
	  return cleantext


def client_schedule_list(request, client_id):
	template = 'admin/client/client_schedule/list.html'
	staff = Staff.objects.filter(profile__user=request.user).first()
	client = Client.objects.filter(id=client_id).first()
	client_schedule_list = Client_Schedule.objects.filter(client__id=client.id, is_active=True).order_by('schedule_date')
	

	
	context = {
		'client_schedule_list': client_schedule_list,
		'client':client,
	}
	return render(request,template,context=context)

def client_schedule_add(request, client_id):
	template = 'admin/client/client_schedule/add.html'
	staff = Staff.objects.filter(profile__user=request.user).first()
	client = Client.objects.filter(id=client_id).first()
	datetime_form = DateTimeForm(request.POST or None,initial={' schedule_date': None})
	form = ClientScheduleForm(request.POST, prefix='normal-form')
	
	if request.POST:
		try:
			with transaction.atomic():
				if form.is_valid() and datetime_form.is_valid():
					client_schedule = form.save(commit=False)
					schedule_date = datetime.strptime(datetime_form.cleaned_data['schedule_date'], '%Y-%m-%d %H:%M')
					client_schedule.schedule_date = schedule_date
					client_schedule.staff = staff
					client_schedule.client = client
					client_schedule.created_by = client_schedule.updated_by = request.user
					client_schedule.save()
					
					message_str = ('Schedule for %s has been registered'%(client.nama, ) )
					messages.success(request, message_str)
					message_str = ('Staff %s (%s) has been unlocked'%(staff.profile.full_name, staff.staff_level.level_name) )
			

			
					return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
					
				else:
					print("else")
					cleantext = re.sub(CLEANR, '', str(form.errors))
					print(cleantext,str(datetime_form.errors))
					messages.error(request, cleantext)
		except IntegrityError as e:
			print("masuk integrity")
			messages.error(request, e)

	context = {}
	context['datetime_form'] = datetime_form
	context['form'] = form
	context['staff'] = staff
	context['client'] = client

	return render(request,template,context=context)

def client_schedule_update(request, client_schedule_uid):
	template = 'admin/client/client_schedule/update.html'
	client_schedule = Client_Schedule.objects.filter(uid=client_schedule_uid).prefetch_related('client').first()
	print(client_schedule)
	client = client_schedule.client

	staff = Staff.objects.filter(profile__user=request.user).first()
	datetime_form = DateTimeForm(request.POST or None,initial={'schedule_date': client_schedule.schedule_date.strftime('%Y-%m-%d %H:%M')})
	# datetime_form = DateTimeForm(request.POST, schedule_date=client_schedule.schedule_date.strftime('%Y-%m-%d %H:%M'))
	form = ClientScheduleForm(request.POST or None, instance=client_schedule, prefix='client-schedule-form')

	if request.POST:
		try:
			with transaction.atomic():
				if form.is_valid() and datetime_form.is_valid():
					print('valid')
					client_schedule = form.save(commit=False)
					schedule_date = datetime.strptime(datetime_form.cleaned_data['schedule_date'], '%Y-%m-%d %H:%M')
					client_schedule.schedule_date = schedule_date
					client_schedule.updated_by = request.user
					client_schedule.save()
					
					message_str = ('Schedule for %s has been registered'%(client.nama, ) )
					messages.success(request, message_str)
					message_str = ('Staff %s (%s) has been unlocked'%(staff.profile.full_name, staff.staff_level.level_name) )
			

			
					return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
					
				else:
					print('eroors', form.errors, datetime_form.errors)
					cleantext = re.sub(CLEANR, '', str(form.errors))
					print(form.errors, datetime_form.errors)
					messages.error(request, cleantext)
		except IntegrityError as e:
			messages.error(request, e)

	context = {}
	context['datetime_form'] = datetime_form
	context['form'] = form
	context['staff'] = staff
	context['client'] = client

	return render(request,template,context=context)

def client_journey_add(request, client_id, journey_type):
	data = {}
	data['status'] = False
	try:
		with transaction.atomic():
			staff = Staff.objects.filter(profile__user__id=request.user.id).first()
			print(staff.id, '<----')
			client = Client.objects.filter(id=client_id).first()
			if create_client_journal(request, staff, client, journey_type) == True:
				data['status'] = True

	except IntegrityError as e:
		print(e)
	return JsonResponse(data)

