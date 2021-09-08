from django.contrib import admin
from django.urls import path, include
from . import views

urlpatterns = [
    path('', views.home, name='homepage'),
    path('Bioinfo', views.userbio, name='userdetails'),
    path('listuser', views.listclients, name='list user'),
    path('updatedetails/<int:id>', views.updateuser, name='update details'),
    path('reoveclient/<int:id>', views.deletelient, name='delete client'),

    path('businessdetails', views.businessdetails, name='client business'),
    path('bizclient', views.clientsbusiness, name='client biz'),
    path('updatebiz/<int:id>', views. updatebiz, name='update biz'),
    path('removebiz/<int:id>', views.deletebiz, name='delete business'),

    path('empform', views.employmentdetails, name='emp form'),
    path('empdetails', views.showemploymentdetails, name='empl details '),
    path('updateemp/<int:id>', views.updateemployment, name='update biz'),
    path('removeemp/<int:id>', views.deleteemp, name='delete emp'),

     path('bankform', views.BankDetails, name='bank form'),
    path('bankdetails', views.bankclient, name='bank details '),
    path('updateabank/<int:id>', views.updateBank, name='update biz'),
    path('removebank/<int:id>', views.deletebank, name='delete emp'),
]