# Generated by Django 2.1 on 2018-08-26 12:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("dsmr_mqtt", "0007_mqtts"),
    ]

    operations = [
        migrations.AlterField(
            model_name="message",
            name="payload",
            field=models.TextField(blank=True, null=True),
        ),
    ]
