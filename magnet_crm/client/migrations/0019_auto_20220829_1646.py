# Generated by Django 3.2.15 on 2022-08-29 16:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('client', '0018_client_birthday'),
    ]

    operations = [
        migrations.AlterField(
            model_name='client',
            name='source',
            field=models.CharField(choices=[('0', 'Fresh Data'), ('1', 'Rolling Data'), ('2', 'External Data')], default='0', max_length=255),
        ),
        migrations.AlterField(
            model_name='client',
            name='source_detail_2',
            field=models.CharField(blank=True, choices=[('0', 'Adwords'), ('1', 'Facbook'), ('2', 'Social Media'), ('3', 'Email'), ('4', 'Google')], default=None, max_length=255, null=True),
        ),
    ]