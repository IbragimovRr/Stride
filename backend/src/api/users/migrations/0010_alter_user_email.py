# Generated by Django 5.0.6 on 2024-07-14 15:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("users", "0009_alter_user_email_alter_user_phone"),
    ]

    operations = [
        migrations.AlterField(
            model_name="user",
            name="email",
            field=models.EmailField(max_length=254, unique=True, verbose_name="email"),
        ),
    ]
