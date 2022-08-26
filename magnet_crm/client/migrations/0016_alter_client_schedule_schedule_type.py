# Generated by Django 3.2.15 on 2022-08-26 05:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('client', '0015_alter_client_staff_color'),
    ]

    operations = [
        migrations.AlterField(
            model_name='client_schedule',
            name='schedule_type',
            field=models.CharField(choices=[('whatsapp', 'Whatsapp'), ('phone', 'Phone'), ('email', 'Email'), ('offfline_meeting', 'Offline Meeting'), ('other', 'Others')], default='whatsapp', max_length=255),
        ),
    ]
