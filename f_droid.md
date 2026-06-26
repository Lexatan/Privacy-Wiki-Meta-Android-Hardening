# 🤖 F-Droid - Das Herz der Open-Source-Welt

F-Droid ist kein gewöhnlicher App-Store. Es ist ein Community-basiertes Repository für **FOSS** (Free and Open Source Software). In deinem Privacy-Setup ist F-Droid die primäre Quelle für alle Tools, denen du vertrauen kannst.

### 🎯 Warum F-Droid statt Google Play?
Im Gegensatz zum Play Store werden Apps bei F-Droid nach strengen Kriterien geprüft:
* **Quellcode-Transparenz:** Jede App wird direkt aus dem Quellcode gebaut. Manipulationen durch Entwickler sind nahezu ausgeschlossen.
* **Kein Tracking:** F-Droid selbst trackt dich nicht. Es ist kein Account erforderlich.
* **Anti-Features Warnung:** F-Droid warnt dich explizit, wenn eine App Tracking, Werbung oder Abhängigkeiten von unfreien Diensten (wie Google) enthält.

---

### 🔧 Hardening & Best Practices
Um F-Droid sicher und effizient zu nutzen, solltest du folgende Einstellungen vornehmen:

1. **Repository-Management:** Nutze zusätzliche vertrauenswürdige Repositories wie das *Bitwarden* oder *Mullvad* Repo, um Updates direkt vom Entwickler zu erhalten.
2. **Update-Intervall:** Stelle F-Droid so ein, dass es nur über WLAN nach Updates sucht, um Akku und Datenvolumen zu sparen.
3. **Proxy-Nutzung:** Für maximale Anonymität kannst du F-Droid über **Tor (Orbot)** tunneln (direkt in den Einstellungen integriert).

---

### 🛡️ Die "Modern Way" Empfehlung: Neo Store
Obwohl F-Droid der Standard ist, ist die offizielle App technisch etwas veraltet. In diesem Wiki empfehlen wir die Nutzung von **Neo Store** (einem modernen F-Droid-Client):
* **Material You Design:** Passt sich optisch perfekt an dein Android-System an.
* **Schnellere Updates:** Nutzt moderne Android-Schnittstellen für schnellere Installationen via Shizuku.
* **Besseres Repository-Handling:** Einfacheres Hinzufügen von Drittanbieter-Quellen.

---

### 🧪 Der "Privacy-Stack"
F-Droid ist die Basis für fast alle Tools in diesem Guide:
* **[Canta](canta.md):** Dein Werkzeug zum Debloating.
* **[Hail](hail.md):** Dein App-Freezer.
* **[App Ops](app_ops.md):** Deine Berechtigungs-Kontrolle.
* **[De1984](de1984.md):** Deine Firewall.

---

### ⚠️ Wichtige Hinweise
* **Signatur-Konflikte:** Wenn du eine App über F-Droid installierst, die du vorher im Play Store hattest, musst du sie zuerst deinstallieren, da die digitalen Signaturen unterschiedlich sind.
* **Berechtigungen:** Erlaube F-Droid (oder Neo Store) die Installation aus "Unbekannten Quellen", damit Updates reibungslos funktionieren.

| Eigenschaft | Bewertung |
| :--- | :--- |
| **Schwierigkeitsgrad** | 🟢 Leicht |
| **Root notwendig** | ❌ Nein |
| **Shizuku-Anbindung** | 🟡 Optional (Für automatische Updates im Hintergrund) |
| **Risiko** | 🟢 Absolut sicher |
| **Datenschutzgewinn** | ⭐⭐⭐⭐⭐ (100% FOSS-Apps ohne Tracker) |
| **Sicherheitsgewinn** | ⭐⭐⭐⭐⭐ (Geprüfte Paket-Signaturen) |

---
[⬅️ Zurück zum Inhaltsverzeichnis](README.md)
