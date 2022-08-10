from django import template
from django.template.defaultfilters import stringfilter
from django.conf import settings
import urllib.parse

register = template.Library()



@register.filter(name='add_class')
def add_class(field, css):
   return field.as_widget(attrs={"class":css})
