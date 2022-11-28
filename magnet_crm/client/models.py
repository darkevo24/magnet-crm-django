from django.db import models
from core.models import Base_Model, Profile
from staff.models import Staff
from followup.models import Followup
from colorfield.fields import ColorField

from django.db.models import Q
import uuid
from django.contrib.auth.models import User
from django.db import IntegrityError, transaction



class Client(Base_Model):
	uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	
	# profile = models.OneToOneField(
	# 	Profile,
	# 	blank=False,
	# 	null=False,
	# 	on_delete=models.CASCADE,
	# )

	nama = models.CharField(max_length=255, default='')
	first_name = models.CharField(max_length=255, default='') 
	last_name = models.CharField(max_length=255, default='')
	middle_name = models.CharField(max_length=255, default='')
	city = models.CharField(max_length=100, default='')
	address = models.CharField(max_length=255, default='')

	MAGNET_STATUS = [
		('active', 'Active'), 
		('inactive', 'Inactive'),
		('deleted', 'Deleted'),
	]
	magnet_status = models.CharField(max_length=255, choices=MAGNET_STATUS, default='active')
	id_verification_status = models.IntegerField(default=0)
	legal_status = models.IntegerField(default=0)
	magnet_created_by = models.IntegerField(default=0)
	aecode = models.CharField(max_length=25, default='')
	demologin = models.IntegerField(default=0,null=True, blank=True)
	cdd = models.BooleanField(default=False)
	create_ip = models.CharField(max_length=32, default='',null=True, blank=True)
	medium = models.CharField(max_length=50, default='',null=True, blank=True)
	campaign = models.CharField(max_length=50, default='',null=True, blank=True)
	term = models.CharField(max_length=50, default='',null=True, blank=True)
	content = models.CharField(max_length=50, default='',null=True, blank=True)
	gclid = models.CharField(max_length=128, default='',null=True, blank=True)
	magnet_created_at = models.DateTimeField(null=True, blank=True)
	magnet_update_at = models.DateTimeField(null=True, blank=True)
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

		('4', 'Rolling Data Regis'),
		('5', 'Rolling Data Inactive Client'),
	]


	SOURCE_DETAIL_2_STR = [
		('0', 'Adwords'), 
		('1', 'Facebook/IG'),

		('2', 'Social Media'),
		('3', 'Email'),
		('4', 'Google'),
		('5', 'Discord'),
	]

	
	is_deposit = models.BooleanField(default=False)
	is_registered = models.BooleanField(default=False)
	is_locked = models.BooleanField(default=False)
	is_suspect = models.BooleanField(default=False)
	is_suspect_bypass = models.BooleanField(default=False)
	magnet_id = models.CharField(max_length=255, default='')
	source = models.CharField(max_length=255, choices=SOURCE_STR, default='0',null=True, blank=True)
	source_detail_1 = models.CharField(max_length=255, choices=SOURCE_DETAIL_1_STR, default='3',null=True, blank=True)
	source_detail_2 = models.CharField(max_length=255, choices=SOURCE_DETAIL_2_STR, null=True,blank=True,default=None)
	
	def __str__(self):
		return self.nama + '( ' + self.first_name + ' ' + self.middle_name + ' ' + self.last_name + ' )'

	def save(self, *args, **kwargs):

		new_client = super(Client, self).save(*args, **kwargs)
		
		if not self.is_suspect_bypass:
			if self.nama != None and self.nama != "":
				# print(self.nama,"self.nama")
				check_clients = Client.objects.filter(Q(nama=self.nama)).order_by("id").exclude(id=self.pk)
				# print(check_clients,"check_clients 1")
				if self.email != None and self.email != "" :
					# print(self.email,"self.email")
					check_clients.filter(Q(email=self.email)).order_by("id").exclude(id=self.pk)
				# print(check_clients,"check_clients 2")
				user = User.objects.filter(is_superuser=True).first()
				if self.pk:
					if check_clients.count() > 0 :
						self.is_suspect = True
						try:
							with transaction.atomic():
								for check_client in check_clients:
									client_duplicate_suspect = Client_Duplicate_Suspect()
									client_duplicate_suspect.client_old = check_client
									client_duplicate_suspect.client_new = self
									client_duplicate_suspect.created_by = client_duplicate_suspect.updated_by = user
									client_duplicate_suspect.save()
									break
						except IntegrityError as e:
							print(e)


		return super(Client, self).save(*args, **kwargs)



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

	COLOR_LISTS = [
		('008000', 'Hijau'), 
		('ff0000', 'Merah'), 
		('e7ff00', 'Kuning'), 
		('000000', 'Hitam'), 
		('0066ff', 'Biru'), 
	]
	color = models.CharField(default='000000',max_length=255, choices=COLOR_LISTS)
	is_hot = models.BooleanField(default=False)



class Client_Scramble(Base_Model):
	uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	client = models.ForeignKey(
		Client,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	staff_parent = models.ForeignKey(
		Staff,
		related_name="Client_Scramble_Staff_Parent",
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	from_staff = models.ForeignKey(
		Staff,
		related_name="Client_Scramble_From_Staff",
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	to_staff = models.ForeignKey(
		Staff,
		related_name="Client_Scramble_To_Staff",
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)


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
		blank=True,
		null=True,
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

class Client_Duplicate_Suspect(Base_Model):
	client_old = models.ForeignKey(
		'Client',
		related_name="Client_Duplicate_Suspect_Client_Old",
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	client_new = models.ForeignKey(
		'Client',
		related_name="Client_Duplicate_Suspect_Client_New",
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	is_checked = models.BooleanField(default=False)


class Client_Duplicate_Suspect_History(Base_Model):
	duplicate_suspect = models.ForeignKey(
		'Client_Duplicate_Suspect',
		on_delete=models.CASCADE,
	)
	REQUEST_STATUS = [
		('accepted', 'Accpeted'), 
		('rejected', 'Rejected'), 
	]
	
	action = models.CharField(max_length=255, choices=REQUEST_STATUS)

class Client_Staff_Voip(Base_Model):
	uid = models.UUIDField(unique=True, default=uuid.uuid4, editable=False)
	client_staff = models.ForeignKey(
		Client_Staff,
		blank=False,
		null=False,
		on_delete=models.CASCADE,
	)
	called_date = models.DateTimeField(null=True, blank=True)
	callend_end_date = models.DateField(null=True, blank=True)
	is_answer = models.BooleanField(default=False)
