from django.db import models
from django.contrib.auth.models import User,Permission
from django.utils import timezone
import uuid

# Create your models here.
class Base_Model(models.Model):
   created_at = models.DateTimeField(auto_now_add=True,)
   created_by = models.ForeignKey(User, on_delete=models.CASCADE, related_name="%(app_label)s_%(class)s_created_by")
   updated_at = models.DateTimeField(auto_now_add=True,)
   updated_by = models.ForeignKey(User, on_delete=models.CASCADE, related_name="%(app_label)s_%(class)s_updated_by",null=True)
   is_active = models.BooleanField(default=True)

   class Meta:
	   abstract = True


class Profile(Base_Model):
	uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	user = models.OneToOneField(
		User,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	is_supervisor = models.BooleanField(default=False)
	reset_token = models.CharField(max_length=255,default="")
	is_ib = models.BooleanField(default=False)
	full_name = models.CharField(max_length=255,default="")
	no_ktp = models.CharField(max_length=255,default="")
	phone_no = models.CharField(max_length=255,default="", unique=True)
	email = models.CharField(max_length=255,default="", unique=True)
	is_verified = models.BooleanField(default=False)
	verify_uid = models.CharField(max_length=255,default="")
	last_login_ip = models.CharField(max_length=255, default="")
	def __str__(self):
		return self.full_name

class Sync_Data_Magnet(Base_Model):
	current_user_count =  models.DecimalField(decimal_places=2, default=0, max_digits=20)
	last_user_id = models.IntegerField(default=0)

class History_SyncData_Magnet(Base_Model):
	last_current_user_count = models.DecimalField(decimal_places=2, default=0, max_digits=20)
	last_user_id = models.IntegerField(default=0)