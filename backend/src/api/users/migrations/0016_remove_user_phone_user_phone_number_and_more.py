# Generated by Django 5.0.6 on 2024-07-23 12:50

import phonenumber_field.modelfields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("users", "0015_user_phone"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="user",
            name="phone",
        ),
        migrations.AddField(
            model_name="user",
            name="phone_number",
            field=phonenumber_field.modelfields.PhoneNumberField(
                help_text="+7 (123) 123-45-67",
                max_length=128,
                null=True,
                region="RU",
                verbose_name="phone number",
            ),
        ),
        migrations.AlterField(
            model_name="user",
            name="username",
            field=models.CharField(
                blank=True,
                max_length=150,
                null=True,
                unique=True,
                verbose_name="username",
            ),
        ),
    ]
