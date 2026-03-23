# 🚨 Notfall-Kit: Wenn nichts mehr geht

Falls dein Poco nach einem Debloating-Schritt nicht mehr startet oder Apps ständig abstürzen, bewahre Ruhe. Hier sind die Rettungsbefehle.

## 1. Den Übeltäter finden
Falls du nicht weißt, welche App den Fehler verursacht, list dir alle deaktivierten Apps auf:
`adb shell pm list packages -d`

## 2. Einzelne App sofort wiederherstellen
Wenn du den Paketnamen kennst (z.B. `com.miui.securitycenter`):
`adb shell cmd package install-existing [PAKETNAME]`

## 3. "The Nuclear Option" (Alles zurücksetzen)
Falls das System gar nicht mehr lädt:
1. Schalte das Handy aus.
2. Halte **Power + Lauter** gedrückt, bis das Recovery-Menü erscheint.
3. Wähle **"Wipe Data / Factory Reset"**. 
*⚠️ Achtung: Dabei gehen alle Fotos und Daten verloren!*

## 4. Bootloop-Check
Wenn das Handy beim Logo hängen bleibt:
* Versuche, via ADB den Befehl `adb reboot` zu senden.
* Wenn ADB nicht mehr reagiert, hilft meist nur der Factory Reset (Punkt 3).
---
[⬅️ Zurück zur Hauptseite](README.md)
