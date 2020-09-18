from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from turnos.forms import TurnoForm
from turnos.models import Turno, EspecialidadMedico, Medico
'''
@login_required(login_url='login')
'''
def welcome(request):
    return render(request, "welcome.html")

def register(request):
    return render(request, "register.html")

def login(request):
    return render(request, "login.html")

def logout(request):
    # Redireccionamos a la portada
    return redirect('/')

def dashboard(request):
    return render(request, "dashboard.html")

def new_turn(request):

    form = TurnoForm()
    if request.method == "POST":
        return redirect('/turn_ok')
    # Si llegamos al final renderizamos el formulario
    return render(request, "new_turn.html", {'form': form})  

def turn_ok(request):
    return render(request, "turn_ok.html")