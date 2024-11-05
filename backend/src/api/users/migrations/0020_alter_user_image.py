# Generated by Django 5.0.6 on 2024-09-29 08:25

import config.yandex_s3_storage
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0019_alter_user_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='image',
            field=models.ImageField(blank=True, default='images/defaultLogo.png', null=True, storage=config.yandex_s3_storage.ClientDocsStorage(), upload_to='avatars/', verbose_name='avatar'),
        ),
    ]