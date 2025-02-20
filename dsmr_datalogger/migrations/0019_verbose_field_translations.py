# Generated by Django 3.0.3 on 2020-02-19 19:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("dsmr_datalogger", "0018_meterstatistics_no_autonow"),
    ]

    operations = [
        migrations.AlterField(
            model_name="dataloggersettings",
            name="log_telegrams",
            field=models.BooleanField(
                default=False,
                help_text="Whether telegrams are logged, in base64 format. Only required for debugging.",
                verbose_name="Log telegrams",
            ),
        ),
    ]
