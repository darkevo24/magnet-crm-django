
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
from django.http import HttpResponse
import xlwt
from core.excel import *
from ib.models import *
from dateutil.relativedelta import relativedelta
import pytz
from django.utils.timezone import make_aware
import math
import decimal
def round_down(value, decimals):
    with decimal.localcontext() as ctx:
        d = decimal.Decimal(value)
        ctx.rounding = decimal.ROUND_DOWN
        return round(d, decimals)




def staff_list(request):
	template = 'admin/staff/staff_list.html'
	staff_list = Staff.objects.filter(is_active=True).order_by('id')
	print(staff_list.count())

	
	context = {
		'staff_list': staff_list,
		'menu':'staff_list',
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
		'menu':'staff_level_list',
	}
	return render(request,template,context=context)

from django.contrib.auth import authenticate, login


def staff_change_password(request, staff_uid):
	template = 'admin/staff/staff_change_password.html'
	staff = Staff.objects.filter(uid=staff_uid).first()
	context = {}
	form = UserChangePasswordForm(request.POST or None)
	error_message = ''
	if request.POST and form.is_valid():
		new_password = form.cleaned_data['new_password']
		confirm_new_password = form.cleaned_data['confirm_password']
		if new_password == confirm_new_password:
			try:
				with transaction.atomic():
					user = staff.profile.user
					user.set_password(new_password)
					user.save()
					return redirect(reverse('staff-list'))
			except IntegrityError as e:
				error_message = 'Terjadi Kesalahan pada server'
		else:
			error_message = 'password baru dan konfirmasi password tidak cocok'
	context['staff'] = staff
	context['form'] = form
	context['error_message'] = error_message
	context['menu'] = 'staff-list'

	return render(request, template, context=context)



	user = staff.profile.user 
def staff_delete(request, staff_uid):
	staff = Staff.objects.filter(uid=staff_uid).first()
	staff.is_active = False
	staff.updated_by = request.user
	staff.updated_at = timezone.now()
	staff.save()
	return redirect(reverse('staff-list'))

def staff_detail(request, staff_uid):

	now = timezone.now()
	current_day = now.weekday()
	first_day_of_this_week = now - timedelta(days=current_day)
	end_day_of_this_week = first_day_of_this_week + timedelta(days=6)
	print(first_day_of_this_week, end_day_of_this_week)


	template = 'admin/staff/staff_detail.html'
	staff = Staff.objects.filter(uid=staff_uid).first()
	client_staff_list = Client_Staff.objects.filter(staff=staff, is_active=True).prefetch_related('client')
	total_client = client_staff_list.count()

	client_ids = []
	for client_staff in client_staff_list:
		client_ids.append(client_staff.client.id)

	client_schedule_list = Client_Schedule.objects.filter(client__id__in=client_ids, is_active=True).order_by('schedule_date')
	client_schedule_list_json = []

	staff_client_journey_list = Client_Journey.objects.filter(staff=staff).order_by('-created_at').prefetch_related('client', 'staff__profile')

	this_week_acitivity_count = Client_Journey.objects.filter(staff=staff, created_at__gte=first_day_of_this_week, created_at__lte=end_day_of_this_week).count()



	print(':::', staff_client_journey_list.count())
	print('this week', this_week_acitivity_count)
	for staff_client_journey in staff_client_journey_list:
		print(staff_client_journey.staff, staff_client_journey.created_at)
		print(staff_client_journey.client)
		print(staff_client_journey.journal_type)

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

	total_upcomming_followup = Client_Schedule.objects.filter(is_active=True, staff=staff, schedule_date__gt=now).count()
	
	print(client_schedule_list_json)
	print(json.dumps(client_schedule_list_json))
		

	context = {
		'total_client' : total_client,
		'this_week_acitivity_count': this_week_acitivity_count,
		'total_upcomming_followup': total_upcomming_followup,
		'client_schedule_list': client_schedule_list,
		'staff_client_journey_list': staff_client_journey_list,
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

def staff_edit(request,uid_staff):

	# user = authenticate(request, username='super@admin.com', password='123123')
	# print('user', user)
	# login(request, user)
	# print('-->', request.user)

	template = 'admin/staff/staff_add.html'

	staff = Staff.objects.filter(uid=uid_staff).first()
	profile_form = ProfileForm(request.POST or None,instance=staff.profile)

	staff_form = StaffForm(request.POST or None,instance=staff)


	if request.POST:
		selected_staff_parent_id = request.POST.get('staff_parent_id', None)
		staff_form.fields['staff_parent_id'].choices = [(selected_staff_parent_id, selected_staff_parent_id)]
		try:
			with transaction.atomic():

				if profile_form.is_valid() and staff_form.is_valid():
					profile_form.updated_by  = request.user
					profile_form.updated_at  = timezone.now()
					profile_form.save()

					
					cur_staff = staff_form.save(commit=False)
					if (selected_staff_parent_id!=None):
						select_staff_parent = Staff.objects.filter(id=selected_staff_parent_id).first()
						print(select_staff_parent, '<---')
						if staff.staff_parent != select_staff_parent:
							all_cur_client = Client_Staff.objects.filter(is_active=True,staff = staff)
							for cur_c_s in all_cur_client:
								cur_c_s.is_active=False
								cur_c_s.updated_by=request.user
								cur_c_s.updated_at=timezone.now()
								cur_c_s.save()

						staff.staff_parent = select_staff_parent
					cur_staff.updated_by = request.user
					cur_staff.updated_at = timezone.now()
					cur_staff.save()

					return redirect(reverse('staff-list'))
				else:
					print(profile_form.errors )
					print(staff_form.errors)

		except IntegrityError as e:
			print(e)

	context = {
		'staff_form': staff_form,
		'profile_form': profile_form,
		'is_edit':True,
		'staff':staff,

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
		staff_level = Staff_Level.objects.filter(id=staff_level_id).first()
		print('staff_level_id : ', staff_level_id)
		staff_list = Staff.objects.filter(staff_level__level=( staff_level.level - 1), is_active=True).prefetch_related('profile')
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

def staff_add_client_schedule(request):
	template = 'admin/staff/staff_client_schdule/add.html'
	

	form = ClientSchduleForm(request.POST or None, instance=staff_level)
	try:
		with transaction.atomic():
			if request.POST:
				if form.is_valid():
					client_schedule = form.save(commit=False)
					client_schedule.created_by = client_schedule.updated_by = request.user
					client_schedule.save()

					# return redirect(reverse('staff-level-list'))
	except IntegrityError as e:
		print(e)

	return render(request,template,context=context)
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

def staff_salary_list(request,staff_uid):
	template = 'admin/staff_salary/staff_salary_list.html'
	staff_salary_list = Staff_Salary_Monthly.objects.filter(is_active=True).order_by('id')
	context = {
		'staff_uid':staff_uid,
		'staff_salary_list': staff_salary_list,
	}
	return render(request,template,context=context)

def staff_salary_add(request,staff_uid):

	template = 'admin/staff_salary/staff_salary_add.html'
	
	staff = Staff.objects.filter(uid=staff_uid).first()
	default_salary = Staff_Level.objects.filter(id=staff.staff_level.id).first().salary
	staff_salary_form = StaffSalaryForm(request.POST or None,initial={'salary_amount': (default_salary)})
	if request.POST:
		try:
			with transaction.atomic():

				if staff_salary_form.is_valid():
					# salary = staff_salary_form.save(commit=False)
					salary = Staff_Salary_Monthly()
					salary_amount = staff_salary_form.cleaned_data["salary_amount"]
					salary_amount = salary_amount.replace(".","")
					salary_amount = salary_amount.replace(",",".")

					bonus_amount = staff_salary_form.cleaned_data["bonus_amount"]
					bonus_amount = bonus_amount.replace(".","")
					bonus_amount = bonus_amount.replace(",",".")

					salary.salary_amount = salary_amount
					salary.bonus_amount = bonus_amount

					salary_date = request.POST['salary_date_submit']
					salary.staff = staff
					salary.salary_date = salary_date
					salary.created_by = salary.updated_by = request.user
					salary.save()
					return redirect(reverse('staff-salary-list', kwargs={'staff_uid': staff_uid}))
				else:
					print(staff_salary_form.errors)

		except IntegrityError as e:
			print(e)

	context = {
		'staff_salary_form': staff_salary_form,
		'default_salary':default_salary,
	}
	return render(request,template,context=context)

def staff_salary_edit(request,staff_uid,salary_id):

	template = 'admin/staff_salary/staff_salary_edit.html'
	salary = Staff_Salary_Monthly.objects.filter(id=salary_id).first()
	staff_salary_form = StaffSalaryForm(request.POST or None,initial={'salary_amount': salary.salary_amount,'bonus_amount': salary.bonus_amount})
	if request.POST:
		staff = Staff.objects.filter(uid=staff_uid).first()
		try:
			with transaction.atomic():

				if staff_salary_form.is_valid():
					# salary = staff_salary_form.save(commit=False)

					salary_amount = staff_salary_form.cleaned_data["salary_amount"]
					salary_amount = salary_amount.replace(".","")
					salary_amount = salary_amount.replace(",",".")

					bonus_amount = staff_salary_form.cleaned_data["bonus_amount"]
					bonus_amount = bonus_amount.replace(".","")
					bonus_amount = bonus_amount.replace(",",".")

					salary.salary_amount = salary_amount
					salary.bonus_amount = bonus_amount
					salary_date = request.POST['salary_date_submit']
					salary.staff = staff
					salary.salary_date = salary_date
					salary.created_by = salary.updated_by = request.user
					salary.save()
					return redirect(reverse('staff-salary-list', kwargs={'staff_uid': staff_uid}))
				else:
					print(staff_salary_form.errors)

		except IntegrityError as e:
			print(e)

	context = {
		'salary':salary,
		'staff_salary_form': staff_salary_form,

	}
	return render(request,template,context=context)

def staff_report(request):
	template = 'admin/report/report_staff_list.html'
	staff_list = Staff.objects.filter(is_active=True)
	for s in staff_list:
		print(s.staff_level)

	
	
	context = {
		'staff_list': staff_list,
		'menu':'report',
	}
	return render(request,template,context=context)

def ib_list(request):
	template = 'admin/ib/ib_list.html'
	ib_list = IB.objects.filter(is_active=True)

	all_ib_staff = IB_Staff.objects.filter(is_active=True,ib__in=ib_list.values_list('id',flat=True))

	dict_staff = {}
	for instance in all_ib_staff:
		dict_staff[instance.ib]=instance.staff

	context = {
		'ib_list': ib_list,
		'menu':'ib_report',
		'dict_staff':dict_staff,
	}
	return render(request,template,context=context)

def ib_add(request):

	template = 'admin/ib/ib_add.html'
	ib_form = IBForm(request.POST or None)

	if request.POST:
		try:
			with transaction.atomic():

				if ib_form.is_valid():
					
					
					ib = ib_form.save(commit=False)
					ib.created_by = ib.updated_by = request.user
					ib.save()

					new_staff = IB_Staff()
					new_staff.ib = ib

					staff = Staff.objects.filter(id=ib_form.cleaned_data['staff'],is_active=True).first()
					new_staff.staff = staff
					new_staff.created_by = new_staff.updated_by = request.user
					new_staff.save()

					return redirect(reverse('ib-list'))
				else:
					print(ib_form.errors )

		except IntegrityError as e:
			print(e)

	context = {
		'ib_form': ib_form,
		'menu':'ib_report',
	}
	return render(request,template,context=context)

def ib_staff_edit(request,ib_uid):

	template = 'admin/ib/ib_staff_edit.html'
	ib = IB.objects.filter(uid=ib_uid).first()

	cur_staff = IB_Staff.objects.filter(ib=ib,is_active=True).first()
	ib_staff_form = IBStaffForm(request.POST or None,instance=cur_staff,initial={'ib': ib.name})

	if request.POST:
		try:
			with transaction.atomic():

				if ib_staff_form.is_valid():

					
					ib_staff = ib_staff_form.save(commit=False)
					if cur_staff:
						print("masuk deactivate")
						cur_staff.is_active = False
						cur_staff.updated_at = timezone.now()
						cur_staff.save()

						new_staff = IB_Staff()
						new_staff.ib = ib
						new_staff.staff = ib_staff.staff
						new_staff.created_by = new_staff.updated_by = request.user
						new_staff.save()

						ib.name = ib_staff_form.cleaned_data['ib']
						ib.updated_at = timezone.now()
						ib.updated_by = request.user
						ib.save()

					else:
						
						ib_staff.ib = ib
						ib_staff.created_by = ib_staff.updated_by = request.user
						ib_staff.save()



					return redirect(reverse('ib-list'))
				else:
					print(ib_form.errors )

		except IntegrityError as e:
			print(e)

	context = {
		'ib_staff_form': ib_staff_form,
		'menu':'ib_report',
	}
	return render(request,template,context=context)

def ib_report(request,ib_uid):
	template = 'admin/ib/ib_report.html'
	ib = IB.objects.filter(is_active=True,uid=ib_uid).first()
	ib_staff = IB_Staff.objects.filter(is_active=True,ib=ib).first()

	date = request.GET.get('date') or None
	now = timezone.now()
	if date != None and date != "":
		date = date.split("-")
		now = now.replace(year=int(date[1]),month=int(date[0]),day=1)


	if request.GET:
		print("MASUK REQUEST")
		print(request.GET)
		if 'download_excel' in request.GET:
			print("DOWNLOAD EXCEL")

			if request.GET['download_excel'] == "ib_report":
				response = HttpResponse(content_type='application/ms-excel')
				response['Content-Disposition'] = 'attachment; filename="Laporan_IB.xls"'
				wb = xlwt.Workbook(encoding='utf-8')
				ws = wb.add_sheet("Bonus IB")
				ws = write_worksheet_report_transaction(ws, "ib_report", None,None, {'ib':ib,'now':now,'ib_staff':ib_staff})
				wb.save(response)
				return response

	dict_bonus_info,total_bonus_dict,account_type_dict,all_staff_clients = get_ib_bonus(ib,now)
	context = {
		'ib':ib,
		'ib_list': ib_list,
		'ib_staff':ib_staff,
		# 'menu':'ib_list',
		'account_type_dict':account_type_dict,
		'all_staff_clients':all_staff_clients,
		# 'dict_staff':dict_staff,
		'dict_bonus_info':dict_bonus_info,
		'total_bonus_dict':total_bonus_dict,
		'menu':'ib_report',
	}
	return render(request,template,context=context)

def staff_report_detail(request,staff_uid):
	template = 'admin/report/report_staff_detail.html'
	



	test_client = Client.objects.filter(nama__icontains='Sukoyo')
	
	staff = Staff.objects.filter(uid=staff_uid,is_active=True).first()

	date = request.GET.get('date') or None
	
	now = timezone.now()

	start_date = 1
	end_date = None

	
	if date == None:
		calculated_year = now.year
		calculated_month = now.month
		end_date = calendar.monthrange(calculated_year, calculated_month)[1]
	else:
		temp_date = date.split('-')
		calculated_month = int(temp_date[0])
		calculated_year = int(temp_date[1])
		end_date = calendar.monthrange(calculated_year, calculated_month)[1]
		date_str = str(end_date) + '-' + str(calculated_month) + '-' + str(calculated_year)
		now = make_aware(datetime.strptime(date_str, '%d-%m-%Y'))


	#calculate ftd
	client_staff_list = Client_Staff.objects.filter(
		staff=staff,
		# client__magnet_created_at__month=calculated_month,
		# client__magnet_created_at__year=calculated_year,
		is_active=True,).prefetch_related('client')

	client_ftd_user_magnet_dict = {}

	meta_ids_for_api = ''
	for client_staff in client_staff_list:
		if client_staff.client.magnet_id != '' and client_staff.client.magnet_id != None:
			meta_ids_for_api += ( client_staff.client.magnet_id + ',')

			if client_staff.client.magnet_id not in client_ftd_user_magnet_dict:
				client_ftd_user_magnet_dict[client_staff.client.magnet_id] = client_staff.client

	

	# print('meta_ids_for_api', meta_ids_for_api)
	# print('^^^^^^')
	# get_meta5_ftd_ids(meta_ids_for_api, now)
	client_ftd_list = get_ftd_list(meta_ids_for_api)
	current_month_client_ftd_list = []
	client_ftd_total_usd = 0
	index_loop = 0
	for client_ftd in client_ftd_list:
		
		temp_split = client_ftd['time'].split('-')
		loop_year = int(temp_split[0])
		loop_month = int(temp_split[1])

		if now.year == loop_year and now.month == loop_month:
			client_ftd_total_usd += Decimal(client_ftd['ftd'])
			current_month_client_ftd_list.append(client_ftd)

	client_ftd_list = current_month_client_ftd_list
	#rumus 
	bonus_per_ftd = 0
	client_ftd_count = len(client_ftd_list)
	staff_ftd_bonus = 0 

	#ini buat test
	# client_ftd_count = 16
	# client_ftd_total_usd = Decimal(5000)
	#endof test

	if  client_ftd_count > 15 and client_ftd_total_usd >= Decimal(15000):
		staff_ftd_bonus = client_ftd_count * 35
	elif client_ftd_count > 9  and client_ftd_total_usd >= Decimal(5000):
		staff_ftd_bonus = client_ftd_count * 15
	elif client_ftd_count > 4 and client_ftd_total_usd >= Decimal(2500) :
		staff_ftd_bonus = client_ftd_count * 10

	# print('staff_ftd_bonus', staff_ftd_bonus)

	#lot data kantor

	#data 0-2bulan
	last_two_months_date = now - relativedelta(months=1)
	last_two_monthsend_date = calendar.monthrange(calculated_year, calculated_month)[0]
	last_two_months_date = datetime(last_two_months_date.year, last_two_months_date.month, 1)
	last_program_date = datetime(2022, 10, 1)
	if last_two_months_date <= last_program_date:
		last_two_months_date = last_program_date
	print('now', now)
	print('last_two_months_date', last_two_months_date)
	two_months_bonus_dict, two_months_trades = calculate_lot_two_months_bonus(staff, last_two_months_date, now, end_date)
	#data > 2bulan
	more_two_months_bonus_dict, more_two_months_trades = calculate_lot_more_than_two_months_bonus(staff, last_two_months_date, now, end_date)
	data_pribadi_months_bonus_dict, data_pribadi_trades = calculate_data_pribadi_bonus(staff, now, end_date)


	#data-ib
	show_ib_bonus = False
	ib_staff = IB_Staff.objects.filter(staff=staff, is_active=True).prefetch_related('staff').first()
	ib_bonus_dict = {}
	ib_client_trades = {}
	if ib_staff != None:
		show_ib_bonus = True
		ib_bonus_dict, ib_client_trades = calculate_ib_bonus(ib_staff.staff, now, end_date)
	else:
		ib_bonus_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
		ib_bonus_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
		ib_bonus_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	
	#get_total bonus 
	total_bonus_lot_usd = 0
	total_bonus_lot_idr = 0
	for account_type, bonus_dict, in two_months_bonus_dict.items():
		total_bonus_lot_usd += bonus_dict['total_usd']
		total_bonus_lot_idr += bonus_dict['total_idr']
	
	total_bonus_two_month_more_usd = 0
	total_bonus_two_month_more_idr = 0
	for account_type, bonus_dict, in more_two_months_bonus_dict.items():
		total_bonus_lot_usd += bonus_dict['total_usd']
		total_bonus_lot_idr += bonus_dict['total_idr']

	total_bonus_data_pribadi_usd = 0
	total_bonus_data_pribadi_idr = 0
	for account_type, bonus_dict, in data_pribadi_months_bonus_dict.items():
		total_bonus_data_pribadi_usd += bonus_dict['total_usd']
		total_bonus_data_pribadi_idr += bonus_dict['total_idr']
	

	total_bonus_ib_usd = 0 
	total_bonus_ib_idr = 0
	for account_type, bonus_dict, in ib_bonus_dict.items():
		total_bonus_ib_usd += bonus_dict['total_usd']
		total_bonus_ib_idr += bonus_dict['total_idr']
	
	

	#data > pribadi
	# pribadi_bonus_dict = calculate_data_pribadi_bonus(staff, now, end_date)

	# print('two_months_bonus_dict', two_months_bonus_dict)
	print('client_ftd_total_usd', client_ftd_total_usd)
	print('ib_bonus_dict', ib_bonus_dict, type(ib_bonus_dict))
	context = {}
	context['staff'] = staff
	context['staff_ftd_bonus'] = staff_ftd_bonus
	context['client_ftd_count'] = client_ftd_count
	context['client_ftd_total_usd'] = client_ftd_total_usd
	context['client_ftd_list'] = client_ftd_list
	context['client_ftd_user_magnet_dict'] = client_ftd_user_magnet_dict
	context['two_months_bonus_dict'] = two_months_bonus_dict
	context['two_months_trades'] = two_months_trades
	context['more_two_months_bonus_dict'] = more_two_months_bonus_dict
	context['more_two_months_trades'] = more_two_months_trades
	context['data_pribadi_months_bonus_dict'] = data_pribadi_months_bonus_dict
	context['data_pribadi_trades'] = data_pribadi_trades
	context['ib_bonus_dict'] = ib_bonus_dict
	context['ib_client_trades'] = ib_client_trades
	context['total_bonus_lot_usd'] = total_bonus_lot_usd
	context['total_bonus_lot_idr'] = total_bonus_lot_idr
	context['total_bonus_data_pribadi_usd'] = total_bonus_data_pribadi_usd
	context['total_bonus_data_pribadi_idr'] = total_bonus_data_pribadi_idr
	context['total_bonus_ib_usd'] = total_bonus_ib_usd
	context['total_bonus_ib_idr'] = total_bonus_ib_idr
	context['show_ib_bonus'] = show_ib_bonus




	return render(request,template,context=context)


def staff_own_report(request):
	template = 'admin/report/report_staff_own.html'

	
	staff = Staff.objects.filter(profile__user=request.user).first()

	date = request.GET.get('date') or None
	
	now = timezone.now()

	start_date = 1
	end_date = None

	
	if date == None:
		calculated_year = now.year
		calculated_month = now.month
		end_date = calendar.monthrange(calculated_year, calculated_month)[1]
	else:
		temp_date = date.split('-')
		calculated_month = int(temp_date[0])
		calculated_year = int(temp_date[1])
		end_date = calendar.monthrange(calculated_year, calculated_month)[1]
		date_str = str(end_date) + '-' + str(calculated_month) + '-' + str(calculated_year)
		now = make_aware(datetime.strptime(date_str, '%d-%m-%Y'))


	#calculate ftd
	client_staff_list = Client_Staff.objects.filter(
		staff=staff,
		# client__magnet_created_at__month=calculated_month,
		# client__magnet_created_at__year=calculated_year,
		is_active=True,).prefetch_related('client')

	client_ftd_user_magnet_dict = {}

	meta_ids_for_api = ''
	for client_staff in client_staff_list:
		if client_staff.client.magnet_id != '' and client_staff.client.magnet_id != None:
			meta_ids_for_api += ( client_staff.client.magnet_id + ',')

			if client_staff.client.magnet_id not in client_ftd_user_magnet_dict:
				client_ftd_user_magnet_dict[client_staff.client.magnet_id] = client_staff.client

	

	# print('meta_ids_for_api', meta_ids_for_api)
	# print('^^^^^^')
	# get_meta5_ftd_ids(meta_ids_for_api, now)
	client_ftd_list = get_ftd_list(meta_ids_for_api)
	current_month_client_ftd_list = []
	client_ftd_total_usd = 0
	index_loop = 0
	for client_ftd in client_ftd_list:
		
		temp_split = client_ftd['time'].split('-')
		loop_year = int(temp_split[0])
		loop_month = int(temp_split[1])

		if now.year == loop_year and now.month == loop_month:
			client_ftd_total_usd += Decimal(client_ftd['ftd'])
			current_month_client_ftd_list.append(client_ftd)

	client_ftd_list = current_month_client_ftd_list
	#rumus 
	bonus_per_ftd = 0
	client_ftd_count = len(client_ftd_list)
	staff_ftd_bonus = 0 

	#ini buat test
	# client_ftd_count = 16
	# client_ftd_total_usd = Decimal(5000)
	#endof test

	if  client_ftd_count > 15 and client_ftd_total_usd >= Decimal(15000):
		staff_ftd_bonus = client_ftd_count * 35
	elif client_ftd_count > 9  and client_ftd_total_usd >= Decimal(5000):
		staff_ftd_bonus = client_ftd_count * 15
	elif client_ftd_count > 4 and client_ftd_total_usd >= Decimal(2500) :
		staff_ftd_bonus = client_ftd_count * 10

	# print('staff_ftd_bonus', staff_ftd_bonus)

	#lot data kantor

	#data 0-2bulan
	last_two_months_date = now - relativedelta(months=1)
	print('last_two_months_date', last_two_months_date)
	last_two_monthsend_date = calendar.monthrange(calculated_year, calculated_month)[0]
	last_two_months_date = datetime(last_two_months_date.year, last_two_months_date.month, 1)
	last_program_date = datetime(2022, 10, 1)
	if last_two_months_date <= last_program_date:
		last_two_months_date = last_program_date
	print('now', now)
	print('last_two_months_date', last_two_months_date)
	two_months_bonus_dict, two_months_trades = calculate_lot_two_months_bonus(staff, last_two_months_date, now, end_date)
	#data > 2bulan
	more_two_months_bonus_dict, more_two_months_trades = calculate_lot_more_than_two_months_bonus(staff, last_two_months_date, now, end_date)
	data_pribadi_months_bonus_dict, data_pribadi_trades = calculate_data_pribadi_bonus(staff, now, end_date)


	#data-ib
	show_ib_bonus = False
	ib_staff = IB_Staff.objects.filter(staff=staff, is_active=True).prefetch_related('staff').first()
	ib_bonus_dict = {}
	ib_client_trades = {}
	if ib_staff != None:
		show_ib_bonus = True
		ib_bonus_dict, ib_client_trades = calculate_ib_bonus(ib_staff.staff, now, end_date)
	else:
		ib_bonus_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
		ib_bonus_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
		ib_bonus_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	
	#get_total bonus 
	total_bonus_lot_usd = 0
	total_bonus_lot_idr = 0
	for account_type, bonus_dict, in two_months_bonus_dict.items():
		total_bonus_lot_usd += bonus_dict['total_usd']
		total_bonus_lot_idr += bonus_dict['total_idr']
	
	total_bonus_two_month_more_usd = 0
	total_bonus_two_month_more_idr = 0
	for account_type, bonus_dict, in more_two_months_bonus_dict.items():
		total_bonus_lot_usd += bonus_dict['total_usd']
		total_bonus_lot_idr += bonus_dict['total_idr']

	total_bonus_data_pribadi_usd = 0
	total_bonus_data_pribadi_idr = 0
	for account_type, bonus_dict, in data_pribadi_months_bonus_dict.items():
		total_bonus_data_pribadi_usd += bonus_dict['total_usd']
		total_bonus_data_pribadi_idr += bonus_dict['total_idr']
	

	total_bonus_ib_usd = 0 
	total_bonus_ib_idr = 0
	for account_type, bonus_dict, in ib_bonus_dict.items():
		total_bonus_ib_usd += bonus_dict['total_usd']
		total_bonus_ib_idr += bonus_dict['total_idr']
	
	

	#data > pribadi
	# pribadi_bonus_dict = calculate_data_pribadi_bonus(staff, now, end_date)

	# print('two_months_bonus_dict', two_months_bonus_dict)
	print('client_ftd_total_usd', client_ftd_total_usd)
	print('ib_bonus_dict', ib_bonus_dict, type(ib_bonus_dict))
	context = {}
	context[' '] = staff
	context['staff_ftd_bonus'] = staff_ftd_bonus
	context['client_ftd_count'] = client_ftd_count
	context['client_ftd_total_usd'] = client_ftd_total_usd
	context['client_ftd_list'] = client_ftd_list
	context['client_ftd_user_magnet_dict'] = client_ftd_user_magnet_dict
	context['two_months_bonus_dict'] = two_months_bonus_dict
	context['two_months_trades'] = two_months_trades
	context['more_two_months_bonus_dict'] = more_two_months_bonus_dict
	context['more_two_months_trades'] = more_two_months_trades
	context['data_pribadi_months_bonus_dict'] = data_pribadi_months_bonus_dict
	context['data_pribadi_trades'] = data_pribadi_trades
	context['ib_bonus_dict'] = ib_bonus_dict
	context['ib_client_trades'] = ib_client_trades
	context['total_bonus_lot_usd'] = total_bonus_lot_usd
	context['total_bonus_lot_idr'] = total_bonus_lot_idr
	context['total_bonus_data_pribadi_usd'] = total_bonus_data_pribadi_usd
	context['total_bonus_data_pribadi_idr'] = total_bonus_data_pribadi_idr
	context['total_bonus_ib_usd'] = total_bonus_ib_usd
	context['total_bonus_ib_idr'] = total_bonus_ib_idr
	context['show_ib_bonus'] = show_ib_bonus
	context['menu'] = 'staff-own-report'

	return render(request,template,context=context)

def master_report_detail(request):
	template = 'admin/report/report_staff_master_detail.html'
	staff_id_name_dict = {}
	staff_list = Staff.objects.filter(is_active=True).prefetch_related('profile')
	for _staff in staff_list:
		if _staff.id not in staff_id_name_dict:
			staff_id_name_dict[_staff.id] = _staff.profile.full_name
	
	staff_list = Staff.objects.filter(is_active=True, staff_level__level=3).prefetch_related('staff_parent', 'staff_level')
	date = request.GET.get('date') or None
	
	now = timezone.now()

	start_date = 1
	end_date = None

	
	if date == None:
		calculated_year = now.year
		calculated_month = now.month
		end_date = calendar.monthrange(calculated_year, calculated_month)[1]
	else:
		temp_date = date.split('-')
		calculated_month = int(temp_date[0])
		calculated_year = int(temp_date[1])
		end_date = calendar.monthrange(calculated_year, calculated_month)[1]
		date_str = str(end_date) + '-' + str(calculated_month) + '-' + str(calculated_year)
		now = make_aware(datetime.strptime(date_str, '%d-%m-%Y'))


	#lot data kantor
	total_client_ftd = 0 
	total_client_ftd_usd = 0
	total_client_bonus_ftd = 0
	supervisor_staff = {}
	index_ftd = 0
	client_ftd_user_magnet_dict = {}
	for staff in staff_list:

		if staff.staff_parent not in supervisor_staff:
			supervisor_staff[staff.staff_parent] = {}

		supervisor_staff[staff.staff_parent][staff] = {}
		supervisor_staff[staff.staff_parent][staff]['total_ftd'] = 0
		supervisor_staff[staff.staff_parent][staff]['total_ftd_usd'] = 0
		supervisor_staff[staff.staff_parent][staff]['total_ftd_bonus_usd'] = 0 
		supervisor_staff[staff.staff_parent][staff]['list_ftd'] = []

		client_staff_list = Client_Staff.objects.filter(
			staff=staff,
			# client__magnet_created_at__month=calculated_month,
			# client__magnet_created_at__year=calculated_year,
			is_active=True,).prefetch_related('client')

		

		meta_ids_for_api = ''
		for client_staff in client_staff_list:
			if client_staff.client.magnet_id != '' and client_staff.client.magnet_id != None:
				meta_ids_for_api += ( client_staff.client.magnet_id + ',')

				if client_staff.client.magnet_id not in client_ftd_user_magnet_dict:
					client_ftd_user_magnet_dict[client_staff.client.magnet_id] = client_staff.client

		

		
		client_ftd_list = get_ftd_list(meta_ids_for_api)
		current_month_client_ftd_list = []
		client_ftd_total_usd = 0
		index_loop = 0
		for client_ftd in client_ftd_list:
			
			temp_split = client_ftd['time'].split('-')
			loop_year = int(temp_split[0])
			loop_month = int(temp_split[1])

			if now.year == loop_year and now.month == loop_month:

				client_ftd_total_usd += Decimal(client_ftd['ftd'])
				index_ftd += 1
				client_ftd['index_loop'] = index_ftd
				current_month_client_ftd_list.append(client_ftd)
				index_ftd += 1
				total_client_ftd += 1
				supervisor_staff[staff.staff_parent][staff]['list_ftd'].append(client_ftd)

		client_ftd_list = current_month_client_ftd_list
		#rumus 
		
		client_ftd_count = len(client_ftd_list)
		staff_ftd_bonus = 0 

		#ini buat test
		# client_ftd_count = 16
		# client_ftd_total_usd = Decimal(5000)
		#endof test

		if  client_ftd_count > 15 and client_ftd_total_usd >= Decimal(15000):
			staff_ftd_bonus = client_ftd_count * 35
		elif client_ftd_count > 9  and client_ftd_total_usd >= Decimal(5000):
			staff_ftd_bonus = client_ftd_count * 15
		elif client_ftd_count > 4 and client_ftd_total_usd >= Decimal(2500) :
			staff_ftd_bonus = client_ftd_count * 10

		
		total_client_ftd_usd = total_client_ftd_usd +  client_ftd_total_usd
		
		
		total_client_bonus_ftd +=  staff_ftd_bonus
		

	#data 0-2bulan
	last_two_months_date = now - relativedelta(months=1)
	last_two_monthsend_date = calendar.monthrange(calculated_year, calculated_month)[0]
	last_two_months_date = datetime(last_two_months_date.year, last_two_months_date.month, 1)
	last_program_date = datetime(2022, 10, 1)
	if last_two_months_date <= last_program_date:
		last_two_months_date = last_program_date
	
	
	two_months_bonus_dict, two_months_trades, staff_two_months_trades, supervisor_two_months_trades = master_calculate_lot_two_months_bonus(staff_list, last_two_months_date, now, end_date)
	
	#data > 2bulan
	more_two_months_bonus_dict, more_two_months_trades, staff_more_two_months_trades, supervisor_more_two_months_trades= master_calculate_lot_more_than_two_months_bonus(staff_list, last_two_months_date, now, end_date)
	
	data_pribadi_months_bonus_dict, data_pribadi_trades, staff_data_pribadi_trades, supervisor_data_pribadi_trades = master_calculate_data_pribadi_bonus(staff_list, now, end_date)
	

	#data-ib
	show_ib_bonus = False
	ib_staffs = IB_Staff.objects.filter(staff__in=staff_list, is_active=True).prefetch_related('staff')
	staff_ids = []
	for ib_staff in ib_staffs:
		staff_ids.append(ib_staff.staff.id)

	ib_staff_query = Staff.objects.filter(id__in=staff_ids)
	ib_bonus_dict = {}
	ib_client_trades = {}
	if len(staff_ids):
		show_ib_bonus = True
		ib_bonus_dict, ib_client_trades = master_calculate_ib_bonus(ib_staff_query, now, end_date)
	else:
		ib_bonus_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
		ib_bonus_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
		ib_bonus_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	
	#get_total bonus 
	total_bonus_lot_usd = 0
	total_bonus_lot_idr = 0
	staff_total_lot = 0
	staff_total_idr = 0
	staff_total_usd = 0
	supervisor_total_lot = 0 
	supervisor_total_idr = 0 
	supervisor_total_usd = 0

	##calculate total supervisor
	for supervisor_id, value_dict in supervisor_two_months_trades.items():
		
		supervisor_total_idr += round_down(value_dict['total_idr'], 2)
		supervisor_total_usd += round_down(value_dict['total_usd'], 2)
		supervisor_total_lot += round_down(value_dict['total_lot'], 2)


	supervisor_total_idr = round_down(supervisor_total_idr, 2)
	supervisor_total_usd = round_down(supervisor_total_usd, 2)
	supervisor_total_lot = round_down(supervisor_total_lot, 2)
	print('====', supervisor_total_lot)
	for supervisor_id, value_dict in supervisor_more_two_months_trades.items():
		supervisor_total_idr += round_down(value_dict['total_idr'], 2)
		supervisor_total_usd += round_down(value_dict['total_usd'], 2)
		supervisor_total_lot += round_down(value_dict['total_lot'], 2)
		# print('supervisor total lot', supervisor_total_lot)

	supervisor_total_idr = round_down(supervisor_total_idr, 2)
	supervisor_total_usd = round_down(supervisor_total_usd, 2)
	supervisor_total_lot = round_down(supervisor_total_lot, 2)
	# print('check', supervisor_total_idr, supervisor_total_usd, supervisor_total_lot)
	for supervisor_id, value_dict in supervisor_data_pribadi_trades.items():
		supervisor_total_idr += round_down(value_dict['total_idr'], 2)
		supervisor_total_usd += round_down(value_dict['total_usd'], 2)
		supervisor_total_lot += round_down(value_dict['total_lot'], 2)
		# print('supervisor total lot', supervisor_total_lot)

	supervisor_total_idr = round_down(supervisor_total_idr, 2)
	supervisor_total_usd = round_down(supervisor_total_usd, 2)
	supervisor_total_lot = round_down(supervisor_total_lot, 2)
	print('check', supervisor_total_idr, supervisor_total_usd, supervisor_total_lot)

	#calculate total staff
	for staff_id, value_dict in staff_two_months_trades.items():
		print('()()', staff_id, value_dict)
		print('->>>',staff_id,  value_dict['total_lot'])
		staff_total_idr += value_dict['total_idr']
		staff_total_usd += value_dict['total_usd']
		staff_total_lot += value_dict['total_lot']
		print('total trades two months increment', staff_id, staff_total_lot)
	print('check staff 123 two months', staff_total_lot)

	staff_total_idr = round_down(staff_total_idr, 2)
	staff_total_usd = round_down(staff_total_usd, 2)
	staff_total_lot = round_down(staff_total_lot, 2)

	for staff_id, value_dict in staff_more_two_months_trades.items():
		staff_total_idr += value_dict['total_idr']
		staff_total_usd += value_dict['total_usd']
		staff_total_lot += value_dict['total_lot']

	staff_total_idr = round_down(staff_total_idr, 2)
	staff_total_usd = round_down(staff_total_usd, 2)
	staff_total_lot = round_down(staff_total_lot, 2)
	print('check staff', staff_total_idr, staff_total_usd, staff_total_lot)

	for staff_id, value_dict in staff_data_pribadi_trades.items():
		staff_total_idr += round_down(value_dict['total_idr'], 2)
		staff_total_usd += round_down(value_dict['total_usd'], 2)
		staff_total_lot += round_down(value_dict['total_lot'], 2)

	staff_total_idr = round_down(staff_total_idr, 2)
	staff_total_usd = round_down(staff_total_usd, 2)
	staff_total_lot = round_down(staff_total_lot, 2)	
	print('check staff', staff_total_idr, staff_total_usd, staff_total_lot)

			

	for account_type, bonus_dict, in two_months_bonus_dict.items():
		total_bonus_lot_usd += bonus_dict['total_usd']
		total_bonus_lot_idr += bonus_dict['total_idr']
	
	total_bonus_two_month_more_usd = 0
	total_bonus_two_month_more_idr = 0
	for account_type, bonus_dict, in more_two_months_bonus_dict.items():
		total_bonus_lot_usd += bonus_dict['total_usd']
		total_bonus_lot_idr += bonus_dict['total_idr']

	total_bonus_data_pribadi_usd = 0
	total_bonus_data_pribadi_idr = 0
	for account_type, bonus_dict, in data_pribadi_months_bonus_dict.items():
		total_bonus_data_pribadi_usd += bonus_dict['total_usd']
		total_bonus_data_pribadi_idr += bonus_dict['total_idr']
	

	total_bonus_ib_usd = 0 
	total_bonus_ib_idr = 0
	for account_type, bonus_dict, in ib_bonus_dict.items():
		total_bonus_ib_usd += bonus_dict['total_usd']
		total_bonus_ib_idr += bonus_dict['total_idr']

	
	

	#data > pribadi
	# pribadi_bonus_dict = calculate_data_pribadi_bonus(staff, now, end_date)

	# print('two_months_bonus_dict', two_months_bonus_dict)
	all_bonus_dict = {}
	all_bonus_dict['total'] = 0
	all_bonus_dict['total_lot'] = 0
	all_bonus_dict['supervisor'] = 0
	all_bonus_dict['staff'] = 0
	all_bonus_dict['ib'] = 0
	all_bonus_dict['total_idr'] = 0
	all_bonus_dict['total_usd'] = 0
	
	
	#total all bonus idr
	
	all_bonus_dict['total_idr'] += two_months_bonus_dict['total']['total_idr']
	all_bonus_dict['total_idr'] += more_two_months_bonus_dict['total']['total_idr']
	all_bonus_dict['total_idr'] += data_pribadi_months_bonus_dict['total']['total_idr']
	#total all lot
	all_bonus_dict['total_lot'] +=  round_down(two_months_bonus_dict['total']['total_lot'], 2)
	all_bonus_dict['total_lot'] +=  round_down(more_two_months_bonus_dict['total']['total_lot'], 2)
	all_bonus_dict['total_lot'] += round_down(data_pribadi_months_bonus_dict['total']['total_lot'], 2)
	all_bonus_dict['total_lot'] += round_down(data_pribadi_months_bonus_dict['total']['total_lot'], 2)

	#total bonus usd
	all_bonus_dict['total_usd'] +=  round_down(two_months_bonus_dict['total']['total_usd'], 2)
	all_bonus_dict['total_usd'] +=  round_down(more_two_months_bonus_dict['total']['total_usd'], 2)
	all_bonus_dict['total_usd'] += round_down(data_pribadi_months_bonus_dict['total']['total_usd'], 2)
	all_bonus_dict['total_usd'] += round_down(data_pribadi_months_bonus_dict['total']['total_usd'], 2)

	all_bonus_dict['data_pribadi_months_bonus_dict'] = data_pribadi_months_bonus_dict['total']['total_idr']
	context = {}
	context['staff_id_name_dict'] = staff_id_name_dict
	context['staff_two_months_trades'] = staff_two_months_trades
	context['supervisor_two_months_trades'] = supervisor_two_months_trades
	context['supervisor_more_two_months_trades'] = supervisor_more_two_months_trades
	context['staff_more_two_months_trades'] = staff_more_two_months_trades
	context['staff_data_pribadi_trades'] = staff_data_pribadi_trades
	context['supervisor_data_pribadi_trades'] = supervisor_data_pribadi_trades
	context['total_client_ftd_usd'] = total_client_ftd_usd
	context['total_client_ftd'] = total_client_ftd
	context['total_client_bonus_ftd'] = total_client_bonus_ftd
	context['supervisor_staff_dict'] = supervisor_staff
	context['client_ftd_user_magnet_dict'] = client_ftd_user_magnet_dict
	context['two_months_bonus_dict'] = two_months_bonus_dict
	context['two_months_trades'] = two_months_trades
	context['more_two_months_bonus_dict'] = more_two_months_bonus_dict
	context['more_two_months_trades'] = more_two_months_trades
	context['data_pribadi_months_bonus_dict'] = data_pribadi_months_bonus_dict
	context['data_pribadi_trades'] = data_pribadi_trades
	context['ib_bonus_dict'] = ib_bonus_dict
	context['ib_client_trades'] = ib_client_trades
	context['total_bonus_lot_usd'] = total_bonus_lot_usd
	context['total_bonus_lot_idr'] = total_bonus_lot_idr
	context['total_bonus_data_pribadi_usd'] = total_bonus_data_pribadi_usd
	context['total_bonus_data_pribadi_idr'] = total_bonus_data_pribadi_idr
	context['total_bonus_ib_usd'] = total_bonus_ib_usd
	context['total_bonus_ib_idr'] = total_bonus_ib_idr
	context['all_bonus_dict'] = all_bonus_dict
	context['show_ib_bonus'] = show_ib_bonus
	context['supervisor_total_idr'] = supervisor_total_idr
	context['supervisor_total_usd'] = supervisor_total_usd
	context['supervisor_total_lot'] = supervisor_total_lot
	context['staff_total_idr'] = staff_total_idr
	context['staff_total_usd'] = staff_total_usd
	context['staff_total_lot'] = staff_total_lot



	print('kkkkk', two_months_bonus_dict)
	
	return render(request,template,context=context)
def staff_supervisor_report_detail(request,staff_uid):
	template = 'admin/report/report_staff_supervisor_detail.html'
	
	staff = Staff.objects.filter(uid=staff_uid,is_active=True).first()
	staff_list = Staff.objects.filter(staff_parent=staff, is_active=True)
	date = request.GET.get('date') or None
	
	now = timezone.now()

	start_date = 1
	end_date = None

	
	if date == None:
		calculated_year = now.year
		calculated_month = now.month
		end_date = calendar.monthrange(calculated_year, calculated_month)[1]
	else:
		temp_date = date.split('-')
		calculated_month = int(temp_date[0])
		calculated_year = int(temp_date[1])
		end_date = calendar.monthrange(calculated_year, calculated_month)[1]
		date_str = str(end_date) + '-' + str(calculated_month) + '-' + str(calculated_year)
		now = make_aware(datetime.strptime(date_str, '%d-%m-%Y'))


	#lot data kantor

	#data 0-2bulan
	last_two_months_date = now - relativedelta(months=2)
	last_two_monthsend_date = calendar.monthrange(calculated_year, calculated_month)[0]
	last_two_months_date = datetime(last_two_months_date.year, last_two_months_date.month, 1)
	
	
	two_months_bonus_dict, two_months_trades = supervisor_calculate_lot_two_months_bonus(staff_list, last_two_months_date, now, end_date)
	
	#data > 2bulan
	more_two_months_bonus_dict, more_two_months_trades = supervisor_calculate_lot_more_than_two_months_bonus(staff_list, last_two_months_date, now, end_date)
	
	data_pribadi_months_bonus_dict, data_pribadi_trades = supervisor_calculate_data_pribadi_bonus(staff_list, now, end_date)

	#data-ib
	show_ib_bonus = False
	ib_staffs = IB_Staff.objects.filter(staff__in=staff_list, is_active=True).prefetch_related('staff')
	staff_ids = []
	for ib_staff in ib_staffs:
		staff_ids.append(ib_staff.staff.id)

	ib_staff_query = Staff.objects.filter(id__in=staff_ids)
	ib_bonus_dict = {}
	ib_client_trades = {}
	if len(staff_ids):
		show_ib_bonus = True
		ib_bonus_dict, ib_client_trades = supervisor_calculate_ib_bonus(ib_staff_query, now, end_date)
	else:
		ib_bonus_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
		ib_bonus_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
		ib_bonus_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	
	#get_total bonus 
	total_bonus_lot_usd = 0
	total_bonus_lot_idr = 0
	for account_type, bonus_dict, in two_months_bonus_dict.items():
		total_bonus_lot_usd += bonus_dict['total_usd']
		total_bonus_lot_idr += bonus_dict['total_idr']
	
	total_bonus_two_month_more_usd = 0
	total_bonus_two_month_more_idr = 0
	for account_type, bonus_dict, in more_two_months_bonus_dict.items():
		total_bonus_lot_usd += bonus_dict['total_usd']
		total_bonus_lot_idr += bonus_dict['total_idr']

	total_bonus_data_pribadi_usd = 0
	total_bonus_data_pribadi_idr = 0
	for account_type, bonus_dict, in data_pribadi_months_bonus_dict.items():
		total_bonus_data_pribadi_usd += bonus_dict['total_usd']
		total_bonus_data_pribadi_idr += bonus_dict['total_idr']
	

	total_bonus_ib_usd = 0 
	total_bonus_ib_idr = 0
	for account_type, bonus_dict, in ib_bonus_dict.items():
		total_bonus_ib_usd += bonus_dict['total_usd']
		total_bonus_ib_idr += bonus_dict['total_idr']
	
	

	#data > pribadi
	# pribadi_bonus_dict = calculate_data_pribadi_bonus(staff, now, end_date)

	# print('two_months_bonus_dict', two_months_bonus_dict)
	print('ib_bonus_dict', ib_bonus_dict, type(ib_bonus_dict))
	context = {}
	context['staff'] = staff
	context['two_months_bonus_dict'] = two_months_bonus_dict
	context['two_months_trades'] = two_months_trades
	context['more_two_months_bonus_dict'] = more_two_months_bonus_dict
	context['more_two_months_trades'] = more_two_months_trades
	context['data_pribadi_months_bonus_dict'] = data_pribadi_months_bonus_dict
	context['data_pribadi_trades'] = data_pribadi_trades
	context['ib_bonus_dict'] = ib_bonus_dict
	context['ib_client_trades'] = ib_client_trades
	context['total_bonus_lot_usd'] = total_bonus_lot_usd
	context['total_bonus_lot_idr'] = total_bonus_lot_idr
	context['total_bonus_data_pribadi_usd'] = total_bonus_data_pribadi_usd
	context['total_bonus_data_pribadi_idr'] = total_bonus_data_pribadi_idr
	context['total_bonus_ib_usd'] = total_bonus_ib_usd
	context['total_bonus_ib_idr'] = total_bonus_ib_idr
	context['show_ib_bonus'] = show_ib_bonus




	return render(request,template,context=context)

def staff_supervisor_report(request):
	template = 'admin/report/report_staff_supervisor.html'
	
	staff = Staff.objects.filter(profile__user=request.user).first()
	staff_list = Staff.objects.filter(staff_parent=staff, is_active=True)
	date = request.GET.get('date') or None
	
	now = timezone.now()

	start_date = 1
	end_date = None

	
	if date == None:
		calculated_year = now.year
		calculated_month = now.month
		end_date = calendar.monthrange(calculated_year, calculated_month)[1]
	else:
		temp_date = date.split('-')
		calculated_month = int(temp_date[0])
		calculated_year = int(temp_date[1])
		end_date = calendar.monthrange(calculated_year, calculated_month)[1]
		date_str = str(end_date) + '-' + str(calculated_month) + '-' + str(calculated_year)
		now = make_aware(datetime.strptime(date_str, '%d-%m-%Y'))


	#lot data kantor

	#data 0-2bulan
	last_two_months_date = now - relativedelta(months=2)
	last_two_monthsend_date = calendar.monthrange(calculated_year, calculated_month)[0]
	last_two_months_date = datetime(last_two_months_date.year, last_two_months_date.month, 1)
	
	
	two_months_bonus_dict, two_months_trades = supervisor_calculate_lot_two_months_bonus(staff_list, last_two_months_date, now, end_date)
	
	#data > 2bulan
	more_two_months_bonus_dict, more_two_months_trades = supervisor_calculate_lot_more_than_two_months_bonus(staff_list, last_two_months_date, now, end_date)
	
	data_pribadi_months_bonus_dict, data_pribadi_trades = supervisor_calculate_data_pribadi_bonus(staff_list, now, end_date)
	print('sampe disni')

	#data-ib
	show_ib_bonus = False
	ib_staffs = IB_Staff.objects.filter(staff__in=staff_list, is_active=True).prefetch_related('staff')
	staff_ids = []
	for ib_staff in ib_staffs:
		staff_ids.append(ib_staff.staff.id)

	ib_staff_query = Staff.objects.filter(id__in=staff_ids)
	ib_bonus_dict = {}
	ib_client_trades = {}
	if len(staff_ids):
		show_ib_bonus = True
		ib_bonus_dict, ib_client_trades = supervisor_calculate_ib_bonus(ib_staff_query, now, end_date)
	else:
		ib_bonus_dict['elastico'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
		ib_bonus_dict['elektro'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}
		ib_bonus_dict['magneto'] = {'total_idr': 0, 'total_usd': 0, 'total_lot' : 0, 'bonus_tier' : '-'}

	
	#get_total bonus 
	total_bonus_lot_usd = 0
	total_bonus_lot_idr = 0
	for account_type, bonus_dict, in two_months_bonus_dict.items():
		total_bonus_lot_usd += bonus_dict['total_usd']
		total_bonus_lot_idr += bonus_dict['total_idr']
	
	total_bonus_two_month_more_usd = 0
	total_bonus_two_month_more_idr = 0
	for account_type, bonus_dict, in more_two_months_bonus_dict.items():
		total_bonus_lot_usd += bonus_dict['total_usd']
		total_bonus_lot_idr += bonus_dict['total_idr']

	total_bonus_data_pribadi_usd = 0
	total_bonus_data_pribadi_idr = 0
	for account_type, bonus_dict, in data_pribadi_months_bonus_dict.items():
		total_bonus_data_pribadi_usd += bonus_dict['total_usd']
		total_bonus_data_pribadi_idr += bonus_dict['total_idr']
	

	total_bonus_ib_usd = 0 
	total_bonus_ib_idr = 0
	for account_type, bonus_dict, in ib_bonus_dict.items():
		total_bonus_ib_usd += bonus_dict['total_usd']
		total_bonus_ib_idr += bonus_dict['total_idr']
	
	

	#data > pribadi
	# pribadi_bonus_dict = calculate_data_pribadi_bonus(staff, now, end_date)

	# print('two_months_bonus_dict', two_months_bonus_dict)
	print('ib_bonus_dict', ib_bonus_dict, type(ib_bonus_dict))
	context = {}
	context['staff'] = staff
	context['two_months_bonus_dict'] = two_months_bonus_dict
	context['two_months_trades'] = two_months_trades
	context['more_two_months_bonus_dict'] = more_two_months_bonus_dict
	context['more_two_months_trades'] = more_two_months_trades
	context['data_pribadi_months_bonus_dict'] = data_pribadi_months_bonus_dict
	context['data_pribadi_trades'] = data_pribadi_trades
	context['ib_bonus_dict'] = ib_bonus_dict
	context['ib_client_trades'] = ib_client_trades
	context['total_bonus_lot_usd'] = total_bonus_lot_usd
	context['total_bonus_lot_idr'] = total_bonus_lot_idr
	context['total_bonus_data_pribadi_usd'] = total_bonus_data_pribadi_usd
	context['total_bonus_data_pribadi_idr'] = total_bonus_data_pribadi_idr
	context['total_bonus_ib_usd'] = total_bonus_ib_usd
	context['total_bonus_ib_idr'] = total_bonus_ib_idr
	context['show_ib_bonus'] = show_ib_bonus
	context['staff-supervisor-report'] = 'staff-supervisor-report'




	return render(request,template,context=context)