
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

def staff_list(request):
	template = 'admin/staff/staff_list.html'
	staff_list = Staff.objects.filter(is_active=True)

	
	context = {
		'staff_list': staff_list,
	}
	return render(request,template,context=context)

def staff_level_list(request):
	template = 'admin/staff_level/staff_level_list.html'
	staff_level_list = Staff_Level.objects.filter(is_active=True).order_by('-level')
	staff_list = Staff.objects.filter(is_active=True).prefetch_related('staff_level')
	staff_dict = {}
	for staff in staff_list:
		staff_level_id = staff.staff_level.id
		if staff_level_id not in staff_dict:
			staff_dict[staff_level_id] = 0
		staff_dict[staff_level_id] += 1


	
	context = {
		'staff_level_list': staff_level_list,
		'staff_dict': staff_dict,
	}
	return render(request,template,context=context)

from django.contrib.auth import authenticate, login

def staff_delete(request, staff_uid):
	staff = Staff.objects.filter(uid=staff_uid).first()
	staff.is_active = False
	staff.updated_by = request.user
	staff.updated_at = timezone.now()
	staff.save()
	return redirect(reverse('staff-list'))

def staff_detail(request, staff_uid):
	template = 'admin/staff/staff_detail.html'
	staff = Staff.objects.filter(uid=staff_uid).first()
	client_staff_list = Client_Staff.objects.filter(staff=staff, is_active=True).prefetch_related('client')
	client_ids = []
	for client_staff in client_staff_list:
		client_ids.append(client_staff.client.id)

	client_schedule_list = Client_Schedule.objects.filter(client__id__in=client_ids, is_active=True).order_by('schedule_date')
	client_schedule_list_json = []

	# {
 #                title: 'Long Event',
 #                start: '2020-09-07',
 #                end: '2020-09-10'
 #            },

	for client_schedule in client_schedule_list:
		temp_dict = {}
		temp_dict['title'] = 'Contact ' + client_schedule.client.nama
		temp_dict['start'] = client_schedule.schedule_date.strftime("%Y-%m-%dT%H:%M:%S")
		client_schedule_list_json.append(temp_dict)

	print(client_schedule_list_json)
	print(json.dumps(client_schedule_list_json))
		

	context = {
		'client_schedule_list': client_schedule_list,
		'staff': staff,
		'client_staff_list': client_staff_list,
		'client_schedule_list_json': json.dumps(client_schedule_list_json),
	}
	return render(request,template,context=context)



def staff_add(request):

	# user = authenticate(request, username='super@admin.com', password='123123')
	# print('user', user)
	# login(request, user)
	# print('-->', request.user)

	template = 'admin/staff/staff_add.html'
	profile_form = ProfileForm(request.POST or None)
	staff_form = StaffForm(request.POST or None)


	if request.POST:
		selected_staff_parent_id = request.POST.get('staff_parent_id', None)
		staff_form.fields['staff_parent_id'].choices = [(selected_staff_parent_id, selected_staff_parent_id)]
		try:
			with transaction.atomic():

				if profile_form.is_valid() and staff_form.is_valid():
					
					
					profile = profile_form.save(commit=False)
					user = User()
					user.username = user.email = profile.email
					
					# password = User.objects.make_random_password()
					password = "123123"
					user.set_password(password)
					user.save()

					profile.updated_by = profile.created_by = user
					profile.user = user
					profile.save()

					staff = staff_form.save(commit=False)

					if (selected_staff_parent_id!=None):
						select_staff_parent = Staff.objects.filter(id=selected_staff_parent_id).first()
						print(select_staff_parent, '<---')
						staff.staff_parent = select_staff_parent

					staff.profile = profile
					staff.created_by = staff.updated_by = user
					staff.save()

					return redirect(reverse('staff-list'))
				else:
					print(profile_form.errors )
					print(staff_form.errors)

		except IntegrityError as e:
			print(e)

	context = {
		'staff_form': staff_form,

		'profile_form': profile_form,

	}
	return render(request,template,context=context)

def staff_level_add(request):

	# user = authenticate(request, username='super@admin.com', password='123123')
	# print('user', user)
	# login(request, user)
	# print('-->', request.user)

	template = 'admin/staff_level/staff_level_add.html'
	form = StaffLevelForm(request.POST or None)
	try:
		with transaction.atomic():

			if form.is_valid():
				staff_level = form.save(commit=False)
				staff_level.created_by = request.user
				staff_level.updated_by = request.user
				staff_level.save()

				return redirect(reverse('staff-level-list'))

	except IntegrityError as e:
		print(e)

	context = {
		'form': form,

	}
	return render(request,template,context=context)

def staff_level_update(request, staff_level_uid):

	staff_level = Staff_Level.objects.filter(uid=staff_level_uid).first()
	# user = authenticate(request, username='super@admin.com', password='123123')
	# print('user', user)
	# login(request, user)
	# print('-->', request.user)

	template = 'admin/staff_level/staff_level_update.html'
	form = StaffLevelForm(request.POST or None, instance=staff_level)
	try:
		with transaction.atomic():

			if form.is_valid():
				staff_level = form.save(commit=False)
				staff_level.updated_by = request.user
				staff_level.save()

				return redirect(reverse('staff-level-list'))
	except IntegrityError as e:
		print(e)

	context = {
		'form': form,

	}
	return render(request,template,context=context)

def staff_level_delete(request, staff_level_uid):

	staff_level = Staff_Level.objects.filter(uid=staff_level_uid).first()
	staff_level.is_active = False
	staff_level.updated_by = request.user
	staff_level.updated_at = timezone.now()
	staff_level.save()
	return redirect(reverse('staff-level-list'))

def staff_level_inactive(request, staff_level_uid):

	staff_level = Staff_Level.objects.filter(uid=staff_level_uid).first()
	all_staff_ids = []
	try:
		with transaction.atomic():
			staff_level.is_active = False
			staff_level.updated_by = request.user
			staff_level.save()

			staff_with_same_level_list = Staff.objects.filter(staff_level__id=staff_level.id).update(updated_by=request.user, is_locked=True)
			staff_parents = []
			for staff in staff_with_same_level_list:
				staff_parents.append(staff.id)
				all_staff_ids.append(staff.id)

			loop = True
			first_loop = True
			while loop:
				staff_subordinates = Staff.objects.filter(staff_parent__in=staff_parents).update(updated_by=request.user, is_locked=True)
				if staff_subordinates.count() == 0:
					loop = False
				staff_parents = []
				for staff in staff_subordinates:
					staff_parents.append(staff.id)
					all_staff_ids.append(staff.id)

				return redirect(reverse('staff-level-list'))

			clients = Client.objects.filter(staff__id__in=all_staff_ids).update(updated_by=request.user, is_locked=True)
	except IntegrityError as e:
		print(e)

	return redirect(reverse('staff-level-list'))
	

from django.views.decorators.csrf import csrf_exempt
@csrf_exempt
def get_subdivison(request):
	if request.POST:
		staff_level_id = request.POST['staff_level_id']
		print('staff_level_id : ', staff_level_id)
		staff_list = Staff.objects.filter(staff_level__id=staff_level_id, is_active=True).prefetch_related('profile')
		staff_dict = {}
		for staff in staff_list:
			staff_uid = str(staff.id)

			if staff_uid not in staff_dict:
				staff_dict[staff_uid] = {}
			staff_dict[staff_uid]['uid'] = staff_uid
			staff_dict[staff_uid]['name'] = staff.profile.full_name
			print(staff_dict)
			

		return JsonResponse({'status': True, 'data' : staff_dict,})
	else:
		return JsonResponse({'status': False,})

def inactive_staff(request, staff_uid, lock_client):
	try:
		with transaction.atomic():
			all_staff_ids = []

			staff = Staff.objects.filter(uid=staff_uid).first()
			all_staff_ids.append(staff.id)
			loop = True
			first_loop = True

			# check if user wants to lock all_client and staff_subordinates
			if lock_client == 0:
				loop = False
			# endcheck

			staff_subordinates_ids = []
			while loop:
				if first_loop == True:
					staff_subordinates = Staff.objects.filter(staff_parent__id=staff.id).update(is_locked=True, updated_by=request.user)
				else:
					staff_subordinates_ids = []
					staff_subordinates = Staff.objects.filter(staff_parent__id__in=staff_subordinates).update(is_locked=True, updated_by=request.user)
				for staff_loop in staff_subordinates:
					all_staff_ids.append(staff_loop.id)
					staff_subordinates_ids.append(staff_loop.id)


			if lock_client == 1:
				clients = Client.objects.filter(staff__id__in=all_staff_ids).update(is_locked=True, updated_by=request.user)

			return redirect(reverse('staff-list'))
	except IntegrityError as e:
		print(e)

def staff_lock(request, staff_uid):
	try:
		with transaction.atomic():
			staff = Staff.objects.filter(uid=staff_uid).first()
			staff.is_locked = True
			staff.updated_by = request.user
			staff.save()
			client_staff_list = Client_Staff.objects.filter(staff__id=staff.id, is_active=True).values_list('client__id', flat=True)
			clients = Client.objects.filter(id__in=client_staff_list, is_active=True).update(is_locked=True, updated_by=request.user)
			
			message_str = ('Staff %s (%s) has been locked'%(staff.profile.full_name, staff.staff_level.level_name) )
			messages.success(request, message_str)

			
			return HttpResponseRedirect(request.META.get('HTTP_REFERER'))

	except IntegrityError as e:
		print(e)
		messages.errors(request, e )

	return HttpResponseRedirect(request.META.get('HTTP_REFERER'))

def staff_unlock(request, staff_uid):
	try:
		with transaction.atomic():
			staff = Staff.objects.filter(uid=staff_uid).first()
			staff.is_locked = False
			staff.updated_by = request.user
			staff.save()
			client_staff_list = Client_Staff.objects.filter(staff__id=staff.id, is_active=True).values_list('client__id', flat=True)
			clients = Client.objects.filter(id__in=client_staff_list, is_active=True).update(is_locked=False, updated_by=request.user)
			
			message_str = ('Staff %s (%s) has been unlocked'%(staff.profile.full_name, staff.staff_level.level_name) )
			messages.success(request, message_str)

			
			return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
			
	except IntegrityError as e:
		print(e)
		messages.errors(request, e )
	
	return HttpResponseRedirect(request.META.get('HTTP_REFERER'))

def staff_supervisor_select_clients(request):
	if request.POST:
		try:
			with transaction.atomic():
				staff = Staff.objects.filter(uid=staff_uid).first()
				staff_id_client_id_dict = request.POST['staff_id_client_id_dict']
				for staff_id, client_ids in staff_id_client_id_dict:
					selected_staff = Staff.objects.filter(id=staff_id)
					clients = Client.objects.filter(id__in=client_ids, is_active=True).updated_by(staff=selected_staff, updated_by=request.user)
				return True
		except IntegrityError as e :
			print(e)

	return False

