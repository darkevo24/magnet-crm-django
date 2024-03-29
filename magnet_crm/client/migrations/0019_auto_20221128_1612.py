# Generated by Django 3.2.15 on 2022-11-28 09:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('client', '0018_client_staff_voip'),
    ]

    operations = [
        migrations.AddField(
            model_name='client_staff',
            name='is_own_client_suspect',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='client',
            name='source_detail_2',
            field=models.CharField(blank=True, choices=[('0', 'Adwords'), ('1', 'Facebook/IG'), ('2', 'Social Media'), ('3', 'Email'), ('4', 'Google'), ('5', 'Discord')], default=None, max_length=255, null=True),
        ),
    ]
