from django.contrib import admin

from movie.models import UserScore,FilmInfo

# Register your models here.
admin.site.register(FilmInfo)
    
admin.site.register(UserScore)
