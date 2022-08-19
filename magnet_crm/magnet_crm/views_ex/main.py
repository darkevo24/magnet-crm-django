
from django.shortcuts import render
# # from core.forms.admin.main.main import *
# # from referal.models import *
from core.forms.main import *
from django.shortcuts import render, redirect
from django.urls import reverse
from django.http import JsonResponse

def index(request):
	template = 'list.html'
	tree_level = request.GET.get('level')
	if tree_level == "" or tree_level == None:
		all_choices = Followup.objects.exclude(followup_choice_code__icontains="_")
	else:
		all_choices = Followup.objects.filter(followup_choice_head=tree_level).exclude(followup_choice_code=tree_level)
	
	context = {
		'all_choices' : all_choices
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
			instances = tree_form.save()
			instances.save()
			instances.followup_choice_code = instances.id
			instances.followup_choice_head = instances.id
			instances.save()
		else:
			instances = tree_form.save()
			print("str(tree_level)+str(data.id)",str(tree_level))
			print("str(tree_level)+str(data.id)",str(instances.id))
			instances.followup_choice_code = str(tree_level)+"_"+str(instances.id)
			instances.followup_choice_head = str(tree_level)
			instances.save()
		
	
		return redirect(reverse('list'))


	context = {
		'tree_form' : tree_form
	}

	return render(request,template, context=context)




def add_form(request):
	template = 'add_form.html'
	tree_form = ChoicesForm(request.POST or None)
	first_choices = Followup.objects.exclude(followup_choice_code__icontains="_")
	# if tree_form.is_valid():
		
	
	# 	return redirect(reverse('list'))


	context = {
		'first_choices':first_choices,
		'tree_form' : tree_form
	}

	return render(request,template, context=context)

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