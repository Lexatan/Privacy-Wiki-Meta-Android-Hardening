![Privacy Wiki Banner](banner.png)

# 🛡️ Privacy-Wiki: Meta & Android Hardening

![Status](https://img.shields.io/badge/Status-Hardening_In_Progress-brightgreen)
![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Community](https://img.shields.io/badge/Clones-120%2B-orange)

> ### ⚠️ Wichtiger Sicherheitshinweis (Disclaimer)
> **Die Nutzung der in diesem Repository beschriebenen Methoden erfolgt ausdrücklich auf eigene Gefahr.**
> Das Entfernen von System-Apps oder das Ändern von DNS-Einstellungen kann die Stabilität des Betriebssystems beeinträchtigen.
> * Erstelle **unbedingt ein vollständiges Backup** deiner Daten, bevor du Änderungen vornimmst.
> * Ich übernehme keine Haftung für Schäden, Datenverlust oder defekte Geräte.

---

## 📋 Inhaltsverzeichnis
- [Poco/Xiaomi System-Optimierung](#pocoxiaomi-system-optimierung)
- [Meta (Instagram & Facebook) Anti-Tracking](#meta-instagram--facebook-anti-tracking)
- [🧪 App-Isolation (Quarantäne)](app_isolation.md)
- [Hardening Matrix](#hardening-matrix)
- [Browser-Hardening & Tools](#browser)
- [❓ Häufig gestellte Fragen (FAQ)](faq.md)
- [🚀 Custom ROMs & Bootloader](custom_rom_guide.md)
- [🚨 Notfall-Kit (Troubleshooting)](emergency_kit.md)
- [🔍 Überprüfung & Monitoring (Visual Success)](verification_and_monitoring.md)
- [🛠️ Automatisierung & Skripte](scripts_guide.md)
- [⚠️ Gefahrenzone (Bloatware Safe-List)](danger_zone.md)
- [🛡️ Sicherheit & Richtlinien](#sicherheit)
- [Übeltäter-Liste (Culprit Apps)](culprits.md)
- [Empfohlene Apps (Alternativen)](recommended_apps.md)
- [Shizuku Ecosystem](shizuku_tools.md)
- [Firewall Guide (NetGuard)](netguard_guide.md)
- [First-Boot Checkliste](setup_guide.md)

---

## Poco/Xiaomi System-Optimierung

### 1. System-Ads (MSA) & Tracking deaktivieren
Xiaomi versteckt Werbe-Dienste tief im System. Diese sollten als Erstes deaktiviert werden:
- **Pfad:** `Einstellungen -> Passwörter & Sicherheit -> Autorisierung & Widerruf`.
- **Aktion:** Den Schalter bei **msa** und **miui_daemon** auf AUS stellen.

### 2. Werbe-ID & Personalisierung löschen
- **Pfad:** `Einstellungen -> Datenschutz -> Werbung`.
- **Aktion:** **Werbe-ID löschen** wählen und "Personalisierte Werbung" deaktivieren.

---

## Meta (Instagram & Facebook) Anti-Tracking

Meta sammelt Daten über dein Verhalten in anderen Apps. So schränkst du das ein:

### 1. Aktivitäten außerhalb von Meta-Technologien
- **Pfad:** `Kontozentrum -> Deine Informationen und Berechtigungen -> Deine Aktivitäten außerhalb von Meta-Technologien`.
- **Aktion:** **Künftige Aktivitäten trennen** wählen und den bisherigen Verlauf löschen.

---

## Hardening Matrix

| Kategorie | Technik | Empfehlung | Ziel |
| :--- | :--- | :--- | :--- |
| **Datenschutz** | DNS-over-TLS | `dns.quad9.net` / `base.dns.mullvad.net` | Filtert Tracking & Malware |
| **System** | Debloating | Canta & Shizuku (User-Mode) | RAM-Verbrauch um ~30% senken |
| **Netzwerk** | Firewall | NetGuard (No-Root) | Kontrolliert App-Traffic |
| **Isolation** | Sandbox | Shelter / Insular | Trennung von Privat- & Meta-Apps |

---

## <a name="browser"></a>Browser-Hardening & Tools

Ein sicherer Browser ist dein wichtigstes Werkzeug gegen Web-Tracking. Standard-Browser sollten gemieden werden.

### 1. Empfohlene Browser (F-Droid)
- **Mull:** Ein extrem gehärteter Firefox-Fork. Blockiert standardmäßig fast alle Fingerprinting-Versuche.
- **Cromite:** Ein entgoogelter Chromium-Fork mit starkem integriertem Adblocker.

### 2. Systemweites Privates DNS (DoT)
Konfiguriere dies unter `Einstellungen -> Verbindung & Teilen -> Privates DNS`:
- **Quad9:** `dns.quad9.net` (Hervorragender Schutz vor bösartigen Domains & Malware).
- **Mullvad DNS:** `base.dns.mullvad.net` (Fokus auf Anonymität, striktes No-Logging).
- **AdGuard:** `dns.adguard.com` (Aggressiver Filter für In-App Werbung).

---

## 🤝 Mitwirken
Beiträge sind herzlich willkommen! Du hast eine neue Tracking-App gefunden oder einen Fehler entdeckt?
- Nutze unsere [Issue-Vorlagen](https://github.com/Lexatan/Privacy-Wiki-Meta-Android-Hardening/issues/new/choose).
- Schau in die [CONTRIBUTING.md](CONTRIBUTING.md) für Details.

---

## <a name="sicherheit"></a>🛡️ Sicherheit & Richtlinien
- **Lizenz:** Dieses Projekt ist unter der [MIT-Lizenz](LICENSE) lizenziert.
- **Security Policy:** Sicherheitsrelevante Meldungen bitte gemäß [SECURITY.md](SECURITY.md) einreichen.

---

## 🛠️ Rettungsanker (Restore)
Falls eine System-App versehentlich gelöscht wurde und wichtige Funktionen fehlen, kannst du sie mit diesem Befehl via ADB wieder aktivieren:

```bash
adb shell cmd package install-existing [PAKETNAME]


