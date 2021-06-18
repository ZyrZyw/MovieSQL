from django.shortcuts import render
from .models import People
from movie.models import CastInfo, FilmInfo, DirectorFilmInfo
# Create your views here.

def actor_home(request):
    actor = People.objects.filter(profession__contains='演员')
    context = {'actor': actor}
    # send actors to the actor.html
    return render(request,'actor_home.html', context)

def actor_detail(request, name):
    actor = People.objects.filter(name=name, profession__contains='演员')
    film_id_list = [x.film_id for x in CastInfo.objects.filter(name=name)]
    film_list = [FilmInfo.objects.filter(id=film_id) for film_id in film_id_list]
    context = {
        'actor': actor,
        'film_list': film_list, #type: class
    }
    return render(request, 'actor_detail.html', context)
    
def director_home(request):
    director = People.objects.filter(profession__contains='导演')
    context = {
        'director': director #type: class
    }
    # send actors to the actor.html
    return render(request, 'actor_home.html', context)
    
def director_detail(request, name):
    director = People.objects.filter(name=name, profession__contains='导演')
    film_id_list = [x.film_id for x in DirectorFilmInfo.objects.filter(name=name)]
    film_list = [FilmInfo.objects.filter(id=film_id) for film_id in film_id_list]
    context = {
        'director': director,
        'film_list': film_list, #type: class
    }
    return render(request, 'actor_detail.html', context)

