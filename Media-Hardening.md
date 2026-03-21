# 📸 Medien- & Datei-Sicherheit (Metadaten-Exorzismus)

Selbst wenn eine App wie Instagram isoliert ist, verrätst du beim Hochladen von Fotos oft mehr, als du denkst. Jedes Foto enthält unsichtbare **EXIF-Daten**.

---

## 🕵️ Was sind EXIF-Daten?
In fast jedem Foto, das du mit deinem Poco machst, werden folgende Informationen gespeichert:
* **GPS-Koordinaten:** Dein exakter Standort zum Zeitpunkt der Aufnahme.
* **Gerätedaten:** "Xiaomi Poco", Betriebssystem-Version, Kameramodell.
* **Zeitstempel:** Datum und sekundengenaue Uhrzeit.

Meta (Instagram/Facebook) liest diese Daten aus, um Bewegungsprofile zu erstellen, selbst wenn du den Standortzugriff für die App deaktiviert hast!

---

## 🛠️ Tool-Empfehlung: Scrambled Exif (Libre)

Die App **Scrambled Exif** (verfügbar auf F-Droid) ist ein "Exorzist" für deine Bilder. Sie löscht alle Metadaten, bevor ein Bild eine andere App erreicht.

### Setup & Workflow:
1.  Installiere **Scrambled Exif** via F-Droid.
2.  **Der Workflow:** Wenn du ein Bild teilen möchtest, klicke nicht direkt auf "Instagram", sondern auf **Teilen** -> **Scrambled Exif**.
3.  Die App löscht im Hintergrund alle Daten und öffnet danach erst das eigentliche Teilen-Menü für Instagram/WhatsApp.
4.  **Ergebnis:** Die App erhält nur das reine Bild ohne GPS- oder Zeitstempel.

---

## 🔐 Verschlüsselte Galerie-Alternativen
Die Standard-Galerie von Xiaomi versucht oft, Gesichter zu erkennen oder Bilder in die Cloud zu laden. Nutze stattdessen:

* **Aves (F-Droid):** Extrem mächtige, quelloffene Galerie, die dir genau anzeigt, welche Metadaten in deinen Bildern stecken.
* **Simple Gallery Pro:** Schlicht, offline und ohne unnötige Berechtigungen.

---

## 💡 Profi-Tipp: Kamera-Hardening
In der Standard-Kamera-App deines Poco solltest du folgende Einstellung sofort prüfen:
* `Kamera -> Einstellungen -> Standorteinfo speichern ->` **AUS**.

Dies verhindert, dass GPS-Daten überhaupt erst in das Bild geschrieben werden. Für bestehende Bilder bleibt der "Exorzismus" via Scrambled Exif jedoch Pflicht.

---
[⬅️ Zurück zur Hauptseite](README.md)
