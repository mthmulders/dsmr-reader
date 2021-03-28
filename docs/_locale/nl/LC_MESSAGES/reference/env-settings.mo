��    T      �              \     ]     z  n   �          &     /  �   D     �     �  =     a   N      �     �     �          '     C     _  !   {     �     �     �     �     	  �   	  i   �	  e   
  e   t
  m   �
  e   H  e   �  �     g   �  �     �   �  q     �   �  �     �   �  �   6  �   �  �   �  �   <  �   �  �   i  �   
  g   �  (      �   )  .   �     #     4     B     N     Z     f     r      ~     �     �     �     �     	     "     ;     X     n     �     �     �     �     �          )     C     [  -   r     �     �     �     �  W   �  :   .  V  i      �     �  |      #   }     �     �  �   �     n     �  =   �  d   �  $   >  !   c     �     �     �     �       %   %  !   K  "   m     �     �     �  �   �  i   z  e   �  e   J   m   �   e   !  e   �!  �   �!  g   �"  �   �"  �   �#  q   !$  �   �$  �   <%  �   �%  �   �&  �   T'  �   '(  �   �(  �   q)  �   *  �   �*  w   U+  /   �+    �+  8   �,     8-     I-     W-     c-     o-     {-     �-      �-     �-     �-     �-     .     .     7.     P.     m.     �.     �.     �.     �.     �.     /      /     >/     X/     p/  -   �/     �/     �/     �/     �/  i   �/  >   U0   **This setting is optional** **This setting is required** **This setting is required** for the default ``DJANGO_DATABASE_ENGINE``, but can be optional for some engines. **This setting is situational** Contents DSMR-reader settings DSMR-reader utilizes the Python Django framework. All settings below directly affect or override Django, and therefor your DSMR-reader installation as well. Django settings/overrides Environment settings For more information, :doc:`see Plugins</reference/plugins>`. For more information, :doc:`see Troubleshooting</how-to/troubleshooting/enabling-debug-logging>`. Former ``CONN_MAX_AGE`` env var. Former ``DB_ENGINE`` env var. Former ``DB_HOST`` env var. Former ``DB_NAME`` env var. Former ``DB_PASS`` env var. Former ``DB_PORT`` env var. Former ``DB_USER`` env var. Former ``DSMR_PASSWORD`` env var. Former ``DSMR_USER`` env var. Former ``SECRET_KEY`` env var. Former ``TZ`` env var. Former name < v5.0 New name >= v4.5 See ``DATABASES.CONN_MAX_AGE`` in `Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#conn-max-age>`__. Omit to use the default. See ``DATABASES.ENGINE`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#engine>`__. See ``DATABASES.HOST`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#host>`__. See ``DATABASES.NAME`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#name>`__. See ``DATABASES.PASSWORD`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#password>`__. See ``DATABASES.PORT`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#port>`__. See ``DATABASES.USER`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#user>`__. See ``FORCE_SCRIPT_NAME`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#force-script-name>`__. Omit to use the default. See ``SECRET_KEY`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#secret-key>`__. See ``STATIC_ROOT`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#static-root>`__. Omit to use the default. See ``STATIC_URL`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#static-url>`__. Omit to use the default. See ``TIME_ZONE`` in `Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#std:setting-TIME_ZONE>`__. See ``USE_X_FORWARDED_HOST`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#use-x-forwarded-host>`__. Omit to use the default. See ``USE_X_FORWARDED_PORT`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#use-x-forwarded-port>`__. Omit to use the default. See ``X_FRAME_OPTIONS`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#x-frame-options>`__. Omit to use the default. The database engine to use. Officially DSMR-reader only supports ``django.db.backends.postgresql``, but others supported by Django may work as well. Experiment at your own risk! The following settings have been **renamed** since DSMR-reader ``v4.5``, but are still available. Their old name will be **removed** in DSMR-reader ``v5.0`` and can then be no longer used. The log level DSMR-reader should use. Choose either ``ERROR`` (omit for this default), ``WARNING`` or ``DEBUG`` (should be temporary due to file I/O). The password of the ``DSMRREADER_ADMIN_USER`` user to create (or update if the user exists) when running ``./manage.py dsmr_superuser``. The plugins DSMR-reader should use. Omit to use the default of no plugins. Note that this should be a comma separated list when specifying multiple plugins. E.g.:: The secret key Django should use. This should be randomly generated for your installation. Generate or refresh it by running ``./tools/generate-secret-key.sh``. The timezone Django should use. Alter at your own risk. Omit to use the default, using the CET/CEST timezone (applicable to the Netherlands). The username of the **webinterface** (super)user to create when running ``./manage.py dsmr_superuser``. These settings are for DSMR-reader only. Whether to suppress any warnings regarding too many readings stored or the database size. Set it to ``True`` to disable the warnings or omit it to use the default (``False``). Suppress at your own risk. You can either specify the following settings: ``CONN_MAX_AGE`` ``DB_ENGINE`` ``DB_HOST`` ``DB_NAME`` ``DB_PASS`` ``DB_PORT`` ``DB_USER`` ``DJANGO_DATABASE_CONN_MAX_AGE`` ``DJANGO_DATABASE_ENGINE`` ``DJANGO_DATABASE_HOST`` ``DJANGO_DATABASE_NAME`` ``DJANGO_DATABASE_PASSWORD`` ``DJANGO_DATABASE_PORT`` ``DJANGO_DATABASE_USER`` ``DJANGO_FORCE_SCRIPT_NAME`` ``DJANGO_SECRET_KEY`` ``DJANGO_STATIC_ROOT`` ``DJANGO_STATIC_URL`` ``DJANGO_TIME_ZONE`` ``DJANGO_USE_X_FORWARDED_HOST`` ``DJANGO_USE_X_FORWARDED_PORT`` ``DJANGO_X_FRAME_OPTIONS`` ``DSMRREADER_ADMIN_PASSWORD`` ``DSMRREADER_ADMIN_USER`` ``DSMRREADER_LOGLEVEL`` ``DSMRREADER_PLUGINS`` ``DSMRREADER_SUPPRESS_STORAGE_SIZE_WARNINGS`` ``DSMR_PASSWORD`` ``DSMR_USER`` ``SECRET_KEY`` ``TZ`` in a ``.env`` file in the root of the DSMR-reader project folder (manual installations) or as system environments variables (Docker installations) Project-Id-Version:  DSMR-reader
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-03-28 14:04+0200
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: 
Language: nl
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 **Deze instelling is optioneel** **Deze instelling is vereist** **Deze instelling is vereist** voor de standaard ``DJANGO_DATABASE_ENGINE``, maar is mogelijk optioneel voor andere engines. **Deze instelling is situationeel** Inhoudsopgave DSMR-reader instellingen DSMR-reader gebruikt onderwater het Python Django framework. Alle instellingen hieronder hebben direct betrekking op Django en daarmee op je DSMR-reader-installatie. Django instellingen Environment-instellingen Voor meer informatie, :doc:`zie Plugins</reference/plugins>`. Voor meer informatie, :doc:`zie Hulp bij problemen</how-to/troubleshooting/enabling-debug-logging>`. Voormalige ``CONN_MAX_AGE`` env var. Voormalige ``DB_ENGINE`` env var. Voormalige ``DB_HOST`` env var. Voormalige ``DB_NAME`` env var. Voormalige ``DB_PASS`` env var. Voormalige ``DB_PORT`` env var. Voormalige ``DB_USER`` env var. Voormalige ``DSMR_PASSWORD`` env var. Voormalige ``DSMR_USER`` env var. Voormalige ``SECRET_KEY`` env var. Voormalige ``TZ`` env var. Voormalige naam < v5.0 Nieuwe naam >= v4.5 Zie ``DATABASES.CONN_MAX_AGE`` in `Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#conn-max-age>`__. Laat weg om de standaard waarde te gebruiken. Zie ``DATABASES.ENGINE`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#engine>`__. Zie ``DATABASES.HOST`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#host>`__. Zie ``DATABASES.NAME`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#name>`__. Zie ``DATABASES.PASSWORD`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#password>`__. Zie ``DATABASES.PORT`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#port>`__. Zie ``DATABASES.USER`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#user>`__. Zie ``FORCE_SCRIPT_NAME`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#force-script-name>`__. Laat weg om de standaardwaarde te gebruiken. Zie ``SECRET_KEY`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#secret-key>`__. Zie ``STATIC_ROOT`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#static-root>`__. Laat weg om de standaardwaarde te gebruiken. Zie ``STATIC_URL`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#static-url>`__. Laat weg om de standaardwaarde te gebruiken. Zie ``TIME_ZONE`` in `Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#std:setting-TIME_ZONE>`__. Zie ``USE_X_FORWARDED_HOST`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#use-x-forwarded-host>`__. Laat weg om de standaardwaarde te gebruiken. Zie ``USE_X_FORWARDED_PORT`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#use-x-forwarded-port>`__. Laat weg om de standaardwaarde te gebruiken. Zie ``X_FRAME_OPTIONS`` `in Django docs <https://docs.djangoproject.com/en/3.1/ref/settings/#x-frame-options>`__. Laat weg om de standaardwaarde te gebruiken. De database-engine om te gebruiken. Officieel ondersteunt DSMR-reader alleen ``django.db.backends.postgresql``, maar andere engines ondersteund door Django werken mogelijk ook. Experimenteer op eigen risico! De volgende instellingen zijn **hernoemd** sinds DSMR-reader ``v4.5``, maar nog steeds beschikbaar. De voormalige naam wordt **verwijderd** in DSMR-reader ``v5.0`` en is vanaf die versie niet meer te gebruiken. Het log level dat DSMR-reader gebruikt. Kies ofwel ``ERROR`` (laat weg voor deze standaardwaarde), ``WARNING`` of ``DEBUG`` (alleen tijdelijk i.v.m. hogere I/O). Het gewenste wachtwoord voor de ``DSMRREADER_ADMIN_USER`` gebruiker, bij aanmaken of updaten van de gebruiker. Voor wanneer je ``./manage.py dsmr_superuser`` uitvoert. De plugins die DSMR-reader gebruikt. Laat weg als je dit niet gebruikt. N.B.: Dit is een komma-gescheiden lijst wanneer je meerdere plugins specificeert. Bijvoorbeeld:: De secret key die Django gebruikt. Zou willekeurig moeten zijn voor je installatie. Genereer of roteer het door ``./tools/generate-secret-key.sh`` uit te voeren. De tijdzone die Django moet gebruiken. Wijzig op eigen risico. Laat weg om de standaard CET/CEST-tijdzone te gebruiken (zoals die voor Nederland geldt). Gebruikersnaam van de **webinterface** (super)user om te gebruiken, wanneer je ``./manage.py dsmr_superuser`` uitvoert. Deze instellingen zijn alleen voor DSMR-reader. Gebruik dit om waarschuwingen over "te veel opgeslagen metingen" of een "te grote database" te onderdrukken. Stel in op ``True`` om deze waarschuwingen uit te schakelen of laat het weg om de standaardwaarde (``False``) te gebruiken. Gebruik op eigen risico. Je kunt de volgende instellingen als volgt specificeren: ``CONN_MAX_AGE`` ``DB_ENGINE`` ``DB_HOST`` ``DB_NAME`` ``DB_PASS`` ``DB_PORT`` ``DB_USER`` ``DJANGO_DATABASE_CONN_MAX_AGE`` ``DJANGO_DATABASE_ENGINE`` ``DJANGO_DATABASE_HOST`` ``DJANGO_DATABASE_NAME`` ``DJANGO_DATABASE_PASSWORD`` ``DJANGO_DATABASE_PORT`` ``DJANGO_DATABASE_USER`` ``DJANGO_FORCE_SCRIPT_NAME`` ``DJANGO_SECRET_KEY`` ``DJANGO_STATIC_ROOT`` ``DJANGO_STATIC_URL`` ``DJANGO_TIME_ZONE`` ``DJANGO_USE_X_FORWARDED_HOST`` ``DJANGO_USE_X_FORWARDED_PORT`` ``DJANGO_X_FRAME_OPTIONS`` ``DSMRREADER_ADMIN_PASSWORD`` ``DSMRREADER_ADMIN_USER`` ``DSMRREADER_LOGLEVEL`` ``DSMRREADER_PLUGINS`` ``DSMRREADER_SUPPRESS_STORAGE_SIZE_WARNINGS`` ``DSMR_PASSWORD`` ``DSMR_USER`` ``SECRET_KEY`` ``TZ`` ofwel in een ``.env`` bestand in de bovenste map van de DSMR-reader-installatie (handmatige installaties) of als een systeem environment variabele (Docker-installaties) 