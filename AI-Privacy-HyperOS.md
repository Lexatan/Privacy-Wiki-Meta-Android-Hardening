# 🛡️ KI-Privacy & AI-Opt-Out Guide (HyperOS)

HyperOS integriert zahlreiche KI-Funktionen, die persönliche Daten wie Fotos, Texte und Nutzungsverhalten analysieren – teilweise auch in der Cloud. Mit wenigen Einstellungen kannst du deine Privatsphäre deutlich verbessern.

## Empfohlene Einstellungen

- **Galerie:** „Erweiterte Suche“ und „KI-Verschönerung“ deaktivieren
- **Smart Assistant:** Zugriff auf die Zwischenablage verweigern
- **KI-Personalisierung:** Unter  
  `Einstellungen → Datenschutz → Anzeige von Anzeigen & KI-Personalisierung`  
  ausschalten
- **Werbedienste:** Personalisierte Empfehlungen deaktivieren
- **App-Berechtigungen:** Xiaomi-Apps wie *Mi Video* oder *Musik* den Zugriff auf Nutzungsdaten entzieh

# 🛡️ KI-Tracking manuell einschränken

Viele KI-Dienste lassen sich in den Systemeinstellungen begrenzen, ohne die Systemstabilität zu gefährden. Dies ist der erste Schritt, bevor zu tiefgreifenden Debloating-Maßnahmen gegriffen wird.

### ⚙️ Systemeinstellungen anpassen

* **Personalisierte Werbung & KI-Vorschläge:**
    * `Einstellungen` → `Datenschutz` → `Anzeigen-Dienste` → **Personalisierte Werbung deaktivieren**.
* **KI-Benutzererfahrungsprogramm:**
    * `Einstellungen` → `Datenschutz` → `Sonstige Datenschutzeinstellungen` → **Benutzererfahrungsprogramm beenden**.
    * *Warum?* Hier werden Nutzungsstatistiken erfasst, um KI-Algorithmen und Funktionen zu trainieren.
* **Hintergrund-Datenversand (Upload):**
    * `Einstellungen` → `Datenschutz` → `Sonstige Datenschutzeinstellungen` → **Verwendungs- & Diagnosedaten** → **Deaktivieren**.

---

### 🛠️ KI-Pakete für Fortgeschrittene (Debloating)

Wenn du die KI-Funktionen komplett unterbinden willst, sind dies die primären Pakete. 
**Achtung:** Ein *Freeze* (Einfrieren via Canta/Shizuku) ist hier sicherer als ein komplettes Löschen via ADB, um die Systemintegrität zu testen.

| Paketname | Beschreibung | Empfehlung |
| :--- | :--- | :--- |
| `com.miui.voiceassist` | **XiaoAi / Mi AI:** Der zentrale Knotenpunkt für KI-Interaktionen und Sprachsteuerung. | 🟡 Freeze |
| `com.miui.aicloud.service` | **AI Cloud:** Steuert den Upload von Daten für die serverseitige KI-Verarbeitung. | 🟢 Sicher |
| `com.xiaomi.aiasst.service` | **AI Assistant:** Hintergrunddienst für vorausschauende KI-Aktionen und "smarte" Features. | 🟡 Freeze |

---
[⬅️ Zurück zur Übersicht](README.md)
