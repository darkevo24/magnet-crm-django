from django import forms
import datetime


from followup.models import *
from django.forms import TextInput,EmailInput,PasswordInput,ChoiceField


class TreeForm(forms.ModelForm):
	class Meta:
		model = Followup
		fields = [
			"followup_choices",
			# 'followup_choice_code',
		]
