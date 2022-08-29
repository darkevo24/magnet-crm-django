from django.db import models
from core.models import Base_Model, Profile
from staff.models import Staff
from followup.models import Followup
from colorfield.fields import ColorField


import uuid

class Client(Base_Model):
	uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	
	# profile = models.OneToOneField(
	# 	Profile,
	# 	blank=False,
	# 	null=False,
	# 	on_delete=models.CASCADE,
	# )

	nama = models.CharField(max_length=255)
	umur = models.CharField(max_length=255, default='')
	GENDER_CHOICES = (
		('male', 'Male'),
		('female', 'Female'),
	)
	gender = models.CharField(max_length=255, default='')
	pekerjaan = models.CharField(max_length=255, default='')
	domisili = models.CharField(max_length=255, default='')
	phone_no = models.CharField(max_length=255, default='')
	email = models.EmailField(null=True, blank=True)
	birthday = models.DateField(null=True, blank=True)

	SOURCE_STR = [
		('0', 'Fresh Data'), 
		('1', 'Rolling Data'),
		('2', 'External Data'),
	]

	SOURCE_DETAIL_1_STR = [
		('0', 'Leads Ads'), 
		('1', 'Organic'),
		('2', 'Pribadi Marketing'),
		('3', 'IB'),

		('4', 'Rolling Data Regis '),
		('5', 'Rolling Data Inactive Client'),
	]


	SOURCE_DETAIL_2_STR = [
		('0', 'Adwords'), 
		('1', 'Facbook'),

		('2', 'Social Media'),
		('3', 'Email'),
		('4', 'Google'),

	]

	
	is_registred = models.BooleanField(default=False)
	is_locked = models.BooleanField(default=False)
	source = models.CharField(max_length=255, choices=SOURCE_STR, default='0')
	source_detail_1 = models.CharField(max_length=255, choices=SOURCE_DETAIL_1_STR, default='3')
	source_detail_2 = models.CharField(max_length=255, choices=SOURCE_DETAIL_2_STR, null=True,blank=True,default=None)
	
	def __str__(self):
		return self.nama


class Client_Staff(Base_Model):
	uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	client = models.ForeignKey(
		Client,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	staff = models.ForeignKey(
		Staff,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	color = models.CharField(default='ff0000', max_length=255)


class Client_Followup(Base_Model):
	uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	client = models.ForeignKey(
		Client,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	followup = models.ForeignKey(
		Followup,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	staff = models.ForeignKey(
		Staff,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	answer = models.CharField(default='', max_length=255)


class Client_Schedule(Base_Model):
	uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	schedule_date = models.DateTimeField(null=True, blank=True)
	client = models.ForeignKey(
		Client,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	staff = models.ForeignKey(
		Staff,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	SCHEDULE_TYPE = [
		('whatsapp', 'Whatsapp'), 
		('phone', 'Phone'), 
		('email', 'Email'), 
		('offfline_meeting', 'Offline Meeting'), 
		('other', 'Others'), 
	]
	schedule_type = models.CharField(default='whatsapp', max_length=255, choices =SCHEDULE_TYPE )
	status = models.CharField(default='', max_length=255)
	notes = models.TextField(default='')
	answer = models.CharField(default='', max_length=255)


class Client_Journey(Base_Model):
	uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	
	client = models.ForeignKey(
		Client,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	staff = models.ForeignKey(
		Staff,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	

	JOURNAL_TYPE = [
		('registered', 'Registered'), 
		('scheduled_followup', 'Scheduled Followup'), 
		('feedback', 'Feeback'), 
		('whatsapp', 'Whatsapp'),
		('called', 'Called'), 
		('emailed', 'Emailed'),
		('changed_fc', 'Change FC'), 
	]
	
	journal_type = models.CharField(max_length=255, choices=JOURNAL_TYPE)
	
	def __str__(self):
		return self.client.nama + ' ' + self.journal_type + ' at ' + self.created_at

class Client_Staff_Request:
	client = models.ForeignKey(
		Client,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	staff = models.ForeignKey(
		Staff,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	REQUEST_STATUS = [
		('accpeted', 'Accpeted'), 
		('pending', 'Pending'), 
		('declined', 'Declined'), 
	]
	
	request_status = models.CharField(max_length=255, choices=REQUEST_STATUS)
	admin_notes = models.TextField(default='')
	staff_notes = models.TextField(default='')

	
