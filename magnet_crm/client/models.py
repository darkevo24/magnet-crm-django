from django.db import models
from core.models import Base_Model, Profile
from staff.models import Staff
import uuid

class Client(Base_Model):
	uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	
	profile = models.OneToOneField(
		Profile,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	SOURCE_STR = [
		('0', 'Google'), 
		('1', 'Facebook'), 
		('2', 'External'), 
		('3', 'Private Data'), 
	]
	
	is_registred = models.BooleanField(default=False)
	source = models.CharField(max_length=255, choices=SOURCE_STR, default='0')
	
	def __str__(self):
		return self.profile.full_name


class Client_Staff(Base_Model):
	uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	client = models.OneToOneField(
		Client,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	staff = models.OneToOneField(
		Staff,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)


