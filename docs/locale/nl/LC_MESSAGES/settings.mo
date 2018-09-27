��    i      d  �   �       	  F   	     H	  (   Z	  7   �	  z   �	     6
     K
     e
  *   n
  A   �
     �
     �
  -     2   ;  6   n  1   �  <   �  *     (   ?  5   h  >   �  2   �       }   &     �  Z   �  U        l  �   �  �     X   �       /   '     W     ]  V   x     �     O     g  �   p  )     _   I  �   �  }   _  �   �  %   �  �   �  G   y  *   �  '   �  u     �   �  �     �   �  �   ]  5     ;   7     s     �  L   �     �  T     �   f  "   �  c     0   u     �  s   �  (  :  j   c  �   �  z   �     !     0     D     Q     b     w     �     �     �     �     �     �  $         ?   )   \      �      �   !   �   ,   �      !     !     2!     O!  "   m!      �!     �!     �!     �!     �!     "      "     8"  v  S"  J   �#     $  P   &$  P   w$  �   �$     v%     �%     �%  2   �%  K   �%     %&     B&  1   Y&  6   �&  :   �&  5   �&  A   3'  /   u'  ,   �'  9   �'  B   (  8   O(     �(  �   �(      )  Y   <)  X   �)     �)  y   *  �   *  b   +     r+  9   �+     �+     �+  d   �+  }   L,     �,     �,  �   �,  /   �-  m   �-  �   X.  |   �.  �   l/  7   C0  �   {0  J   1  &   W1  &   ~1  t   �1  �   2  �   �2  �   '3  �   �3  =   U4  ?   �4  (   �4     �4  V   5  0   l5  t   �5  �   6  ,   �6  o   �6  ^   37  #   �7  �   �7  ^  n8  �   �9  �   b:  �   2;     �;     �;     �;     �;     <     (<     C<     Q<     h<     x<     �<     �<  $   �<     �<  )   =     1=     K=  !   b=  ,   �=     �=     �=  %   �=     >  )   >  (   E>     n>     �>     �>      �>     �>  %   �>     ?                    g       2   E   D       f       )   O          e      %       5   Z   ,   0   W   .   S   *       _             Q   !   M   ;   N   [   ?   `   F   1      H         i           h   \   d   U   '   V   B   I             R       +   C   "   J   A           c   =          6                      &   (                 L   G              b   #                   :          7       4       ]   X   3   K                           /       8   Y   <       	   
                     $      ^                   T       a   >                  @   P   9   -    :doc:`More information about this feature can be found here<plugins>`. API configuration API token for your MinderGas.nl account. API token for your account of the notification service. Allows sending daily notifications to your phone. :doc:`More information about this feature can be found in the FAQ<faq>`. Backup configuration Consumption configuration Contents Custom ``dsmrreader/settings.py`` settings Data retention applied to the readings stored in the application. Database/Django settings Datalogger configuration Defaults to ``DSMRREADER_BACKEND_SLEEP = 1``. Defaults to ``DSMRREADER_DATALOGGER_SLEEP = 0.5``. Defaults to ``DSMRREADER_DISABLED_CAPABILITIES = []``. Defaults to ``DSMRREADER_LOG_TELEGRAMS = False``. Defaults to ``DSMRREADER_MQTT_MAX_MESSAGES_IN_QUEUE = 100``. Defaults to ``DSMRREADER_MQTT_SLEEP = 1``. Defaults to ``DSMRREADER_PLUGINS = []``. Defaults to ``DSMRREADER_RECONNECT_DATABASE = True``. Defaults to ``DSMRREADER_STATUS_READING_OFFSET_MINUTES = 60``. Do not disable this. Will be removed next release. Dropbox configuration Enable this to have the backups compressed in gzip format. Highly recommended as it will make backups up to 10 times smaller! Energy supplier prices Enter your Dropbox access token here. Leave blank or clear to disable Dropbox integration. Example usage ``DSMRREADER_DISABLED_CAPABILITIES = ['gas', 'electricity_returned']``. Frontend configuration In case you want to alter the database settings, or any other Django settings, please modify (or add) them to the ``dsmrreader/settings.py`` file. Make sure to reload the application afterwards to persist the changes you've made, by executing ``./post-deploy.sh`` or restarting the Supervisor processes. Maximum interval in minutes allowed since the latest reading, before ringing any alarms. MinderGas.nl configuration Multiple colors can be set here for the graphs. Notes Notification configuration Number of queued MQTT messages the application will retain. Any excess will be purged. Optional connection with your account at MinderGas.nl. :doc:`More information about this feature can be found in the FAQ<faq>`. Retention configuration Settings Some project settings can be changed (or overridden) in the ``dsmrreader/settings.py`` file. Removing any of these settings from your file will force using the default value. The COM port your cable can be read from. The DSMR version your smart meter has. Used to determine how the serial connection should work. The application creates a daily database backup by default. You choose whether you want to have it compressed or in raw SQL form. The timestamp of the backup can be altered as well. The application does have an API, but it's disabled by default. You can enable it by activating the "Allow API calls" option. The application has several settings available, which you can edit in the Configuration page. The default settings should work fine, although it's recommended to enable syncing backups using Dropbox. The auth key used for authentication. The consumption settings determine how the application should handle the separate readings. The default behaviour is to group all readings each minute. This can be disabled. The density of the readings, visible in the application as consumption. The fixed weather station you wish to use. The notification service you are using. The number of seconds the application will sleep after completing a backend run. Prevents hammering on your hardware. The number of seconds the application will sleep after reading and publishing the outgoing MQTT message queue. Prevents hammering on your hardware. The number of seconds the application will sleep after reading data from the datalogger (API excluded). Prevents hammering on your hardware. There is a Dropbox integration available to safely transfer each daily backup into your Dropbox account. :doc:`More information about this feature can be found in the FAQ<faq>`. There is support for tracking outside temperatures for a fixed number of weather stations. :doc:`More information about this feature can be found in the FAQ<faq>`. This applies to the visualisation in the application. This configuration applies to how to read your smart meter. Timestamp of the daily backup. Weather configuration Whether telegrams are logged, in base64 format. Only required for debugging. Whether the API is enabled. Whether the application should verify the incoming data. Only available for DSMR 4+. Whether the backend process (and datalogger) reconnects to the DB after each run. Prevents some hanging connections in some situations. Whether to created backups at all. Whether to delete old readings, and which period of time should have elapsed, before deleting them. Whether to enable the connecting with MinderGas. Whether to enable this feature. Whether to merge the high and low tariffs. :doc:`More information about this feature can be found in the FAQ<faq>`. Whether to override (disable) capabilities. Only use if you want to disable a capability that your smart meter keeps reporting. For example you've switched from using gas to an alternative energy source. Or your smart meter contains electricity returned data, but you do not own any solar panels. Whether you want to track phases. :doc:`More information about this feature can be found in the FAQ<faq>`. You can enter all your energy contract prices here. The application will use them (when available) to calculate the consumption of each day. :doc:`See the FAQ on how to retroactivily adjust prices (if needed)<faq>`. You can leave personal notes for yourself here. Such as when you were on holiday or experimented with the heater settings. ``**** color`` ``Allow API calls`` ``Auth Key`` ``Backup daily`` ``Backup timestamp`` ``Buienradar weather station`` ``COM-port`` ``Compactor grouping type`` ``Compress`` ``DSMR version`` ``DSMRREADER_BACKEND_SLEEP`` ``DSMRREADER_DATALOGGER_SLEEP`` ``DSMRREADER_DISABLED_CAPABILITIES`` ``DSMRREADER_LOG_TELEGRAMS`` ``DSMRREADER_MQTT_MAX_MESSAGES_IN_QUEUE`` ``DSMRREADER_MQTT_SLEEP`` ``DSMRREADER_PLUGINS`` ``DSMRREADER_RECONNECT_DATABASE`` ``DSMRREADER_STATUS_READING_OFFSET_MINUTES`` ``Data retention`` ``Dropbox access token`` ``Export data to MinderGas`` ``Merge electricity tariffs`` ``MinderGas authentication token`` ``Notification service API key`` ``Notification service`` ``Poll P1 port`` ``Send notification`` ``Track electricity phases`` ``Track weather`` ``Verify telegram CRC`` ``dsmrreader/settings.py`` Project-Id-Version: DSMR Reader 1.x
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-09-27 20:03+0200
PO-Revision-Date: 2018-09-27 20:03+0200
Last-Translator: 
Language: nl
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
X-Generator: Poedit 1.8.7.1
 :doc:`Meer informatie over deze feature kun je hier terugvinden<plugins>`. API-configuratie Authenticatietoken voor de API-toegang van je persoonlijk account bij MinderGas. De API sleutel die gebruikt wordt om notificaties naar je smartphone te sturen.  Bepaalt of je een dagelijkse notificatie wilt ontvangen op je smartphone over je energieverbruik. :doc:`Meer informatie over deze feature kun je terugvinden in de FAQ<faq>`. Backupconfiguratie Verbruiksconfiguratie Inhoud Handmatige ``dsmrreader/settings.py`` instellingen Dataretentie van toepassing op de opgeslagen metingen binnen de applicatie. Database/Django instellingen Dataloggerconfiguratie Standaardwaarde ``DSMRREADER_BACKEND_SLEEP = 1``. Standaardwaarde ``DSMRREADER_DATALOGGER_SLEEP = 0.5``. Standaardwaarde ``DSMRREADER_DISABLED_CAPABILITIES = []``. Standaardwaarde ``DSMRREADER_LOG_TELEGRAMS = False``. Standaardwaarde: ``DSMRREADER_MQTT_MAX_MESSAGES_IN_QUEUE = 100``. Standaardwaarde: ``DSMRREADER_MQTT_SLEEP = 1``. Standaardwaarde ``DSMRREADER_PLUGINS = []``. Standaardwaarde ``DSMRREADER_RECONNECT_DATABASE = True``. Standaardwaarde ``DSMRREADER_STATUS_READING_OFFSET_MINUTES = 60``. Niet aankomen, wordt bij de volgende release verwijderd. Dropbox-configuratie Zet dit aan om de back-ups in gzip-formaat op te slaan. Dit wordt sterk aanbevolen, gezien het de back-ups tot 10 x kleiner maakt! Tarieven energieleverancier Voer hier je Dropbox-access token in. Laat leeg om de Dropbox-koppeling uit te schakelen. Voorbeeldgebruik ``DSMRREADER_DISABLED_CAPABILITIES = ['gas', 'electricity_returned']``. Interfaceconfiguratie Wanneer je de database-instellingen (of die van Django) wilt wijzigen, voer deze dan door in  ``dsmrreader/settings.py``. Zorg ervoor dat je de applicatie herlaadt na je wijzigingen, door ``./post-deploy.sh`` uit te voeren, of de Supervisor-processen te herstarten. Maximale toegestane interval, in minuten, sinds de laatste meting, voordat er alarmbellen af gaan. MinderGas.nl-configuratie Je kunt hier diverse kleuren instellen voor de grafieken. Notities Notificatieconfiguratie Het aantal MQTT-berichten dat de applicatie vasthoudt. Alle overtollige berichten worden verwijderd. Optionele integratie met je MinderGas.nl-account. :doc:`Meer informatie over deze feature kun je terugvinden in de FAQ<faq>`. Retentieconfiguratie Instellingen Sommige projectinstellingen kunnen aangepast (of toegevoegd) worden aan het ``dsmrreader/settings.py`` bestand. Het weghalen van deze instellingen zorgt ervoor dat de standaardwaarden weer gebruikt worden. COM-poort die verbonden is met je slimme meter. De DSMR-versie die je slimme meter ondersteunt. Wordt gebruikt om te bepalen hoe de seriele verbinding werkt. De applicatie maakt standaard dagelijks een databaseback-up. Je kunt hiermee aangegeven in welke compressievorm en tevens het tijdstip van de back-up. De applicatie heeft een API, maar die is standaard uitgeschakeld. Je kunt deze inschakelen met de "Sta API-calls toe" optie. De applicatie heeft diverse instellingen die je kunt bewerken in de Configuratie-pagina. De standaardinstellingen zouden afdoende moeten werken, al is het wel aan te raden de back-ups te synchroniseren via Dropbox. De autorisatiesleutel om toegang te krijgen tot de API. De verbruiksinstellingen bepalen hoe de applicatie omgaat met de individuele metingen. Standaard groepeert de applicatie de metingen per minuut. De dichtheid van de metingen, zoals getoond als verbruik in de applicatie. Het weerstation die je wilt gebruiken. De notificatieservice die je gebruikt. Het aantal seconden dat de applicatie wacht na het voltooien van een backend run. Voorkomt hoge load op je hardware. Het aantal seconden dat de applicatie wacht na het verwerken van een batch uitgaande MQTT-berichten. Voorkomt hoge load op je hardware. Het aantal seconden dat de applicatie wacht na het uitlezen van de datalogger (uitgezonderd API). Voorkomt hoge load op je hardware. Er is een koppeling mogelijk met je eigen Dropbox-account om de back-ups veilig te stellen. :doc:`Meer informatie over deze feature kun je terugvinden in de FAQ<faq>`. Er is ondersteuning voor het uitlezen van de temperatuur  :doc:`Meer informatie over deze feature kun je terugvinden in de FAQ<faq>`. Dit heeft betrekking op de visuele weergave in de applicatie. Deze configuratie bepaalt hoe je slimme meter uitgelezen wordt. Voorkeurstijdstip van dagelijkse backup. Weergegevensconfiguratie Geeft aan of telegrammen gelogd worden, in base64-formaat. Alleen nodig voor debuggen. Geeft aan of de API beschikbaar is voor gebruik. Geeft aan of we de CRC (checksum) van binnenkomende telegrammen moeten verifiëren. Alleen beschikbaar voor DSMR 4+. Geeft aan of de backend na elke run opnieuw moet verbinden naar de database. Dit voorkomt in enkele gevallen hangende verbindingen. Maakt een dagelijkse backup van je gegevens. Geeft aan of oude metingen verwijderd mogen worden, en welke tijdsduur daar minimaal overgeen gegaan moet zijn. Bepaalt of we je meterstanden dagelijks moeten uploaden naar je eigen account op MinderGas.nl. Geeft aan of deze feature aanstaat. Bepaalt of de elektriciteitstarieven samengevoegd moeten worden (wanneer je voor een enkel tarief betaalt). :doc:`Meer informatie over deze feature kun je terugvinden in de FAQ<faq>`. Geeft aan om 'capabilities' van de applicaties uit te schakelen. Gebruik dit alleen wanneer je iets wilt uitschakelen wat je blijft terugkomen in je slimme meter. Bijvoorbeeld wanneer je gewisseld bent van gas naar een alternatieve energiebron. Of wanneer je slimme meter data bevat voor teruggeleverde energie en je uberhaupt geen zonnepanelen hebt. Geeft aan of de elektriciteitsfasen getraceerd worden (indien aanwezig). :doc:`Meer informatie over deze feature kun je terugvinden in de FAQ<faq>`. Je kunt hier je energietarieven invoeren. De applicatie gebruikt deze dan om je dagelijkse verbruik te berekenen. :doc:`Zie de FAQ hoe je dit eventueel met terugwerkende kracht kan doen (indien nodig)<faq>`. Je kunt hier persoonlijke notities voor jezelf achterlaten. Zoals wanneer je op vakantie bent of hebt geëxperimenteerd met de verwarming. ``Kleur ****`` ``Sta API-calls toe`` ``Authorisatiesleutel`` ``Dagelijkse backup`` ``Tijdstip van backup`` ``Buienradar weerstation`` ``COM-poort`` ``Metingen groeperen`` ``Comprimeren`` ``DSMR-versie`` ``DSMRREADER_BACKEND_SLEEP`` ``DSMRREADER_DATALOGGER_SLEEP`` ``DSMRREADER_DISABLED_CAPABILITIES`` ``DSMRREADER_LOG_TELEGRAMS`` ``DSMRREADER_MQTT_MAX_MESSAGES_IN_QUEUE`` ``DSMRREADER_MQTT_SLEEP`` ``DSMRREADER_PLUGINS`` ``DSMRREADER_RECONNECT_DATABASE`` ``DSMRREADER_STATUS_READING_OFFSET_MINUTES`` ``Dataretentie`` ``Dropbox 'access token'`` ``Exporteer gegevens naar MinderGas`` ``Voeg tarieven samen`` ``MinderGas.nl Authenticatietoken (API)`` ``API sleutel voor notificatie service`` ``Notificatieservice`` ``Peil P1 poort`` ``Stuur notificatie`` ``Houd elektriciteitsfasen bij`` ``Houd weergegevens bij`` ``Controleer de CRC van telegrammen`` ``dsmrreader/settings.py`` 