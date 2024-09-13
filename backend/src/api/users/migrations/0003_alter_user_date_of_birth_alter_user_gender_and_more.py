# Generated by Django 5.0.6 on 2024-07-05 17:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("users", "0002_alter_user_height_alter_user_weight"),
    ]

    operations = [
        migrations.AlterField(
            model_name="user",
            name="date_of_birth",
            field=models.DateField(blank=True, null=True, verbose_name="Дата рождения"),
        ),
        migrations.AlterField(
            model_name="user",
            name="gender",
            field=models.CharField(
                blank=True,
                choices=[("M", "MALE"), ("F", "FEMALE")],
                max_length=1,
                null=True,
                verbose_name="Пол",
            ),
        ),
        migrations.AlterField(
            model_name="user",
            name="height",
            field=models.IntegerField(blank=True, null=True, verbose_name="Рост в см."),
        ),
        migrations.AlterField(
            model_name="user",
            name="level",
            field=models.CharField(
                blank=True,
                choices=[
                    ("BEG", "BEGINNER"),
                    ("MID", "MIDLLE"),
                    ("ADV", "ADVANCED"),
                    ("PRO", "PROFESSIONAL"),
                ],
                max_length=3,
                null=True,
                verbose_name="Уровень подготовки",
            ),
        ),
        migrations.AlterField(
            model_name="user",
            name="target",
            field=models.CharField(
                blank=True,
                choices=[
                    ("LW", "LOSE_WEIGHT"),
                    ("GW", "GAIN_WEIGHT"),
                    ("HL", "HEALTH"),
                    ("OT", "OTHER"),
                ],
                max_length=2,
                null=True,
                verbose_name="Цель",
            ),
        ),
        migrations.AlterField(
            model_name="user",
            name="weight",
            field=models.IntegerField(blank=True, null=True, verbose_name="Вес в кг."),
        ),
    ]
