# Generated by Django 2.2.6 on 2019-11-05 19:25

from django.db import migrations
from django.conf import settings
from django.utils import timezone


def migrate_forward(apps, schema_editor):
    WeatherSettings = apps.get_model("dsmr_weather", "WeatherSettings")
    ScheduledProcess = apps.get_model("dsmr_backend", "ScheduledProcess")

    (
        app_settings,
        _,
    ) = WeatherSettings.objects.get_or_create()  # Ensure we have at least an instance.

    ScheduledProcess.objects.create(
        name="Weather update",
        module=settings.DSMRREADER_MODULE_WEATHER_UPDATE,
        active=app_settings.track,
        planned=app_settings.next_sync or timezone.now(),
    )


def migrate_backward(apps, schema_editor):
    ScheduledProcess = apps.get_model("dsmr_backend", "ScheduledProcess")
    ScheduledProcess.objects.filter(
        module=settings.DSMRREADER_MODULE_WEATHER_UPDATE
    ).delete()


class Migration(migrations.Migration):

    operations = [
        migrations.RunPython(migrate_forward, migrate_backward),
        migrations.RemoveField(
            model_name="weathersettings",
            name="next_sync",
        ),
    ]

    dependencies = [
        ("dsmr_weather", "0005_weather_refactor_scheduling"),
    ]
