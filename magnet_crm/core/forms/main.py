from django import forms
import datetime
from django.forms import ModelForm

from followup.models import *
from django.forms import TextInput,EmailInput,PasswordInput,ChoiceField

from core.models import *
from client.models import *
class LoginForm(forms.Form):
	email = forms.EmailField(max_length=100, required=True, widget=forms.TextInput(attrs={'placeholder': 'Email'}))
	password = forms.CharField(widget=forms.PasswordInput(attrs={'placeholder': 'Password'}), required=True)
	

class StaffForgetPasswordForm(forms.Form):
	new_password = forms.CharField(widget=forms.PasswordInput(attrs={'placeholder': 'New Password'}), required=True)
	confirm_password = forms.CharField(widget=forms.PasswordInput(attrs={'placeholder': 'Confirm Password'}), required=True)

class SettingsForm(ModelForm):
	class Meta:
		model = Settings
		fields = ['top_client_feedback']

class ProfileForm(ModelForm):
	class Meta:
		model = Profile
		fields = ['full_name', 'no_ktp', 'phone_no', 'email']

	def __init__(self, *args, **kwargs):
		super(ProfileForm, self).__init__(*args, **kwargs)
		self.fields['no_ktp'].required = False
		self.fields['phone_no'].required = False
		
	
class ColorForm(ModelForm):
	class Meta:
		model = Client_Staff
		fields = ['color']

class ClientAjaxForm(forms.Form):
	query = forms.CharField(required=False)
	is_deposit = forms.CharField(required=False)
	page = forms.CharField(required=False)

class ClientDeleteForm(forms.Form):
	client_ids = forms.CharField(required=False)
	
class TreeForm(forms.ModelForm):
	class Meta:
		model = Followup
		fields = [
			"followup_choices",
			# 'followup_choice_code',
		]



class ChoicesForm(forms.Form):
	selected = forms.ChoiceField(choices=[])
	

	def __init__(self, *args, **kwargs):
		super(ChoicesForm, self).__init__(*args, **kwargs)

		self.fields['selected'].required = False
		
		followup_choices = []
		followups = Followup.objects.exclude(followup_choice_code__icontains="_")
		for data in followups:
			followup_choices.append((data.id, data.followup_choices))

		self.fields['selected'].choices = followup_choices
