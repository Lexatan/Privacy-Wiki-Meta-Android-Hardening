# 🚫 Analyse der vorinstallierten Anwendungen (Bloatware)

Diese Übersicht listet Systemanwendungen und Dienste auf, die für Werbung, Datenerfassung oder unnötigen Ressourcenverbrauch bekannt sind. Diese Pakete können bei Bedarf über Tools wie **Canta** (in Verbindung mit **Shizuku**) oder via **ADB** deaktiviert werden.

| Paketname | Anzeigename | Funktion / Grund für Deaktivierung |
| :--- | :--- | :--- |
| `com.miui.msa.global` | MSA (System Ads) | Integration von Werbeanzeigen in System-Apps. |
| `com.miui.analytics` | Analytics | Übermittlung von Telemetrie- und Nutzungsdaten. |
| `com.xiaomi.mipicks` | GetApps | Alternativer App-Store mit häufigen Push-Benachrichtigungen. |
| `com.miui.hybrid.accessory` | Quick Apps | Dienst für Instant-Apps; trackt App-Aufrufe. |
| `com.facebook.system` | Meta App Installer | Hintergrundprozess für die Installation von Meta-Diensten. |
| `com.facebook.appmanager` | Meta App Manager | Verwaltet Updates für Meta-Komponenten. |
| `com.facebook.services` | Meta Services | Hintergrund-Telemetrie für Meta-Anwendungen. |
| `com.google.android.gms.ads` | Google Ads | Bereitstellung der Werbe-ID für personalisierte Anzeigen. |

---

## 🛠️ Durchführung der Optimierung

1. **Vorbereitung:** Sicherstellen, dass die erforderliche Umgebung (z. B. Shizuku) korrekt konfiguriert ist.
2. **Identifikation:** Gezielte Suche nach den oben genannten Paketnamen in der App-Verwaltung.
3. **Deaktivierung:** Entfernen der Dienste. 
   * *Hinweis: Kritische Systemkomponenten (wie der Launcher oder Kern-Frameworks) sollten nicht ohne genaue Kenntnis modifiziert werden.*

---

## 🔄 Wiederherstellung von Paketen
Falls eine Anwendung fälschlicherweise entfernt wurde, kann sie über die Kommandozeile (ADB) wieder installiert werden:
`adb shell cmd package install-existing [Paketname]`
