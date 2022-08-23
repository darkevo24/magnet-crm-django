from django.forms import ModelForm
from client.models import *


class ClientForm(ModelForm):
	class Meta:
		model = Client
		fields = [
			'nama',
			'phone_no',
			'email',
			'umur',
			'gender',
			'pekerjaan',
			'domisili',
			'source',
		]

class ClientScheduleForm(ModelForm):
	class Meta:
		model = Client_Schedule
		fields = [
			'schedule_type',
			'schedule_date',
			'notes',
		]