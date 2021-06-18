# Generated by Django 3.0.6 on 2021-06-17 22:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('movie', '0002_auto_20210617_2116'),
    ]

    operations = [
        migrations.AlterField(
            model_name='castinfo',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='directorfilminfo',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='filminfo',
            name='company',
            field=models.CharField(default=True, max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='filminfo',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='userscore',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]