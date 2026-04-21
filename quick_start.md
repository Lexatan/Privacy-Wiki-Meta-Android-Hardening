# ⚡ Quick-Start Guide: In 5 Schritten zum gehärteten Poco

Dieser Guide ist für alle, die sofort loslegen wollen. Er bündelt die effektivsten Maßnahmen aus diesem Wiki in einer klaren Reihenfolge.

> ⚠️ **Bevor du beginnst:** Erstelle ein vollständiges Backup deiner Daten. Die Deaktivierung von System-Apps kann im Einzelfall zu Bootloops führen. Im Zweifel: Lieber erst "einfrieren" (Freeze) statt löschen.

---

## 🛠️ Schritt 1: System-Ads & Bloatware-Basics
Bevor wir Tools installieren, schalten wir die integrierte Werbung von Xiaomi ab.
1. Gehe zu `Einstellungen -> Passwörter & Sicherheit -> Autorisierung & Widerruf`.
2. Entziehe **msa** und **miui_daemon** die Berechtigung.
3. Gehe zu `Einstellungen -> Datenschutz -> Werbung` und wähle **Werbe-ID löschen**.

## 💉 Schritt 2: Das Shizuku-Ecosystem aktivieren
Ohne Root ist Shizuku dein mächtigstes Werkzeug, um System-Apps zu kontrollieren.
1. Aktiviere die **Entwickleroptionen** (7x auf "MIUI-Version" tippen).
2. Aktiviere **USB-Debugging** UND **USB-Debugging (Sicherheitseinstellungen)** – letzteres ist entscheidend für Shizuku über WLAN.
3. Starte die **Shizuku App** und verbinde sie über das WLAN-Debugging (Pairing-Code).
4. Installiere **Canta** (via F-Droid), um Bloatware sicher zu deaktivieren.

## 🛡️ Schritt 3: DNS-Filterung (Systemweiter Schutz)
Blockiere Tracker direkt auf Netzwerkebene, ohne eine zusätzliche App im Hintergrund.
1. Gehe zu `Einstellungen -> Verbindung & Teilen -> Privates DNS`.
2. Wähle "Privater DNS-Anbieter-Hostname".
3. Gib einen der folgenden Hostnamen ein:
   - `dns.adguard.com` (blockt Werbung & Tracker)
   - `dns.quad9.net` (blockt Malware & Tracking)
   - `base.dns.mullvad.net` (Fokus auf Anonymität)
   
   *Für individuelle Filterregeln:* Erstelle ein kostenloses Konto bei NextDNS und nutze `deine-id.dns.nextdns.io`.

## 🧪 Schritt 4: Meta-Apps isolieren
Lass Instagram und Facebook nicht auf deine privaten Daten zugreifen.
1. Installiere **Insular** oder **Shelter** (via F-Droid).
2. Erstelle ein **Arbeitsprofil** und verschiebe alle Meta-Apps dorthin.
3. Wenn du die Apps nicht nutzt, deaktiviere das gesamte Arbeitsprofil in den Systemeinstellungen (`Einstellungen -> Arbeitsprofil -> Entfernen/deaktivieren`).

## 📸 Schritt 5: Metadaten-Exorzismus
Gewöhne dir an, Bilder nur noch ohne GPS-Daten zu teilen.
1. Installiere **Scrambled Exif** (via F-Droid).
2. Nutze beim Teilen von Bildern immer den Umweg über Scrambled Exif, um Standorte und Zeitstempel zu löschen.

---
**Nächster Schritt:** Schau in die [🚫 Übeltäter-Liste](culprits.md), um zu sehen, welche Apps du mit Canta gefahrlos deaktivieren kannst. Aber denk dran: **Freeze vor Löschen!**

[⬅️ Zurück zur Hauptseite](README.md)
