# Generated by Django 3.2.15 on 2022-09-20 04:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('client', '0003_alter_client_staff_color'),
    ]

    operations = [
        migrations.AlterField(
            model_name='client_staff',
            name='color',
            field=models.CharField(choices=[('008000', 'Hijau'), ('ff0000', 'Merah'), ('e7ff00', 'Kuning'), ('000000', 'Hitam'), ('0066ff', 'Biru')], default='000000', max_length=255),
        ),
    ]
