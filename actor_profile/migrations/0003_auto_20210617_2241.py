# Generated by Django 3.0.6 on 2021-06-17 22:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('actor_profile', '0002_auto_20210617_2211'),
    ]

    operations = [
        migrations.AlterField(
            model_name='people',
            name='id',
            field=models.AutoField(default=1, primary_key=True, serialize=False),
        ),
    ]
