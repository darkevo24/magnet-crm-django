# Generated by Django 3.2.15 on 2022-09-13 08:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('client', '0022_auto_20220913_1343'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='client_staff',
            name='color',
        ),
        migrations.AddField(
            model_name='client',
            name='color',
            field=models.CharField(default='ff0000', max_length=255),
        ),
    ]
