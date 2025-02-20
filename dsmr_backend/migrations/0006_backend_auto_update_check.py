# Generated by Django 2.2.6 on 2019-11-04 19:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("dsmr_backend", "0005_schedule_auto_update_check"),
    ]

    operations = [
        migrations.AlterModelOptions(
            name="scheduledprocess",
            options={"default_permissions": [], "verbose_name": "Scheduled process"},
        ),
        migrations.AddField(
            model_name="backendsettings",
            name="automatic_update_checker",
            field=models.BooleanField(
                default=True,
                help_text="Whether the application checks once in a while for new DSMR-reader release in GitHub",
                verbose_name="Automatically check for updates",
            ),
        ),
        migrations.AlterModelOptions(
            name="backendsettings",
            options={
                "default_permissions": (),
                "verbose_name": "Backend configuration",
            },
        ),
    ]
