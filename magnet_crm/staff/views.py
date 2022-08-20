
from django.shortcuts import render
# # from core.forms.admin.main.main import *
# # from referal.models import *
from core.forms.main import *
from staff.models import *
from django.shortcuts import render, redirect
from django.urls import reverse
from django.http import JsonResponse
from staff.forms import *
from django.db import IntegrityError, transaction


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


