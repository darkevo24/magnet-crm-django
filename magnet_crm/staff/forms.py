from django.forms import ModelForm
from staff.models import *
from django import forms

class StaffLevelForm(ModelForm):
	class Meta:
		model = Staff_Level
		fields = ['level', 'level_name',]

class StaffForm(ModelForm):
	SUPERVISOR_CHOICES =(
	    ("0", "Pilih supervisor"),
	   
	)
	staff_parent_id = forms.ChoiceField(choices = SUPERVISOR_CHOICES, required=False)

	
	# staff_parent_id = forms.CharField(widget = forms.HiddenInput(), required = False)

	class Meta:
		model = Staff
		fields = ['staff_level',]


class StaffSalaryForm(ModelForm):
	class Meta:
		model = Staff_Salary_Monthly
		fields = ['salary_date','salary_amount','bonus_amount']






