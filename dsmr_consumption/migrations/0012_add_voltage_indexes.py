# Generated by Django 2.2.5 on 2019-09-26 17:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("dsmr_consumption", "0011_track_phase_voltages"),
    ]

    operations = [
        migrations.AlterField(
            model_name="electricityconsumption",
            name="phase_voltage_l1",
            field=models.DecimalField(
                db_index=True,
                decimal_places=1,
                default=None,
                help_text="Current voltage for phase L1 (in V)",
                max_digits=4,
                null=True,
            ),
        ),
        migrations.AlterField(
            model_name="electricityconsumption",
            name="phase_voltage_l2",
            field=models.DecimalField(
                db_index=True,
                decimal_places=1,
                default=None,
                help_text="Current voltage for phase L2 (in V)",
                max_digits=4,
                null=True,
            ),
        ),
        migrations.AlterField(
            model_name="electricityconsumption",
            name="phase_voltage_l3",
            field=models.DecimalField(
                db_index=True,
                decimal_places=1,
                default=None,
                help_text="Current voltage for phase L3 (in V)",
                max_digits=4,
                null=True,
            ),
        ),
    ]
