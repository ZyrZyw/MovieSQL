from django.urls import path

from . import views

urlpatterns = [
    path('actor_home/', views.actor_home, name = 'actor_home'),
    path('actor_detail/', views.actor_detail, name='actor_detail'),
    path('director/', views.director_home, name = 'director_home'),
    #path('director/<str:name>', views.director_detail, name='director_detail'),
]