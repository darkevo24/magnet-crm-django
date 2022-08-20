from django.forms import ModelForm
from client.models import *


class ClientForm(ModelForm):
	class Meta:
		model = Client
		fields = [
			'nama',
			'umur',
			'gender',
			'pekerjaan',
			'domisili',
			'source',
		]

class StaffForm(ModelForm):
	class Meta:
		model = Staff
		fields = ['staff_level', 'staff_parent',]