# ⚠️ Gefahrenzone: System-Apps (NICHT LÖSCHEN!)

Das Deinstallieren oder Deaktivieren der folgenden Pakete führt fast sicher zu einem **Bootloop** oder macht das System instabil. Finger weg!

| Paketname | App-Name / Funktion | Grund für das Verbot |
| :--- | :--- | :--- |
| `com.miui.securitycenter` | Sicherheits-App | Das Herz von MIUI. Löschen führt sofort zum Bootloop. |
| `com.miui.home` | System-Launcher | Ohne Launcher kein Interface. Nur löschen, wenn ein anderer fest als System-App installiert ist. |
| `com.xiaomi.finddevice` | Gerät finden | Tief im System verankert. Verursacht Abstürze beim Booten. |
| `com.google.android.gsf` | Google Services Framework | Essential für alle Google-Dienste. |
| `com.android.settings` | Einstellungen | Ohne die Einstellungen-App ist das Handy nicht mehr konfigurierbar. |
| `com.miui.powerkeeper` | Akku-Optimierung | MIUI braucht diesen Dienst für das Energiemanagement. |

---

## 💡 Faustregel
Wenn du dir bei einer App unsicher bist: **Lieber erst mal nur "Deaktivieren" (Freeze) statt "Deinstallieren"**. Mit Apps wie **Hail** oder **App Ops** kannst du die App schlafen legen. Wenn das System nach 24 Stunden noch stabil läuft, ist sie meist sicher.

## 🚑 Im Notfall (Bootloop)
Sollte dein Handy nicht mehr starten:
1. In den **Recovery Modus** booten (meist Power + Lautstärke Lauter halten).
2. "Wipe Data" (Werkseinstellungen) – **Achtung: Alle Daten gehen verloren!**
3. Oder via ADB versuchen, das Paket wieder zu installieren (falls USB-Debugging noch aktiv ist).
