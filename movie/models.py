#-*-coding:utf-8 -*-
from django.db import models
from datetime import datetime
from django.contrib.auth.models import User
from django_markdown.models import MarkdownField
import markdown
from webuser.models import UserInfo
# Create your models here.
class FilmInfo(models.Model):
    film_name = models.CharField(max_length=80,blank=True) #name of the movie
    genres = models.CharField(max_length=50, blank=True)  #genres of the movie
    issue = models.DateTimeField()  #issue date of the movie
    runtime = models.TimeField()  #length of the movie
    summary = models.TextField(blank=True)  #summary of the movie
    language = models.CharField(max_length=80, blank=True)  #language of the movie
    region = models.CharField(max_length=50, blank=True)  #region of the movie
    comment_count = models.IntegerField(blank=True) #number of user making comments
    rate = models.FloatField(blank=True)  #rate of the movie
    image = models.ImageField(upload_to='full/', blank=True, null=True)  #the image of the movie
    
    def __str__(self):
        return self.film_name
    def get_comments(self):
        return UserScore.objects.filter(film_id=self.id)

class UserScore(models.Model):
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