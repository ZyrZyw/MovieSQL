from django.db import models

# Create your models here.
class People(models.Model):
    id = models.AutoField(primary_key=True, default=1)
    name = models.CharField(max_length=50)
    sex = models.CharField(max_length=4)
    birthday = models.DateField()
    birthplace = models.CharField(max_length=100)
    constellatory = models.CharField(max_length=10)
    profession = models.CharField(max_length=30)