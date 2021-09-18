from django.db import models
from .validators import onlyletters, onlyisalnum,onlyisnumeric
from django.contrib.auth.models import User
from django.contrib.auth.models import Group, Permission

new_group, created = Group.objects.get_or_create(name ='admin')
new_group1, created = Group.objects.get_or_create(name ='clientuser')
new_group2, created = Group.objects.get_or_create(name ='webadminister')

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
	first_name = models.CharField(max_length= 50, validators= [onlyletters])
	middle_name = models.CharField(max_length= 50, validators= [onlyletters])
	last_name = models.CharField(max_length= 50, validators= [onlyletters])
	DateOfBirth = models.DateField()
	Homeaddress = models.CharField(max_length= 50, validators= [onlyletters])
	OffieNumber= models.PositiveIntegerField()
	mobile_no = models.CharField(max_length=12,)
	Pin_no = models.CharField(max_length= 50, validators= [onlyisalnum])
	Email = models.EmailField(max_length=100, )
	physical_add = models.CharField(max_length = 100, validators= [onlyletters])
	town = models.CharField(max_length = 100, validators= [onlyletters])
	estate = models.CharField(max_length = 100, validators= [onlyletters])
	house_no = models.CharField(max_length= 100, validators= [onlyisalnum])
	livedthrere=  models.CharField(max_length = 100,validators=[onlyisnumeric])
	Houseowned = models.CharField(max_length=3, choices=Owned,)
	martial_status =models.CharField(max_length=7, choices=Marry,)
	No_dependents = models.PositiveIntegerField()
	bio = models.ForeignKey(User, on_delete=models.CASCADE)

	def __str__(self):
		return (self.first_name +"   "+self.middle_name)

	class Meta:
		verbose_name_plural = "Bioinfo"


# client to fill if he/she runs a business
class BusinessDetails(models.Model):
	typeofbusiness = models.CharField(max_length = 100, validators= [onlyletters])
	yrsoperation = models.PositiveIntegerField()
	Businessincome = models.PositiveIntegerField()
	bio = models.ForeignKey(User, on_delete=models.CASCADE)

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

	employer= models.CharField(max_length = 100, validators= [onlyletters])
	physical_add = models.CharField(max_length= 100 )
	designation = models.CharField (max_length=100)
	employmenterms= models.CharField(max_length=9, choices=terms,)
	bio = models.ForeignKey(User, on_delete=models.CASCADE)

	class Meta:
		verbose_name_plural = "EmploymentDetails"

	

class Bankdetails(models.Model):
	account_name = models.CharField(max_length= 100)
	acount_no = models.PositiveIntegerField()
	Bank = models.CharField(max_length= 100, validators= [onlyletters])
	branch = models.CharField(max_length= 100)
	bio = models.ForeignKey(User, on_delete=models.CASCADE)

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
	bio = models.ForeignKey(User, on_delete=models.CASCADE)


class OtherLoans(models.Model):
	bank = models.CharField(max_length = 100, validators= [onlyletters])
	amount_advanced = models.PositiveIntegerField()
	date_granted = models.DateField()
	Repayment_period = models.PositiveIntegerField()
	Outstanding_balance = models.PositiveIntegerField()
	bio = models.ForeignKey(User, on_delete=models.CASCADE)

	class Meta:
		verbose_name_plural = "OtherLoans"




code_bankdetails = Permission.objects.get(codename='add_bankdetails')
code_bioinfo = Permission.objects.get(codename='add_bioinfo')
code_businessdetails = Permission.objects.get(codename='add_businessdetails')
code_employmentdetails = Permission.objects.get(codename='add_employmentdetails')
code_loantype = Permission.objects.get(codename='add_loantype')
code_otherloans = Permission.objects.get(codename='add_otherloans')
new_group2.permissions.add(code_bankdetails)
new_group2.permissions.add(code_bioinfo)
new_group2.permissions.add(code_businessdetails)
new_group2.permissions.add(code_employmentdetails)
new_group2.permissions.add(code_loantype)
new_group2.permissions.add(code_otherloans)


code_change_bankdetails = Permission.objects.get(codename='change_bankdetails')
code_change_loantype= Permission.objects.get(codename='change_loantype')
code_change_bioinfo = Permission.objects.get(codename='change_bioinfo')
code_change_employmentdetails = Permission.objects.get(codename='change_employmentdetails')
code_change_businessdetails = Permission.objects.get(codename='change_businessdetails')
code_change_otherloans = Permission.objects.get(codename='change_otherloans')
code_delete_bankdetails = Permission.objects.get(codename='delete_bankdetails')
code_delete_businessdetails = Permission.objects.get(codename='delete_businessdetails')
code_delete_bioinfo = Permission.objects.get(codename='delete_bioinfo')
code_delete_employmentdetails = Permission.objects.get(codename='delete_employmentdetails')
code_delete_loantype = Permission.objects.get(codename='delete_loantype')
code_delete_otherloans = Permission.objects.get(codename='delete_otherloans')
code_view_bankdetails = Permission.objects.get(codename='view_bankdetails')
code_view_bioinfo = Permission.objects.get(codename='view_bioinfo')
code_view_businessdetails = Permission.objects.get(codename='view_businessdetails')
code_view_employmentdetails= Permission.objects.get(codename='view_employmentdetails')
code_view_loantype = Permission.objects.get(codename='view_loantype')
code_view_otherloans= Permission.objects.get(codename='view_otherloans')
new_group1.permissions.add(code_change_bankdetails)
new_group1.permissions.add(code_change_bioinfo)
new_group1.permissions.add(code_change_loantype)
new_group1.permissions.add(code_change_otherloans)
new_group1.permissions.add(code_change_businessdetails)
new_group1.permissions.add(code_change_employmentdetails)
new_group1.permissions.add(code_delete_bankdetails)
new_group1.permissions.add(code_delete_bioinfo)
new_group1.permissions.add(code_delete_loantype)
new_group1.permissions.add(code_delete_otherloans)
new_group1.permissions.add(code_delete_businessdetails)
new_group1.permissions.add(code_delete_employmentdetails)
new_group1.permissions.add(code_view_bankdetails)
new_group1.permissions.add(code_view_bioinfo)
new_group1.permissions.add(code_view_loantype)
new_group1.permissions.add(code_view_otherloans)
new_group1.permissions.add(code_view_businessdetails)
new_group1.permissions.add(code_view_employmentdetails)


code_add_logentry = Permission.objects.get(codename='add_logentry')
code_change_logentry= Permission.objects.get(codename='change_logentry')
code_delete_logentry = Permission.objects.get(codename='delete_logentry')
code_view_logentry = Permission.objects.get(codename='view_logentry')
code_add_group = Permission.objects.get(codename='add_group')
code_change_group = Permission.objects.get(codename='change_group')
code_delete_group = Permission.objects.get(codename='delete_group')
code_view_group = Permission.objects.get(codename='view_group')
code_add_permission = Permission.objects.get(codename='add_permission')
code_view_permission= Permission.objects.get(codename='view_permission')
code_change_permission= Permission.objects.get(codename='change_permission')
code_delete_permission= Permission.objects.get(codename='delete_permission')
code_add_user = Permission.objects.get(codename='add_user')
code_change_user= Permission.objects.get(codename='change_user')
code_delete_user = Permission.objects.get(codename='delete_user')
code_view_user= Permission.objects.get(codename='view_user')
code_add_contenttype = Permission.objects.get(codename='add_contenttype')
code_change_contenttype= Permission.objects.get(codename='change_contenttype')
code_delete_contenttype = Permission.objects.get(codename='delete_contenttype')
code_view_contenttype= Permission.objects.get(codename='view_contenttype')
code_add_session= Permission.objects.get(codename='add_session')
code_change_session= Permission.objects.get(codename='change_session')
code_delete_session = Permission.objects.get(codename='delete_session')
code_view_session= Permission.objects.get(codename='view_session')
new_group.permissions.add(code_change_bankdetails)
new_group.permissions.add(code_change_bioinfo)
new_group.permissions.add(code_change_loantype)
new_group.permissions.add(code_change_otherloans)
new_group.permissions.add(code_change_businessdetails)
new_group.permissions.add(code_change_employmentdetails)
new_group.permissions.add(code_delete_bankdetails)
new_group.permissions.add(code_delete_bioinfo)
new_group.permissions.add(code_delete_loantype)
new_group.permissions.add(code_delete_otherloans)
new_group.permissions.add(code_delete_businessdetails)
new_group.permissions.add(code_delete_employmentdetails)
new_group.permissions.add(code_view_bankdetails)
new_group.permissions.add(code_view_bioinfo)
new_group.permissions.add(code_view_loantype)
new_group.permissions.add(code_view_otherloans)
new_group.permissions.add(code_view_businessdetails)
new_group.permissions.add(code_view_employmentdetails)
new_group.permissions.add(code_bankdetails)
new_group.permissions.add(code_bioinfo)
new_group.permissions.add(code_businessdetails)
new_group.permissions.add(code_employmentdetails)
new_group.permissions.add(code_loantype)
new_group.permissions.add(code_otherloans)
new_group.permissions.add(code_add_logentry)
new_group.permissions.add(code_view_logentry)
new_group.permissions.add(code_change_logentry)
new_group.permissions.add(code_delete_logentry)
new_group.permissions.add(code_add_user)
new_group.permissions.add(code_change_user)
new_group.permissions.add(code_view_user)
new_group.permissions.add(code_delete_user)
new_group.permissions.add(code_add_permission)
new_group.permissions.add(code_view_permission)
new_group.permissions.add(code_delete_permission)
new_group.permissions.add(code_change_permission)
new_group.permissions.add(code_add_group)
new_group.permissions.add(code_view_group)
new_group.permissions.add(code_change_group)
new_group.permissions.add(code_delete_group)
new_group.permissions.add(code_add_contenttype)
new_group.permissions.add(code_view_contenttype)
new_group.permissions.add(code_change_contenttype)
new_group.permissions.add(code_delete_contenttype)
new_group.permissions.add(code_add_session)
new_group.permissions.add(code_view_session)
new_group.permissions.add(code_change_session)
new_group.permissions.add(code_delete_session)