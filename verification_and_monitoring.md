# 🔍 Überprüfung & Monitoring (Verification)

Nachdem das Hardening durchgeführt wurde, muss sichergestellt werden, dass die Maßnahmen greifen. Diese Anleitung zeigt, wie du den Erfolg deiner Konfiguration objektiv prüfst.

---

## 1. Live-Traffic Analyse (PCAPdroid)
Um zu sehen, ob Apps weiterhin "nach Hause telefonieren", nutzt man am besten **PCAPdroid** (Open Source).

* **Ziel:** Identifikation von Verbindungen zu Domains wie `graph.facebook.com`, `google-analytics.com` oder Xiaomi-Telemetrie-Servern.
* **Vorgehen:** 1. Starte PCAPdroid und aktiviere den HTTP-Dienst (optional für TLS-Entschlüsselung).
    2. Filtere nach den Paketen aus der `culprits.md`.
    3. **Erfolgskontrolle:** Wenn die Dienste korrekt via Shizuku/Canta deaktiviert wurden, dürfen diese Pakete in der Live-Ansicht gar nicht mehr auftauchen.

## 2. Werbe-ID Status (Google Ads)
Selbst bei deaktivierter `com.google.android.gms.ads` sollte das System-Level geprüft werden:
* **Pfad:** *Einstellungen > Datenschutz > Werbung*
* **Aktion:** "Werbe-ID löschen" wählen.
* **Ergebnis:** Apps können keine eindeutige Kennung mehr abfragen, um Nutzerprofile über verschiedene Apps hinweg zu verknüpfen.

## 3. Cross-App-Tracking (Meta)
Validierung der Einstellungen in den Meta-Anwendungen:
* **Aktion:** In Facebook/Instagram unter *Kontenübersicht > Deine Informationen > Aktivitäten außerhalb von Meta* prüfen.
* **Ergebnis:** Es sollten keine neuen Aktivitäten von Drittanbieter-Apps mehr gelistet werden.

## 4. Berechtigungs-Audit
Ein letzter Check der verbliebenen System-Apps:
* **Pfad:** *Einstellungen > Apps > Berechtigungs-Manager*
* **Check:** Haben Apps wie die "Galerie" oder der "Kalender" unbegründeten Zugriff auf den Standort oder Kontakte? Falls ja -> Entziehen.

---
> **Tipp:** Nutze zusätzlich den `meta_settings_tracker.py` aus diesem Repo, um Änderungen an den Privatsphäre-Einstellungen nach App-Updates automatisch zu erkennen.
---
[⬅️ Zurück zur Hauptseite](README.md)
