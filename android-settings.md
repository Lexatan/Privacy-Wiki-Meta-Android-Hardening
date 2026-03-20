# 📱 Android & Poco/Xiaomi Hardening Guide

Dieser Guide führt dich durch die essenziellen Systemeinstellungen, um das Tracking auf Android-Basis (insbesondere MIUI/HyperOS) drastisch zu reduzieren.

---

## 🔄 Kompatibilität: MIUI 14 vs. HyperOS

Xiaomi hat mit der Einführung von **HyperOS** einige Menüstrukturen verändert. Falls du eine Einstellung nicht an der gewohnten Stelle findest, nutze diese Pfade:

| Funktion | Pfad in MIUI 14 | Pfad in HyperOS |
| :--- | :--- | :--- |
| **Autorisierung & Widerruf** | Einstellungen > Passwörter & Sicherheit | Einstellungen > Fingerabdruck, Daten & Privatsphäre > Privatsphäre |
| **Werbe-ID löschen** | Einstellungen > Google > Werbung | Einstellungen > Google > Alle Dienste > Werbung |
| **Sonderberechtigungen** | Schutz der Privatsphäre > Spezielle Berechtigungen | Einstellungen > Apps > Spezieller App-Zugriff |
| **Privates DNS** | Verbindung & Teilen | Verbindung & Teilen (Identisch) |

---

## 1. Berechtigungen & App-Kontrolle
*   **Rechte-Audit:** Prüfe unter **Einstellungen > Apps > Berechtigungen**, welche Apps Zugriff auf Kontakte, SMS oder das Mikrofon haben. Entziehe alles, was für die Kernfunktion nicht nötig ist.
*   **Standort-Hygiene:** Stelle den Standortzugriff auf **"Nur beim Verwenden der App zulassen"**. 
*   **Versteckte Suche:** Deaktiviere unter **Standort > Standortdienste** die "WLAN-Suche" und "Bluetooth-Suche". Diese Dienste scannen auch bei *ausgeschaltetem* WLAN/BT permanent deine Umgebung.

## 2. Google & Identitäts-Tracking
*   **Werbe-ID löschen:** Geh zu **Einstellungen > Google > Alle Dienste > Werbung**. Klicke auf **"Werbe-ID löschen"**. Dies ist effektiver als das bloße Deaktivieren der Personalisierung.
*   **Aktivitätseinstellungen:** Unter **Google > Daten & Datenschutz** solltest du "Web- und App-Aktivitäten" sowie den "Standortverlauf" pausieren. Aktiviere zudem die **automatische Löschung** (z. B. nach 3 Monaten).
*   **Geräteübergreifendes Teilen:** Deaktiviere unter **Google > Geräte & Teilen > Geräte in der Nähe**, um unbefugte Scans deines Pocos durch andere Geräte zu verhindern.

## 3. Netzwerk-Sicherheit
*   **Privates DNS:** (Wichtigster Schritt!) Konfiguriere unter **Einstellungen > Verbindung & Teilen > Privates DNS** einen Anbieter wie `dns.quad9.net` oder `base.dns.mullvad.net`. Dies filtert Tracking-Domains auf Systemebene.
*   **MAC-Adressen-Randomisierung:** Stelle in den WLAN-Einstellungen für jedes Netzwerk sicher, dass **"Zufällige MAC-Adresse verwenden"** aktiv ist, um Tracking über die Hardware-ID zu verhindern.
*   **Druckdienst-Suche:** Deaktiviere unter **Verbindung & Teilen > Drucken > Systemdruckdienst** die Suche. Das spart Akku und verhindert ständiges Scannen deines lokalen Netzwerks.

## 4. Xiaomi/Poco Spezifika (MIUI & HyperOS)
*   **Autorisierung widerrufen:** Geh zu **Einstellungen > Passwörter & Sicherheit** (oder entspr. HyperOS-Pfad). Entziehe **msa**, **miui_daemon** und **Feedback** konsequent die Berechtigung. 
    * *Hinweis:* Es kann sein, dass du den Vorgang 2-3 Mal wiederholen musst, bis das System den Widerruf akzeptiert. Bleib hartnäckig!
*   **System-Werbung (Ad Services):** Unter **Passwörter & Sicherheit > Privatsphäre > Werbedienste** den Schalter bei "Personalisierte Werbung" auf AUS stellen.
*   **Tastatur-Check:** Xiaomi nutzt oft *Gboard* oder *Emoji Keyboard*. Prüfe in den Tastatureinstellungen, ob "Personalisierung" oder "Statistiken teilen" aktiv ist. Nutze idealerweise **OpenBoard** (F-Droid) ohne Internetzugriff.
*   **Sperrbildschirm-Glance:** Deaktiviere "Glance für Mi" unter **Sperrbildschirm**, da dies im Hintergrund ständig Bilder und Tracker lädt.

## 5. App-Praktiken & Monitoring
*   **F-Droid bevorzugen:** Nutze wann immer möglich Open-Source-Alternativen (z.B. *Mull* statt Chrome).
*   **App-Aktivität stoppen:** Aktiviere unter **App-Info** die Option "App-Aktivität bei Nichtnutzung stoppen". Dies entzieht Berechtigungen automatisch, wenn du die App länger nicht öffnest.
*   **Nutzungsstatistiken:** Deaktiviere unter **Einstellungen > Privatsphäre > Nutzung & Diagnose** das Senden von Berichten an Google/Xiaomi.

---

> **💡 Profi-Tipp:** Hardening ist ein fortlaufender Prozess. Prüfe nach jedem System-Update (besonders nach dem Wechsel auf HyperOS), ob Xiaomi oder Google Einstellungen heimlich zurückgesetzt haben. Nutze die **Suchfunktion** in den Einstellungen, um verschobene Menüpunkte schnell zu finden.

---
[⬅️ Zurück zur Hauptseite](README.md)
