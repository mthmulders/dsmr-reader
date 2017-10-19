��    4      �  G   \      x  9   y  h   �  3     5   P  9   �  4   �     �  �        �    �  �   �     �     �     �     �      �     	      8	  #   Y	  9   }	  8   �	     �	  �   
  �   �
  e   ,  1   �  "   �     �  6         7    L      O  b   p  ]   �  8  1  B   j  o   �  s     "   �  �   �  �   >  	  ;  \   E  y   �  W     =   t  �   �  �   F  $   �  ^      3       �  5   3  s   i  8   �  :     >   Q  9   �  '   �  �   �     �    �  �   �  %   �     �     �  $   �          2  %   Q  %   w  4   �  :   �       �   %  �   �  �   �  4      .   S      �   1   �      �     �   2   �!  c   "  \   �"  a  �"  >   B$  �   �$  �   %  5   �%  �   �%    Z&  ?  `'  m   �(  �   )  p   �)  H   *  �   V*  �   �*  "   �+  ]   �+  3   E,                1      
             2         +                '           4   &                 $                     )              -       .   /           ,   	                   #            !   (         3      0          "   *             %           *How can I propose a feature or report a bug I've found?* *I've adjusted my energy prices but there are no changes! How can I regenerate them with my new prices?* :doc:`More information can be found here<dropbox>`. :doc:`More information can be found here<mindergas>`. :doc:`More information can be found here<notifications>`. :doc:`More information can be found here<pvoutput>`. Apply any database migrations. Before updating, **please make sure you have a recent backup of your database**! :doc:`More information about backups can be found here<application>`. Clear any caches. DSMR (and your energy supplier) always reads both high and low tariff from your meter. It's possible however that you are only paying for a single tariff. In that case your energy supplier will simply merge both high and low tariffs to make it look like you have a single one. Do you need a complete reinstall of DSMR-reader as well? Then please :doc:`follow the install guide<installation>` and restore the database backup **using the notes at the end of chapter 1**. Dropbox: Automated backup sync Feature/bug report For **MySQL** restores:: For **PostgreSQL** restores:: Frequently Asked Questions (FAQ) GIT pull (codebase update). How can I update my application? How do I restore a database backup? I only pay for a single electricity tariff but I see two! I want to see the load of each electricity phase as well I'm not seeing any gas readings Importing the data could take a long time. It took MySQL 15 minutes to import nearly 3 million readings, from a compressed backup, on a RaspberryPi 3. In case the version differs, you can try forcing a deployment reload by: ``sudo su - dsmr`` and then executing ``./post-deploy.sh``. It will make sure to check, fetch and apply any changes released. Summary of deployment script steps: Mindergas.nl: Automated gas meter position export Only want to restore the database? PIP update requirements. PVOutput.org: Automated electricity consumption export Please keep in mind: Please make sure that your meter supports reading gas consumption and that you've waited for a few hours for any graphs to render. The gas meter positions are only be updated once per hour (for DSMR v4). The Status page will give you insight in this as well. Recalculate prices retroactively Reload Gunicorn application server (web interface) and backend processes (such as the datalogger). Restoring a backup will replace any existing data stored in the database and is irreversible! Since ``DSMR-reader v1.5`` it's possible to track your ``P+`` (consumption) phases as well. You will need to enable this in the ``Datalogger configuration``. There is a setting called ``Track electricity phases``. When active, this will log the current usage of those phases and plot these on the Dashboard page. Start the application again with ``sudo supervisorctl start all``. Statistics for each day are generated once, the day after. However, you can flush your statistics by executing: Stop the application first with ``sudo supervisorctl stop all``. This will disconnect it from the database as well. Sync static files to Nginx folder. The application will delete all statistics and (slowly) regenerate them in the background. Just make sure the source data is still there. The version you are running is always based on the 'latest' version of the application, called the `master` branch. Every once in a while there may be updates. Since ``v1.5`` you can also easily check for updates by using the application's Status page. This application displays separate tariffs by default, but supports merging them to a single one as well. Just make sure that you apply the **same price to both electricity 1 and 2** and enable the option ``Merge electricity tariffs`` in the frontend configuration. This asumes you are still running the same application version as the backup was created in. This feature will only work when your smart meter is connected to **three phases**. Even when having the setting enabled. This will **not work retroactively**. The datalogger always discards all data not used. Usage notification: Daily usage statistics on your smartphone When having tracking phases enabled, you should see a button in the Dashboard called ``Display electricity phases``. Click on it to show the graph. You can update your application to the latest version by executing **deploy.sh**, located in the root of the project. Make sure to execute it while logged in as the ``dsmr`` user:: You should see something similar to: `Just create a ticket at Github <https://github.com/dennissiemensma/dsmr-reader/issues/new>`_. ``./manage.py dsmr_backend_delete_aggregated_data`` Project-Id-Version: DSMR Reader v1.x
Report-Msgid-Bugs-To: Dennis Siemensma <github@dennissiemensma.nl>
Last-Translator: Dennis Siemensma <github@dennissiemensma.nl>
Language-Team: Dennis Siemensma <github@dennissiemensma.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
Language: nl
X-Generator: Poedit 1.8.7.1
 *Hoe kan ik een verzoek indienen of een fout melden?* *Ik heb zojuist mijn energieprijzen aangepast, maar ik zie geen verschil! Hoe kan ik de nieuwe prijzen doorvoeren?* :doc:`Meer informatie kun je hier terugvinden<dropbox>`. :doc:`Meer informatie kun je hier terugvinden<mindergas>`. :doc:`Meer informatie kun je hier terugvinden<notifications>`. :doc:`Meer informatie kun je hier terugvinden<pvoutput>`. Past openstaande databasemigraties toe. Voordat je bijwerkt, **zorg ervoor dat je in ieder geval een recente back-up van je database hebt**! :doc:`Meer informatie over back-ups kun je hier vinden<application>`. Gooit de cache leeg. DSMR (en je energieleverancier) lezen altijd zowel hoog als laag tarief van je meter uit. Het is desondanks mogelijk dat je betaalt voor slechts één tarief. In dat geval voegt jouw energieleverancier het hoge en lage tarief samen zodat het lijkt alsof je een enkel tarief hebt. Heb je tevens een complete herinstallatie van DSMR-reader nodig? :doc:`Volg dan de installatiehandleiding<installation>` en herstel de databaseback-up volgens  **de notities aan het einde van hoofdstuk 1**. Dropbox: Automatisch backups uploaden Verzoek/fout melden Voor herstellen van **MySQL**:: Voor herstellen van **PostgreSQL**:: Veelgestelde vragen (FAQ) GIT pull (codebase bijwerken). Hoe kan ik mijn applicatie bijwerken? Hoe zet ik een databaseback-up terug? Ik betaal voor een enkel tarief maar ik zie er twee! Ik wil het elektriciteitsverbruik per fase ook kunnen zien Ik zie geen gasverbruik Het importeren van de gegevens kan enige tijd in beslag nemen. Op MySQL duurt het ongeveer een kwartier om 3 miljoen metingen te importeren, vanuit een gecomprimeerde back-up op een RaspberryPi 3. Mocht de versie toch verschillen, dan kun je proberen om de applicatie te herladen. Log in met: ``sudo su - dsmr`` en voer vervolgens ``./post-deploy.sh`` uit. Dit zorgt ervoor dat alle wijzigingen op een juiste volgorde worden binnengehaald en toegepast. Een overzicht van wat dit uitrol-script exact doet: Mindergas.nl: Automatisch gasmeterstanden exporteren Wil je alleen een databaseback-up terugzetten? Update PIP afhankelijkheden. PVOutput.org: Automatisch exporteren van verbruik Houd in gedachten: Wees er allereerst zeker van dat je slimme meter uberhaupt gasverbruik registreert, en dat je een paar uur hebt gewacht. De gasmeterstanden worden sowieso slechts een keer per uur bijgewerkt (voor DSMR v4). De Status-pagina geeft je hier overigens ook inzicht in. Prijzen opnieuw berekenen met terugwerkende kracht Herlaadt de Gunicorn-applicatieserver (webinterface) en achtergrondprocessen (zoals de datalogger). Het herstellen van een back-up vervangt de bestaande data in de database en is onomkeerbaar! Sinds ``DSMR-reader v1.5`` is het mogelijk om je ``P+`` (verbruik) elektriciteitsfasen in te zien. Dit is een aparte optie die je zelf moet inschakelen in ``Dataloggerconfiguratie``. De instelling heet daar ``Houd elektriciteitsfasen bij``. Zodra ingeschakeld, zal de applicatie het verbruik per fase vastleggen in tonen in een grafiek in het Dashboard. Start de applicatie weer met ``sudo supervisorctl start all``. Dagstatistieken worden dagelijks eenmalig gegenereerd. Het is echter wel mogelijk om deze te resetten door het volgende te doen: Stop als eerste de applicatie met ``sudo supervisorctl stop all``. Dit zorgt er ook voor dat de databaseverbinding van de applicatie verdwijnt. Synchroniseert statische bestanden naar de Nginx map. De applicatie verwijdert alle statistieken en genereert ze (langzaam) weer op de achtergrond. Zorg er wel voor dat alle brongegevens intact zijn. De versie die je draait is altijd gebaseerd op de 'laatste' versie van de applicatie, ook wel de `master` branch genoemd. Met enige regelmaat zijn er updates beschikbaar. Sinds ``v1.5`` kun je dit ook eenvoudig controleren op de Status-pagina van de applicatie. Deze applicatie weergeeft standaard gescheiden tarieven, maar heeft wel ondersteuning om ze samen te voegen (net zoals je energieleverancier doet). Zorg er wel voor dat je **dezelfde prijs invult bij hoog en laag tarief voor elektriciteit** en dat je de optie ``Voeg tarieven samen`` aanzet in de interfaceconfiguratie. Dit gaat er overigens wel van uit dat je dezelfde applicatie-versie draait als waarmee de back-up is gemaakt. Deze feature werkt alleen wanneer je slimme meter ook daadwerkelijk is aangesloten op **drie fasen**. Zelfs wanneer de optie is ingeschakeld. Dit werkt **niet met terugwerkende kracht**. De datalogger gooit namelijk alle gegevens weg die niet nodig zijn. Verbruiksnotificaties: Dagelijkse verbruiksstatistieken op je smartphone Wanneer het bijhouden van de fasen is ingeschakeld, zie je op het Dashboard een knop genaamd ``Toon elektriciteitsfasen``. Klik die aan om de grafiek te tonen. Je kun je applicatie bijwerken door het script **deploy.sh** uit te voeren, die in zich in de hoofdmap van het project bevindt. Zorg er wel voor dat je ingelogd bent als ``dsmr`` gebruiker op de terminal:: Je zult iets zien in de trend van: `Maak een ticket aan op Github <https://github.com/dennissiemensma/dsmr-reader/issues/new>`_. ``./manage.py dsmr_backend_delete_aggregated_data`` 