from django.forms import ModelForm
from client.models import *


class StaffLevelForm(ModelForm):
	class Meta:
		model = Staff_Level
		fields = ['level', 'level_name',]

class StaffForm(ModelForm):
	class Meta:
		model = Staff
		fields = ['staff_level', 'staff_parent',]