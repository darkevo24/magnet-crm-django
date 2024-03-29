from django.db import models
from core.models import Base_Model
# Create your models here.
class Followup(Base_Model):
	# uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	followup_choices = models.CharField(max_length=255,default="")
	followup_choice_code = models.TextField(default='')
	followup_choice_head = models.TextField(default='')
	followup_textfield = models.BooleanField(default=False)
	color = models.CharField(default='#0c83e2', max_length=255)
	font_color = models.CharField(default='#FFFFFF', max_length=255)
	def __str__(self):
		return self.followup_choices


class FollowupSelected(Base_Model):
	# uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	followup_selected_code = models.TextField(default='')
	def __str__(self):
		return self.followup_selected_code