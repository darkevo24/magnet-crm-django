from django.db import models
from core.models import Base_Model, Profile
import uuid

class Staff_Level(Base_Model):
	uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	level = models.IntegerField(default=0)
	level_name = models.CharField(default='Financial Consultant', max_length=255)

class Staff(Base_Model):
	uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	staff_level = models.OneToOneField(
		Staff_Level,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	profile = models.OneToOneField(
		Profile,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	staff_parent = models.OneToOneField(
		'self',
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	
	def __str__(self):
		return self.profile.full_name

class Staff_History(Base_Model):
	parent_staff = models.OneToOneField(
		Staff,
		related_name="Staff_History_Parent_Staff",
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	child_staff = models.OneToOneField(
		Staff,
		related_name="Staff_History_Child_Staff",
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)


