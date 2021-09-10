from django.db import models
from .validators import onlyletters


from django.contrib.auth.models import Group, Permission


# import User model
# from users.models import User

new_group, created = Group.objects.get_or_create(name ='admin')
new_group, created = Group.objects.get_or_create(name ='clientuser')
new_group, created = Group.objects.get_or_create(name ='webadminister')
# # Code to add permission to group
# ct = ContentType.objects.get_for_model(User)

# # If I want to add 'Can go Haridwar' permission to level0 ?
# permission = Permission.objects.create(codename ='can_go_haridwar',
# 										name ='Can go to Haridwar',
# 												content_type = ct)
# new_group.permissions.add(permission)


class Bioinfo(models.Model):
	No ='No'
	Yes = 'yes'

	single = 'single'
	married = 'married'
	window = 'window'
	other = 'other'

	Owned =(
		(No, 'No'),
  		(Yes, 'yes'),
	)

	Marry=(
		(single, 'single'),
		(married,'married'),
		(window, 'window'),
		(other, 'other')
		)
	
	membership_no = models.PositiveIntegerField()
	first_name = models.CharField(max_length= 50)
	middle_name = models.CharField(max_length= 50)
	last_name = models.CharField(max_length= 50)
	DateOfBirth = models.DateField()
	Homeaddress = models.CharField(max_length= 50)
	OffieNumber= models.PositiveIntegerField()
	mobile_no = models.CharField(max_length=12,)
	Pin_no = models.CharField(max_length= 50)
	Email = models.EmailField(max_length=100)
	physical_add = models.CharField(max_length = 100)
	town = models.CharField(max_length = 100)
	estate = models.CharField(max_length = 100)
	house_no = models.CharField(max_length= 100)
	livedthrere=  models.CharField(max_length = 100)
	Houseowned = models.CharField(max_length=3, choices=Owned,)
	martial_status =models.CharField(max_length=7, choices=Marry,)
	No_dependents = models.PositiveIntegerField()

	def __str__(self):
		return (self.first_name +"   "+self.middle_name)

	class Meta:
		verbose_name_plural = "Bioinfo"


# client to fill if he/she runs a business
class BusinessDetails(models.Model):
	typeofbusiness = models.CharField(max_length = 100)
	yrsoperation = models.PositiveIntegerField()
	Businessincome = models.PositiveIntegerField()
	bio = models.ForeignKey(Bioinfo, on_delete=models.CASCADE)

	class Meta:
		verbose_name_plural = "BusinessDetails"
	def __str__(self):
		return self.typeofbusiness

# client to fill if employe
class EmploymentDetails(models.Model):
	
	Permanent ='Peranent'
	Casual = 'casual'
	Contract = 'Contract'
	terms =(
		(Permanent ,'Peranent'),
		(Casual , 'casual'),
		(Contract, 'Contract'),
		)

	employer= models.CharField(max_length = 100)
	physical_add = models.CharField(max_length= 100)
	designation = models.CharField (max_length=100)
	employmenterms= models.CharField(max_length=9, choices=terms,)
	bio = models.ForeignKey(Bioinfo, on_delete=models.CASCADE)

	class Meta:
		verbose_name_plural = "EmploymentDetails"

	

class Bankdetails(models.Model):
	account_name = models.CharField(max_length= 100)
	acount_no = models.PositiveIntegerField()
	Bank = models.CharField(max_length= 100)
	branch = models.CharField(max_length= 100)
	bio = models.ForeignKey(Bioinfo, on_delete=models.CASCADE)

	class Meta:
		verbose_name_plural = "bankdetails"

class LoanType(models.Model):
	Normal = 'normal'
	Development = 'Development' 
	Emergency = 'Emergency'
	school_fee = 'school fee'
	typeloan =(
		(Normal ,'normal'),
		(Development , 'Development'),
		(Development ,'Development'),
		(school_fee , 'school fee'),
		)
	loan = models.CharField(max_length =16, choices = typeloan)
	Purposeofloan=models.TextField()
	amountapplied = models.PositiveIntegerField()
	bio = models.ForeignKey(Bioinfo, on_delete=models.CASCADE)


class OtherLoans(models.Model):
	bank = models.CharField(max_length = 100)
	amount_advanced = models.PositiveIntegerField()
	date_granted = models.DateField()
	Repayment_period = models.PositiveIntegerField()
	Outstanding_balance = models.PositiveIntegerField()
	bio = models.ForeignKey(Bioinfo, on_delete=models.CASCADE)

	class Meta:
		verbose_name_plural = "OtherLoans"





