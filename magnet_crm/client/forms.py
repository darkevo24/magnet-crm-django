from django.forms import ModelForm
from client.models import *
from django import forms

class ClientForm(ModelForm):
	birthday = forms.CharField(label='Birthday', max_length=100,required=False)
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
			# 'birthday',
			# 'source',
		]


class DateTimeForm(forms.Form):
	schedule_date = forms.CharField(label='Your name', max_length=100)

	# def __init__(self, ticket, *args, **kwargs):
		# schedule_date = kwargs.pop('schedule_date', None)
		# super(DateTimeForm, self).__init__(*args, **kwargs)
		# self.fields['schedule_date'].initial = schedule_date


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

