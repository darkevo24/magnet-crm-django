
from django.db.models import Count, Sum, Q
# from transactions.models import *
from datetime import datetime, date, time, timedelta
from django.utils import timezone
from staff.models import *
from client.models import *
from django.utils import timezone
import xlwt
from client.utils import *
def write_worksheet_report_transaction(worksheet, report_type, start_date, end_date, extra):
	align_left_font_style = xlwt.easyxf("align: horiz left;")
	align_right_font_style = xlwt.easyxf("align: horiz right;")
	align_center_font_style = xlwt.easyxf("align: horiz center;")
	center_bold_font_style = xlwt.easyxf("align: horiz center; font: bold on;")



	if report_type == "scheme1":
		staff = extra['staff']

		worksheet.write(0, 0, 'No', center_bold_font_style)
		worksheet.write(0, 1, 'Name', center_bold_font_style)
		worksheet.write(0, 2, 'userid', center_bold_font_style)
		worksheet.write(0, 3, 'login', center_bold_font_style)
		worksheet.write(0, 4, 'ftd', center_bold_font_style)
		worksheet.write(0, 5, 'time', center_bold_font_style)
		
		
		now = extra['now']
		
		all_client_staff = Client_Staff.objects.filter(staff=staff,is_active=True,client__magnet_created_at__month=now.month,client__magnet_created_at__year=now.year)


		all_client = ""
		client_dict = {}
		for x in all_client_staff:
			print("x.client.profile,x.client.magnet_id",x.client,x.client.magnet_id,x.staff.aecode)
			all_client += x.client.magnet_id + ","
			client_dict[x.client.magnet_id] = x.client
		print("all_client[:-1]",all_client[:-1])
		all_so = get_so_list(all_client[:-1])
		temp_so = []
		dict_temp = {
			'data':[]
		}
		print("all_so",all_so)
		if 'data' in all_so:
			for x in all_so['data']:
				# print("x result",x)
				# print(x['time'])
				if str(now.year)+"-"+str(now.month) in str(x['time']):
					dict_temp['data'].append(x)

			all_so['data'] = dict_temp['data']

		total_client = 0
		if 'data' in all_so:
			total_client = len(all_so['data'])


		# Calculate Skema Bonus FTD
		amount = 0 
		if 'data' in all_so:
			for y in all_so['data']:
				print("y['ftd']",y['ftd'])
				amount += int(float(y['ftd']))

		
		bonus_per_ft = 0
		if 'data' in all_so:
			for y in all_so['data']:
				if total_client > 15 and amount > 15000:
					bonus_per_ft = 35
				elif total_client >= 10 and total_client <= 14 and amount > 5000:
					bonus_per_ft = 15
				elif total_client >= 5 and total_client <= 9 and amount > 2500:
					bonus_per_ft = 10

		if len(all_so) == 0 :
			worksheet.write_merge(1, 1, 0, 9,'Belum ada data', center_bold_font_style)
		# Finish Calculate Skema Bonus FTD
	

		
		

		

		row_num = 0
		for x in all_so['data']:
			row_num += 1
			data_list = [
				{ 'val': row_num, 'style': align_center_font_style },
				{ 'val': client_dict[x['userid']].nama , 'style': align_left_font_style },
				{ 'val': x['userid'] , 'style': align_left_font_style },
				{ 'val': x['login'] , 'style': align_left_font_style },
				{ 'val': x['ftd'] , 'style': align_left_font_style },
				{ 'val': x['time'] , 'style': align_left_font_style },
			]


		for col_num, data in enumerate(data_list):
			worksheet.write(row_num, col_num, data['val'], data['style'])

	if report_type == "scheme2":
		staff = extra['staff']

		worksheet.write(0, 0, 'No', center_bold_font_style)
		worksheet.write(0, 1, 'Name', center_bold_font_style)
		worksheet.write(0, 2, 'Login', center_bold_font_style)
		worksheet.write(0, 3, 'Account Type', center_bold_font_style)
		worksheet.write(0, 4, 'Lot', center_bold_font_style)
		
		
		now = extra['now']
		
		all_client_staff = Client_Staff.objects.filter(staff=staff,is_active=True,client__magnet_created_at__month=now.month,client__magnet_created_at__year=now.year)
		all_client = ""
		client_dict = {}
		for x in all_client_staff:
			print("x.client.profile,x.client.magnet_id",x.client,x.client.magnet_id,x.staff.aecode)
			all_client += x.client.magnet_id + ","
			client_dict[x.client.magnet_id] = x.client
		print("client_dict atas",client_dict)
		# Bonus OR Marketing
		all_client_staff = Client_Staff.objects.filter(staff=staff,is_active=True,client__magnet_created_at__month=now.month,client__magnet_created_at__year=now.year)
		all_clinet_instance = Client.objects.filter(id__in=all_client_staff.values_list('client',flat=True))
		print(all_clinet_instance,"all_clinet_instance")
		total_bonus = 0
		total_bonus_3 = 0
		display_bonus_dict = {}
		display_bonus_3_dict = {}
		client_user_id_login_dict = {}
		if len(all_clinet_instance) > 0 :
			total_bonus,total_bonus_3,display_bonus_dict,display_bonus_3_dict,client_user_id_login_dict = get_all_clinet_bonus(all_clinet_instance,staff)




		if len(all_clinet_instance) == 0 :
			worksheet.write_merge(1, 1, 0, 9,'Belum ada data', center_bold_font_style)
		# Finish Calculate Skema Bonus FTD
	

	
		row_num = 0
		print("display_bonus_dict",display_bonus_dict)
		for x in display_bonus_dict:
			row_num += 1

			# rint(deposit.id,"--------------")
			print("X",x)
			print("client_dict",client_dict)
			data_list = [
				{ 'val': row_num, 'style': align_center_font_style },
				
				{ 'val': client_dict[client_user_id_login_dict[x]].nama , 'style': align_left_font_style },
				{ 'val': x , 'style': align_left_font_style },
				{ 'val': display_bonus_dict[x]['account_type'] , 'style': align_left_font_style },
				{ 'val': display_bonus_dict[x]['lot'], 'style': align_left_font_style },
			]


		for col_num, data in enumerate(data_list):
			worksheet.write(row_num, col_num, data['val'], data['style'])

	if report_type == "scheme3":
		staff = extra['staff']

		worksheet.write(0, 0, 'No', center_bold_font_style)
		worksheet.write(0, 1, 'Name', center_bold_font_style)
		worksheet.write(0, 2, 'Login', center_bold_font_style)
		worksheet.write(0, 3, 'Account Type', center_bold_font_style)
		
		
		now = extra['now']
		
		all_client_staff = Client_Staff.objects.filter(staff=staff,is_active=True,client__magnet_created_at__month=now.month,client__magnet_created_at__year=now.year)
		all_client = ""
		client_dict = {}
		for x in all_client_staff:
			print("x.client.profile,x.client.magnet_id",x.client,x.client.magnet_id,x.staff.aecode)
			all_client += x.client.magnet_id + ","
			client_dict[x.client.magnet_id] = x.client
		print("client_dict atas",client_dict)
		# Bonus OR Marketing
		all_client_staff = Client_Staff.objects.filter(staff=staff,is_active=True,client__magnet_created_at__month=now.month,client__magnet_created_at__year=now.year)
		all_clinet_instance = Client.objects.filter(id__in=all_client_staff.values_list('client',flat=True))
		print(all_clinet_instance,"all_clinet_instance")
		total_bonus = 0
		total_bonus_3 = 0
		display_bonus_dict = {}
		display_bonus_3_dict = {}
		client_user_id_login_dict = {}
		if len(all_clinet_instance) > 0 :
			total_bonus,total_bonus_3,display_bonus_dict,display_bonus_3_dict,client_user_id_login_dict = get_all_clinet_bonus(all_clinet_instance,staff)




		if len(all_clinet_instance) == 0 :
			worksheet.write_merge(1, 1, 0, 9,'Belum ada data', center_bold_font_style)
		# Finish Calculate Skema Bonus FTD
	

		
		


		row_num = 0
		print("display_bonus_dict",display_bonus_dict)
		for x in display_bonus_3_dict:
			row_num += 1

			# print(deposit.id,"--------------")
			print("X",x)
			print("client_dict",client_dict)
			data_list = [
				{ 'val': row_num, 'style': align_center_font_style },
				
				{ 'val': client_dict[client_user_id_login_dict[x]].nama, 'style': align_left_font_style },
				{ 'val': x , 'style': align_left_font_style },
				{ 'val': display_bonus_dict[x]['account_type'] , 'style': align_left_font_style },
			]


		for col_num, data in enumerate(data_list):
			worksheet.write(row_num, col_num, data['val'], data['style'])

	
	return worksheet
