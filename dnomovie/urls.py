#-*-coding:utf-8 -*-

"""dnomovie URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""

from django.conf.urls import include, url
from django.contrib import admin
from . import settings
from django.views.static import serve
from django.conf.urls.static import static
from django.urls import path
from dnomovie import views


urlpatterns = [
    path('admin/',admin.site.urls),
    
    #url(r'^$','webuser.views.index',name='index'),
    path('',views.index,name='index'),
    
    #url(r'',include('webuser.urls')),
    path('',include('webuser.urls')),
    
    #url(r'',include('movie.urls')),
    path('',include('movie.urls')),
    
    #url(r'',include('questions.urls')),
    path('',include('questions.urls')),
    
    #url(r'',include('webchat.urls')),
    path('',include('webchat.urls')),
    
    #url('^markdown/', include('django_markdown.urls')),
    path('markdown/',include('django_markdown.urls')),
    
    path('actor_profile/',views.actor_profile,name='actor_profile'),

    path('actor_home/',views.actor_home,name='actor_home'),

    path('actor_detail/',views.actor_detail,name='actor_detail'),

    path('director_profile/', views.director_profile, name='director_profile'),

    path('director_home/', views.director_home, name='director_home'),

    path('director_detail/', views.director_detail, name='director_detail'),

    path('company_profile/', views.company_profile, name='company_profile'),

    path('company_home/', views.company_home, name='company_home'),

    path('company_detail/', views.company_detail, name='company_detail')

    
    #url(r'^staticfiles/(?P<path>.*)$','django.views.static.serve',{'document_root':settings.STATICFILES_DIRS, 'show_indexes': True}),
    #url(r'^staticfiles/(?P<path>.*)$',serve,{'document_root':settings.STATICFILES_DIRS, 'show_indexes': True}),

]

urlpatterns+=static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
