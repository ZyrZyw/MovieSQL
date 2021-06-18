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
    path('',views.index,name='index'),
    path('user/',include('webuser.urls')),
    path('movie/', include('movie.urls')),
    path('',include('actor_profile.urls')),
    path('company/', include('company.urls')),
    path('questions',include('questions.urls')),
    path('wechat/',include('webchat.urls')),
    path('markdown/',include('django_markdown.urls')),
]

#urlpatterns+=static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
