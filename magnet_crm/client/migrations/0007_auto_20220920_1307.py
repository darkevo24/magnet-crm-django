# Generated by Django 3.2.15 on 2022-09-20 06:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('client', '0006_auto_20220920_1306'),
    ]

    operations = [
        migrations.AlterField(
            model_name='client',
            name='campaign',
            field=models.CharField(blank=True, default='', max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='client',
            name='content',
            field=models.CharField(blank=True, default='', max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='client',
            name='create_ip',
            field=models.CharField(blank=True, default='', max_length=32, null=True),
        ),
        migrations.AlterField(
            model_name='client',
            name='gclid',
            field=models.CharField(blank=True, default='', max_length=128, null=True),
        ),
        migrations.AlterField(
            model_name='client',
            name='medium',
            field=models.CharField(blank=True, default='', max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='client',
            name='term',
            field=models.CharField(blank=True, default='', max_length=50, null=True),
        ),
    ]
