# 🏁 First-Boot Checkliste (Poco/Android Hardening)

Diese Checkliste führt dich durch die optimalen Schritte direkt nach dem ersten Einschalten (oder nach einem Factory Reset), um dein Gerät von Anfang an auf Privatsphäre und Leistung zu trimmen.

> ⚠️ **Wichtig:** Lies dir die [danger_zone.md](danger_zone.md) **vor dem Debloating** komplett durch. Dort stehen die Apps, die du niemals deaktivieren darfst.

---

## 🛡️ Phase 1: Die "Offline"-Einrichtung (OS-Setup)
*Versuche*, das Setup ohne Internet durchzuführen – falls das System eine Verbindung erzwingt, ist das kein Beinbruch.

1. **SIM-Karte entfernen & WLAN überspringen** (falls möglich).  
   *Sollte das System eine Verbindung erzwingen: Verbinde dich kurz mit einem Hotspot (z.B. einem zweiten Handy) und deaktiviere danach die automatische Netzwerksuche.*
2. **Konten-Anmeldung überspringen:** Wähle **"Überspringen"** bei Google- und Mi-Konto.
3. **Google-Dienste einschränken:** Deaktiviere auf der Einrichtungsseite:
   - Standortgenauigkeit
   - Diagnosedaten senden
   - Personalisierte Werbung
   - Werbe-ID (falls sichtbar)
4. **MIUI-Zusatzfunktionen ablehnen:** Hintergrund-Karussell, personalisierte Empfehlungen, verbesserte Suche etc.

## 🛠️ Phase 2: System-Vorbereitung (Entwickler-Modus)
Bevor wir debloaten, müssen wir die Brücke zum System schlagen.

1. **Entwickleroptionen aktivieren:**
   - Pfad: `Einstellungen -> Über das Telefon`
   - Aktion: Tippe **7x schnell auf die "MIUI-Version"**, bis die Meldung "Du bist jetzt Entwickler" erscheint.
2. **Debugging aktivieren:**
   - Pfad: `Einstellungen -> Weitere Einstellungen -> Entwickleroptionen`
   - Aktiviere **USB-Debugging**
   - Aktiviere **Wireless Debugging** (WLAN muss an sein!)
   - **Wichtig:** Die detaillierte Einrichtung (Pairing-Code etc.) findest du in [shizuku_tools.md](shizuku_tools.md#shizuku-aktivieren-ohne-pc).

## 🚀 Phase 3: Hardening-Basis & Debloating
Jetzt stellen wir die Verbindung zum Internet her und säubern das System.

1. **Internetverbindung herstellen:** Verbinde dich mit dem WLAN.
2. **F-Droid installieren:**
   - Lade die F-Droid APK über den Browser herunter.
   - Erlaube vorher **"Installation aus unbekannten Quellen"** für den Browser.
   - Installiere F-Droid.
3. **Shizuku & Canta starten:**
   - Installiere beide Apps via F-Droid.
   - Kopple Shizuku via Wireless Debugging (siehe [shizuku_tools.md](shizuku_tools.md)).
4. **Debloating (vorsichtig!):**
   - **Lies zuerst die [danger_zone.md](danger_zone.md)** – dort stehen die Apps, die du niemals deaktivieren darfst.
   - Nutze dann die [culprits.md](culprits.md) als Orientierung.
   - **Goldene Regel:** In Canta erst **"Freeze"** (einfrieren), einige Tage testen, dann erst endgültig löschen.

## 🔐 Phase 4: Netzwerk- & App-Sicherheit
1. **Privates DNS:**
   - Pfad: `Einstellungen -> Verbindung & Teilen -> Privates DNS`
   - Aktion: Hostname `dns.adguard.com` (Werbung) oder `dns.quad9.net` (Sicherheit) eintragen.
2. **NetGuard (Firewall):**
   - Installiere NetGuard via F-Droid.
   - Blockiere zunächst alle Apps, die kein Internet brauchen (Taschenlampe, Taschenrechner, Offline-Spiele).
   - Bei Messengern und Browser musst du selbst entscheiden.
3. **System-Werbung (MSA) & Werbe-ID:**
   - Deaktiviere MSA (`Einstellungen -> Passwörter & Sicherheit -> Autorisierung & Widerruf`)
   - Lösche die Werbe-ID (`Einstellungen -> Datenschutz -> Werbung`)

---
*Glückwunsch! Dein Poco ist nun deutlich "gehärteter" – aber denk dran: Sicherheit ist ein Prozess, kein Zustand. Führe regelmäßig den [Privacy Check-Up Kalender](README.md#privacy-check-up-kalender) durch.*

[⬅️ Zurück zur Hauptseite](README.md)
