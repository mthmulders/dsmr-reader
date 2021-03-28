��          �               l  �   m        �   0  p   �  �   *  0   �  R   �  d   /  @   �  J   �        �   <  S   �  �     Y   �  I       K  9   Y  1   �  1   �  �  �  �   �
  #   }  �   �  r   3  �   �  -   .  Y   \  q   �  K   (  X   t  $   �  �   �  Y   �  �   �  k   �  Q     #  Z  <   ~  1   �  1   �   *Please note that "9.5" in the example below is just the version number of the database, and it may differ from your installation. The same steps however apply.* Change it to your new location:: Changing the database data location may cause data corruption. Only execute the step below if you understand exactly what you are doing! Check whether the database is running again, you should see multiple processes: ``sudo ps faux | grep postgres`` Confirm that the database has stopped, you should see no more ``postgresql`` processes running: ``sudo ps faux | grep postgres`` Database: Changing storage location (PostgreSQL) Does the database not start? Check its logs in ``/var/log/postgresql/`` for hints. Edit database configuration ``sudo vi /etc/postgresql/9.5/main/postgresql.conf`` and find the line:: Ensure the new location exists: ``sudo mkdir /data/postgresql/`` Everything should work as usual now, storing the data on the new location. Execute the commands below: In the example below we will move the data from ``/var/lib/postgresql/`` to ``/data/postgresql/`` (which could be an external mount). Make sure the OS has direct access the new location and **create a back-up first**! Make sure the ``postgres`` user has access to the new location (and any parent folders in it's path): ``sudo chown -R postgres:postgres /data/`` Move the database data folder: ``sudo mv /var/lib/postgresql/9.5/ /data/postgresql/9.5/`` Save the file and start the database: ``sudo systemctl start postgresql`` Since the SD-card is quite vulnerable to wearing and corruption, you can run the database on a different disk or USB-stick. To do this, you will have to stop the application and database, change the database configuration, move the data and restart all processes again. Start DSMR-reader again: ``sudo supervisorctl start all`` Stop DSMR-reader: ``sudo supervisorctl stop all`` Stop database: ``sudo systemctl stop postgresql`` Project-Id-Version: DSMR Reader
Report-Msgid-Bugs-To: Dennis Siemensma <github@dennissiemensma.nl>
POT-Creation-Date: 2021-03-28 14:04+0200
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: Dennis Siemensma <github@dennissiemensma.nl>
Language: nl
Language-Team: Dennis Siemensma <github@dennissiemensma.nl>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 *N.B.: "9.5" in onderstaand voorbeeld is slechts het versienummer van de database en kan afwijken van je eigen situatie. Je kunt echter gewoon dezelfde stappen uitvoeren.* Wijzig het naar de nieuwe locatie:: Het wijzigen van de dataopslag breng het gevaar van datacorruptie met zich mee. Voer onderstaande stappen alleen uit als je begrijpt wat je doet! Controleer of de database weer draait, je zou nu meerdere processen moeten zien:  ``sudo ps faux | grep postgres`` Controleer dat de database gestopt is, je zou geen processen meer moeten zien van ``postgresql`` met:  ``sudo ps faux | grep postgres`` Database: Opslaglocatie wijzigen (PostgreSQL) Wil de database niet starten? Bekijk dan de logs in  ``/var/log/postgresql/`` voor hints. Open de databaseconfiguratie met ``sudo vi /etc/postgresql/9.5/main/postgresql.conf`` en vind de volgende regel:: Zorg ervoor dat de nieuwe locatie bestaat: ``sudo mkdir /data/postgresql/`` Alles zou weer moeten werken zoals voorheen, met de data voortaan op een andere locatie. Voer de onderstaande commando's uit: In onderstaand voorbeeld verplaatsen we de dataopslag van  ``/var/lib/postgresql/`` naar ``/data/postgresql/`` (wat bijvoorbeeld op een externe disk zou kunnen zijn). Zorg ervoor dat het OS toegang heeft tot de nieuwe locatie en **maak eerst een back-up**! Zorg ervoor dat de ``postgres`` gebruiker toegang heeft tot de nieuwe locatie (en eventuele bovenliggende mappen in het pad): ``sudo chown -R postgres:postgres /data/`` Verplaats nu de gehele data-map van de database: ``sudo mv /var/lib/postgresql/9.5/ /data/postgresql/9.5/`` Sla het bestand op en start de database weer: ``sudo systemctl start postgresql`` Gezien de SD-kaart gevoelig is voor slijtage en corruptie, kun je ervoor kiezen om de database op een andere disk of USB-stick te draaien. Om dit te realiseren zul je de applicatie en database moeten stoppen, de databaseconfiguratie aanpassen, dataopslag verplaatsen en alles weer opstarten. Start DSMR-reader weer met: ``sudo supervisorctl start all`` Stop DSMR-reader: ``sudo supervisorctl stop all`` Stop database: ``sudo systemctl stop postgresql`` 