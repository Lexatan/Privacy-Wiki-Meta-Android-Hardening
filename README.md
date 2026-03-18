![Privacy Wiki Banner](banner.png)

# 🛡️ Privacy-Wiki: Meta & Android Hardening

![Status](https://img.shields.io/badge/Status-Hardening_In_Progress-brightgreen)

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
- [🔍 Überprüfung & Monitoring (Verification)](verification_and_monitoring.md)
- [🛠️ Automatisierung & Skripte](scripts_guide.md)
- [⚠️ Gefahrenzone (Bloatware, die bleiben muss!)](danger_zone.md)
- [🛡️ Sicherheit (Security Policy)](SECURITY.md)
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
| **Datenschutz** | DNS-over-TLS | Nutze AdGuard DNS (`dns.adguard.com`) oder verschlüsseltes Quad9 DNS (`dns.quad9.net`) | Aktiv |
| **System** | Debloating | Unnötige Apps via Canta/Shizuku entfernen | [Bereit](culprits.md) |
| **🚨 Sicherheit** | **Danger Zone** | **Kritische Apps NICHT löschen!** | **[Details](danger_zone.md)** |
| **Kontrolle** | Live-Traffic | Analyse mit PCAPdroid & Werbe-ID Check | [Details](verification_and_monitoring.md) |
| **Überwachung** | Python-Scripts | Tracking von Meta-Einstellungen | [Scripts Guide](scripts_guide.md) |

---

## 🤝 Mitwirken
Du hast eine App gefunden, die fehlt, oder einen Fehler entdeckt? Beiträge sind herzlich willkommen! Nutze unsere [Issue-Vorlagen](https://github.com/Lexatan/Privacy-Wiki-Meta-Android-Hardening/issues/new/choose) oder schau in die [CONTRIBUTING.md](CONTRIBUTING.md).

---

## 🛠️ Rettungsanker (Restore)
Falls eine System-App versehentlich gelöscht wurde:
`adb shell cmd package install-existing [PAKETNAME]`

---

## 🏆 Top Contributors
Vielen Dank an alle, die helfen, dieses Wiki aktuell und sicher zu halten!

* **[Lexatan]** (Project Lead)
* *Werde Teil der Liste – reiche einen Pull Request ein!*

---

## ☕ Support & Kontakt
Wenn dir dieses Wiki geholfen hat, dein Handy schneller und privater zu machen, freue ich mich über ein ⭐ für dieses Repository!

* **Fragen/Probleme:** Nutze die [GitHub Issues](https://github.com/Lexatan/Privacy-Wiki-Meta-Android-Hardening/issues).
* **Direktkontakt:** Erreichbar via Matrix unter `@lexatan:matrix.org`.
* 
