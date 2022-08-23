from django.forms import ModelForm
from client.models import *
from django import forms

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


class DateTimeForm(forms.Form):
    schedule_date = forms.CharField(label='Your name', max_length=100)


class ClientScheduleForm(ModelForm):
	# schedule_date = forms.DateTimeField(input_formats=['%I:%M %p %d-%b-%Y'],
 #             # widget = forms.DateTimeInput(
 #             #     attrs={'type': 'datetime-local'},
 #             #     format='%I:%M %p %d-%b-%Y')
 #             ) 

	class Meta:
		model = Client_Schedule
		fields = [
			'schedule_type',
			'notes',
		]