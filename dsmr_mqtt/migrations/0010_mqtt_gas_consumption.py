# Generated by Django 2.2.6 on 2019-10-09 19:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dsmr_mqtt', '0009_remove_optional_debug'),
    ]

    operations = [
        migrations.CreateModel(
            name='JSONGasConsumptionMQTTSettings',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('enabled', models.BooleanField(default=False, help_text='Whether gas consumption is sent to the broker, in JSON format.', verbose_name='Enabled')),
                ('topic', models.CharField(default='dsmr/consumption/gas/json', help_text='The topic to send the parsed JSON telegrams to.', max_length=256, verbose_name='Topic path')),
                ('formatting', models.TextField(default='\n[mapping]\n# DATA FIELD = JSON FIELD\nread_at = read_at\ndelivered = delivered\ncurrently_delivered = currently_delivered\n', help_text='Maps the field names used in the JSON message sent to the broker.', verbose_name='Formatting')),
            ],
            options={
                'verbose_name': 'MQTT: Gas consumption (as JSON) configuration',
                'default_permissions': (),
            },
        ),
        migrations.CreateModel(
            name='SplitTopicGasConsumptionMQTTSettings',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('enabled', models.BooleanField(default=False, help_text='Whether gas consumption is sent to the broker, having each field sent to a different topic.', verbose_name='Enabled')),
                ('formatting', models.TextField(default='\n[mapping]\n# READING FIELD = TOPIC PATH\nread_at = dsmr/consumption/gas/read_at\ndelivered = dsmr/consumption/gas/delivered\ncurrently_delivered = dsmr/consumption/gas/currently_delivered\n', help_text='Maps the field names to separate topics sent to the broker.', verbose_name='Formatting')),
            ],
            options={
                'verbose_name': 'MQTT: Gas consumption (per split topic) configuration',
                'default_permissions': (),
            },
        ),
    ]
