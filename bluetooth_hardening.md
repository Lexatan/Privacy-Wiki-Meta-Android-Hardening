# 📡 Bluetooth-Hardening (Hardware-Identitäts-Schutz)

Neben WLAN ist Bluetooth die zweitgrößte Schnittstelle für passives Tracking. Viele Nutzer wissen nicht, dass das Gerät auch bei "deaktiviertem" Bluetooth Signale (Beacons) senden kann, die im Einzelhandel oder an öffentlichen Plätzen zur Standorterfassung genutzt werden.

## ⚠️ Das Risiko
Selbst wenn du nicht mit einem Gerät verbunden bist, sendet dein Handy Informationen aus, um nach bekannten Geräten oder Diensten zu suchen. Diese Signale enthalten oft eindeutige IDs, die dein Bewegungsprofil für Werbenetzwerke (Offline-Tracking) sichtbar machen.

---

## 🛠 Hardening-Schritte

### 1. Bluetooth-Scanning deaktivieren
Android nutzt Bluetooth im Hintergrund zur Standortverbesserung, selbst wenn der Hauptschalter auf "Aus" steht.
1. Gehe zu **Einstellungen > Standort > Standortdienste**.
2. Deaktiviere **WLAN-Suche** und **Bluetooth-Suche**.

### 2. Gabeldorsche & Entwickler-Optionen
In den Entwickleroptionen lassen sich tiefere Protokoll-Einstellungen anpassen:
1. Aktiviere die **Entwickleroptionen**.
2. Suche nach **Bluetooth-Audio-Codec** oder **Bluetooth-Scan-Drosselung**.
3. (Falls verfügbar) Aktiviere **Bluetooth-Hardening-Flags**, um die Sichtbarkeit des Gerätenamens im Standby zu minimieren.

### 3. Den Gerätenamen neutralisieren
Standardmäßig heißt dein Gerät oft "Poco F5" oder enthält deinen Vornamen. Das ist ein eindeutiger Identifier.
* **Aktion:** Ändere den Bluetooth-Gerätenamen in den Einstellungen zu etwas Generischem wie `Android` oder `Phone`.

---

## 🛡️ Profi-Tipp: App Ops Kontrolle
Viele Apps fordern die Berechtigung "Geräte in der Nähe finden". 
* Nutze **App Ops**, um jeder App (außer z.B. Kopfhörer-Apps), diese Berechtigung konsequent zu entziehen. Ein Taschenrechner oder eine Fotogalerie braucht keinen Zugriff auf deine Bluetooth-Umgebung.

---
[⬅️ Zurück zur Hauptseite](README.md)
