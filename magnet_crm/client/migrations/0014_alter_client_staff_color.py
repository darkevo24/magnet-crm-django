# Generated by Django 3.2.15 on 2022-08-24 11:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('client', '0013_client_staff_color'),
    ]

    operations = [
        migrations.AlterField(
            model_name='client_staff',
            name='color',
            field=models.CharField(default='#000000', max_length=255),
        ),
    ]
