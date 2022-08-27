
from django.shortcuts import render
# # from core.forms.admin.main.main import *
# # from referal.models import *
from client.models import *
from staff.models import *
from notification.models import *
from core.forms.main import *
from django.shortcuts import render, redirect
from django.urls import reverse
from django.http import JsonResponse
from django.contrib.auth import authenticate, login,logout
import json
from django.utils import timezone
from django.db import IntegrityError, transaction
from notification.views import create_notification

def notif_check(request):
	print("masuk sini")
	if request.user != None:
		staff = Staff.objects.filter(profile__user=request.user).first()
		all_notif = Notification.objects.filter(is_active=True,is_opened=False,staff=staff)
	return {'notification_context_list': all_notif}
	# return JsonResponse(response)

def get_client_ip(request):
    x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
    if x_forwarded_for:
        ip = x_forwarded_for.split(',')[0]
    else:
        ip = request.META.get('REMOTE_ADDR')
    return ip

def admin_logout(request):
	logout(request)

	return redirect(reverse('admin-login'))

def admin_login(request):
	template = 'admin/core/login.html'
	form = LoginForm(request.POST or None)
	error_message = ""

	if request.POST:
		if form.is_valid():
			email = form.cleaned_data['email']
			password = form.cleaned_data['password']
			

			user = authenticate(request, username=email, password=password)
			
			data = User.objects.first()
			print(data,"ini data")
			profile = Profile.objects.filter(user=user).first()

			if user is not None:
				login(request, user)
				
				profile = user.profile
				profile.last_login_ip = get_client_ip(request)
				profile.save()
				staff = Staff.objects.filter(profile__user__id=user.id, is_active=True).first()
				if staff != None:
					level_name = staff.staff_level.level_name
					request.session['level_name'] = level_name

				else:
					request.session['level_name'] = 'Admin'

				if request.GET.get('next') != None:
					return redirect(request.GET.get('next'))
				else:
					return redirect(reverse('dashboard'))
			else:
				print('user not found')
				error_message = "Password salah"

	context = {
		'form': form,
		'error_message': error_message
	}

	return render(request,template, context=context)

def index(request):
	template = 'list.html'
	tree_level = request.GET.get('level')
	if tree_level == "" or tree_level == None:
		all_choices = Followup.objects.filter(is_active=True).exclude(followup_choice_code__icontains="_")
	else:
		all_choices = Followup.objects.filter(followup_choice_head=tree_level,is_active=True).exclude(followup_choice_code=tree_level)
	
	context = {
		'all_choices' : all_choices
	}
	return render(request,template,context=context)

def dashboard(request):
	template = 'admin/core/dashboard.html'
	

	staff = Staff.objects.filter(profile__user=request.user).first()
	client_staff_list = Client_Staff.objects.filter(staff=staff, is_active=True).prefetch_related('client')
	client_ids = []

	client_list = Client.objects.filter(is_active=True,id__in=client_staff_list.values_list('client__id',flat=True))
	client_color = {}
	for client_staff in client_staff_list:
		if client_staff.client.id not in client_color:
			client_color[client_staff.client.id] = client_staff.color
		client_ids.append(client_staff.client.id)
	client_schedule_list = Client_Schedule.objects.filter(client__id__in=client_ids, is_active=True).order_by('schedule_date')
	client_schedule_list_json = []
	for client_schedule in client_schedule_list:
		temp_dict = {}
		temp_dict['title'] = 'Contact ' + client_schedule.client.nama
		temp_dict['start'] = client_schedule.schedule_date.strftime("%Y-%m-%dT%H:%M:%S")
		client_schedule_list_json.append(temp_dict)

	get_all_user = False
	if request.user.is_superuser == True:
		get_all_user = True
	elif staff.staff_level.level < 1:
		get_all_user = True
	

	if get_all_user == True	:
		total_client = Client.objects.filter(is_active=True).order_by("nama").count()
		client_list = Client.objects.filter(is_active=True)
	else:
		total_client = client_staff_list.count()

	total_upcomming_followup = client_schedule_list.filter(schedule_date__gt=timezone.now()).count()
	total_feedback = Client_Followup.objects.filter(staff=staff,is_active=True).count()
	total_followup = Client_Journey.objects.filter(staff=staff,is_active=True).count()

	context = {
		'total_client':total_client,
		'total_upcomming_followup':total_upcomming_followup,
		'total_feedback':total_feedback,
		'total_followup':total_followup,

		'all_client' : client_list,
		'client_schedule_list_json': json.dumps(client_schedule_list_json),
		'client_color' : client_color,
	}
	return render(request,template,context=context)

def client_transfer(request):
	template = 'admin/core/client_transfer.html'

	all_selected_client = Client_Staff.objects.filter(is_active=True).values_list('client__id',flat=True)
	print("ini yang udah selected",all_selected_client)

	client_list = Client.objects.filter(is_active=True,is_locked = False).exclude(id__in=all_selected_client).order_by("nama")
	staff_list = Staff.objects.filter(is_active=True,is_locked = False).order_by("profile__full_name")

	if request.POST:
		try:
			with transaction.atomic():
				print(request.POST)
				all_keys = request.POST.keys()

				all_staff_uid = []
				
				for key in all_keys:
					if 'staff_uid_' in key:
						staff_uid = key.split("staff_uid_")[1]
						all_staff_uid.append(staff_uid)

				for staff_uid in all_staff_uid:
					if staff_uid != None and staff_uid != "":
						
						# get all related id
						all_client_id = []
						for client_id in request.POST['staff_uid_'+staff_uid].split(","):
							all_client_id.append(client_id)

						print(all_client_id)
						prev_staff_existing_client = Client_Staff.objects.filter(is_active=True,staff__uid=staff_uid)
						for staff_client in prev_staff_existing_client:
							if not staff_client.id in all_client_id:
								staff_client.is_active = False
								staff_client.updated_by = request.user
								staff_client.updated_at = timezone.now()
								staff_client.save()

						for client_id in request.POST['staff_uid_'+staff_uid].split(","):
							if client_id != None and client_id != "" :
								client_staff = Client_Staff()
								client_staff.client = Client.objects.filter(id=client_id).first()
								client_staff.staff = Staff.objects.filter(uid=staff_uid).first()
								client_staff.created_by = request.user
								client_staff.save()
				
				return redirect(reverse('client_transfer'))			

						

		except IntegrityError as e:
			print(e)

	context = {
		'all_client' : client_list,
		'all_staff' : staff_list,
	}
	return render(request,template,context=context)

def client_transfer_new(request):
	template = 'admin/core/client_transfer_new.html'
	cur_staff = Staff.objects.filter(profile__user=request.user,is_active=True).first()
	if request.user.is_superuser:
		all_selected_client = Client_Staff.objects.filter(is_active=True).values_list('client__id',flat=True)
	else:
		all_selected_client = Client_Staff.objects.filter(is_active=True,staff__staff_level__level__gt=cur_staff.staff_level.level).values_list('client__id',flat=True)

	print("ini yang udah selected",all_selected_client)

	if request.user.is_superuser:
		cur_staff_client = Client_Staff.objects.filter(is_active=True).values_list('client__id',flat=True)
		client_list = Client.objects.filter(is_active=True,is_locked = False).exclude(id__in=all_selected_client).order_by("nama")
	elif cur_staff.staff_level.level > 1:
		cur_staff_client = Client_Staff.objects.filter(is_active=True,staff=cur_staff).values_list('client__id',flat=True)
		client_list = Client.objects.filter(is_active=True,is_locked = False,id__in=cur_staff_client).exclude(id__in=all_selected_client).order_by("nama")
		print("cur_staff_client",cur_staff_client)
	else:
		client_list = Client.objects.filter(is_active=True,is_locked = False).exclude(id__in=all_selected_client).order_by("nama")

	if request.user.is_superuser == True:
		staff_list = Staff.objects.filter(is_active=True,is_locked=False).order_by("profile__full_name")
	else:
		staff_list = Staff.objects.filter(is_active=True,is_locked=False,staff_level__level=cur_staff.staff_level.level+1).exclude(id=cur_staff.id).order_by("profile__full_name")

	if request.POST:
		try:
			with transaction.atomic():
				print(request.POST)
				all_keys = request.POST.keys()
				create_notif = False
				all_staff_uid = []
				
				for key in all_keys:
					if 'staff_uid_' in key:
						staff_uid = key.split("staff_uid_")[1]
						all_staff_uid.append(staff_uid)

				for staff_uid in all_staff_uid:
					if staff_uid != None and staff_uid != "":
						
						# get all related id
						all_client_id = []
						for client_id in request.POST['staff_uid_'+staff_uid].split(","):
							all_client_id.append(client_id)

						print(all_client_id)
						prev_staff_existing_client = Client_Staff.objects.filter(is_active=True,staff__uid=staff_uid)
						for staff_client in prev_staff_existing_client:
							if not staff_client.id in all_client_id:
								staff_client.is_active = False
								staff_client.updated_by = request.user
								staff_client.updated_at = timezone.now()
								staff_client.save()

						for client_id in request.POST['staff_uid_'+staff_uid].split(","):
							if client_id != None and client_id != "" :
								create_notif = True
								client_staff = Client_Staff()
								client_staff.client = Client.objects.filter(id=client_id).first()
								client_staff.staff = Staff.objects.filter(uid=staff_uid).first()
								client_staff.created_by = request.user
								client_staff.save()

					if create_notif:
						ctx = {}
						ctx['client_schedule'] = None
						ctx['staff'] = cur_staff
						ctx['notification_type'] = 'notification_followup'
						ctx['notes'] = 'Anda Mendapatkan Client Baru'
						create_notification(request,ctx)
				
				return redirect(reverse('client_transfer_new'))			

						

		except IntegrityError as e:
			print(e)

	context = {
		'all_client' : client_list,
		'all_staff' : staff_list,
	}
	return render(request,template,context=context)


def client_transfer_staff_ajax(request):
	response = {}
	data = []

	if request.POST and request.is_ajax:
		staff_uid = request.POST["staff_uid"]
		staff_client = Client_Staff.objects.filter(staff__uid=staff_uid, is_active=True).prefetch_related('client')
		
		arr_client = []
		for x in staff_client:
			arr_client.append({"name":x.client.nama,"id":x.client.id,'is_registred':x.client.is_registred,'phone_no':x.client.phone_no,'email':x.client.email})


		response["client_list"] = arr_client



	return JsonResponse(response)

def add_tree(request):
	template = 'add.html'
	tree_form = TreeForm(request.POST or None)

	if tree_form.is_valid():
		print("masuk valid")
		tree_level = request.GET.get('level')
		print("tree level sekarang", tree_level!= "")
		print("tree level sekarang", tree_level!= None)
		print("tree level sekarang", tree_level)

		if tree_level == "" or tree_level == None:
			instances = tree_form.save(commit=False)
			instances.created_by = request.user
			instances.save()
			instances.followup_choice_code = instances.id
			instances.followup_choice_head = instances.id
			instances.save()
		else:
			instances = tree_form.save(commit=False)
			instances.created_by = request.user
			instances.save()
			print("str(tree_level)+str(data.id)",str(tree_level))
			print("str(tree_level)+str(data.id)",str(instances.id))
			instances.followup_choice_code = str(tree_level)+"_"+str(instances.id)
			instances.followup_choice_head = str(tree_level)
			instances.save()
		
		color = request.POST['color']
		font_color = request.POST['font_color']
		if color is not None and color is not "":
			instances.color = color
			instances.font_color = font_color
			instances.save()
	
		return redirect(reverse('followup-list'))


	context = {
		'tree_form' : tree_form
	}

	return render(request,template, context=context)

def edit_tree(request,tree_id):
	template = 'add.html'
	tree = Followup.objects.filter(id=tree_id).first()
	tree_form = TreeForm(request.POST or None,instance=tree)

	if tree_form.is_valid():
		
		instances = tree_form.save(commit=False)
		color = request.POST['color']
		font_color = request.POST['font_color']
		instances.color = color
		instances.font_color = font_color
		instances.updated_by = request.user
		instances.updated_at = timezone.now()
		instances.save()
	
		return redirect(reverse('followup-list'))


	context = {
		'is_edit':True,
		'tree':tree,
		'tree_form' : tree_form
	}

	return render(request,template, context=context)

def delete_tree(request,tree_id):
	template = 'add.html'
	tree = Followup.objects.filter(id=tree_id).first()
	tree.is_active = False
	tree.updated_by = request.user
	tree.updated_at = timezone.now()
	tree.save()
	
	return redirect(reverse('followup-list'))






def add_form(request,id_client):
	template = 'add_form.html'
	# tree_form = ChoicesForm(request.POST or None)
	first_choices = Followup.objects.exclude(followup_choice_code__icontains="_")

	if request.POST:
		selected_radio = request.POST['selected_radio']
		notes = request.POST['notes']
		# print("selected_radio",selected_radio)
		print("request.POST",request.POST)
		tree_code = request.POST['radio_'+selected_radio]
		staff = Staff.objects.filter(is_active=True,profile__user=request.user).first()
		client = Client.objects.filter(is_active=True,id=id_client).first()
		print("tree_code",tree_code)
		tree = Followup.objects.filter(is_active=True,followup_choice_code=tree_code).first()
		
		client_followup = Client_Followup()
		client_followup.client =  client
		client_followup.followup = tree
		client_followup.staff = staff
		client_followup.answer = notes
		client_followup.created_by = request.user
		client_followup.save()
	# if tree_form.is_valid():
		
	
		return redirect(reverse('client-followup-list', kwargs={'id_client': id_client}))


	context = {
		'first_choices':first_choices,
		'id_client':id_client,
		# 'tree_form' : tree_form
	}

	return render(request,template, context=context)

def delete_form(request,id_client,id_followup):
	fol = Client_Followup.objects.filter(id = id_followup).first()	
	fol.is_active = False
	fol.updated_by = request.user
	fol.updated_at = timezone.now()
	fol.save()

	return redirect(reverse('client-followup-list', kwargs={'id_client': id_client}))

def ajax_form(request):

	response = {}
	data = []

	if request.POST and request.is_ajax:
		tree_level = request.POST["tree_level"]
		next_tree = Followup.objects.filter(followup_choice_head=tree_level).exclude(followup_choice_code=tree_level)
		
	arr_tree = []
	for x in next_tree:
		arr_tree.append({'id':x.id,"choice_text":x.followup_choices,"choice_id":x.followup_choice_code,"choice_textfield":x.followup_textfield,'color':x.color,'font_color':x.font_color})


	
	response["next_tree_choices"] = arr_tree



	return JsonResponse(response)