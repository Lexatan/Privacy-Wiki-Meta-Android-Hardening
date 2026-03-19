![Privacy Wiki Banner](banner.png)

# 🛡️ Privacy-Wiki: Meta & Android Hardening

![Status](https://img.shields.io/badge/Status-Hardening_In_Progress-brightgreen)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

> ### ⚠️ Wichtiger Sicherheitshinweis (Disclaimer)
> **Die Nutzung der in diesem Repository beschriebenen Methoden erfolgt auf eigene Gefahr.**

---

## 📋 Inhaltsverzeichnis
- [Poco/Xiaomi System-Optimierung](#pocoxiaomi-system-optimierung)
- [Meta (Instagram & Facebook) Anti-Tracking](#meta-instagram--facebook-anti-tracking)
- [🧪 App-Isolation (Quarantäne)](app_isolation.md)
- [Hardening Matrix](#hardening-matrix)
- [Browser-Hardening & Tools](#browser)
- [❓ Häufig gestellte Fragen (FAQ)](faq.md)
- [🚀 Fortgeschrittene Themen (Custom ROMs)](custom_rom_guide.md)
- [🚨 Notfall-Kit (Troubleshooting)](emergency_kit.md)
- [🔍 Überprüfung & Monitoring (Visual Success)](verification_and_monitoring.md)
- [🛠️ Automatisierung & Skripte](scripts_guide.md)
- [⚠️ Gefahrenzone (Bloatware, die bleiben muss!)](danger_zone.md)
- [🛡️ Sicherheit & Richtlinien](#sicherheit)
- [Übeltäter-Liste (Culprit Apps)](culprits.md)
- [Empfohlene Apps (Alternativen)](recommended_apps.md)
- [Shizuku Ecosystem](shizuku_tools.md)
- [Firewall Guide (NetGuard)](netguard_guide.md)
- [First-Boot Checkliste](setup_guide.md)

---

## Poco/Xiaomi System-Optimierung
### 1. System-Ads (MSA) deaktivieren
- **Pfad:** `Einstellungen -> Passwörter & Sicherheit -> Autorisierung & Widerruf`.
- **Aktion:** **msa** auf AUS.

### 2. Werbe-ID löschen
- **Pfad:** `Einstellungen -> Datenschutz -> Werbung`.

---

## Meta (Instagram & Facebook) Anti-Tracking
### 1. Aktivitäten außerhalb von Meta-Technologien
- **Pfad:** `Kontozentrum -> Deine Informationen und Berechtigungen -> Deine Aktivitäten außerhalb von Meta-Technologien`.
- **Aktion:** **Künftige Aktivitäten trennen**.

---

## Hardening Matrix
| Kategorie | Technik | Beschreibung | Status |
| :--- | :--- | :--- | :--- |
| **Datenschutz** | DNS-over-TLS | Nutze AdGuard DNS (`dns.adguard.com`) | ✅ Aktiv |
| **Performance** | Debloating | RAM-Verbrauch um ca. 30% gesenkt | ✅ Geprüft |

---

## <a name="browser"></a>Browser-Hardening & Tools
Nutze **Mull** oder **Cromite** mit uBlock Origin für maximale Isolation.

---

## <a name="sicherheit"></a>🛡️ Sicherheit & Richtlinien
- **Lizenz:** [MIT-Lizenz](LICENSE).
- **Security Policy:** [SECURITY.md](SECURITY.md).

---

## 🛠️ Rettungsanker (Restore)
`adb shell cmd package install-existing [PAKETNAME]`

---

## 🏆 Top Contributors
* **[Lexatan]** (Project Lead)

---

## ☕ Support & Kontakt
⭐ Gib diesem Repo einen Stern, wenn es dir geholfen hat!
* **Matrix:** `@lexatan:matrix.org`
