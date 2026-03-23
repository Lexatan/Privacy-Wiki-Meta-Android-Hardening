# 🚫 Analyse der vorinstallierten Anwendungen (Bloatware)

Diese Übersicht listet Systemanwendungen und Dienste auf, die für Werbung, Datenerfassung oder unnötigen Ressourcenverbrauch bekannt sind. Diese Pakete können bei Bedarf über Tools wie **Canta** (in Verbindung mit **Shizuku**) oder via **ADB** deaktiviert werden.

| Paketname | Anzeigename | Funktion / Grund für Deaktivierung | Empfehlung |
| :--- | :--- | :--- | :--- |
| `com.miui.msa.global` | MSA (System Ads) | Integration von Werbeanzeigen in System-Apps. | 🔴 Sofort weg |
| `com.miui.analytics` | Analytics | Übermittlung von Telemetrie- und Nutzungsdaten an Xiaomi. | 🔴 Sofort weg |
| `com.miui.daemon` | MiuiDaemon | Sammelt Hintergrund-Statistiken und Performance-Daten. | 🔴 Empfohlen |
| `com.miui.joyose` | Joyose | Sendet massiv Telemetriedaten; drosselt teils die Performance. | 🔴 Empfohlen |
| `com.xiaomi.glance.payload` | Glance (Lockscreen) | Werbe-Karussell auf dem Sperrbildschirm; lädt ständig Daten. | 🔴 Sofort weg |
| `com.xiaomi.mipicks` | GetApps | Alternativer App-Store mit häufigen Push-Benachrichtigungen. | 🟡 Optional |
| `com.miui.hybrid.accessory` | Quick Apps | Dienst für Instant-Apps; trackt App-Aufrufe im Hintergrund. | 🔴 Empfohlen |
| `com.miui.yellowpage` | Yellow Pages | Branchenverzeichnis-Dienst; sendet oft Standortdaten. | 🟡 Optional |
| `com.facebook.system` | Meta App Installer | Hintergrundprozess für die automatische Installation von Meta-Diensten. | 🔴 Sofort weg |
| `com.facebook.appmanager` | Meta App Manager | Verwaltet Updates für Meta-Komponenten ohne Nutzerinteraktion. | 🔴 Sofort weg |
| `com.facebook.services` | Meta Services | Hintergrund-Telemetrie und Datenaustausch für Meta-Anwendungen. | 🔴 Sofort weg |
| `com.google.android.gms.ads` | Google Ads | Bereitstellung der Werbe-ID für personalisierte Anzeigen. | 🔴 Empfohlen |
| `com.mi.android.globalminusscreen` | App Vault | Der linke Homescreen ("Minus-One-Screen") mit Tracking-Widgets. | 🟡 Optional |

---

### 🛠 Durchführung der Optimierung

1.  **Vorbereitung:** Sicherstellen, dass die erforderliche Umgebung (z. B. **Shizuku**) korrekt konfiguriert ist.
2.  **Identifikation:** Gezielte Suche nach den oben genannten Paketnamen in der App-Verwaltung (z. B. in **Canta**).
3.  **Deaktivierung:** Entfernen oder Deaktivieren der Dienste.
    *   **Profi-Tipp:** In Canta kannst du Apps oft erst einmal **"Einfrieren" (Freeze)**. So testest du die Systemstabilität, bevor du sie endgültig löschst.
    *   *Hinweis:* Kritische Systemkomponenten (wie der System-Launcher oder Kern-Frameworks) sollten nicht ohne genaue Kenntnis modifiziert werden.

---

### 🔄 Wiederherstellung von Paketen

Falls eine Anwendung fälschlicherweise entfernt wurde oder das System instabil wird, kann sie über die Kommandozeile (ADB) wieder installiert werden:

`adb shell cmd package install-existing [Paketname]`

---

## 🕵️ Datenkraken entlarven (Deep-Dive)

Warum stehen diese Apps in der Liste? Hier sind die Werkzeuge, mit denen du die "Sünder" selbst analysieren kannst:

### 1. Exodus Privacy (Statische Analyse)
Bevor du eine App installierst, kannst du auf [Exodus Privacy](https://reports.exodus-privacy.eu.org/) prüfen, welche Tracker eingebettet sind.
*   **Beispiel:** Viele Taschenlampen-Apps enthalten 5+ Tracker (z. B. Facebook Ads, Google Firebase, Unity Ads).
*   **Aktion:** Suche in Exodus nach dem Paketnamen (z. B. `com.miui.analytics`), um die eingebauten Tracker-Module zu sehen.

### 2. NetGuard & Firewall (Live-Monitoring)
Mit einer No-Root-Firewall wie **NetGuard** siehst du in Echtzeit, wohin Apps "telefonieren".
*   **Aha-Erlebnis:** Blockiere eine System-App und schau ins Protokoll. Du wirst sehen, wie oft pro Stunde versucht wird, Server in Übersee zu kontaktieren.
*   **Überraschende Sünder:** Wetter-Apps oder Standard-Tastaturen, die ohne Grund versuchen, eine Internetverbindung aufzubauen.

### 3. Die "Berechtigungs-Falle"
Prüfe in den Android-Einstellungen kritisch:
*   Warum braucht eine Taschenrechner-App Zugriff auf deine **Kontakte**?
*   Warum verlangt ein Dateimanager den **Standort**?
*   **Regel:** Jede Berechtigung, die nicht zwingend für die Kernfunktion nötig ist, ist ein potenzieller Datenabfluss.
---
[⬅️ Zurück zur Hauptseite](README.md)
