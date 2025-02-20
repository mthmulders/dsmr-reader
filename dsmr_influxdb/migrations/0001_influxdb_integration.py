# Generated by Django 3.0.7 on 2020-07-14 19:03

from django.db import migrations, models
import dsmr_backend.mixins


class Migration(migrations.Migration):

    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="InfluxdbIntegrationSettings",
            fields=[
                (
                    "id",
                    models.AutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "enabled",
                    models.BooleanField(
                        default=False,
                        help_text="Whether the InfluxDB integration is enabled.",
                        verbose_name="Enabled",
                    ),
                ),
                (
                    "hostname",
                    models.CharField(
                        default="localhost",
                        help_text="The hostname of the InfluxDB.",
                        max_length=128,
                        verbose_name="InfluxDB hostname",
                    ),
                ),
                (
                    "port",
                    models.IntegerField(
                        default=8086,
                        help_text="Default: 8086",
                        verbose_name="InfluxDB port.",
                    ),
                ),
                (
                    "username",
                    models.CharField(
                        help_text="The username used for authentication with InfluxDB.",
                        max_length=64,
                        verbose_name="InfluxDB username",
                    ),
                ),
                (
                    "password",
                    models.CharField(
                        help_text="The password used for authentication with InfluxDB.",
                        max_length=64,
                        verbose_name="InfluxDB password",
                    ),
                ),
                (
                    "database",
                    models.CharField(
                        default="dsmrreader_measurements",
                        help_text="The name of the database used in InfluxDB.",
                        max_length=64,
                        verbose_name="InfluxDB database",
                    ),
                ),
                (
                    "secure",
                    models.CharField(
                        choices=[
                            ("insecure", "INSECURE - No HTTPS (default)"),
                            (
                                "secure_no_verify",
                                "SECURE (CERT_NONE) - HTTPS, but errors are ignored (untrusted or expired certificates)",
                            ),
                            (
                                "secure_and_verify",
                                "SECURE (CERT_REQUIRED) - HTTPS and requires a valid/trusted certificate",
                            ),
                        ],
                        default="insecure",
                        help_text="Whether the client should use a secure connection. Select SECURE (CERT_NONE) for self-signed certificates. ",
                        max_length=24,
                        verbose_name="Use secure connection (HTTPS)",
                    ),
                ),
                (
                    "formatting",
                    models.TextField(
                        default="\n### [measurement_name]\n### DSMR-reader field 1 = InfluxDB field 1\n### DSMR-reader field 2 = InfluxDB field 2\n\n[electricity_live]\nelectricity_currently_delivered = currently_delivered\nelectricity_currently_returned = currently_returned\n\n[electricity_positions]\nelectricity_delivered_1 = delivered_1\nelectricity_returned_1 = returned_1\nelectricity_delivered_2 = delivered_2\nelectricity_returned_2 = returned_2\n\n[electricity_voltage]\nphase_voltage_l1 = phase_l1\nphase_voltage_l2 = phase_l2\nphase_voltage_l3 = phase_l3\n\n[electricity_phases]\nphase_currently_delivered_l1 = currently_delivered_l1\nphase_currently_delivered_l2 = currently_delivered_l2\nphase_currently_delivered_l3 = currently_delivered_l3\nphase_currently_returned_l1 = currently_returned_l1\nphase_currently_returned_l2 = currently_returned_l2\nphase_currently_returned_l3 = currently_returned_l3\n\n[electricity_power]\nphase_power_current_l1 = current_l1\nphase_power_current_l2 = current_l2\nphase_power_current_l3 = current_l3\n\n[gas_positions]\nextra_device_delivered = delivered\n",
                        help_text="Mapping used for the measurements used in your InfluxDB database.",
                        verbose_name="Formatting",
                    ),
                ),
            ],
            options={
                "verbose_name": "InfluxDB integration",
                "default_permissions": (),
            },
            bases=(dsmr_backend.mixins.ModelUpdateMixin, models.Model),
        ),
    ]
