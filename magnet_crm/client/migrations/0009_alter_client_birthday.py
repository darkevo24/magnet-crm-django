# Generated by Django 3.2.15 on 2022-09-20 06:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('client', '0008_alter_client_demologin'),
    ]

    operations = [
        migrations.AlterField(
            model_name='client',
            name='birthday',
            field=models.DateTimeField(blank=True, null=True),
        ),
    ]
