from django.forms import ModelForm
from client.models import *
from django import forms

class ClientForm(ModelForm):
	email = forms.CharField(label='Email', required=False)
	umur = forms.CharField(label='Umur', required=False)
	gender = forms.CharField(label='Jenis Kelamin', required=False)
	pekerjaan = forms.CharField(label='Pekerjaan', required=False)
	domisili = forms.CharField(label='Domisili', required=False)
	birthday = forms.DateField(label='Tanggal Ulang Tahun',required=False, input_formats=['%Y-%m-%d'])
	
	
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
			'birthday',
			'source',
			'source_detail_1',
			'source_detail_2',
			'aecode'
		]
	
	def __init__(self, *args, **kwargs):
		aecode = kwargs.pop('aecode', None)
		super(ClientForm, self).__init__(*args, **kwargs)
		self.fields['source'].required = False
		self.fields['source_detail_1'].required = False
		self.fields['source_detail_2'].required = False
		self.fields['aecode'].required = False
		self.fields['aecode'].initial = aecode
		

class ClientImportForm(forms.Form):
	staff = forms.ChoiceField(choices=[])
	file = forms.FileField()
	def __init__(self, *args, **kwargs):
		super(ClientImportForm, self).__init__(*args, **kwargs)

		self.fields['staff'].required = False
		
		employee_choices = []
		employees = Staff.objects.filter(is_active=True,staff_level__level=3).order_by("profile__full_name")
		for data in employees:
			employee_choices.append((data.id, data.profile.full_name))

		self.fields['staff'].choices = employee_choices


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

