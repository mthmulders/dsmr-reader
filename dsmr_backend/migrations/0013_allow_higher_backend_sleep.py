# Generated by Django 3.0.2 on 2020-02-02 14:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("dsmr_backend", "0012_fix_email_from"),
    ]

    operations = [
        migrations.AlterField(
            model_name="backendsettings",
            name="process_sleep",
            field=models.DecimalField(
                decimal_places=1,
                default=1,
                help_text="The number of seconds the application will sleep after completing a backend run.",
                max_digits=4,
                verbose_name="Backend process sleep",
            ),
        ),
    ]
