# Generated by Django 2.2 on 2019-04-19 08:53

from django.db import migrations
from django.utils.translation import gettext_lazy


def migrate_forward(apps, schema_editor):
    import dsmr_frontend.services
    import dsmr_backend.services.backend

    if dsmr_backend.services.backend.is_recent_installation():
        # Skip for new installations.
        return

    Notification = apps.get_model("dsmr_frontend", "Notification")
    Notification.objects.create(
        message=dsmr_frontend.services.get_translated_string(
            text=gettext_lazy(
                "DSMR-reader v2.0.1 adds two missing API calls in the documentation (/api/v2/consumption/)"
            )
        ),
        redirect_to="frontend:changelog-redirect",
    )


def migrate_backward(apps, schema_editor):
    pass


class Migration(migrations.Migration):

    operations = [
        migrations.RunPython(migrate_forward, migrate_backward),
    ]

    dependencies = [
        ("dsmr_frontend", "0016_v200_release"),
    ]
