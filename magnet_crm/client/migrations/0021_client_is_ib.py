# Generated by Django 3.2.15 on 2022-12-03 08:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('client', '0020_alter_client_source_detail_1'),
    ]

    operations = [
        migrations.AddField(
            model_name='client',
            name='is_ib',
            field=models.BooleanField(default=False),
        ),
    ]
