# Generated by Django 2.0.7 on 2018-07-21 13:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("dsmr_consumption", "0009_consumption_settings_text"),
    ]

    operations = [
        migrations.AddField(
            model_name="electricityconsumption",
            name="phase_currently_returned_l1",
            field=models.DecimalField(
                decimal_places=3,
                default=None,
                help_text="Instantaneous active power L1 (-P) in W resolution",
                max_digits=9,
                null=True,
            ),
        ),
        migrations.AddField(
            model_name="electricityconsumption",
            name="phase_currently_returned_l2",
            field=models.DecimalField(
                decimal_places=3,
                default=None,
                help_text="Instantaneous active power L2 (-P) in W resolution",
                max_digits=9,
                null=True,
            ),
        ),
        migrations.AddField(
            model_name="electricityconsumption",
            name="phase_currently_returned_l3",
            field=models.DecimalField(
                decimal_places=3,
                default=None,
                help_text="Instantaneous active power L3 (-P) in W resolution",
                max_digits=9,
                null=True,
            ),
        ),
    ]
