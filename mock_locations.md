# 🛰️ Standort-Verschleierung (Mock Locations)

Viele Apps verweigern den Dienst, wenn der Standortzugriff fehlt. Mit "Mock Locations" (simulierten Standorten) gibst du diesen Apps Daten, entscheidest aber selbst, welche das sind.

---

## 🛠️ Empfohlene FOSS-Tools
* **Fake Traveler** (via F-Droid): Einfach, stabil und Open Source.
* **GPS Setter**: Erlaubt das Setzen von festen Koordinaten.

---

## ⚙️ Einrichtung am Poco

1. **Entwickleroptionen:** Stelle sicher, dass diese in den Android-Einstellungen aktiviert sind.
2. **App wählen:** Gehe zu `Einstellungen` > `Weitere Einstellungen` > `Entwickleroptionen`.
3. **Mock Location App:** Suche den Punkt `App für simulierte Standorte auswählen` und wähle **Fake Traveler** aus.
4. **Standort setzen:**
   * Öffne die App.
   * Wähle einen Punkt auf der Karte (z. B. ein Café oder einen Park).
   * Tippe auf **Apply**.

---

## 🛡️ Warum das wichtig ist
* **Meta-Apps (Instagram/FB):** Diese Apps tracken deinen Standort extrem aggressiv. Mit Mock Locations kannst du so tun, als wärst du an einem öffentlichen Ort, während du eigentlich zu Hause bist.
* **WLAN-Scanning:** Mock Locations helfen auch dabei, das Tracking über WLAN-Access-Points in deiner Nähe zu erschweren.

> [!TIP]
> Schalte in den Android-Standorteinstellungen zusätzlich "WLAN-Suche" und "Bluetooth-Suche" aus, um die Standortgenauigkeit für Tracker weiter zu reduzieren.

---
[⬅️ Zurück zum Inhaltsverzeichnis](README.md)
