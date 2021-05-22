from django.contrib import admin

from movie.models import MovieComent,Movie
from django_markdown.admin import MarkdownModelAdmin

# Register your models here.
admin.site.register(Movie)

class MovieComentAdmin(MarkdownModelAdmin):
    list_display = ('user','movie','date')
    
admin.site.register(MovieComent,MovieComentAdmin)
