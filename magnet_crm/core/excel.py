
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


	if report_type == "scheme_combination":
		# staff = Staff.objects.filter(uid=staff_uid,is_active=True).first()
		staff = extra['staff']

		worksheet2 = extra['ws2']
		# worksheet3 = extra['ws3']

		worksheet.write(0, 0, 'No', center_bold_font_style)
		worksheet.write(0, 1, 'Name', center_bold_font_style)
		worksheet.write(0, 2, 'Email', center_bold_font_style)
		worksheet.write(0, 3, 'Phone No', center_bold_font_style)
		worksheet.write(0, 4, 'login', center_bold_font_style)
		worksheet.write(0, 5, 'ftd', center_bold_font_style)
		worksheet.write(0, 6, 'time', center_bold_font_style)


		# worksheet2.write(0, 0, 'No', center_bold_font_style)
		# worksheet2.write(0, 1, 'Name', center_bold_font_style)
		worksheet2.write(0, 2, 'Data Kantor', center_bold_font_style)
		# worksheet2.write(0, 3, 'Account Type', center_bold_font_style)
		# worksheet2.write(0, 4, 'Lot', center_bold_font_style)

		worksheet2.write(1, 0, 'No', center_bold_font_style)
		worksheet2.write(1, 1, 'Name', center_bold_font_style)
		worksheet2.write(1, 2, 'Login', center_bold_font_style)
		worksheet2.write(1, 3, 'Account Type', center_bold_font_style)
		worksheet2.write(1, 4, 'Lot', center_bold_font_style)
		worksheet2.write(1, 5, 'Bonus', center_bold_font_style)
		worksheet2.write(1, 6, 'Bonus Total', center_bold_font_style)
		worksheet2.write(1, 7, 'Bonus Total Rupiah', center_bold_font_style)
		worksheet2.write(1, 8, 'Rate', center_bold_font_style)


		worksheet2.write(0, 12, 'Data Pribadi', center_bold_font_style)

		worksheet2.write(1, 10, 'No', center_bold_font_style)
		worksheet2.write(1, 11, 'Name', center_bold_font_style)
		worksheet2.write(1, 12, 'Login', center_bold_font_style)
		worksheet2.write(1, 13, 'Account Type', center_bold_font_style)
		worksheet2.write(1, 14, 'Lot', center_bold_font_style)
		worksheet2.write(1, 15, 'Bonus', center_bold_font_style)
		worksheet2.write(1, 16, 'Bonus Total', center_bold_font_style)
		worksheet2.write(1, 17, 'Bonus Total Rupiah', center_bold_font_style)
		worksheet2.write(1, 18, 'Rate', center_bold_font_style)

		# worksheet3.write(0, 0, 'No', center_bold_font_style)
		# worksheet3.write(0, 1, 'Name', center_bold_font_style)
		# worksheet3.write(0, 2, 'Login', center_bold_font_style)
		# worksheet3.write(0, 3, 'Account Type', center_bold_font_style)

		
		now = extra['now']
		print(now,"ini now skg")

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
		# Finish Calculate Skema Bonus FTD

		# Bonus OR Marketing
		
		all_clinet_instance = Client.objects.filter(id__in=all_client_staff.values_list('client',flat=True))
		print(all_clinet_instance,"all_clinet_instance")
		total_bonus = 0
		total_bonus_pribadi = 0
		total_bonus_3 = 0
		display_bonus_dict = {}
		display_bonus_3_dict = {}
		client_user_id_login_dict = {}
		if len(all_clinet_instance) > 0 :
			total_bonus,total_bonus_pribadi,total_bonus_3,display_bonus_dict,display_bonus_3_dict,client_user_id_login_dict,info_account_dict,rate_dict,client_acc_age_dict,info_bonus_formula_dict,info_login_account_dict = get_all_clinet_bonus_new(all_clinet_instance,staff,now )


		if len(all_so) == 0 :
			worksheet.write_merge(1, 1, 0, 9,'Belum ada data', center_bold_font_style)
		# Finish Calculate Skema Bonus FTD

		row_num = 0
		for x in all_so['data']:
			row_num += 1
			data_list = [
				{ 'val': row_num, 'style': align_center_font_style },
				{ 'val': client_dict[x['userid']].nama , 'style': align_left_font_style },
				{ 'val': client_dict[x['userid']].email , 'style': align_left_font_style },
				{ 'val': client_dict[x['userid']].phone_no , 'style': align_left_font_style },
				{ 'val': x['login'] , 'style': align_left_font_style },
				{ 'val': x['ftd'] , 'style': align_left_font_style },
				{ 'val': x['time'] , 'style': align_left_font_style },
			]

		
			for col_num, data in enumerate(data_list):
				worksheet.write(row_num, col_num, data['val'], data['style'])
				

		worksheet.write(row_num+1, 0, 'Total_client', center_bold_font_style)
		worksheet.write(row_num+1, 1, total_client, center_bold_font_style)
		worksheet.write(row_num+1, 2, 'Total Amount FTD', center_bold_font_style)
		worksheet.write(row_num+1, 3, amount, center_bold_font_style)
		worksheet.write(row_num+1, 4, 'Bonus Per Ft', center_bold_font_style)
		worksheet.write(row_num+1, 5, bonus_per_ft, center_bold_font_style)









		if len(all_clinet_instance) == 0 :
			worksheet2.write_merge(1, 1, 0, 9,'Belum ada data', center_bold_font_style)

		row_num = 1
		for x in display_bonus_dict:
			

			# rint(deposit.id,"--------------")
			print("X",x)
			print("client_dict",client_dict)
			if not display_bonus_dict[x]['is_personal']:
				row_num += 1
				data_list = [
					{ 'val': row_num-1, 'style': align_center_font_style },
					
					{ 'val': client_dict[client_user_id_login_dict[x]].nama , 'style': align_left_font_style },
					{ 'val': x , 'style': align_left_font_style },
					{ 'val': display_bonus_dict[x]['account_type'] , 'style': align_left_font_style },
					{ 'val': display_bonus_dict[x]['lot'], 'style': align_left_font_style },
					{ 'val': info_bonus_formula_dict[info_login_account_dict[x]], 'style': align_left_font_style },
					{ 'val': float( float(display_bonus_dict[x]['lot']) * float(info_bonus_formula_dict[info_login_account_dict[x]])), 'style': align_left_font_style },
					{ 'val': float( float(display_bonus_dict[x]['lot']) * float(info_bonus_formula_dict[info_login_account_dict[x]])  * float(rate_dict[x]) ), 'style': align_left_font_style },
					{ 'val': rate_dict[x], 'style': align_left_font_style },
				]


				for col_num, data in enumerate(data_list):
					worksheet2.write(row_num, col_num, data['val'], data['style'])

		worksheet2.write(row_num+1, 0, 'Total Bonus', center_bold_font_style)
		worksheet2.write(row_num+1, 1, total_bonus, center_bold_font_style)

		worksheet2.write(row_num+2, 0, 'Total Lot Elastico (Less than 2 Month)', center_bold_font_style)
		worksheet2.write(row_num+2, 1, info_account_dict['elastico_less']['total_lot'], center_bold_font_style)
		worksheet2.write(row_num+2, 2, info_account_dict['elastico_less']['tier'], center_bold_font_style)
		worksheet2.write(row_num+3, 0, 'Total Lot Magneto (Less than 2 Month)', center_bold_font_style)
		worksheet2.write(row_num+3, 1, info_account_dict['magneto_less']['total_lot'], center_bold_font_style)
		worksheet2.write(row_num+3, 2, info_account_dict['magneto_less']['tier'], center_bold_font_style)
		worksheet2.write(row_num+4, 0, 'Total Lot Electro (Less than 2 Month)', center_bold_font_style)
		worksheet2.write(row_num+4, 1, info_account_dict['elektro_less']['total_lot'], center_bold_font_style)
		worksheet2.write(row_num+4, 2, info_account_dict['elektro_less']['tier'], center_bold_font_style)



		worksheet2.write(row_num+5, 0, 'Total Lot Elastico (More than 2 Month)', center_bold_font_style)
		worksheet2.write(row_num+5, 1, info_account_dict['elastico_more']['total_lot'], center_bold_font_style)
		worksheet2.write(row_num+5, 2, info_account_dict['elastico_more']['tier'], center_bold_font_style)
		worksheet2.write(row_num+6, 0, 'Total Lot Magneto (More than 2 Month)', center_bold_font_style)
		worksheet2.write(row_num+6, 1, info_account_dict['magneto_more']['total_lot'], center_bold_font_style)
		worksheet2.write(row_num+6, 2, info_account_dict['magneto_more']['tier'], center_bold_font_style)
		worksheet2.write(row_num+7, 0, 'Total Lot Electro (More than 2 Month)', center_bold_font_style)
		worksheet2.write(row_num+7, 1, info_account_dict['magneto_more']['total_lot'], center_bold_font_style)
		worksheet2.write(row_num+7, 2, info_account_dict['magneto_more']['tier'], center_bold_font_style)




		# if len(all_clinet_instance) == 0 :
		# 	worksheet2.write_merge(1, 1, 0, 9,'Belum ada data', center_bold_font_style)

		row_num = 1
		for x in display_bonus_dict:
			

			# rint(deposit.id,"--------------")
			print("X",x)
			print("client_dict",client_dict)
			if display_bonus_dict[x]['is_personal']:
				row_num += 1
				data_list = [
					{ 'val': row_num-1, 'style': align_center_font_style },
					
					{ 'val': client_dict[client_user_id_login_dict[x]].nama , 'style': align_left_font_style },
					{ 'val': x , 'style': align_left_font_style },
					{ 'val': display_bonus_dict[x]['account_type'] , 'style': align_left_font_style },
					{ 'val': display_bonus_dict[x]['lot'], 'style': align_left_font_style },
					{ 'val': info_bonus_formula_dict[info_login_account_dict[x]], 'style': align_left_font_style },
					{ 'val': float( float(display_bonus_dict[x]['lot']) * float(info_bonus_formula_dict[info_login_account_dict[x]])), 'style': align_left_font_style },
					{ 'val': float( float(display_bonus_dict[x]['lot']) * float(info_bonus_formula_dict[info_login_account_dict[x]])  * float(rate_dict[x]) ), 'style': align_left_font_style },
					{ 'val': rate_dict[x], 'style': align_left_font_style },
				]


				for col_num, data in enumerate(data_list):
					print("col_num bawah",col_num)
					worksheet2.write(row_num, col_num+6, data['val'], data['style'])

		worksheet2.write(row_num+1, 12, 'Total Bonus', center_bold_font_style)
		worksheet2.write(row_num+1, 13, total_bonus_pribadi, center_bold_font_style)

		worksheet2.write(row_num+2, 12, 'Total Lot Elastico', center_bold_font_style)
		worksheet2.write(row_num+2, 13, info_account_dict['elastico_pribadi']['total_lot'], center_bold_font_style)
		worksheet2.write(row_num+2, 14, info_account_dict['elastico_pribadi']['tier'], center_bold_font_style)

		worksheet2.write(row_num+3, 12, 'Total Lot Magneto', center_bold_font_style)
		worksheet2.write(row_num+3, 13, info_account_dict['magneto_pribadi']['total_lot'], center_bold_font_style)
		worksheet2.write(row_num+3, 14, info_account_dict['magneto_pribadi']['tier'], center_bold_font_style)

		worksheet2.write(row_num+4, 12, 'Total Lot Electro', center_bold_font_style)
		worksheet2.write(row_num+4, 13, info_account_dict['elektro_pribadi']['total_lot'], center_bold_font_style)
		worksheet2.write(row_num+4, 14, info_account_dict['elektro_pribadi']['tier'], center_bold_font_style)




		# if len(all_clinet_instance) == 0 :
		# 	worksheet3.write_merge(1, 1, 0, 9,'Belum ada data', center_bold_font_style)
		# # Finish Calculate Skema Bonus FTD

		# row_num = 0
		# print("display_bonus_dict",display_bonus_dict)
		# for x in display_bonus_3_dict:
		# 	row_num += 1

		# 	# print(deposit.id,"--------------")
		# 	print("X",x)
		# 	print("client_dict",client_dict)
		# 	data_list = [
		# 		{ 'val': row_num, 'style': align_center_font_style },
				
		# 		{ 'val': client_dict[client_user_id_login_dict[x]].nama, 'style': align_left_font_style },
		# 		{ 'val': x , 'style': align_left_font_style },
		# 		{ 'val': display_bonus_dict[x]['account_type'] , 'style': align_left_font_style },
		# 	]


		# for col_num, data in enumerate(data_list):
		# 	worksheet3.write(row_num, col_num, data['val'], data['style'])

		# worksheet3.write(row_num+1, 0, 'Total Bonus', center_bold_font_style)
		# worksheet3.write(row_num+1, 1, total_bonus_3, center_bold_font_style)

	if report_type == "ib_report":
		
		ib = extra['ib']
		ib_staff = extra['ib_staff']
		now = extra['now']

		worksheet.write(0, 0, 'No', center_bold_font_style)
		worksheet.write(0, 1, 'Name', center_bold_font_style)
		worksheet.write(0, 2, 'Email', center_bold_font_style)
		worksheet.write(0, 3, 'Phone No', center_bold_font_style)
		worksheet.write(0, 4, 'Magnet ID', center_bold_font_style)
		worksheet.write(0, 5, 'Account Type', center_bold_font_style)


		
		
		dict_bonus_info,total_bonus_dict,account_type_dict,all_staff_clients = get_ib_bonus(ib,now)

		if len(all_staff_clients) == 0 :
			worksheet.write_merge(1, 1, 0, 9,'Belum ada data', center_bold_font_style)
		# Finish Calculate Skema Bonus FTD

		row_num = 0
		for x in all_staff_clients:
			if x.client.magnet_id in account_type_dict:
				row_num += 1
				data_list = [
					{ 'val': row_num, 'style': align_center_font_style },
					{ 'val': x.client.nama , 'style': align_left_font_style },
					{ 'val': x.client.email , 'style': align_left_font_style },
					{ 'val': x.client.phone_no , 'style': align_left_font_style },
					{ 'val': x.client.magnet_id , 'style': align_left_font_style },
					{ 'val': account_type_dict[x.client.magnet_id] , 'style': align_left_font_style },
				]

				for col_num, data in enumerate(data_list):
					worksheet.write(row_num, col_num, data['val'], data['style'])


	

		count_temp = 1
		for y in dict_bonus_info:
			if "magneto" in y:
				worksheet.write(row_num+count_temp, 0, str(y.split("_")[0]) + " (" + str(y.split("_")[1])+")", center_bold_font_style)
				worksheet.write(row_num+count_temp, 1, dict_bonus_info[y]['bonus'], center_bold_font_style)
				count_temp+=1
			worksheet.write(row_num+4, 0, 'Total Bonus Magneto', center_bold_font_style)
			worksheet.write(row_num+4, 1, total_bonus_dict['magneto'], center_bold_font_style)


		count_temp = 1
		for y in dict_bonus_info:
			if "elektro" in y:
				worksheet.write(row_num+count_temp, 2, str(y.split("_")[0]) + " (" + str(y.split("_")[1])+")", center_bold_font_style)
				worksheet.write(row_num+count_temp, 3, dict_bonus_info[y]['bonus'], center_bold_font_style)
				count_temp+=1

			worksheet.write(row_num+4, 0, 'Total Bonus Elektro', center_bold_font_style)
			worksheet.write(row_num+4, 1, total_bonus_dict['elektro'], center_bold_font_style)

		count_temp = 1
		for y in dict_bonus_info:
			if "elastico" in y:
				worksheet.write(row_num+count_temp, 4, str(y.split("_")[0]) + " (" + str(y.split("_")[1])+")", center_bold_font_style)
				worksheet.write(row_num+count_temp, 5, dict_bonus_info[y]['bonus'], center_bold_font_style)
				count_temp+=1

			worksheet.write(row_num+4, 0, 'Total Bonus Elastico', center_bold_font_style)
			worksheet.write(row_num+4, 1, total_bonus_dict['elastico'], center_bold_font_style)


		# worksheet.write(row_num+1, 0, 'Total_client', center_bold_font_style)
		# worksheet.write(row_num+1, 1, total_client, center_bold_font_style)
		# worksheet.write(row_num+1, 2, 'Total Amount FTD', center_bold_font_style)
		# worksheet.write(row_num+1, 3, amount, center_bold_font_style)
		# worksheet.write(row_num+1, 4, 'Bonus Per Ft', center_bold_font_style)
		# worksheet.write(row_num+1, 5, bonus_per_ft, center_bold_font_style)







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
