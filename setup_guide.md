# 🏁 First-Boot Checkliste (Poco/Android Hardening)

Diese Checkliste führt dich durch die optimalen Schritte direkt nach dem ersten Einschalten (oder nach einem Factory Reset), um dein Gerät von Anfang an auf Privatsphäre und Leistung zu trimmen.

---

## 🛡️ Phase 1: Die "Offline"-Einrichtung (OS-Setup)
Führe das grundlegende Android/MIUI-Setup **ohne Internetverbindung** durch, um die erzwungene Anmeldung bei Konten zu vermeiden.

1.  **SIM-Karte entfernen & WLAN überspringen:** Verbinde dich erst einmal *nicht* mit einem Netzwerk.
2.  **Konten-Anmeldung überspringen:** Wenn du nach einem Google- oder Mi-Konto gefragt wirst, wähle **"Überspringen"**. Du kannst Konten später kontrollierter hinzufügen.
3.  **Google-Dienste einschränken:** Deaktiviere auf der Einrichtungsseite *alle* Schalter (Standortgenauigkeit, Diagnosedaten senden, etc.).
4.  **MIUI-Zusatzfunktionen ablehnen:** Deaktiviere Funktionen wie "Hintergrund-Karussell" oder "Personalisierte Werbung".

## 🛠️ Phase 2: System-Vorbereitung (Entwickler-Modus)
Bevor wir debloaten, müssen wir die Brücke zum System schlagen.

1.  **Entwickleroptionen aktivieren:**
    * Pfad: `Einstellungen -> Über das Telefon`.
    * Aktion: Tippe **7x schnell auf die "MIUI-Version"**, bis die Meldung "Du bist jetzt Entwickler" erscheint.
2.  **Debugging aktivieren:**
    * Pfad: `Einstellungen -> Weitere Einstellungen -> Entwickleroptionen`.
    * Aktion: Aktiviere **USB-Debugging** und **Wireless Debugging**. (Ggf. auch "USB-Debugging (Sicherheitseinstellungen)").

## 🚀 Phase 3: Hardening-Basis & Debloating
Jetzt stellen wir die Verbindung zum Internet her und säubern das System.

1.  **Internetverbindung herstellen:** Verbinde dich mit dem WLAN.
2.  **F-Droid installieren:** Lade die F-Droid APK über den Browser und installiere sie.
3.  **Shizuku & Canta starten:**
    * Installiere beide Apps via F-Droid.
    * Kopple Shizuku via Wireless Debugging (Details in [shizuku_tools.md](shizuku_tools.md)).
4.  **Debloating:** Öffne Canta und arbeite die Liste aus [culprits.md](culprits.md) ab. **Vorsicht vor der [danger_zone.md](danger_zone.md)!**

## 🔐 Phase 4: Netzwerk- & App-Sicherheit
1.  **Privates DNS:**
    * Pfad: `Einstellungen -> Verbindung & Teilen -> Privates DNS`.
    * Aktion: Hostname `dns.adguard.com` oder `dns.quad9.net` eintragen.
2.  **NetGuard (Firewall):** Installiere NetGuard via F-Droid und blockiere standardmäßig alles, was kein Internet braucht.
3.  **System-Werbung (MSA) & Werbe-ID:** Deaktiviere MSA und lösche die Werbe-ID in den Datenschutz-Einstellungen.

---
*Glückwunsch! Dein Poco ist nun deutlich "gehärtet" und bereit für den Alltag.*
---
[⬅️ Zurück zur Hauptseite](README.md)
