# 🪓 Extirpater: Freier Speicherplatz-Shredder

Auf modernen Flash-Speichern (UFS/eMMC) bedeutet "Löschen" nicht gleich "Zerstören". Wenn du eine Datei unter Android löschst, wird lediglich der Verweis im Dateisystem entfernt. Die eigentlichen Daten verbleiben im Speicher, bis sie irgendwann von neuen Daten überschrieben werden. Extirpater löst dieses Problem durch gezieltes Überschreiben des ungenutzten Speichers.

## ⚠️ Das Risiko auf Flash-Speichern
* **Kein physisches Löschen:** Android nutzt standardmäßig TRIM-Befehle, um dem Speicher-Controller mitzuteilen, welche Blöcke frei sind. Wann der Controller diese Blöcke physisch löscht (Garbage Collection), ist unvorhersehbar.
* **Rekonstruierbarkeit:** Bei einem physischen Zugriff aufs Gerät (z. B. Beschlagnahmung, Diebstahl oder Verkauf des Altgeräts) können gelöschte Medien, Fragmente von Datenbanken oder sensible Dokumente mit forensischen Tools oft problemlos wiederhergestellt werden.
* **Verschlüsselung reicht nicht immer:** Auch wenn Android-Geräte standardmäßig dateibasiert verschlüsselt (FBE) sind, schützt dies nur im Zustand "Gerät ausgeschaltet" (Before First Unlock). Befindet sich das Gerät im entsperrten Zustand oder wurde der Key kompromittiert, sind auch gelöschte, nicht überschriebene Fragmente lesbar.

## 🛠️ Funktionsweise von Extirpater
Extirpater nutzt eine simple, aber hocheffektive Methode:
1. Das Tool generiert im Hintergrund riesige, temporäre Dateien, die komplett mit Nullen (`0x00`) gefüllt sind.
2. Diese Dateien werden so lange vergrößert, bis der freie Speicherplatz des Geräts zu **100% vollgeschrieben** ist.
3. Sobald der Speicher absolut voll ist (und somit alle "gelöschten" Geisterdaten physisch mit Nullen überschrieben wurden), löscht Extirpater diese temporären Dateien wieder.
4. **Ergebnis:** Der freie Speicherplatz ist danach nachweislich leer und forensisch sauber.

## 🏪 Bezugsquellen & Installation
Da Extirpater eine strikte Open-Source-App ist, lässt sie sich sicher und ohne Tracker über dein bestehendes App-Ecosystem beziehen:
* **Neo Store / F-Droid:** Die App ist im offiziellen F-Droid-Hauptverzeichnis gelistet und kann direkt über den Neo Store gesucht und installiert werden.
* **Obtanium:** Alternativ kannst du das offizielle GitHub-Repository des Entwicklers (`https://github.com/itprojects/Extirpater`) direkt in Obtanium einpflegen, um Updates ohne die F-Droid-Verzögerung zu erhalten.

## 📋 Anwendung (Schritt-für-Schritt)
1. **Vorbereitung:** Schließe alle Hintergrund-Apps. Da der Speicher komplett gefüllt wird, könnten Apps, die im Hintergrund Daten schreiben wollen, abstürzen.
2. **Ladevorgang:** Stelle sicher, dass dein Akku gut geladen ist oder das Gerät am Ladekabel hängt. Das kontinuierliche Schreiben belastet die CPU und den Speicher-Controller intensiv.
3. **Durchführung:** Öffne Extirpater und starte den Vorgang. 
4. **Geduld:** Android wird während des Prozesses eventuell eine Systemwarnung ausgeben ("Speicherplatz fast voll"). Ignoriere diese Warnung. Der Vorgang kann je nach Größe deines freien Speichers und Schreibgeschwindigkeit (UFS 3.1 / 4.0) einige Minuten bis über eine Stunde dauern.
5. **Abschluss:** Sobald die App meldet, dass der Vorgang abgeschlossen ist, ist der Speicher bereinigt.

## 🛑 Wichtiger Hinweis zur Hardware-Schonung
Flash-Speicherzellen haben eine begrenzte Anzahl an Schreibzyklen (TBW - Terabytes Written). 
* Nutze Extirpater **nicht täglich** oder automatisiert.
* Ein idealer Rhythmus ist **einmal im Quartal**, nach großen Debloating-Aktionen oder zwingend **vor dem Verkauf/Weitergabe** eines Geräts.

| Eigenschaft | Bewertung |
| :--- | :--- |
| **Schwierigkeitsgrad** | 🟢 Leicht |
| **Root notwendig** | ❌ Nein |
| **Shizuku-Anbindung** | ❌ Nein |
| **Risiko** | 🟢 Sicher (Überschreibt nur bereits gelöschten Speicherplatz) |
| **Datenschutzgewinn** | ⭐⭐⭐⭐☆ (Verhindert forensische Wiederherstellung) |
| **Sicherheitsgewinn** | ⭐⭐⭐☆☆ |




---
[⬅️ Zurück zur Hauptseite](README.md)
