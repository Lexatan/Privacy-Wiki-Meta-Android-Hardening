# 📡 RethinkDNS: Die moderne All-in-One Firewall & DNS-Kontrolle

[RethinkDNS](https://github.com/celzero/rethink-app) ist eine extrem mächtige, quelloffene (FOSS) Firewall- und DNS-Anwendung für Android. Sie läuft ohne Root-Rechte, indem sie ein lokales VPN auf dem Gerät einrichtet, und kombiniert systemweites DNS-Filtering mit granularen Firewall-Regeln.

## 🌟 Warum RethinkDNS?
Im Vergleich zu klassischen Firewalls wie NetGuard bietet RethinkDNS eine modernere Benutzeroberfläche und eine tiefere Integration von DNS-Funktionen. Du kannst damit nicht nur den Internetzugriff von Apps blockieren, sondern direkt auf dem Gerät komplexe Filterlisten (wie EasyList, AdAway etc.) aktivieren.

## 🛠️ Kernfunktionen & Setup-Empfehlungen

### 1. Die Firewall-Modi
RethinkDNS erlaubt es dir, den Traffic extrem präzise zu steuern:
* **App-Blockierung:** Sperre den Internetzugang für Apps komplett (z. B. für Taschenrechner oder Single-Player-Spiele).
* **Isolieren im Hintergrund:** Verhindere, dass Apps Daten senden, wenn sie nicht aktiv im Vordergrund genutzt werden.
* **Blockieren bei Bildschirm aus:** Sobald das Display gesperrt ist, wird der Netzwerkverkehr der App komplett gekappt (perfekt gegen Tracking im Standby).

### 2. DNS & On-Device Filtering
* **Lokales Filtern:** Du kannst Hunderte von Blocklisten direkt in der App herunterladen. Der Abgleich der Domains findet komplett offline auf deinem Handy statt – das schont den Akku und erhöht die Geschwindigkeit.
* **Upstream-Konfiguration:** Unterstützt DNS-over-TLS (DoT), DNS-over-HTTPS (DoH) und DNScrypt. Du kannst RethinkDNS problemlos mit Anbietern wie Quad9 (`dns.quad9.net`) oder Mullvad koppeln.

### 3. Erweiterte Härtung (Advanced)
* **P2P- & LAN-Kontrolle:** Du kannst festlegen, ob Apps im lokalen WLAN (LAN) miteinander kommunizieren dürfen.
* **WireGuard-Integration:** RethinkDNS kann als WireGuard-Client fungieren. Das bedeutet, du kannst deinen gesamten Traffic verschlüsselt über ein echtes VPN (z. B. ProtonVPN oder Mullvad) leiten, *während* die App gleichzeitig den Traffic filtert.

## ⚠️ Wichtige Besonderheit bei Xiaomi/Poco
Da RethinkDNS als lokaler VPN-Dienst arbeitet, versucht MIUI/HyperOS gerne, die App im Hintergrund aggressiv zu beenden, um RAM zu sparen.
1. Gehe zu `Einstellungen -> Apps -> Apps verwalten -> RethinkDNS`.
2. Aktiviere **Autostart**.
3. Setze die **Akkusparoptionen** auf **Keine Einschränkungen**.
4. Sperre die App im Task-Manager (Schloss-Symbol), damit sie dauerhaft aktiv bleibt.

| Eigenschaft | Bewertung |
| :--- | :--- |
| **Schwierigkeitsgrad** | 🟡 Mittel |
| **Root notwendig** | ❌ Nein |
| **Shizuku-Anbindung** | ❌ Nein (Lokales VPN / DNS) |
| **Risiko** | 🟢 Keine Systemgefahr |
| **Datenschutzgewinn** | ⭐⭐⭐⭐⭐ (All-in-One Krypto-DNS + Firewall) |
| **Sicherheitsgewinn** | ⭐⭐⭐⭐⭐ |


---
[⬅️ Zurück zur Hauptseite](README.md)
