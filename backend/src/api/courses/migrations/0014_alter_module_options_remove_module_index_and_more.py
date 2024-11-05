# Generated by Django 5.0.6 on 2024-10-14 21:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0013_alter_module_options_module_index'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='module',
            options={'ordering': ['order'], 'verbose_name': 'Модуль', 'verbose_name_plural': 'Модули'},
        ),
        migrations.RemoveField(
            model_name='module',
            name='index',
        ),
        migrations.AddField(
            model_name='module',
            name='order',
            field=models.IntegerField(default=1, verbose_name='Порядок'),
            preserve_default=False,
        ),
    ]