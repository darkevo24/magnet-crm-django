# Generated by Django 3.2.15 on 2022-09-20 06:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('client', '0007_auto_20220920_1307'),
    ]

    operations = [
        migrations.AlterField(
            model_name='client',
            name='demologin',
            field=models.IntegerField(blank=True, default=0, null=True),
        ),
    ]