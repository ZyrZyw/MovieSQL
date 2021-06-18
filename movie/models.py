#-*-coding:utf-8 -*-
from django.db import models
from datetime import datetime
from django.contrib.auth.models import User
from django_markdown.models import MarkdownField
import markdown

# Create your models here.
class FilmInfo(models.Model):
    id = models.AutoField(primary_key=True)
    film_name = models.CharField(max_length=80) #name of the movie
    genres = models.CharField(max_length=50, null=True)  #genres of the movie
    company = models.CharField(max_length=50,null=True,default=True)
    issue = models.DateTimeField(null=True)  #issue date of the movie
    runtime = models.TimeField(null=True)  #length of the movie
    summary = models.TextField(null=True)  #summary of the movie
    language = models.CharField(max_length=100, null=True)  #language of the movie
    region = models.CharField(max_length=50, null=True)  #region of the movie
    comment_count = models.IntegerField(null=True)  #number of user making comments
    rate = models.FloatField(null=True)  #rate of the movie
    image = models.ImageField(upload_to='full/', blank=True, null=True)  #the image of the movie
    
    def __str__(self):
        return self.film_name

class CastInfo(models.Model):
    id = models.AutoField(primary_key=True)
    film_id = models.IntegerField()
    name = models.CharField(max_length=20)
    role = models.CharField(max_length=20)

class DirectorFilmInfo(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=20)
    film_id = models.IntegerField()

class UserScore(models.Model):
    id = models.AutoField(primary_key=True)
    user_id = models.IntegerField(null=False) #user's id who made comment on the movie
    film_id = models.IntegerField(null=False)  #movie's id
    score = models.IntegerField(null=False)  #user's rating
    comment = models.TextField(null=True)  #user's comment
    comment_time = models.DateTimeField(null=True)
    comment_adopt = models.IntegerField(null=True, default=0)  # how many user like this comment
    
    def __str__(self):
        user_name = UserInfo.objects.filter(user_id=self.user_id).first()
        film_name = FilmInfo.objects.filter(film_id=self.film_id).first()
        return u'{0} - {1}'.format(self.user.id,self.film_id)
