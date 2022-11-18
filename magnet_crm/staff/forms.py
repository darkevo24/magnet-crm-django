from django.forms import ModelForm
from staff.models import *
from ib.models import *
from django import forms

class StaffLevelForm(ModelForm):
	class Meta:
		model = Staff_Level
		fields = ['level', 'level_name','salary']

class StaffForm(ModelForm):
	SUPERVISOR_CHOICES =(
	    ("0", "Pilih supervisor"),
	   
	)
	staff_parent_id = forms.ChoiceField(choices = SUPERVISOR_CHOICES, required=False)

	
	# staff_parent_id = forms.CharField(widget = forms.HiddenInput(), required = False)

	class Meta:
		model = Staff
		fields = ['staff_level','aecode','rekening']


class StaffSalaryForm(forms.Form):
	salary_amount = forms.CharField(required=True)
	bonus_amount = forms.CharField(required=True)
	


class IBForm(ModelForm):
	class Meta:
		model = IB
		fields = ['name']

class IBStaffForm(ModelForm):
	class Meta:
		model = IB_Staff
		fields = ['staff']

	def __init__(self, *args, **kwargs):
		super(IBStaffForm, self).__init__(*args, **kwargs)

		# self.fields['staff'].required = False
		
		employee_choices = []
		employees = Staff.objects.filter(is_active=True,staff_level__level=3)
		for data in employees:
			employee_choices.append((data.id, data.profile.full_name))

		self.fields['staff'].choices = employee_choices
