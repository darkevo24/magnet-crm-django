from django import template
from django.template.defaultfilters import stringfilter
from django.conf import settings
import urllib.parse
from staff.models import *
from django.contrib.humanize.templatetags.humanize import intcomma

register = template.Library()


@register.filter(name='str_currency')
def str_currency(string_value):
	print("string_value",string_value)
	if string_value is None:
		return ''

	try:
		return '{:,}'.format(float(string_value)).replace(',', ' ')
	except ValueError as e:
		return '-'
@register.filter(name='add_class')
def add_class(field, css):
   return field.as_widget(attrs={"class":css})


@register.filter(name='sum')
def sum(amount1, amount2):
	print(amount1,amount2)
	total = (amount1+amount2)
	return total


@register.filter(name='full_menu')
def full_menu(user):
	if user.is_superuser == True:
		return True

	staff_level = Staff.objects.filter(profile__user=user).first().staff_level.level
	return staff_level < 3

@register.filter(name='full_menu')
def full_menu(user):
	if user.is_superuser == True:
		return True

	staff_level = Staff.objects.filter(profile__user=user).first().staff_level.level
	return staff_level < 3

@register.filter(name='is_admin')
def is_admin(user):
	if user.is_superuser:
		return False
	else:
		staff_level = Staff.objects.filter(profile__user=user).first().staff_level.level
		return staff_level > 1


@register.filter(name='dict_get')
def dict_get(dict_obj, key):
	if key in dict_obj:
		return dict_obj[key]
	else:
		return None


@register.filter(name='num_format')
def num_format(value):
	return (f'{value:,}').replace(","," ")
	# return ' '.join(str(value)[i:i+3] for i in range(0, len(str(value)), 3))


		