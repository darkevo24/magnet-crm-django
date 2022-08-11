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
