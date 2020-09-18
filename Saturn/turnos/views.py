from django.shortcuts import render

# Create your views here.
def new_turn(request):

    form = TurnoForm()
    if request.method == "POST":
        form = TurnoForm(request.POST)
        # Si el formulario es válido...
        if form.is_valid():
         
            instancia = form.save(commit=False)
            instancia.usuario = request.user
            instancia.save()

            return redirect('/turno_list')
    # Si llegamos al final renderizamos el formulario
    return render(request, "my_turn.html", {'form': form})  