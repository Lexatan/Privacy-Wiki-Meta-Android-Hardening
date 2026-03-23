# ⚠️ Gefahrenzone (Bloatware, die bleiben muss!)

In diesem Bereich listen wir Anwendungen und Dienste auf, die **unter keinen Umständen** gelöscht oder deaktiviert werden sollten. Das Entfernen dieser Pakete führt unweigerlich zu einem **Bootloop** (Handy startet nicht mehr) oder macht das System unbedienbar.

| Paketname | Anzeigename | Risiko bei Deaktivierung |
| :--- | :--- | :--- |
| `com.miui.securitycenter` | Security Center | **Kritisch:** Das Herzstück von MIUI. Ohne diese App startet das System nicht mehr. |
| `com.miui.home` | System-Launcher | **Kritisch:** Ohne Launcher hast du keinen Homescreen und keine Navigation. |
| `com.miui.systemui` | System UI | **Kritisch:** Verwaltet Statusleiste und Benachrichtigungen. Führt zu schwarzem Bildschirm. |
| `com.xiaomi.finddevice` | Find Device | **Kritisch:** Löst beim Booten eine Sicherheitsverriegelung aus ("Find Device closed unexpectedly"). |
| `com.miui.contentcatcher` | Content Catcher | Kann zu Abstürzen in den Systemeinstellungen führen. |
| `com.android.settings` | Einstellungen | Ohne die Einstellungs-App ist das Gerät nicht mehr konfigurierbar. |
| `com.android.systemui` | Android SystemUI | Grundlegende Android-Oberfläche; führt sofort zum Absturz. |

---

## 🚩 Symptome bei falschem Debloating
Wenn du eine dieser Apps löschst, treten meist folgende Probleme auf:
1. **Bootloop:** Das Handy bleibt beim Poco/Xiaomi-Logo hängen.
2. **System-UI Crash:** Der Bildschirm flackert oder bleibt schwarz.
3. **Recovery-Modus:** Das Handy bootet automatisch in den Wiederherstellungs-Modus.

---

## 🆘 Notfall-Plan (Falls es passiert ist)

Sollte dein Handy nicht mehr starten, hast du zwei Möglichkeiten:

### 1. Rettung via ADB (Falls USB-Debugging noch aktiv ist)
Verbinde das Handy mit dem PC und versuche das Paket sofort wieder zu installieren:
`adb shell cmd package install-existing [PAKETNAME]`

### 2. Hard Reset (Letzter Ausweg - Datenverlust!)
Wenn ADB nicht mehr reagiert:
1. Halte **Power + Lauter** gedrückt, bis das Recovery-Menü erscheint.
2. Wähle **"Wipe Data"** (löscht alle deine privaten Dateien!).
3. Bestätige mit **"Confirm"**. Das Handy wird auf Werkseinstellungen zurückgesetzt.

---
*Hinweis: Weniger ist manchmal mehr. Wenn du dir bei einer App unsicher bist, lass sie lieber installiert oder "friere" sie erst einmal nur ein, anstatt sie komplett zu löschen.*
---
[⬅️ Zurück zur Hauptseite](README.md)
