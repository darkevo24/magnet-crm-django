
from django.shortcuts import render
# # from core.forms.admin.main.main import *
# # from referal.models import *
from client.models import *
from staff.models import *
from core.forms.main import *
from django.shortcuts import render, redirect
from django.urls import reverse
from django.http import JsonResponse
from django.contrib.auth import authenticate, login,logout
import json
from django.utils import timezone
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
				staff = Staff.objects.filter(profile__user__id=user.id, is_active=True).first()
				level_name = staff.staff_level.level_name
				request.session['level_name'] = level_name

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
	client_list = Client.objects.filter(is_active=True)

	staff = Staff.objects.filter(profile__user=request.user).first()
	print("staff",staff)
	client_staff_list = Client_Staff.objects.filter(staff=staff, is_active=True).prefetch_related('client')
	client_ids = []
	for client_staff in client_staff_list:
		client_ids.append(client_staff.client.id)
	client_schedule_list = Client_Schedule.objects.filter(client__id__in=client_ids, is_active=True).order_by('schedule_date')
	client_schedule_list_json = []
	for client_schedule in client_schedule_list:
		temp_dict = {}
		temp_dict['title'] = 'Contact ' + client_schedule.client.nama
		temp_dict['start'] = client_schedule.schedule_date.strftime("%Y-%m-%dT%H:%M:%S")
		client_schedule_list_json.append(temp_dict)


	context = {
		'all_client' : client_list,
		'client_schedule_list_json': json.dumps(client_schedule_list_json),
	}
	return render(request,template,context=context)

def client_transfer(request):
	template = 'admin/core/client_transfer.html'
	client_list = Client.objects.filter(is_active=True,is_locked= False)
	staff_list = Staff.objects.filter(is_active=True,is_locked= False)

	context = {
		'all_client' : client_list,
		'all_staff' : staff_list,
	}
	return render(request,template,context=context)


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
		instances.updated_by = request.user
		instances.updated_at = timezone.now()
		instances.save()
	
		return redirect(reverse('followup-list'))


	context = {
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
		arr_tree.append({"choice_text":x.followup_choices,"choice_id":x.followup_choice_code,"choice_textfield":x.followup_textfield})


	
	response["next_tree_choices"] = arr_tree



	return JsonResponse(response)