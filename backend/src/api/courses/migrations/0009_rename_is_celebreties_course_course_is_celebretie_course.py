# Generated by Django 5.0.6 on 2024-08-25 14:59

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("courses", "0008_course_is_celebreties_course_alter_module_data_and_more"),
    ]

    operations = [
        migrations.RenameField(
            model_name="course",
            old_name="is_celebreties_course",
            new_name="is_celebretie_course",
        ),
    ]
