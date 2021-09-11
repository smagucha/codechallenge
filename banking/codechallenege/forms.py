from django import forms
from django.forms import ModelForm
from .models import Bioinfo, BusinessDetails, EmploymentDetails, Bankdetails, LoanType,OtherLoans,  Bankdetails, OtherLoans
from django.core.exceptions import ValidationError 
 

class DateInput(forms.DateInput):
    input_type = 'date'

class Bioinfoform(ModelForm):

	class Meta:
		model = Bioinfo
		fields ='__all__'
		widgets = { 'DateOfBirth': DateInput() }

	# def clean_membership_no(self): 
	# 	membership_no = self.cleaned_data.get('membership_no')
	# 	if (membership_no == ""):
	# 		raise forms.ValidationError('This field cannot be left blank')
	# 	else:
	# 		for instance in Bioinfo.objects.all():
	# 			if instance.membership_no == membership_no:
	# 				raise forms.ValidationError(membership_no , ' is already added')
	# 			return membership_no


class Businessdetailsform(ModelForm):

	class Meta:
		model = BusinessDetails
		fields ="__all__"



class empdetailsform(ModelForm):

	class Meta:
		model = EmploymentDetails
		fields ="__all__"


class bankdetailsform(ModelForm):

	class Meta:
		model = Bankdetails
		fields ="__all__"



class LoanTypeform(ModelForm):

	class Meta:
		model = LoanType
		fields ="__all__"

class Otherloanform(ModelForm):

	class Meta:
		model = OtherLoans
		fields ="__all__"