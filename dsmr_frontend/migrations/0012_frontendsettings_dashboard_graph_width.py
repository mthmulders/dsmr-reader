# Generated by Django 2.0.6 on 2018-06-06 15:33

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("dsmr_frontend", "0011_phase_currently_delivered"),
    ]

    operations = [
        migrations.AddField(
            model_name="frontendsettings",
            name="dashboard_graph_width",
            field=models.IntegerField(
                default=30,
                verbose_name="Dashboard graph width",
                help_text="The number of items displayed on the X-axis of the dashboard graphs",
                validators=[
                    django.core.validators.MinValueValidator(30),
                    django.core.validators.MaxValueValidator(120),
                ],
            ),
        ),
    ]
