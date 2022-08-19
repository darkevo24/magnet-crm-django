from django.forms import ModelForm
from staff.models import *
from django import forms

class StaffLevelForm(ModelForm):
	class Meta:
		model = Staff_Level
		fields = ['level', 'level_name',]

class StaffForm(ModelForm):
	staff_parent = forms.CharField(max_length=100, required=False)
	
	staff_parent_id = forms.CharField(widget = forms.HiddenInput(), required = False)

	class Meta:
		model = Staff
		fields = ['staff_level',]


