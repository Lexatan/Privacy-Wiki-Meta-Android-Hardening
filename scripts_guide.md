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
