# 🛡️ NetGuard: Firewall-Setup

NetGuard ist essenziell, um Apps den Internetzugriff komplett zu entziehen.

### Empfohlene Einstellungen
1. **Standard-Verhalten:** In den Einstellungen unter "Optionen" -> "Standardmäßig blockieren" für WLAN und Mobile Daten aktivieren.
2. **System-Apps:** Aktiviere "System-Anwendungen verwalten", um auch Xiaomi-Diensten den Zugriff zu entziehen.
3. **Log:** Schalte das "Zugriffsprotokoll" ein, um zu sehen, welche Server eine App (z.B. Instagram) im Hintergrund kontaktiert.
---

## 🛠️ Fortgeschrittene Filterung & Adblocking

NetGuard kann nicht nur Apps blockieren, sondern auch als lokaler Werbeblocker fungieren, indem es eine "Hosts-Datei" nutzt.

### 1. Adblocking aktivieren (DNS-Ersatz)
Wenn du keinen privaten DNS nutzt, kann NetGuard Werbung systemweit filtern:
- **Download:** Lade eine Hosts-Datei (z.B. von Steven Black) herunter.
- **Import:** `Einstellungen -> Erweitert -> Hosts-Datei importieren`.
- **Effekt:** Bekannte Tracker-Domains werden direkt an der Firewall gestoppt.

### 2. Das "Ich-bin-wach"-Prinzip
Um Akku zu sparen und nur Daten zu senden, wenn du es willst:
- Aktiviere: `Einstellungen -> Optionen -> WLAN blockieren, wenn Bildschirm aus`.
- Aktiviere: `Einstellungen -> Optionen -> Mobile Daten blockieren, wenn Bildschirm aus`.
- **Ausnahme:** Messenger wie Signal oder WhatsApp müssen in der App-Liste explizit davon ausgenommen werden (Häkchen setzen bei "Blockieren, wenn Bildschirm aus" deaktivieren), damit Nachrichten ankommen.

## 💡 Best Practice für Poco/Xiaomi Nutzer
Viele System-Apps von Xiaomi benötigen für ihre Grundfunktion kein Internet (z.B. der Taschenrechner, die Galerie oder der Dateimanager). 
- Suche diese Apps in der NetGuard-Liste.
- Tippe auf das WLAN- und Mobilfunk-Icon, bis beide **Rot** leuchten.
- **Ergebnis:** Die Apps funktionieren weiterhin, können aber keine Telemetriedaten mehr senden.

---
> **Hinweis:** Da NetGuard eine lokale VPN-Schnittstelle nutzt, kann es nicht gleichzeitig mit anderen VPN-Apps (wie Mullvad oder Proton) betrieben werden, es sei denn, man nutzt den SOCKS5-Proxy-Modus.
> 
---
[⬅️ Zurück zur Hauptseite](README.md)
