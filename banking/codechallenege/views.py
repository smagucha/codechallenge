from django.shortcuts import render, redirect
import requests
from django.http import HttpResponse

from .forms import Bioinfoform, Businessdetailsform, empdetailsform, bankdetailsform, LoanTypeform, Otherloanform
from .models import  Bioinfo, BusinessDetails, EmploymentDetails, Bankdetails, LoanType, OtherLoans

def home(request):
	context ={
		'title': 'home page',
	}
	return render(request, 'codechallenege/home.html', context)


def userbio(request):
	if request.method == 'POST': 
		form = Bioinfoform(request.POST)
		if form.is_valid():
			form.save()
			form = Bioinfoform()
			return redirect('nextpage')
	else:
		form = Bioinfoform()
		context ={
			'title': 'Bio info',
			'form': form
		}
		return render(request,'codechallenege/bioinfo.html', context)


def listclients(request):
	clients = Bioinfo.objects.all()
	context = {
		'title': 'list of clients',
		'users': clients
	}
	return render(request, 'codechallenege/listlclients.html', context)


def updateuser(request, id):
	userobj =Bioinfo.objects.get(id =id)
	form = Bioinfoform(request.POST or None, instance= userobj)
	if form.is_valid():
		form.save()
		form= Bioinfoform()
		return redirect('list_user')
	context ={
		'userobj':userobj,
		'form': form,
		'title': 'update your details',
	}
	
	
	return render(request, 'codechallenege/updatedetails.html', context)


def deletelient(request, id):
	deluser =Bioinfo.objects.get(id =id)
	if request.method == 'POST':
		deluser.delete()
		return redirect('list user')
	context ={
		'deluser':deluser,
		'title': 'remove client',
	}
	return render(request, 'codechallenege/deleteclient.html', context)

''' seond part of the project '''

def businessdetails(request):
	if request.method == 'POST':
		form = Businessdetailsform(request.POST)
		if form.is_valid():
			form.save()
			form = Businessdetailsform()
			return redirect('homepage')
	else:
		form = Businessdetailsform()
		context ={
			'title': 'business details',
			'form': form
		}
		return render(request,'codechallenege/businessdetails.html', context)

def clientsbusiness(request):
	clientsbiz = BusinessDetails.objects.all()
	context = {
		'title': 'clients business',
		'users': clientsbiz
	}
	return render(request, 'codechallenege/clientbiz.html', context)


def updatebiz(request, id):
	userobj =BusinessDetails.objects.get(id =id)
	form =  Businessdetailsform(request.POST or None, instance= userobj)
	if form.is_valid():
		form.save()
		form= Businessdetailsform()
		return redirect('list user')
	context ={
		'userobj':userobj,
		'form': form,
		'title': 'update your details',
	}
	return render(request, 'codechallenege/updatebiz.html', context)


def deletebiz(request, id):
	delbiz =BusinessDetails.objects.get(id =id)
	if request.method == 'POST':
		delbiz.delete()
		return redirect('list user')
	context ={
		'delbiz':delbiz,
		'title': 'remove business',
	}
	return render(request, 'codechallenege/deletebiz.html', context)

''' third part of the project '''



def employmentdetails(request):
	if request.method == 'POST':
		form = empdetailsform(request.POST)
		if form.is_valid():
			form.save()
			form = empdetailsform()
			return redirect('homepage')
	else:
		form = empdetailsform()
		context ={
			'title': 'employment details',
			'form': form
		}
		return render(request,'codechallenege/employmentform.html', context)


''' think of show user his own employment details as well as loaner '''
def showemploymentdetails(request):
	details = EmploymentDetails.objects.all()
	context = {
		'title': 'details of employment',
		'users': details
	}
	return render(request, 'codechallenege/showemp.html', context)


def updateemployment(request, id):
	useremploy =EmploymentDetails.objects.get(id =id)
	form =  empdetailsform(request.POST or None, instance= useremploy)
	if form.is_valid():
		form.save()
		form= empdetailsform()
		return redirect('list user')
	context ={
		'useremploy':useremploy,
		'form': form,
		'title': 'update your details',
	}
	return render(request, 'codechallenege/updateemp.html', context)


def deleteemp(request, id):
	delemp =EmploymentDetails.objects.get(id =id)
	if request.method == 'POST':
		delemp.delete()
		return redirect('list user')
	context ={
		'delemp':delemp,
		'title': 'delete employment',
	}
	return render(request, 'codechallenege/deleteemp.html', context)


''' four part of the project '''

def BankDetails(request):
	if request.method == 'POST':
		form = bankdetailsform(request.POST)
		if form.is_valid():
			form.save()
			form = bankdetailsform()
			return redirect('homepage')
	else:
		form = bankdetailsform()
		context ={
			'title': 'bank details',
			'form': form
		}
		return render(request,'codechallenege/bankform.html', context)

def bankclient(request):
	clientsbank = Bankdetails.objects.all()
	context = {
		'title': 'bank details',
		'users': clientsbank
	}
	return render(request, 'codechallenege/bankdetails.html', context)


def updateBank(request, id):
	bankobj =Bankdetails.objects.get(id =id)
	form =  bankdetailsform(request.POST or None, instance= bankobj)
	if form.is_valid():
		form.save()
		form= bankdetailsform()
		return redirect('list user')
	context ={
		'bankobj':bankobj,
		'form': form,
		'title': 'update your details',
	}
	return render(request, 'codechallenege/updatebank.html', context)


def deletebank(request, id):
	delbank =Bankdetails.objects.get(id =id)
	if request.method == 'POST':
		delbank.delete()
		return redirect('list user')
	context ={
		'delbank':delbank,
		'title': 'remove bank details',
	}
	return render(request, 'codechallenege/deletebank.html', context)



''' fifth part of the project '''

def Loanform(request):
	if request.method == 'POST':
		form = LoanTypeform(request.POST)
		if form.is_valid():
			form.save()
			form = LoanTypeform()
			return redirect('homepage')
	else:
		form = LoanTypeform()
		context ={
			'title': 'loan form',
			'form': form
		}
		return render(request,'codechallenege/loanform.html', context)

def loantypedetails(request):
	clientsbank = LoanType.objects.all()
	context = {
		'title': 'bank details',
		'users': clientsbank
	}
	return render(request, 'codechallenege/loandetails.html', context)


def updateloan(request, id):
	loanobj =LoanType.objects.get(id =id)
	form =  LoanTypeform(request.POST or None, instance= loanobj)
	if form.is_valid():
		form.save()
		form= LoanTypeform()
		return redirect('list user')
	context ={
		'loanobj':loanobj,
		'form': form,
		'title': 'update your details',
	}
	return render(request, 'codechallenege/updateloan.html', context)


def deleteloan(request, id):
	delloan =loandetails.objects.get(id =id)
	if request.method == 'POST':
		delloan.delete()
		return redirect('list user')
	context ={
		'delloan':delloan,
		'title': 'remove bank details',
	}
	return render(request, 'codechallenege/deleteloan.html', context)


''' sixth part of the project '''

def otherform(request):
	if request.method == 'POST':
		form = Otherloanform(request.POST)
		if form.is_valid():
			form.save()
			form = Otherloanform()
			return redirect('homepage')
	else:
		form = Otherloanform()
		context ={
			'title': 'loan form',
			'form': form
		}
		return render(request,'codechallenege/otherform.html', context)

def otherdetails(request):
	clientsbank = OtherLoans.objects.all()
	context = {
		'title': 'other bank details',
		'users': clientsbank
	}
	return render(request, 'codechallenege/otherdetails.html', context)


def updateother(request, id):
	otherobj =OtherLoans.objects.get(id =id)
	form =  Otherloanform(request.POST or None, instance= otherobj)
	if form.is_valid():
		form.save()
		form= Otherloanform()
		return redirect('list user')
	context ={
		'otherobj':otherobj,
		'form': form,
		'title': 'update your details',
	}
	return render(request, 'codechallenege/updateother.html', context)


def deleteother(request, id):
	delother =OtherLoans.objects.get(id =id)
	if request.method == 'POST':
		delother.delete()
		return redirect('list user')
	context ={
		'delother':delother,
		'title': 'delete other  bank details',
	}
	return render(request, 'codechallenege/deleteother.html', context)


def nextpage(request):

	context ={
		
		'title': 'next item',
	}
	return render(request, 'codechallenege/nextpage.html')