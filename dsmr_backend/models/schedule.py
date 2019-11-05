import importlib
import logging

from django.utils.translation import ugettext_lazy as _
from django.utils import timezone
from django.db import models

from dsmr_backend.mixins import ModelUpdateMixin

logger = logging.getLogger('commands')


class ScheduledProcessManager(models.Manager):
    def ready(self):
        return self.get_queryset().filter(planned__lte=timezone.now(), active=True)


class ScheduledProcess(ModelUpdateMixin, models.Model):
    """ A scheduled process, not to be executed before the planned moment. """
    objects = ScheduledProcessManager()
    name = models.CharField(max_length=64)
    module = models.CharField(max_length=128, unique=True)
    planned = models.DateTimeField(default=timezone.now, db_index=True)
    active = models.BooleanField(default=True, db_index=True)

    def execute(self):
        # Import the first part of the path, execute the last bit later.
        splitted_path = self.module.split('.')
        import_path = '.'.join(splitted_path[:-1])
        call_path = splitted_path[-1]

        imported_module = importlib.import_module(name=import_path)
        service = getattr(imported_module, call_path)
        return service(self)

    def delay(self, delta):
        """ Delays the next call by the given delta. """
        self.reschedule(planned_at=timezone.now() + delta)

    def reschedule(self, planned_at):
        """ Schedules the next call at a predetermined moment. """
        self.update(planned=planned_at)
        logger.debug(
            'SP: Rescheduled "%s" to %s (ETA %s)',
            self.name,
            timezone.localtime(self.planned),
            self.planned - timezone.now()
        )

    def __str__(self):
        return self.name

    class Meta:
        default_permissions = []
        verbose_name = _('Scheduled process')
