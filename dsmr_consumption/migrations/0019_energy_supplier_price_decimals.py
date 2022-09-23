# Generated by Django 3.1.7 on 2021-02-24 12:45

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("dsmr_consumption", "0018_allow_inversed_fixed_costs"),
    ]

    operations = [
        migrations.AlterField(
            model_name="energysupplierprice",
            name="electricity_delivered_1_price",
            field=models.DecimalField(
                decimal_places=6,
                default=0,
                help_text="Set to zero when: Unused / Defined in other contract / Not applicable to your situation",
                max_digits=11,
                validators=[django.core.validators.MinValueValidator(0)],
                verbose_name="Tariff 1 delivered price (€/kWh)",
            ),
        ),
        migrations.AlterField(
            model_name="energysupplierprice",
            name="electricity_delivered_2_price",
            field=models.DecimalField(
                decimal_places=6,
                default=0,
                help_text="Set to zero when: Unused / Defined in other contract / Not applicable to your situation",
                max_digits=11,
                validators=[django.core.validators.MinValueValidator(0)],
                verbose_name="Tariff 2 delivered price (€/kWh)",
            ),
        ),
        migrations.AlterField(
            model_name="energysupplierprice",
            name="electricity_returned_1_price",
            field=models.DecimalField(
                decimal_places=6,
                default=0,
                help_text="Set to zero when: Unused / Defined in other contract / Not applicable to your situation",
                max_digits=11,
                validators=[django.core.validators.MinValueValidator(0)],
                verbose_name="Tariff 1 returned price (€/kWh)",
            ),
        ),
        migrations.AlterField(
            model_name="energysupplierprice",
            name="electricity_returned_2_price",
            field=models.DecimalField(
                decimal_places=6,
                default=0,
                help_text="Set to zero when: Unused / Defined in other contract / Not applicable to your situation",
                max_digits=11,
                validators=[django.core.validators.MinValueValidator(0)],
                verbose_name="Tariff 2 returned price (€/kWh)",
            ),
        ),
        migrations.AlterField(
            model_name="energysupplierprice",
            name="fixed_daily_cost",
            field=models.DecimalField(
                decimal_places=6,
                default=0,
                help_text="Both positive and negative prices allowed. Set to zero when: Unused / Defined in other contract / Not applicable to your situation",
                max_digits=11,
                verbose_name="Fixed daily costs (€/day)",
            ),
        ),
        migrations.AlterField(
            model_name="energysupplierprice",
            name="gas_price",
            field=models.DecimalField(
                decimal_places=6,
                default=0,
                help_text="Set to zero when: Unused / Defined in other contract / Not applicable to your situation",
                max_digits=11,
                validators=[django.core.validators.MinValueValidator(0)],
                verbose_name="Gas price (€/m³)",
            ),
        ),
    ]
