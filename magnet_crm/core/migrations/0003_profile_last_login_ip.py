# Generated by Django 3.2.15 on 2022-08-22 17:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0002_alter_profile_updated_by'),
    ]

    operations = [
        migrations.AddField(
            model_name='profile',
            name='last_login_ip',
            field=models.CharField(default='', max_length=255),
        ),
    ]