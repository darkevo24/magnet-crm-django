from django import template
from django.template.defaultfilters import stringfilter
from django.conf import settings
import urllib.parse

register = template.Library()



@register.filter(name='add_class')
def add_class(field, css):
   return field.as_widget(attrs={"class":css})


@register.filter(name='dict_get')
def dict_get(dict_obj, key):
	if key in dict_obj:
		return dict_obj[key]
	else:
		return None
		