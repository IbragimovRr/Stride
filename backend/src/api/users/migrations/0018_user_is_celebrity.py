# Generated by Django 5.0.6 on 2024-09-01 14:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("users", "0017_alter_user_phone_number"),
    ]

    operations = [
        migrations.AddField(
            model_name="user",
            name="is_celebrity",
            field=models.BooleanField(default=False, verbose_name="is_celebrity"),
        ),
    ]
