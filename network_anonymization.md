# 📡 Netzwerk-Anonymisierung & Standort-Verschleierung

Echtes Hardening endet nicht bei den App-Einstellungen. Dein Poco sendet ständig Signale (WLAN, Bluetooth, Mobilfunk), die zur Standortbestimmung genutzt werden können – selbst wenn GPS ausgeschaltet ist.

---

## 🕵️ Wie Tracking ohne GPS funktioniert
Apps und Systemdienste nutzen "Beacons":
* **WLAN-Scanning:** Dein Handy sucht im Hintergrund nach bekannten Netzwerken und meldet deren MAC-Adressen an Google/Xiaomi, um deine Position auf Meter genau zu bestimmen.
* **Bluetooth-Scanning:** Shops und öffentliche Orte nutzen Bluetooth-Sender, um Laufwege von Kunden zu tracken.

---

## 🛠️ Hardening-Schritte auf dem Poco

### 1. Hintergrund-Scanning deaktivieren
Dies ist der wichtigste Schritt, um passives Tracking zu unterbinden.
* **Pfad:** `Einstellungen -> Standort -> Standortdienste`.
* **Aktion:** Deaktiviere **WLAN-Suche** und **Bluetooth-Suche**.
* **Effekt:** Apps können diese Funkmodule nicht mehr heimlich aktivieren, um deinen Standort zu triangulieren.

### 2. MAC-Adressen-Randomisierung (WLAN)
Jedes Netzwerkgerät hat eine eindeutige ID (MAC-Adresse). Wenn du immer dieselbe nutzt, können dich öffentliche Hotspots wiedererkennen.
* **Pfad:** `Einstellungen -> WLAN -> [Dein Netzwerk] -> Auf den Pfeil tippen -> Datenschutz`.
* **Aktion:** Stelle sicher, dass **Zufällige MAC-Adresse verwenden** ausgewählt ist (Standard bei modernen Pocos, aber ein Check lohnt sich).

### 3. Bluetooth-Name ändern
Standardmäßig heißt dein Gerät oft "Poco F5" oder ähnlich. Das macht dich in Menschenmengen identifizierbar.
* **Pfad:** `Einstellungen -> Bluetooth -> Gerätename`.
* **Aktion:** Ändere den Namen in etwas Neutrales oder Leeres (z.B. "Android Device").

### 4. Notfall-Standortdienst (ELS)
* **Pfad:** `Einstellungen -> Standort -> Standortdienste -> Notfall-Standortdienst`.
* **Hinweis:** Dieser Dienst sendet bei einem Notruf automatisch Daten an Google. Aus Privatsphäre-Sicht kritisch, im Ernstfall lebensrettend. Entscheide selbst, ob du ihn aktiv lässt.

---

## 🚀 Profi-Tipp: Flugmodus-Hardening
Wusstest du, dass WLAN und Bluetooth oft aktiv bleiben, wenn du den Flugmodus einschaltest?
* **Aktion:** Schalte den Flugmodus ein und deaktiviere manuell WLAN und Bluetooth. Android merkt sich diese "echte" Trennung für das nächste Mal.

---
[⬅️ Zurück zur Hauptseite](README.md)
