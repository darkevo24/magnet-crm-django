
from django.shortcuts import render
# # from core.forms.admin.main.main import *
# # from referal.models import *
from core.forms.main import *
from client.models import *
from staff.models import *
from django.shortcuts import render, redirect
from django.urls import reverse
from django.http import JsonResponse
from client.forms import *
from django.db import IntegrityError, transaction
from django.contrib import messages
from client.forms import *

from django.utils import timezone
import re

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

def client_schedule_update(request, client_schedule_id):
	template = 'admin/client/client_schedule/add.html'
	client_schedule = Client_Schedule.objects.filter(id=client_schedule_id).first()

	staff = Staff.objects.filter(profile__user=request.user).first()
	client = client_schedule.client
	form = ClientScheduleForm(request.POST, instance=client_schedule)

	if request.POST:
		try:
			with transaction.atomic():
				if form.is_valid():
					client_schedule = form.save(commit=False)
					client_schedule.updated_by = request.user
					client_schedule.save()
					
					message_str = ('Schedule for %s has been updated'%(client.nama, ) )
					messages.success(request, message_str)

					
				else:
					cleantext = re.sub(CLEANR, '', form.errors)
					messages.errors(request, cleantext)
		except IntegrityError as e:
			messages.errors(request, e)


	return render(request,template,context=context)


def client_schedule_add(request, client_id):
	template = 'admin/client/client_schedule/add.html'
	staff = Staff.objects.filter(profile__user=request.user).first()
	client = Client.objects.filter(id=client_id).first()
	form = ClientScheduleForm(request.POST)

	if request.POST:
		try:
			with transaction.atomic():
				if form.is_valid():
					client_schedule = form.save(commit=False)
					client_schedule.staff = staff
					client_schedule.client = client
					client_schedule.created_by = client_schedule.updated_by = request.user
					client_schedule.save()
					
					message_str = ('Schedule for %s has been registered'%(client.nama, ) )
					messages.success(request, message_str)
					message_str = ('Staff %s (%s) has been unlocked'%(staff.profile.full_name, staff.staff_level.level_name) )
			

			
					return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
					
				else:
					cleantext = re.sub(CLEANR, '', str(form.errors))
					messages.error(request, cleantext)
		except IntegrityError as e:
			messages.error(request, e)

	context = {}
	context['form'] = form
	context['staff'] = staff
	context['client'] = client

	return render(request,template,context=context)
