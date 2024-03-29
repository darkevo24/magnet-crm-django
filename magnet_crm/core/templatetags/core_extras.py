from django import template
from django.template.defaultfilters import stringfilter
from django.conf import settings
import urllib.parse
from staff.models import *
from django.contrib.humanize.templatetags.humanize import intcomma

register = template.Library()


@register.filter(name='divide')
def divide(value, arg):
    try:
        return float(value) / float(arg)
    except (ValueError, ZeroDivisionError):
        return '-'

@register.filter(name='str_currency')
def str_currency(string_value):
	if string_value is None:
		return ''

	try:
		temp_last = str(string_value).split(".")
		
		clean = '{:,}'.format(float(string_value)).replace(',', ' ')
		index_of = clean.index(".")

		return clean[:index_of+3]
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

@register.filter(name='multiply')
def multiply(amount1, amount2):
	print("amount1",amount1)
	print("amount2",amount2)
	total = float(amount1)*float(amount2)
	return float(total)


@register.filter(name='cus_split')
def cus_split(string, args):
	print(string)
	separator = args.split(",")[0]
	key = args.split(",")[1]
	print("string",string)
	print("key",key)
	temp = string.split(separator)[int(key)]
	return temp



@register.filter(name='full_menu')
def full_menu(user):
	if user.is_superuser == True:
		return True

	# staff_level = Staff.objects.filter(profile__user=user).first().staff_level.level
	# return staff_level < 3
	else:
		return False

@register.filter(name='is_admin')
def is_admin(user):
	if user.is_superuser:
		return False
	else:
		staff_level = Staff.objects.filter(profile__user=user).first().staff_level.level
		return staff_level > 1

@register.filter(name='is_supervisor')
def is_supervisor(user):
	
	staff_level = Staff.objects.filter(profile__user=user).first().staff_level.level
	print('00000000',staff_level)
	if staff_level == 2:
		return True
	else:
		return False



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

@register.filter(name='num_format_decimal')
def num_format_decimal(value):
	value = round(value, 2)
	value = str(value)
	return value
	return value.replace('.', ' ')
	



		