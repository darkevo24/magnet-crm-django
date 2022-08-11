from django.db import models

# Create your models here.
class Followup(models.Model):
	# uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	followup_choices = models.CharField(max_length=255,default="")
	followup_choice_code = models.TextField(default='')
	followup_choice_head = models.TextField(default='')
	followup_textfield = models.BooleanField(default=False)
	def __str__(self):
		return self.followup_choices


class FollowupSelected(models.Model):
	# uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	followup_selected_code = models.TextField(default='')
	def __str__(self):
		return self.followup_selected_code