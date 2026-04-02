![Privacy Wiki Banner](banner.png)

# 🛡️ Privacy-Wiki: Meta & Android Hardening

![Status](https://img.shields.io/badge/Status-Hardening_In_Progress-brightgreen)
![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Community](https://img.shields.io/badge/Clones-800%2B-orange)

> ### ⚠️ Wichtiger Sicherheitshinweis (Disclaimer)
> **Die Nutzung der in diesem Repository beschriebenen Methoden erfolgt ausdrücklich auf eigene Gefahr.**
> Das Entfernen von System-Apps oder das Ändern von DNS-Einstellungen kann die Stabilität des Betriebssystems beeinträchtigen.
> * Erstelle **unbedingt ein vollständiges Backup** deiner Daten, bevor du Änderungen vornimmst.
> * Ich übernehme keine Haftung für Schäden, Datenverlust oder defekte Geräte.

---

## 📋 Inhaltsverzeichnis

### 🏁 Erste Schritte & Grundlagen
- [⚡ Quick-Start Guide (Schritt-für-Schritt)](quick_start.md)
- [🚀 First-Boot Checkliste](setup_guide.md)
- [📊 Hardening Matrix](#hardening-matrix)
- [🛡️ Sicherheit & Richtlinien](#sicherheit)

### 📱 System-Optimierung (Poco/Xiaomi)
- [⚙️ Poco/Xiaomi System-Optimierung](#pocoxiaomi-system-optimierung)
- [🔋 Performance & Akku-Mythen (Hintergründe)](performance_myths.md)
- [📱 Android & Poco Hardening (Systemeinstellungen)](android-settings.md)
- [🚫 Übeltäter-Liste (Culprit Apps)](culprits.md)
- [⚠️ Gefahrenzone (Bloatware Safe-List)](danger_zone.md)
- [🧊 Boot- & Start-Optimierung (Autostart-Killer)](boot_optimization.md)
  
### 🔒 Privacy & Tracking-Schutz
- [👥 Meta (Instagram & Facebook) Anti-Tracking](meta-settings.md)
- [🧪 App-Isolation (Quarantäne)](app_isolation.md)
- [📸 Medien- & Datei-Sicherheit (Metadaten-Schutz)](Media-Hardening.md)
- [📡 Netzwerk-Anonymisierung (Standort-Verschleierung)](network_anonymization.md)
- [🛡️ DNS-Filtering & Kontrolle (Deep-Dive)](dns_deep_dive.md)
- [📧 Anonyme Identitäten (Alias-Strategie)](alias_strategy.md)
- [🔐 2FA-Hardening (Sichere Logins)](2fa_hardening.md)
- [🕵️ Browser-Fingerprinting (Anonym im Netz)](fingerprinting.md)
- [📂 Scoped Storage & Dateimanagement (Daten-Isolation)](scoped_storage.md)
- [🧬Permission-Hardening & App-Ops (Deep-Dive)](permission_hardening.md)
- [⌨️ Tastatur-Härtung (Eingabe-Privatsphäre)](keyboard_hardening.md)
- [🛰️ Standort-Verschleierung (Mock Locations)](mock_locations.md)
- [📄 Dokumenten-Härtung (Metadaten-Stripping)](document_hardening.md)
- [☁️ Verschlüsselte Synchronisation (Zero-Knowledge)](cloud_encryption.md)
- [📴 Sensoren-Hardening (Hardware-Kill-Switch)](sensor_hardening.md)
- [🛑 Google-Services Hardening (Telemetrie-Stopp)](google_hardening.md)
- [🔗 Link-Privatsphäre (Tracking-Stripping)](link_privacy.md)
- [💬 Sichere Messenger-Alternativen (Element X)](element_x.md)
  
### 🛠️ Tools & Ecosystem
- [💉 Shizuku Ecosystem](shizuku_tools.md)
- [🧱 Firewall Guide (NetGuard)](netguard_guide.md)
- [🧩 Google-Dienste ersetzen (microG)](microg_guide.md)
- [🌐 Browser-Hardening & Tools](#browser)
- [💎 Empfohlene Apps (Alternativen)](recommended_apps.md)
- [🗑️ Canta (Sicheres Debloating)](canta.md)
- [📦 InstallWithOptions (Kontrollierte Installation)](install-with-options.md)
- [🏪 Neo Store (Sicheres App-Management)](neo-store.md)
- [🔄 Privacy Flip (Profil-Isolation)](privacy-flip.md)
- [🌟 Athena (System-Härtung)](athena.md)
- [🔮 System-Aktivitäts-Monitoring (De1984)](de1984.md)
- [🔥App Ops - (Präzise Berechtigungskontrolle)](app_ops.md)
- [❄️ Hail - (Apps effizient einfrieren)](hail.md)
  
### ⚡ Fortgeschrittene & Wartung
- [🛡️ Physische Sicherheit & Anti-Forensik](physical_security.md)
- [🤖 Automatisierung & Skripte](scripts_guide.md)
- [🏎️ Custom ROMs & Bootloader](custom_rom_guide.md)
- [🔍 Überprüfung & Monitoring (Visual Success)](verification_and_monitoring.md)
- [🔌 Hardware-Schutz & USB-Sicherheit](hardware_hardening.md)
- [🧠 Digitaler Minimalismus & Fokus](mindset_privacy.md)
- [📅 Privacy Check-Up Kalender (Wartungs-Routine)](#privacy-check-up-kalender)
  
### 🆘 Hilfe & Support
- [❓ Häufig gestellte Fragen (FAQ)](faq.md)
- [🚨 Notfall-Kit (Troubleshooting)](emergency_kit.md)
- [🧨 Notfall-Wipe & Diebstahlschutz (Wasted)](emergency_wipe.md)
  
---

## <a name="pocoxiaomi-system-optimierung"></a>Poco/Xiaomi System-Optimierung

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
### <a name="hardening-matrix"></a>📊 Hardening Matrix (Übersicht)


| Kategorie | Technik | Empfehlung | Ziel |
| :--- | :--- | :--- | :--- |
| **Datenschutz** | DNS-over-TLS | `dns.quad9.net` / `base.dns.mullvad.net` | Filtert Tracking & Malware systemweit |
| **System** | Debloating | Canta & Shizuku (User-Mode) | RAM-Verbrauch um ~30% senken |
| **Netzwerk** | Firewall | NetGuard (No-Root) | Kontrolliert App-Traffic & Blockt "Nach-Hause-Telefonieren" |
| **Isolation** | Sandbox | Shelter / Insular | Strikte Trennung von Privat- & Meta-Apps |
| **Identität** | Browser-Hardening | Mull / Cromite | Schutz vor Fingerprinting & Web-Tracking |
| **Physisch** | Hardware-Schutz | USB-Datenblocker / Cam-Cover | Schutz vor Juice Jacking & Spionage |



---
### <a name="privacy-check-up-kalender"></a>📅 Privacy Check-Up Kalender

Sicherheit ist kein Zustand, sondern ein Prozess. Diese 5-Minuten-Routine hält dein System sauber:

| Intervall | Aktion | Ziel |
| :--- | :--- | :--- |
| **Wöchentlich** | **Cache-Reinigung** | Browser-Verlauf & App-Caches leeren (schützt vor Tracking-Cookies). |
| **Monatlich** | **App-Inventur** | Apps löschen, die 30 Tage nicht genutzt wurden. Weniger Apps = weniger Angriffsfläche. |
| **Monatlich** | **Berechtigungs-Check** | `Einstellungen -> Datenschutz -> Berechtigungsmanager`. Wer nutzt Kamera/Standort ungefragt? |
| **Quartal** | **Backup-Validierung** | Prüfe, ob dein externes Backup noch lesbar ist (Wichtig vor System-Updates!). |
| **Quartal** | **Passwort-Audit** | Ändere Passwörter für kritische Dienste oder prüfe Leaks via "Have I Been Pwned". |
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
