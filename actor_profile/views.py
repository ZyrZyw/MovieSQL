from django.shortcuts import render
from .models import People
# Create your views here.

def actor_home(request):
    actor = People.objects.filter(profession__contains__='演员')
    context = {'actor': actor}
    # send actors to the actor.html
    return render(request,'actor_home.html', context)

def actor_detail(request, name):
    actor = People.objects.filter(name=name, profession__contains__='演员')
    context = {'actor': actor}
    return render(request, 'actor_detail.html', context)
    
def director_home(request):
    director = People.objects.filter(profession__contains__='导演')
    context = {'director': director}
    # send actors to the actor.html
    return render(request, 'actor_home.html', context)
    
def director_detail(request, name):
    director = People.objects.filter(name=name, profession__contains__='导演')
    context = {'director': director}
    return render(request, 'actor_detail.html', context)

