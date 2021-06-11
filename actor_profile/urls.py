from django.urls import path

from . import views

urlpatterns = [
    path('actor/', views.actor_home, name = 'actor_home'),
    path('actor/<str:name>', views.actor_detail, name='actor_profile'),
    path('director/', views.director_home, name = 'director_home'),
    path('director/<str:name>', views.director_detail, name='director_detail'),
]