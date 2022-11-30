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
from xlrd import open_workbook ,xldate_as_tuple
from magnet_crm.task import *
from datetime import datetime, timedelta
from django.utils.timezone import make_aware
import csv
from io import StringIO
from decimal import *

CLEANR = re.compile('<.*?>') 

def client_import(request):
	template = 'admin/client/client_import.html'
	import_form = ClientImportForm(request.POST or None, request.FILES or None)

	print(request.POST)
	if request.POST:
		try:
			with transaction.atomic():

				if import_form.is_valid():
					
					csv_file = import_form.cleaned_data['file']
					file = csv_file.read().decode('utf-8').splitlines()
					# print(file)
					counter = 0 
					for row in file:
						# print(row)
						if counter == 0:
							counter+=1
							pass
						else:
							print("temp",row)

							temp = row.split(";")
							print("temp",temp)
							new_client = Client()
							new_client.nama = temp[2]
							try:
								new_client.phone_no = temp[3]
							except:
								new_client.phone_no = 0
							new_client.email = temp[4]

							if temp[5] == "google":

								new_client.source_detail_1 = None
								new_client.source_detail_2 = "4"
							elif temp[5] == "fb / ig":
								new_client.source_detail_1 = None
								new_client.source_detail_2 = "1"
							else:
								new_client.source_detail_1 = None

							new_client.created_by = request.user
							new_client.save()

							selected_staff = Staff.objects.filter(id=import_form.cleaned_data['staff']).first()
							if selected_staff is not None and selected_staff is not "":
								
								c_staff = Client_Staff()
								c_staff.client = new_client
								c_staff.staff =	selected_staff
								c_staff.created_by = request.user				
								c_staff.save()




					
					# 			ini kalo pake xls / xlsx
					# 			excel_file = import_form.cleaned_data['file']
					# 			rb = open_workbook(file_contents=excel_file.read())
					# 			sheet = rb.sheet_by_index(0)
					# 			print(sheet.nrows)
					# 			for x in range(sheet.nrows):
					# 				print(sheet.row_values(x)[0])

					messages.success(request, 'Berhasil Impor Data.')
					return redirect(reverse('client-import'))
				else:
					print(import_form.errors)
					print(import_form.errors)

		except IntegrityError as e:
			print(e)

	context = {
		'import_form': import_form,
		'menu':'client_import',
	}
	return render(request,template,context=context)


def client_own_suspect_list(request):
	now = timezone.now()
	month = request.GET.get('month')
	year = request.GET.get('year') or now.year

	staff = Staff.objects.filter(profile__user=request.user).first()


	client_list = Client_Staff.objects.filter(is_active=True,is_own_client_suspect=True)
	template = 'admin/client/suspect/client_own_list.html'
	if month != "" and month != None:
		client_list = Client_Staff.objects.filter(is_active=True,is_own_client_suspect=True,created_at__year=year,created_at__month=month).order_by("created_at")
	else:
		client_list = Client_Staff.objects.filter(is_active=True,is_own_client_suspect=True).order_by("created_at")

	
	context = {
		'client_list': client_list,
		'menu':'client_own_suspect'
	}
	return render(request,template,context=context)

def client_own_suspect_detail(request,uid_client_staff):
	template = 'admin/client/suspect/client_own_detail.html'
	
	client_staff_sus = Client_Staff.objects.filter(is_active=True,uid=uid_client_staff).first()
	

	if request.POST:
		action = request.POST['action']
		client = client_staff_sus.client
		if action == 'accept':
			print("accept")
			client.source = '0'
			client.source_detail_1 = None
			client.source_detail_2 = None
			client_staff_sus.is_own_client_suspect = False
		else:
			print("reject")
			client_staff_sus.is_own_client_suspect = False
			
		client_staff_sus.updated_by = request.user
		client_staff_sus.updated_at = timezone.now()
		client_staff_sus.save()	
		client.save()

		return redirect(reverse('client-own-suspect-list'))
	
	context = {
		'client_staff_sus': client_staff_sus,
		'menu':'client_own_suspect',
	}
	return render(request,template,context=context)



def client_suspect_list(request):
	now = timezone.now()
	month = request.GET.get('month')
	year = request.GET.get('year') or now.year
	

	


	staff = Staff.objects.filter(profile__user=request.user).first()
	template = 'admin/client/suspect/client_list.html'
	if month != "" and month != None:
		client_list = Client_Duplicate_Suspect.objects.filter(is_active=True,is_checked=False,created_at__year=year,created_at__month=month).order_by("created_at")
	else:
		client_list = Client_Duplicate_Suspect.objects.filter(is_active=True,is_checked=False).order_by("created_at")

	

	context = {
		'client_list': client_list,
		'menu':'client_suspect'
	}
	return render(request,template,context=context)

def client_suspect_history_list(request):
		
	template = 'admin/client/suspect/history_list.html'
	history_list = Client_Duplicate_Suspect_History.objects.filter(is_active=True).order_by("created_at")
	context = {
		'history_list': history_list,
		'menu':'client_suspect'
	}
	return render(request,template,context=context)

def client_suspect_detail(request,id_client_sus):
	template = 'admin/client/suspect/client_detail.html'
	# cur_staff = Staff.objects.filter(profile__user=request.user).first()
	
	# client = Client.objects.filter(id=id_client).first()
	client_sus = Client_Duplicate_Suspect.objects.filter(id=id_client_sus).first()
	
	print(client_sus,'client_sus')

	if request.POST:
		action = request.POST['action']
		client = client_sus.client_new
		if action == 'accept':
			print("accept")
			client.is_suspect = False
			client.is_suspect_bypass = True

			new_his = Client_Duplicate_Suspect_History()
			new_his.duplicate_suspect = client_sus
			new_his.action = "accepted"
			new_his.created_by = request.user
			new_his.save()

		else:
			print("reject")
			new_his = Client_Duplicate_Suspect_History()
			new_his.duplicate_suspect = client_sus
			new_his.action = "rejected"
			new_his.created_by = request.user
			new_his.save()
			client.is_active = False

			rejected_client_followup = Client_Followup.objects.filter(is_active=True,client=client)
			for x in rejected_client_followup:
				follow = Client_Followup()
				follow.client = x.client
				follow.followup = x.followup
				follow.staff = x.staff
				follow.answer = x.answer
				follow.created_by = request.user
				follow.created_at = timezone.now() 
				follow.save()

			rejected_client_schedule = Client_Schedule.objects.filter(is_active=True,client=client)
			for x in rejected_client_schedule:
				schedule = Client_Schedule()
				schedule.schedule_date = x.schedule_date
				schedule.client = x.client
				schedule.staff = x.staff
				schedule.schedule_type = x.schedule_type
				schedule.status = x.status
				schedule.notes = x.notes
				schedule.answer = x.answer
				schedule.created_by = request.user
				schedule.created_at = timezone.now() 
				schedule.save()
			
			
			rejected_client_journey = Client_Journey.objects.filter(is_active=True,client=client)
			for x in rejected_client_journey:
				if x.journal_type != 'registered':
					journey = Client_Journey()
					journey.schedule_date = x.schedule_date
					journey.client = x.client
					journey.staff = x.staff
					journey.journal_type = x.journal_type
					journey.created_by = request.user
					journey.created_at = timezone.now() 
					journey.save()
			






		client.updated_by = request.user
		client.save()
		client_sus.is_checked = True
		client_sus.updated_by = request.user
		client_sus.updated_at = timezone.now()
		client_sus.save()

		return redirect(reverse('client-suspect-list'))
	# history_followup = Client_Followup.objects.filter(client=client)
	# history_schedule = Client_Schedule.objects.filter(client=client)
	# history_journey = Client_Journey.objects.filter(client=client)

	
	context = {
		'client_sus': client_sus,
		'menu':'client_suspect',
		# 'client_exist':client_exist,
		# 'history_followup': history_followup,
		# 'history_schedule': history_schedule,
		# 'history_journey':history_journey,
		# 'history_schedule': client,
		# 'id_client':id_client,
	}
	return render(request,template,context=context)
def client_sync(request):
	sync_data_magnet()
	# check_user_deposit()
	
	return redirect(reverse('client-list'))

def client_list(request):
		
	staff = Staff.objects.filter(profile__user=request.user).first()

	client_color = {}

	if not request.user.is_superuser and not staff.staff_level.level < 2:
		template = 'admin/client/client_list.html'
		# staff = Staff.objects.filter(is_active=True, profile__user__id=request.user.id).first()

		client_staff_list = Client_Staff.objects.filter(staff__id=staff.id, is_active=True).order_by('-created_at','client__created_at')
		client_list = Client.objects.none()

		
		
		for client_staff in client_staff_list:
			if client_staff.client.id not in client_color:
				client_color[client_staff.client.id] = client_staff.color
			

	else:
		template = 'admin/client/admin_client_list.html'
		client_list = Client.objects.filter(is_active=True).order_by("created_at")
		client_staff_list = Client_Staff.objects.none()

		

	# messages.success(request, 'Profile details updated.')
	context = {
		'client_list': client_list,
		'client_staff_list': client_staff_list,
		'menu':'client',
		'client_color':client_color,

	}
	return render(request,template,context=context)

def client_add(request):
	template = 'admin/client/client_add.html'
	client_form = ClientForm(request.POST or None)

	print(request.POST)
	if request.POST:
		try:
			with transaction.atomic():

				if client_form.is_valid() :
					
					client = client_form.save(commit=False)
					birthday = request.POST['birthday_submit']
					client.birthday = birthday
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
		'menu':'client',
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
		'menu':'client',
	}
	return render(request,template,context=context)

def client_edit_color(request,id_client, color_str):
	template = 'admin/client/client_add.html'

	try:
		with transaction.atomic():
			# client = Client.objects.filter(id=id_client,is_active=True).first()
			staff = Staff.objects.filter(profile__user__id=request.user.id).first()
			# print('id_client',id_client,' staff.id',staff.id)
			client_staff = Client_Staff.objects.filter(client__id=id_client, is_active=True).first()
			client_staff.color = color_str
			print(color_str,'color_str')
			client_staff.updated_by = request.user

			client_staff.save()
			# print(client_staff.color, color_str)
	
	except IntegrityError as e:
		print(e)

	return HttpResponseRedirect(request.META.get('HTTP_REFERER', '/'))

def client_set_hot(request,id_client, action):


	try:
		with transaction.atomic():
			
			staff = Staff.objects.filter(profile__user__id=request.user.id).first()
			client_staff = Client_Staff.objects.filter(client__id=id_client, is_active=True).first()

			if action == "true":
				client_staff.is_hot = True
			else:
				client_staff.is_hot = False
			client_staff.updated_by = request.user
			client_staff.save()
	
	except IntegrityError as e:
		print(e)

	return HttpResponseRedirect(request.META.get('HTTP_REFERER', '/'))



def client_delete(request,id_client):
	
	client = Client.objects.filter(id=id_client).first()
	client.is_active = False
	client.updated_by = request.user
	client.updated_at = timezone.now()
	client.save()
	return redirect(reverse('client-list'))


def request_own(request,id_client):
	template = 'admin/client/client_detail_list.html'
	cur_staff = Staff.objects.filter(profile__user=request.user).first()
	client = Client.objects.filter(id=id_client).first()
	client_staff = Client_Staff.objects.filter(is_active=True,client=client).first()

	client_staff.is_own_client_suspect = True
	client_staff.updated_at = timezone.now()
	client_staff.updated_by = request.user
	client_staff.save()

	messages.success(request, "Request Berhasil")
	return redirect(reverse('client-detail-list',id_client))

def detail_list(request,id_client):
	template = 'admin/client/client_detail_list.html'
	cur_staff = Staff.objects.filter(profile__user=request.user).first()

	client_staff = Client_Staff.objects.filter(is_active=True,client=client,staff=cur_staff,is_own_client_suspect=False).exclude(client__source='0').first()

	client = Client.objects.filter(id=id_client).first()

	history_followup = Client_Followup.objects.filter(client=client)
	history_schedule = Client_Schedule.objects.filter(client=client)
	history_journey = Client_Journey.objects.filter(client=client)
	print("sampe atasnya",client.id)
	client_position_list,pos_detail = get_client_position(client.id)
	print("sampe bawahnya")
	client_eq_bal = get_login_trades(client.id)
	print(client_position_list,'client_position_list')
	dict_total = {}
	if client_position_list != None:
		for x in client_position_list:
			dict_total[x[1]] = x[16] + x[17]
	
	context = {
		'client': client,
		'client_staff':client_staff,
		'history_followup': history_followup,
		'history_schedule': history_schedule,
		'history_journey':history_journey,
		'client_position_list':client_position_list,
		'pos_detail':pos_detail,
		'client_eq_bal':client_eq_bal['data'][0] if 'data' in client_eq_bal else [],
		# 'history_schedule': client,
		'dict_total':dict_total,
		'id_client':id_client,
	}
	return render(request,template,context=context)

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
			
					# start_process.apply_async(_id='eta-testing')
					# schedule_date_reminder = timezone.now()
					# reminder_date = schedule_date - timedelta(hours=0, minutes=1)
					# schedule_date_reminder = schedule_date_reminder.replace(day=reminder_date.day,month=reminder_date.month,year=reminder_date.year,hour=reminder_date.hour,minute=reminder_date.minute,second=reminder_date.second) 
					# print(schedule_date_reminder,"schedule_date_reminder",timezone.now(),"timezone.now()",schedule_date_reminder-timezone.now())
					print(make_aware(schedule_date - timedelta(hours=0, minutes=5))-timezone.now())
					# make_aware(schedule_date - timedelta(days=30))
					# make_aware(schedule_date - timedelta(days=14))
					# make_aware(schedule_date - timedelta(days=7))
					# make_aware(schedule_date - timedelta(days=1))
					# start_process.apply_async(_id='eta-testing',eta=make_aware(schedule_date))

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

def feedback_list(request):
	template = 'admin/client/client_feedback/list.html'

	total_top = Settings.objects.filter(is_active=True).first().top_client_feedback or 3
	staff = Staff.objects.filter(profile__user__id=request.user.id, is_active=True).first()
	# sub_staff_list = Staff.objects.filter(staff_parent__id=staff.id, is_active=True)
	# if sub_staff_list.count() == 0 >:

	if request.user.is_superuser or staff.staff_level.level < 2 :
		client_feedback_list = Client_Followup.objects.filter(is_active=True).prefetch_related('followup', 'client', 'staff').order_by('-created_at')[:total_top]
	else:
		child_staff = Staff.objects.filter(staff_parent = staff,is_active=True)
		if child_staff is None:
			client_feedback_list = Client_Followup.objects.filter(is_active=True, staff=staff).prefetch_related('followup', 'client', 'staff').order_by('-created_at')[:total_top]
		else:
			client_feedback_list = Client_Followup.objects.filter(is_active=True, staff__in=child_staff.values_list('id',flat=True)).prefetch_related('followup', 'client', 'staff').order_by('-created_at')[:total_top]
			

	dict_client_res = {}
	for client_res in client_feedback_list:
		if client_res.followup not in dict_client_res:
			dict_client_res[client_res.followup] = 0
		dict_client_res[client_res.followup] += 1

	print(dict_client_res)

	dict_client_res_sorted = {}
	# dict_client_res = sorted(dict_client_res.items(), key=lambda x: x[1], reverse=True)
	top_response = {}
	counter = 0
	for i in sorted(dict_client_res.items(), key=lambda x: x[1], reverse=True):
		dict_client_res_sorted[i[0]] = i[1]
		if counter < total_top:
			top_response[i[0]] = i[1]
			counter+=1


	

	# [(dict_client_res_sorted[key] = value) for (key, value) in sorted(dict_client_res.items(), key=lambda x: x[1])]
	# print(dict_client_res)



	context = {}
	context['client_feedback_list'] = client_feedback_list
	context['dict_client_res'] = dict_client_res_sorted
	context['top_response'] = top_response
	context['staff'] = staff
	context['total_top'] = total_top

	context['menu'] = 'client_feedback'


	return render(request,template,context=context)

def client_position(request, client_id):
	client = Client.objects.filter(id=client_id).first()
	print(client.magnet_id)
	client_position_list = get_client_position(client.id)
	print(client)

	context = {
		'client_position_list': client_position_list,
		'client': client,
	}
	template = 'admin/client/position.html'
	# template = 'admin/client/client_schedule/list.html'
	return render(request, template, context)

def client_position_history(request, client_id):
	client = Client.objects.filter(id=client_id).first()
	print(client.magnet_id)
	from_date = request.GET.get('from') or None
	to_date = request.GET.get('to') or None

	client_position_history = get_login_trades_history(client.id,from_date,to_date)
	print("client_position_history",client_position_history)

	total_in = 0
	total_out = 0
	for x in client_position_history['data']:
		if x['entry'] == "open":
			total_in += Decimal(x['lot'])
		else:
			total_out += Decimal(x['lot'])


	context = {
		'client_position_history': client_position_history['data'] if 'data' in client_position_history else [] ,
		'client': client,
		'from_date':from_date,
		'to_date':to_date,
		'total_in':total_in,
		'total_out':total_out,


	}
	template = 'admin/client/position_history.html'
	# template = 'admin/client/client_schedule/list.html'
	return render(request, template, context)
	
	

