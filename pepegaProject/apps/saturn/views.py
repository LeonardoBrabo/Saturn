from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login, logout

from django.contrib import messages

# Create your views here.
from .models import *
from .forms import CreateUserForm
from django.contrib.auth.decorators import login_required

def registerPage(request):
	form = CreateUserForm

	if request.method == 'POST':
		form = CreateUserForm(request.POST)
		if form.is_valid():
			form.save()
			user = form.cleaned_data.get('username')
			messages.success(request,'Cuenta creada para' + user)

			return redirect('login')

	context = {'form': form}
	return render(request, 'saturn/register.html', context)

def loginPage(request):
	if request.method == 'POST':
		username = request.POST.get('username')
		password = request.POST.get('password')

		user = authenticate(request,username=username,password=password)

		if user is not None:
			login(request, user)
			return redirect('home')
		else:
			messages.info(request, 'Username o password incorrectos')

	context = {}
	return render(request,'saturn/login.html', context)

def logoutUser(request):
	logout(request)
	return redirect('login')

@login_required(login_url='login')
def home(request):
	return render(request, 'saturn/dashboard.html')

def products(request):
	return render(request, 'saturn/products.html')

def customer(request):
	return render(request, 'saturn/customer.html')