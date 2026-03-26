# 🛠️ Automatisierung & Skripte

Dieses Verzeichnis enthält Tools zur automatisierten Überwachung und Verwaltung deiner Privatsphäre-Einstellungen.

## 🐍 Meta-Settings Tracker (`meta_settings_tracker.py`)

Dieses Python-Skript hilft dir zu überwachen, ob Meta (Facebook/Instagram) nach einem App-Update heimlich deine Privatsphäre-Einstellungen zurückgesetzt hat.

### Voraussetzungen
* **Python 3.x** installiert (PC oder Termux).
* Die Bibliothek `requests` (falls das Skript API-Abfragen nutzt).
* Dein **Pseudonym/Token** zur Authentifizierung (falls konfiguriert).

### Anwendung (PC)
1. Klone das Repository oder lade das Skript einzeln herunter.
2. Öffne das Terminal im Ordner und starte das Skript:
   ```bash
   python meta_settings_tracker.py
```
   
Anwendung am Smartphone (Termux)
Du kannst das Skript auch direkt auf deinem Android-Gerät via Termux (F-Droid) laufen lassen:
pkg install python
python meta_settings_tracker.py
🐚 ADB-Debloat Skript (adb_debloat.sh)
Ein Shell-Skript für die schnelle Deaktivierung von Xiaomi-Bloatware via PC.
Anwendung
Verbinde dein Handy via ADB mit dem PC.
Mache das Skript ausführbar: chmod +x adb_debloat.sh
Starte es: ./adb_debloat.sh
Hinweis: Nutze dieses Skript nur, wenn du weißt, welche Pakete es entfernt. Eine Liste der Pakete findest du in der culprits.md.
---
[⬅️ Zurück zur Hauptseite](README.md)
