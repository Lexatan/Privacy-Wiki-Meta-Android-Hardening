# 📶 Verbindungssicherheit & MAC-Randomisierung

Die MAC-Adresse (Media Access Control) ist die eindeutige Hardware-Kennung deiner Netzwerkkarte. In öffentlichen oder fremden WLAN-Netzwerken kann diese genutzt werden, um dein Gerät über verschiedene Standorte hinweg zu tracken.

## ⚠️ Das Problem auf Stock-OS
Android bietet ab Version 10 eine "Randomisierung". Aber Vorsicht: Standardmäßig wird oft nur eine **statische randomisierte MAC** pro SSID erstellt. Das bedeutet: Wenn du dich morgen wieder mit demselben Café-WLAN verbindest, hast du dieselbe Kennung wie heute. Ein echtes Tracking-Profil ist so weiterhin möglich.

---

## 🛠 Optimierung der MAC-Sicherheit

### 1. Systemeinstellungen (Basis-Hardening)
Stelle sicher, dass für jedes gespeicherte Netzwerk die maximale Verschleierung aktiv ist:
1. Gehe zu **Einstellungen > WLAN**.
2. Wähle das Zahnrad-Symbol neben dem Netzwerk.
3. Suche nach **Datenschutz** oder **MAC-Adresstyp**.
4. Wähle **Randomisierte MAC verwenden**.

### 2. Entwickleroptionen (Erweitert)
Für eine aggressivere Randomisierung kannst du versteckte Flags aktivieren:
1. Aktiviere die **Entwickleroptionen** (7x auf Build-Nummer tippen).
2. Suche den Punkt **Erweiterte WLAN-Protokollierung** oder **WLAN-Scan-Drosselung**.
3. Aktiviere (falls verfügbar): **WLAN-MAC-Randomisierung ohne Verbindung**. 
   * *Effekt:* Dein Gerät wechselt die MAC bereits beim Suchen nach Netzwerken, nicht erst beim Verbinden.

### 3. Profi-Tools für den Daily Driver
Da wir auf Stock-OS ohne Root arbeiten, sind manuelle Skripte schwer umzusetzen. Hier helfen spezialisierte Apps aus deinem Ecosystem:

* **NetGuard / InviZible Pro:** Diese Tools schützen zwar den Traffic, aber nicht die Hardware-ID.
* **Empfehlung:** Nutze die App **"WiFi MAC Changer"** (via Shizuku/ADB-Rechten), um vor jedem neuen Login eine komplett frische ID zu generieren.

---

## 🕵️ Der "Leak"-Check
Prüfe regelmäßig, ob dein Gerät im Netzwerk identifizierbar ist:
1. Verbinde dich mit einem Netzwerk.
2. Nutze ein Tool wie **Net Analyzer** (FOSS), um deine aktuelle IP/MAC auszulesen.
3. Trenne die Verbindung, ändere die Einstellungen und prüfe, ob die Kennung tatsächlich rotiert ist.

## 🛡️ Best Practice
* **WLAN aus, wenn nicht benötigt:** Die effektivste Methode gegen Tracking. Nutze **Automationstools**, um WLAN beim Verlassen des Hauses automatisch zu deaktivieren.
* **Hostname ändern:** Dein Gerät meldet sich oft mit "Poco-F5-von-Lexatan". Ändere den Gerätenamen in den Einstellungen zu etwas Generischem wie "Android" oder "Pixel", um weniger aufzufallen.

---
[⬅️ Zurück zur Hauptseite](README.md)
