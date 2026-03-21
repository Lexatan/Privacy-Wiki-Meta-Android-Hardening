# 🧪 App-Isolation: Social Media in Quarantäne

Wenn du Apps wie WhatsApp, Instagram oder Facebook nutzen musst, solltest du sie vom Rest deines Systems isolieren. Hier sind die besten Methoden:

## 1. Arbeitsprofil nutzen (Shelter / Insular)

Mit Apps wie **Shelter** oder **Insular** (beide auf F-Droid) kannst du ein separates "Arbeitsprofil" auf deinem Poco erstellen.

*   **Vorteil:** Apps im Arbeitsprofil können nicht auf deine privaten Kontakte, Anruflisten oder Fotos im Hauptprofil zugreifen.
*   **Aktion:** Installiere Instagram nur im Arbeitsprofil und friere es ein ("Freeze"), wenn du es nicht benutzt.

## 2. Der "Kontakt-Fake" (Zusatzschutz)

Selbst im Arbeitsprofil verlangen Messenger oft Zugriff auf Kontakte.
*   **Strategie:** Erstelle im Arbeitsprofil ein komplett leeres Adressbuch oder füge nur 1-2 "Dummy-Kontakte" hinzu.
*   **Effekt:** Die App "sieht" ein aktives Adressbuch (gibt also Ruhe), bekommt aber keine echten Daten von dir.

## 3. Berechtigungen radikal kürzen

Selbst wenn die App installiert ist, kannst du ihr den Zugriff auf sensible Sensoren entziehen:

*   **Sensoren:** Deaktiviere "Körpersensoren" und "Physische Aktivität" in den App-Infos. Meta nutzt diese Daten, um festzustellen, ob du läufst, fährst oder liegst.
*   **Hintergrunddaten:** `Einstellungen -> Apps -> Apps verwalten -> Instagram -> Datennutzung`. Schalte "Hintergrunddaten" AUS. Die App kann dann nur funken, wenn du sie aktiv öffnest.

## 4. Speicher-Isolation (Storage Scopes)

Ab Android 13/14 kannst du Apps "vorgaukeln", sie hätten Zugriff auf den gesamten Speicher, während du ihnen in Wahrheit nur Zugriff auf einzelne, leere Ordner gibst.
*   **Aktion:** Wähle bei den Berechtigungen "Fotos und Videos" die Option "Nur ausgewählte Fotos erlauben". Gib der App keinen Zugriff auf deinen Haupt-Ordner (DCIM).

## 5. Web-Version statt App

Nutze Facebook oder Instagram über einen gehärteten Browser (wie **Mull**).

*   **Vorteil:** Ein Browser isoliert Cookies besser als die native App und hat keinen Zugriff auf deine Hardware-ID oder Kontakte.
*   
