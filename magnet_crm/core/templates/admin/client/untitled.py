# skema bonus marketing

total_client = 0
amount = 0
bonus_per_ft = 0
if total_client >= 5 and total_client <= 9:
	amount = 2500
	bonus_per_ft = 10
elif total_client >= 10 and total_client <= 14:
	amount = 5000
	bonus_per_ft = 15
elif total_client >= 15:
	amount = 15000
	bonus_per_ft = 35





# Bonus or Marketing
data_kantor = True
pos = "FC`"
account_type = "ELASTICO"
month = 0 
bonus = 0
commision = 0
if data_kantor:
	lot = 0
	tier_1 = True
	if account_type == "ELASTICO":
		if lot >= 0 and lot <=30:
			tier_1 = True
		else:
			tier_1 = False

		if tier_1:
			if pos == "Financial Consultant":
				if month >= 0 and month <= 2:
					bonus = 1
				else:
					bonus = 0.5
			elif pos == "Supervisor Marketing":
				if month >= 0 and month <= 2:
					bonus = 0.5
				else:
					bonus = 1
		else:
			if pos == "Financial Consultant":
				if month >= 0 and month <= 2:
					bonus = 1.75
				else:
					bonus = 0.75
			elif pos == "Supervisor Marketing":
				if month >= 0 and month <= 2:
					bonus = 0.75
				else:
					bonus = 1.75
		commision = 5

	elif account_type == "ELECTRO":
		if lot >= 0 and lot <=50:
			tier_1 = True
		else:
			tier_1 = False

		if tier_1:
			if pos == "Financial Consultant":
				if month >= 0 and month <= 2:
					bonus = 0.75
				else:
					bonus = 0.25
			elif pos == "Supervisor Marketing":
				if month >= 0 and month <= 2:
					bonus = 0.25
				else:
					bonus = 0.75
		else:
			if pos == "Financial Consultant":
				if month >= 0 and month <= 2:
					bonus = 1
				else:
					bonus = 0.5
			elif pos == "Supervisor Marketing":
				if month >= 0 and month <= 2:
					bonus = 0.5
				else:
					bonus = 1
		commision = 3

	elif account_type == "MAGNETO":
		if lot >= 0 and lot <=100:
			tier_1 = True
		else:
			tier_1 = False

		if tier_1:
			if pos == "Financial Consultant":
				if month >= 0 and month <= 2:
					bonus = 2
				else:
					bonus = 1
			elif pos == "Supervisor Marketing":
				if month >= 0 and month <= 2:
					bonus = 1
				else:
					bonus = 2
		else:
			if pos == "Financial Consultant":
				if month >= 0 and month <= 2:
					bonus = 3
				else:
					bonus = 2
			elif pos == "Supervisor Marketing":
				if month >= 0 and month <= 2:
					bonus = 2
				else:
					bonus = 3
		commision = 10

else:
	if account_type == "ELASTICO":
		if pos == "Financial Consultant":
			bonus = 3
		elif pos == "Supervisor Marketing":
			bonus = 0.5
	elif account_type == "ELECTRO":
		if pos == "Financial Consultant":
			bonus = 1
		elif pos == "Supervisor Marketing":
			bonus = 0.5
	elif account_type == "MAGNETO":
		if pos == "Financial Consultant":
			bonus = 4
		elif pos == "Supervisor Marketing":
			bonus = 0.5

# Skema IB
pos = "IB"
account_type = "ELASTICO"
bonus = 0 
if pos == "IB":
	if account_type == "MAGNETO":
		bonus = 4
	elif account_type == "ELECTRO":
		bonus = 1
	elif account_type == "ELASTICO":
		bonus = 2
elif pos == "Financial Consultant":
	if account_type == "MAGNETO":
		bonus = 0.35
	elif account_type == "ELECTRO":
		bonus = 0.5
	elif account_type == "ELASTICO":
		bonus = 1
elif pos == "Financial Consultant":
	if account_type == "MAGNETO":
		bonus = 0.15
	elif account_type == "ELECTRO":
		bonus = 0.25
	elif account_type == "ELASTICO":
		bonus = 0.5








