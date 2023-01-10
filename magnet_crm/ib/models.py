from django.db import models
from core.models import Base_Model, Profile
from client.models import Client
from staff.models import *
import uuid

class IB(Base_Model):
	uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	name = models.CharField(max_length=255, default='')

	def __str__(self):
		return self.name



class IB_Staff(Base_Model):
	staff = models.ForeignKey(
		Staff,
		on_delete=models.CASCADE,
	)
	ib = models.ForeignKey(
		IB,
		on_delete=models.CASCADE,
	)

class IB_Client(Base_Model):
	client = models.ForeignKey(
		Client,
		on_delete=models.CASCADE,
	)
	ib = models.ForeignKey(
		IB,
		on_delete=models.CASCADE,
	)
	

