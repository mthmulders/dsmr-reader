# Generated by Django 3.1 on 2020-09-07 19:35

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
                "DSMR-reader will eventually be moved to its own organisation on GitHub in the near future. It should be "
                "redirected automatically, but if not, the new location will be: https://github.com/dsmrreader/dsmr-reader"
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
        ("dsmr_frontend", "0041_graph_ordering"),
    ]
