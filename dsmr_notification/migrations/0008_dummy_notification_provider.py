# Generated by Django 3.1.2 on 2020-10-15 18:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("dsmr_notification", "0007_support_for_telegram"),
    ]

    operations = [
        migrations.AlterField(
            model_name="notificationsetting",
            name="notification_service",
            field=models.CharField(
                blank=True,
                choices=[
                    (None, "--- Disabled ---"),
                    ("dummy", "Dummy (e.g. custom plugin)"),
                    ("pushover", "Pushover"),
                    ("prowl", "Prowl"),
                    ("telegram", "Telegram"),
                ],
                default=None,
                help_text="Which notification service to use for sending daily usage notifications",
                max_length=20,
                null=True,
                verbose_name="Notification service",
            ),
        ),
    ]
