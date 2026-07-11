# 🌐 Google Services Hardening (Telemetrie-Stopp)

Selbst nach dem Debloating von System-Apps bleiben Google-Dienste oft die größten Datensammler im Hintergrund. Mit diesen Schritten minimierst du die Telemetrie und die ständige Server-Kommunikation auf deinem Gerät.

---

### 1. Google Play Protect & App-Scans
Wenn du deine Apps sicher über F-Droid beziehst, ist der permanente Hintergrund-Scan von Google oft redundant und dient primär der Datensammlung über installierte Pakete.

* **Pfad:** Play Store > Profil-Icon > Play Protect > Einstellungen (Zahnrad).
* **Aktion:** Deaktiviere "Apps mit Play Protect scannen" und "Erkennung schädlicher Apps verbessern".

### 2. "Geräte in der Nähe" (Quick Share)
Dein Handy sendet permanent Signale aus, um andere Geräte zu finden, was zur Standorterfassung genutzt werden kann.

* **Pfad:** Einstellungen > Google > Geräte und Teilen > Quick Share.
* **Aktion:** Schalte "Wer kann mit Ihnen teilen" auf **Niemand**.
* **Zusatz:** Deaktiviere unter "Geräte" die Option "Nach Geräten in der Nähe suchen".

### 3. Google Werbe-ID löschen
Die Werbe-ID ist dein persönlicher Fingerabdruck für Werbenetzwerke.

* **Pfad:** Einstellungen > Google > Alle Dienste > Werbung > Werbe-ID.
* **Aktion:** Wähle **Werbe-ID löschen**. Damit wird der Identifier systemweit entfernt.

### 4. Personalisierung & Gemeinsame Daten
Verhindere, dass Google-Systemdienste deine App-Daten untereinander austauschen.

* **Pfad:** Einstellungen > Google > Personalisierung unter Verwendung von gemeinsamen Daten.
* **Aktion:** Deaktiviere alle Schalter für System-Apps (Kontakte, Karten etc.).

---

[⬅️ Zurück zum Inhaltsverzeichnis](README.md)
