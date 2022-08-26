from django.db import models
from core.models import Base_Model, Profile
import uuid
from staff.models import *
from client.models import *

class Notification(Base_Model):
	staff = models.ForeignKey(
		Staff,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	NOTIFICATION_CHOICES = (
		('notification_followup','Notification Followup'),
		('birthday','Birthday'),
	)
	client_schedule = models.ForeignKey(
		Client_Schedule,
		blank=True,
		null=True,
		on_delete=models.CASCADE,
	)
	notification_type = models.CharField(choices=NOTIFICATION_CHOICES, max_length=255)
	notes = models.TextField(default='')
	is_opened = models.BooleanField(default=False)

