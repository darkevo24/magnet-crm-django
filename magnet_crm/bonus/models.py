from django.db import models
from core.models import Base_Model
from client.models import Client
from staff.models import Staff
# Create your models here.
class Staff_Client_Bonus(Base_Model):
	staff = models.ForeignKey(
		Staff,
		related_name="Staff_Client_Bonus_Staff",
		blank=True,
		null=True,
		on_delete=models.CASCADE,
	)
	client = models.ForeignKey(
		Client,
		related_name="Staff_Client_Bonus_client",
		blank=True,
		null=True,
		on_delete=models.CASCADE,
	)
	bonus_amount = models.DecimalField(decimal_places=2, default=0, max_digits=20)
	bonus_date = models.DateTimeField(null=True, blank=True)