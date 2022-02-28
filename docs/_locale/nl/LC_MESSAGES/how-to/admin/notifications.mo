��    %      D              l     m  �   �  �     Q   �  �         �     �  ?   �  �   7  Z   �  �  +  @  �  �   �     �	  >   �	  �   �	     �
  d   :     �     �  "   �     �  7     %   E  �   k     @  %   Q  &   w  q   �  �     >   �  �   �  �   m  $   X  �   }  R   -  �  �     Z  �   n  �     W   �  �   �     �     �  D     �   I  W   �    ?  y  F  �   �     g  <   {  �   �  �   �  a   )     �     �  !   �     �  9   �  $   3    X     o  $   �  #   �  t   �  �   >  @   �  �      	  �   0   �!  �   �!  a   �"   Admin: Notifications After you have downloaded Prowl and signed up for an account you should be able to `login into your Prowl account <https://www.prowlapp.com/login.php>`_. After you have downloaded Pushover and signed up for an account you should be able to `login into your Pushover account <https://pushover.net>`_. And you will need the **API key** for the application you've created in Pushover. Any message the bot receives (or is allowed to see) is sent as update to the bot. You can use the Telegram API in your browser to see the updates for your bot. It will contain the Chat ID you're looking for. Construct the following URL:: Contents Currently, two mobile platforms are supported: Android and iOS. Extract the Chat ID from the response. In the example above it's ``123456789``. You can use that ID in the Telegram notifications config of DSMR-reader. For example when using the fake API key ``1268827887:ABCDEFGqdtsgtts-JDASIJDqewqkqewaq``:: In the DSMR-reader **Notifications Apps** settings, select the notification service you want to use. Copy the API key from the notification service and paste in into the the textbox for the API key. When you save these settings, your first notification should be sent after midnight. Don't worry about nightly alerts, the notifications will be sent with low priority and should not wake you up. Make sure you either have Pushover, Prowl or Telegram installed on your smartphone. If you don't, visit your platforms app store to download the app and sign up for an account. Then, make sure to get your API key from the notification service that you prefer. For instruction on obtaining the API key, please read below. More information about bots `can be found here <https://core.telegram.org/bots>`_. You will need the API key provided to you by the ``BotFather`` bot. Notifications Notifications on your phone using Prowl, Pushover or Telegram. Now go to "`API Keys <https://www.prowlapp.com/api_settings.php>`_", you should see an overview of your current API keys if you have any. To create an API key for the DSMR-reader, input a name and click **"Generate Key"**. Please note that DSMR-reader will reset and wipe notification settings on any error. This can be experienced as a bit annoying. Please note that you can only use these notifications if you have your own (chat) bot with Telegram. Prowl Get Your API Key Prowl My Account overview Prowl: How do I obtain my API key? Pushover Get Your API Key Pushover requires you to enter two keys in DSMR-reader. Pushover: How do I obtain my API key? So first make sure to send a message directly to the bot as human. Or, if you added the bot in a group, make sure it has permissions to read messages in the group and then send a message in the group accordingly. Telegram Chat ID Telegram: How do I obtain my API key? Telegram: How do I obtain the Chat ID? The supported apps for Android are `Pushover <https://pushover.net>`_ and `Telegram <https://www.telegram.org>`_. The supported apps for iOS are `Pushover <https://pushover.net>`_, `Prowl <https://www.prowlapp.com>`_ and `Telegram <https://www.telegram.org>`_. To test notifications, you can execute the following command:: When a new key is generated, you will see it immediatly. Your key is listed like in the screenshot below (the red box marks your API key). You should see an overview of containing **Your User Key** (top right) and Applications, if you have any. To create an application in Pushover, for sending notifications to your phone, please click **Create an Application/API Token**. You should see something similar to: You will also need the Chat ID to have the bot send messages to the right chat. **By default bots are not allowed to contact anyone by themselves or see messages in a group.** You will need the **User Key** displayed on the top right in the screenshot below. Project-Id-Version: DSMR Reader
Report-Msgid-Bugs-To: Dennis Siemensma <github@dennissiemensma.nl>
POT-Creation-Date: 2022-02-28 19:07+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: Dennis Siemensma <github@dennissiemensma.nl>
Language: nl
Language-Team: Dennis Siemensma <github@dennissiemensma.nl>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 Admin: Notificaties Nadat je Prowl gedownload hebt en je registreert voor een account, zou je `moeten kunnen inloggen in je Prowl account <https://www.prowlapp.com/login.php>`_. Nadat je Pushover gedownload hebt en je registreert voor een account, zou je `moeten kunnen inloggen in je Pushover account <https://pushover.net>`_. En je hebt de  **API key** nodig voor de applicatie die je in Pushover hebt aangemaakt. Elk bericht dat de bot ontvangt (of mag zien) wordt verstuurd als update naar de bot. Je kunt via je browser de Telegram API gebruiken om alle updates naar je bot in te zien. Die bevatten het Chat ID waarnaar je op zoek bent. Stel de volgende URL op:: Inhoudsopgave Momenteel worden de volgende platformen ondersteund: Android en iOS. Haal het Chat ID uit het resultaat. In het voorbeeld hierboven is dat ``123456789``. Je kunt dat ID in de Telegram-configuratie binnen DSMR-reader gebruiken. Bijvoorbeeld voor de nep-API-sleutel ``1268827887:ABCDEFGqdtsgtts-JDASIJDqewqkqewaq``:: Selecteer in de **Notificatie Apps** instellingen binnen DSMR-reader welke notificatieservice je gebruikt. Kopieer de API key van de notificatieservice naar DSMR-reader. Wanneer dit goed ingesteld is, zou je de eerste notificatie na middernacht moeten ontvangen. Zorg ervoor dat je Pushover, Prowl of Telegram hebt geïnstalleerd op je smartphone. Als dat niet het geval is, bezoek dan de app store van je platform, download de gewenste app en maak daarvoor een account. Daarna haal je de API key op voor de notificatieservice die je wilt gebruiken. Om te lezen hoe dat werkt, lees dan de instructies bij de volgende hoofdstukken hieronder. Meer informatie over bots  `kun je hier vinden <https://core.telegram.org/bots>`_. Je hebt uiteindelijk de API-sleutel nodig die je ontvangt van de ``BotFather`` bot. Admin: Notificaties Notificaties op je telefoon via Prowl, Pushover of Telegram. Ga nu naar "`API Keys <https://www.prowlapp.com/api_settings.php>`_", je zou nu een overzicht moeten zien van je API keys, mits je die al hebt. Om een API key aan te maken voor DSMR-reader, voer een naam in en klik op **"Generate Key"**. N.B.: DSMR-reader reset en wist alle notificatieinstellingen wanneer er fouten optreden. Dit kan als wat vervelend ervaren worden. N.B.: Je kunt deze notificaties alleen gebruiken wanneer je je eigen (chat)bot hebt bij Telegram. Prowl verkrijg API key Prowl My Account overzicht Prowl: Hoe krijg ik mijn API key? Pushover verkrijg API key Pushover vereist dat je twee keys in DSMR-reader instelt. Pushover: Hoe krijg ik mijn API key? Dus zorg er eerst voor dat je zelf een direct bericht stuurt naar je bot. Of, indien je de bot hebt toegevoegd aan een chatgroep, geef de bot dan voldoende permissies om berichten in die groepschat te lezen. Stuur daarna een bericht in de groepschat zodat de bots iets ontvangt. Telegram Chat ID Telegram: Hoe krijg ik mijn API key? Telegram: Hoe krijg ik het Chat ID? De ondersteunde apps voor Android zijn `Pushover <https://pushover.net>`_ en `Telegram <https://www.telegram.org>`_. De ondersteunde apps voor iOS zijn `Pushover <https://pushover.net>`_, `Prowl <https://www.prowlapp.com>`_ en `Telegram <https://www.telegram.org>`_. Voor het testen van notificaties kun je het volgende uitvoeren:: Als er een nieuwe key is gegenereerd, zie je deze direct. De key is te vinden zoals in onderstaande screenshot (er staat een rood kader om de key). Je zou een overzicht moeten zien, waaronder rechtsbovenin **Your User Key**, en eventueel Applications (indien je die al aangemaakt hebt). Om een applicatie te maken voor het versturen van notificaties naar je telefoon, klik op  **Create an Application/API Token**. Je zou nu iets soortgelijks als dit moeten zien: Je hebt daarnaast het Chat ID nodig zodat de bot weet waar berichten naartoe gestuurd moeten worden. **Standaard mogen bots uit zichzelf geen contact maken met anderen en zien ze ook geen berichten in groepschats.** Je hebt de  **User Key** nodig, te vinden op de locatie rechtsbovenin de onderstaande screenshot. 