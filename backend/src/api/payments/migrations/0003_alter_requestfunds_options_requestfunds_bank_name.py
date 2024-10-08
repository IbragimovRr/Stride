# Generated by Django 5.0.6 on 2024-09-18 09:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('payments', '0002_alter_wallet_options_rename_amount_wallet_balance_and_more'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='requestfunds',
            options={'verbose_name': 'Запрос', 'verbose_name_plural': 'Запросы'},
        ),
        migrations.AddField(
            model_name='requestfunds',
            name='bank_name',
            field=models.CharField(default='T-bank', help_text='Введите название банка для перевода', max_length=255, verbose_name='Название банка'),
        ),
    ]
