# 📱 Android & Poco/Xiaomi Hardening Guide

Dieser Guide führt dich durch die essenziellen Systemeinstellungen, um das Tracking auf Android-Basis (insbesondere MIUI/HyperOS) drastisch zu reduzieren.

## 1. Berechtigungen & App-Kontrolle
*   **Rechte-Audit:** Prüfe unter **Einstellungen > Apps > Berechtigungen**, welche Apps Zugriff auf Kontakte, SMS oder das Mikrofon haben. Entziehe alles, was für die Kernfunktion nicht nötig ist.
*   **Standort-Hygiene:** Stelle den Standortzugriff auf **"Nur beim Verwenden der App zulassen"**. Deaktiviere unter **Standort > Standortdienste** die "WLAN-Suche" und "Bluetooth-Suche" – diese tracken dich auch bei ausgeschaltetem WLAN/BT.

## 2. Google & Identitäts-Tracking
*   **Werbe-ID löschen:** Geh zu **Einstellungen > Google > Alle Dienste > Werbung**. Klicke auf **"Werbe-ID löschen"**. Das ist effektiver als nur die Personalisierung zu deaktivieren.
*   **Aktivitätseinstellungen:** Unter **Google > Daten & Datenschutz** solltest du "Web- und App-Aktivitäten" sowie den "Standortverlauf" pausieren und die automatische Löschung aktivieren.

## 3. Netzwerk-Sicherheit
*   **Privates DNS:** (Wichtigster Schritt!) Konfiguriere unter **Einstellungen > Verbindung & Teilen > Privates DNS** einen Anbieter wie `dns.quad9.net` oder `base.dns.mullvad.net`. Dies blockiert Tracker bereits auf Netzwerkebene.
*   **Gekürzte MAC-Adresse:** Stelle in den WLAN-Einstellungen für bekannte Netzwerke sicher, dass **"Zufällige MAC-Adresse verwenden"** aktiv ist, um Tracking über Hardware-IDs zu erschweren.

## 4. Xiaomi/Poco Spezifika (MIUI & HyperOS)
*   **Autorisierung widerrufen:** Geh zu **Einstellungen > Passwords & Sicherheit > Autorisierung & Widerruf**. Entziehe **msa**, **miui_daemon** und **Feedback** die Berechtigung. Das schneidet die größten Daten-Lecks ab.
*   **System-Werbung (Ad Services):** Unter **Passwörter & Sicherheit > Privatsphäre > Werbedienste** den Schalter bei "Personalisierte Werbung" auf AUS stellen.
*   **Sperrbildschirm-Glance:** Deaktiviere "Glance für Mi" unter **Sperrbildschirm**, da dies im Hintergrund ständig Bilder und Tracker lädt.

## 5. App-Praktiken
*   **F-Droid bevorzugen:** Nutze wann immer möglich Open-Source-Alternativen von F-Droid (z.B. *Mull* statt Chrome).
*   **Unbenutzte Apps:** Aktiviere unter **App-Info** die Option "App-Aktivität bei Nichtnutzung stoppen" (entzieht Berechtigungen und löscht temporäre Dateien automatisch).

---

> **Tipp:** Hardening ist ein Prozess, kein Einmal-Event. Prüfe nach jedem System-Update, ob Xiaomi oder Google Einstellungen heimlich zurückgesetzt haben.
