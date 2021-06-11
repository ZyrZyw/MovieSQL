# -*- coding: utf-8 -*-
import random
from django.shortcuts import render,redirect
from .models import FilmInfo
from .forms import MovieInfoForm
from django.core.paginator import Paginator,InvalidPage,EmptyPage,PageNotAnInteger
from django.contrib.auth.models import User
from django.http import HttpResponse
from django.contrib import messages
from django.contrib.auth.decorators import login_required
# Create your views here.

def getmovielist(request):
    type = 'suggest'
    after_range_num =5
    before_range_num=4
    page=request.GET.get('page')
    if page is not None:
        page =int(page)
    filtertype=request.GET.get('filtertype')
    filterparam=request.GET.get('filterparam')
    if page is not None and page < 1:
        page=1
    moviequery = FilmInfo.objects.all()
    movie_list = moviequery
    if filtertype == 'style':
        movie_list = moviequery.filter(genres__contains=filterparam).order_by('-rate')
    elif filtertype == 'area':
        movie_list = moviequery.filter(region__contains=filterparam).order_by('-rate')
    elif filtertype == 'year':
        if filterparam=='20':
            movie_list = moviequery.filter(issue__lte='2001-12-20').order_by('-rate')
        else:
            movie_list = moviequery.filter(issue__contains=filterparam).order_by('-rate')
    random_num = random.randint(0,99)
    paginator = Paginator(movie_list,12)
    if page is not None and page>=after_range_num:
        page_range=paginator.page_range[page-after_range_num:page+before_range_num]
    elif page is not None:
        page_range = paginator.page_range[0:int(page)+before_range_num]
    return render(request,'movie/allfilms.html',locals())

def getmovielistbystyle(request,page=1):
    after_range_num =5
    before_range_num=4
    try:
        page=int(page)
        if page<1:
            page=1
    except ValueError:
        page=1
    style = request.GET.get('style')
    movie_list = FilmInfo.objects.filter(style__contains=u'剧情')
    paginator = Paginator(movie_list,12)
    try:
        movielist = paginator.page(page)
    except(EmptyPage,InvalidPage,PageNotAnInteger):
        movielist=paginator.page(1)
    if page>=after_range_num:
        page_range=paginator.page_range[page-after_range_num:page+before_range_num]
    else:
        page_range = paginator.page_range[0:int(page)+before_range_num]
    return render(request,'movie/allfilms.html',locals())

#查找电影
def searchmovie(request):
    random_num = random.randint(0,99)
    imdbmovie_list = FilmInfo.objects.order_by('doubanscore')[random_num:random_num+6]
    usamovie_list = FilmInfo.objects.filter(country__contains='美').order_by('doubanscore')[random_num:random_num+6]
    if 'q' in request.GET:
        querystring = request.GET.get('q').strip()
        if len(querystring)==0:
            return redirect('/getmovielist')
        else:
            movielist = FilmInfo.objects.filter(moviename__contains=querystring)
    return render(request,'movie/searchresult.html',locals())

@login_required
def addmovie(request):
    if request.method=='POST':
        form = MovieInfoForm(request.POST,request.FILES)
        if not form.is_valid():
            return render(request,'webuser/addmovie.html',{'form':form})
        else:
            moviename = form.cleaned_data.get('film_name')
            movieaddress = form.cleaned_data.get('region')
            style = form.cleaned_data.get('genres')
            language = form.cleaned_data.get('language')
            image = request.FILES['image']
            movie = FilmInfo(moviename=moviename,movieaddress=movieaddress,
                          style=style,language=language,image=image)
            movie.save()
            messages.add_message(request,messages.SUCCESS,u'电影添加成功.')
    else:
        form = MovieInfoForm();
    return render(request,'webuser/addmovie.html',{'form':form})


