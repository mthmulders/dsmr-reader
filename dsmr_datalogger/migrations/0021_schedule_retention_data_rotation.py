# Generated by Django 3.0.4 on 2020-03-09 18:44

from django.db import migrations
from django.conf import settings


def migrate_forward(apps, schema_editor):
    ScheduledProcess = apps.get_model("dsmr_backend", "ScheduledProcess")

    ScheduledProcess.objects.create(
        name="Retention data rotation",
        module=settings.DSMRREADER_MODULE_RETENTION_DATA_ROTATION,
    )


def migrate_backward(apps, schema_editor):
    ScheduledProcess = apps.get_model("dsmr_backend", "ScheduledProcess")
    ScheduledProcess.objects.filter(
        module=settings.DSMRREADER_MODULE_RETENTION_DATA_ROTATION
    ).delete()


class Migration(migrations.Migration):

    operations = [
        migrations.RunPython(migrate_forward, migrate_backward),
    ]

    dependencies = [
        ("dsmr_datalogger", "0020_track_power_current"),
    ]
