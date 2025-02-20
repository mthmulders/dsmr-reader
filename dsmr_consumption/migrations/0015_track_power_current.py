# Generated by Django 3.0.3 on 2020-02-20 18:56

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("dsmr_consumption", "0014_gas_grouping"),
    ]

    operations = [
        migrations.AddField(
            model_name="electricityconsumption",
            name="phase_power_current_l1",
            field=models.IntegerField(
                db_index=True,
                default=None,
                help_text="Power/current for phase L1 (in A)",
                null=True,
                validators=[
                    django.core.validators.MinValueValidator(0),
                    django.core.validators.MaxValueValidator(999),
                ],
            ),
        ),
        migrations.AddField(
            model_name="electricityconsumption",
            name="phase_power_current_l2",
            field=models.IntegerField(
                default=None,
                help_text="Power/current for phase L2 (in A)",
                null=True,
                validators=[
                    django.core.validators.MinValueValidator(0),
                    django.core.validators.MaxValueValidator(999),
                ],
            ),
        ),
        migrations.AddField(
            model_name="electricityconsumption",
            name="phase_power_current_l3",
            field=models.IntegerField(
                default=None,
                help_text="Power/current for phase L3 (in A)",
                null=True,
                validators=[
                    django.core.validators.MinValueValidator(0),
                    django.core.validators.MaxValueValidator(999),
                ],
            ),
        ),
    ]
