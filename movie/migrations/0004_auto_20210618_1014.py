# Generated by Django 3.0.6 on 2021-06-18 10:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('movie', '0003_auto_20210617_2211'),
    ]

    operations = [
        migrations.AlterField(
            model_name='castinfo',
            name='name',
            field=models.CharField(max_length=20),
        ),
    ]
