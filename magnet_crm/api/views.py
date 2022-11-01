from django.shortcuts import render

# Create your views here.
from rest_framework.views import APIView
from rest_framework.decorators import api_view
from django.contrib.auth.models import User
from rest_framework.response import Response

from django.db import IntegrityError, transaction
from datetime import datetime

from client.models import *


@api_view(['POST', 'GET'])
def voip_push_detail(request):
	data = {}
	if request.method == 'GET':
		
		data['status'] = False
		
	elif request.method == 'POST':
		try:
			with transaction.atomic():
				data_request = request.data
				print('---->',data_request['phone_number'])
				print('---->',data_request['start_call'])
				phone_number = data_request['phone_number']
				start_call = data_request['start_call']
				end_call = data_request['end_call']
				is_answer = data_request['is_answer']

				is_answer_bool = False
				if 'true' in is_answer.lower():
					is_answer_bool = True


				

				datetime_str = '09/19/18 13:55:26'

				datetime_object = datetime.strptime(datetime_str, '%m/%d/%y %H:%M:%S')
				test_masuk = Client_Staff_Voip.objects.all().count()
				

				



				if start_call != '' or start_call != None:
					start_call_date = datetime.strptime(start_call, '%Y-%m-%d %H:%M:%S')

				if end_call != '' or start_call != None:
					end_call_date = datetime.strptime(end_call, '%Y-%m-%d %H:%M:%S')

					
				client_staff = Client_Staff.objects.filter(client__phone_no=phone_number, is_active=True).first()
				super_admin = User.objects.filter(is_superuser = True).first()
				client_staff_voip = Client_Staff_Voip()
				client_staff_voip.client_staff = client_staff
				client_staff_voip.called_date = start_call_date
				client_staff_voip.callend_end_date = end_call_date
				client_staff_voip.is_answer = is_answer_bool
				client_staff_voip.created_by = client_staff_voip.updated_by = super_admin
				client_staff_voip.save()
				
				data['status'] = True
		except IntegrityError as e :
			data['status_error'] = str(e)

	return Response(data)


