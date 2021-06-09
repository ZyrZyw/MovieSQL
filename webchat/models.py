from django.db import models
from webuser.models import UserInfo
# Create your models here.
class ChatGroup(models.Model):
    name = models.CharField(max_length=64)
    founder = models.ForeignKey(UserInfo,on_delete=models.CASCADE,)
    members = models.ManyToManyField(UserInfo,blank=True,related_name='group_members')
    admins = models.ManyToManyField(UserInfo,blank=True,related_name='group_admins')
    memberlimits = models.IntegerField(default=200)


    def __unicode__(self):
        return self.name
