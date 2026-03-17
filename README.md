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



## 📱 Poco/Xiaomi System-Optimierung
Um das Tracking und die Werbung auf Systemebene zu minimieren, sollten folgende Punkte durchgeführt werden:

### 1. System-Ads (MSA) deaktivieren
- Pfad: `Einstellungen -> Passwörter & Sicherheit -> Autorisierung & Widerruf`.
- Aktion: Den Schalter bei **msa** auf AUS stellen.

### 2. Werbe-ID löschen
- Pfad: `Einstellungen -> Datenschutz -> Werbung`.
- Aktion: **Werbe-ID löschen** wählen.

### 3. App-Empfehlungen abschalten
In den folgenden System-Apps jeweils die "Empfehlungen" in den App-Einstellungen deaktivieren:
- **Sicherheit**, **Downloads**, **Themes**, **Dateimanager**.

---

## 👥 Meta (Instagram & Facebook) Anti-Tracking
Zentrale Schritte, um die Datensammlung durch Meta einzuschränken:

### 1. Aktivitäten außerhalb von Meta-Technologien
- Pfad: `Kontozentrum -> Deine Informationen und Berechtigungen -> Deine Aktivitäten außerhalb von Meta-Technologien`.
- Aktion: **Künftige Aktivitäten trennen** wählen.

### 2. Werbepräferenzen
- Pfad: `Kontozentrum -> Werbeeinstellungen -> Werbethemen`.
- Aktion: **Sensible Themen einschränken** wählen.

---

## 📊 Hardening Matrix

| Kategorie | Technik | Beschreibung | Status |
| :--- | :--- | :--- | :--- |
| **Datenschutz** | DNS-over-TLS | Nutze AdGuard DNS (`dns.adguard.com`) | Empfohlen |
| **System** | Debloating | Unnötige System-Apps via Canta/Shizuku entfernen | In Arbeit |
| **Tracking** | Werbe-ID | Eindeutige Werbe-IDs regelmäßig löschen | Aktiv |
| **Social Media** | Off-Meta Activity | Datenaustausch mit Drittanbietern blockieren | Aktiv |

---

## 🛠️ Rettungsanker (Restore)
Falls eine System-App versehentlich gelöscht wurde, kann sie per ADB am PC wiederhergestellt werden:
`adb shell cmd package install-existing [PAKETNAME]`
---

## 🌐 Browser-Hardening & Tools
Um das Tracking im Web zu minimieren und Apps zu analysieren, werden folgende Ressourcen empfohlen:

### Browser-Empfehlung
* **Browser:** Nutze **Mull** (F-Droid) oder **Firefox**.
* **Add-ons:** Installiere **uBlock Origin**. Aktiviere in den Einstellungen die "AdGuard" und "Fanboy" Filterlisten.
* **Settings:** Stelle den "Schutz vor Aktivitätenverfolgung" auf **STRENG**.

### Nützliche Analyse-Tools
* [Exodus Privacy](https://reports.exodus-privacy.eu.org/) – Überprüfe, welche Tracker in deinen installierten Apps versteckt sind.
* [F-Droid Store](https://f-droid.org/) – Die beste Quelle für Open-Source-Apps ohne integriertes Tracking.
* [Plexus](https://plexus.techlore.tech/) – Prüfe, welche Apps ohne Google Play Services funktionieren.
* 
