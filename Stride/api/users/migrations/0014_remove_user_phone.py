# Generated by Django 5.0.6 on 2024-07-22 15:08

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0013_alter_user_weight'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='user',
            name='phone',
        ),
    ]
