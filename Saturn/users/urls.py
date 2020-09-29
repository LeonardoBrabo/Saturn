from django.urls import path, include
from users import views

urlpatterns=[
    path('register/', views.register, name='register'),
    path('logout/', views.logout, name='logout'),
    path('login/', views.login, name='login'),
]