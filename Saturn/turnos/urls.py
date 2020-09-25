from django.urls import path, include
from turnos import views


urlpatterns=[
    path('new_turn/', views.new_turn, name='new_turn'),
    path('turn_ok/', views.turn_ok, name='turn_ok'),
    path('delete_turn/<int:TurnoId>/', views.delete_turn, name='delete_turn'),
    path('listado_del_dia/', views.listado_del_dia, name='listado_del_dia'),
]	