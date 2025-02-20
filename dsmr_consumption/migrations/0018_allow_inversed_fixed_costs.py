# Generated by Django 3.1.1 on 2020-10-08 19:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("dsmr_consumption", "0017_energy_supplier_price_refactoring"),
    ]

    operations = [
        migrations.AlterField(
            model_name="energysupplierprice",
            name="fixed_daily_cost",
            field=models.DecimalField(
                decimal_places=5,
                default=0,
                help_text="Both positive and negative prices allowed. Set to zero when: Unused / Defined in other contract / Not applicable to your situation",
                max_digits=11,
                verbose_name="Fixed daily costs (€)",
            ),
        ),
    ]
