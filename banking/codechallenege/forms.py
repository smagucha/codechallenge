from django import forms
from django.forms import ModelForm

from .models import Bioinfo, BusinessDetails, EmploymentDetails, Bankdetails, LoanType,OtherLoans,  Bankdetails, OtherLoans


class DateInput(forms.DateInput):
    input_type = 'date'

class Bioinfoform(ModelForm):

	class Meta:
		model = Bioinfo
		fields ="__all__"
		widgets = { 'DateOfBirth': DateInput() }


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