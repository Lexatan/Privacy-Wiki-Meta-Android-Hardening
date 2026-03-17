# 🛡️ Privacy-Wiki: Meta & Android Hardening

> ### ⚠️ Wichtiger Sicherheitshinweis (Disclaimer)
> **Die Nutzung der in diesem Repository beschriebenen Methoden, insbesondere ADB-Befehle und das Debloating von System-Apps, erfolgt ausdrücklich auf eigene Gefahr.**
> 
> Das Löschen falscher Systemkomponenten kann die Stabilität des Betriebssystems beeinträchtigen oder dazu führen, dass das Gerät nicht mehr startet (Bootloop). 
> * Erstelle **unbedingt ein vollständiges Backup** deiner Daten, bevor du Änderungen vornimmst.
> * Ich übernehme keine Haftung für Schäden, Datenverlust oder defekte Geräte.

---
## 📋 Inhaltsverzeichnis
- [Poco/Xiaomi System-Optimierung](#pocoxiaomi-system-optimierung)
- [Meta (Instagram & Facebook) Anti-Tracking](#meta-instagram--facebook-anti-tracking)
- [Hardening Matrix](#hardening-matrix)
- [Browser-Hardening & Tools](#browser-hardening--tools)
- [Übeltäter-Liste (Culprit Apps)](culprits.md)
- [Empfohlene Apps (Alternativen)](recommended_apps.md)
- [Shizuku Ecosystem](shizuku_tools.md)
- [Firewall Guide (NetGuard)](netguard_guide.md)
- [First-Boot Checkliste](setup_guide.md)



---

## Poco/Xiaomi System-Optimierung
Um das Tracking und die Werbung auf Systemebene zu minimieren, sollten folgende Punkte durchgeführt werden:

### 1. System-Ads (MSA) deaktivieren
- Pfad: `Einstellungen -> Passwörter & Sicherheit -> Autorisierung & Widerruf`.
- Aktion: Den Schalter bei **msa** auf AUS stellen.

### 2. Werbe-ID löschen
- Pfad: `Einstellungen -> Datenschutz -> Werbung`.
- Aktion: **Werbe-ID löschen** wählen.

---

## Meta (Instagram & Facebook) Anti-Tracking
Zentrale Schritte, um die Datensammlung durch Meta einzuschränken:

### 1. Aktivitäten außerhalb von Meta-Technologien
- Pfad: `Kontozentrum -> Deine Informationen und Berechtigungen -> Deine Aktivitäten außerhalb von Meta-Technologien`.
- Aktion: **Künftige Aktivitäten trennen** wählen.

---

## Hardening Matrix

| Kategorie | Technik | Beschreibung | Status |
| :--- | :--- | :--- | :--- |
| **Datenschutz** | DNS-over-TLS | Nutze AdGuard DNS (`dns.adguard.com`) | Aktiv |
| **System** | Debloating | Unnötige Apps via Canta/Shizuku entfernen | In Arbeit |

---

## Browser-Hardening & Tools
Empfohlene Ressourcen für sicheres Surfen:

* **Browser:** Nutze **Mull** (F-Droid) oder **Firefox**.
* **Add-ons:** Installiere **uBlock Origin**.
* **Analyse:** [Exodus Privacy](https://reports.exodus-privacy.eu.org/) zum Prüfen von App-Trackern.

---

## 🛠️ Rettungsanker (Restore)
Falls eine System-App versehentlich gelöscht wurde:
`adb shell cmd package install-existing [PAKETNAME]`
