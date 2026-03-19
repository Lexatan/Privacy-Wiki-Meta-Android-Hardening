# ❓ Häufig gestellte Fragen (FAQ)

### 1. Bekomme ich nach dem Debloating noch System-Updates?
**Ja.** Das Entfernen von Apps via ADB/Canta beeinträchtigt die offiziellen OTA-Updates (Over-the-Air) von Xiaomi/Poco nicht. Nach einem sehr großen System-Update (z.B. von MIUI auf HyperOS) kann es jedoch sein, dass einige gelöschte Apps automatisch wieder installiert werden.

### 2. Funktionieren Banking-Apps noch?
**Ja.** Da wir den Bootloader nicht öffnen und kein Root verwenden, bleibt der "SafetyNet/Play Integrity" Status erhalten. Banking-Apps und Google Pay funktionieren weiterhin problemlos.

### 3. Was mache ich, wenn mein Handy in einem Bootloop steckt?
Keine Panik. Solange du keine kritischen System-Apps (siehe [danger_zone.md](danger_zone.md)) gelöscht hast, ist das unwahrscheinlich. Falls doch:
* Verbinde das Handy mit dem PC.
* Nutze den Befehl: `adb shell cmd package install-existing [PAKETNAME]`
* Im schlimmsten Fall: Starte ins Recovery (Lauter-Taste + Power) und wähle "Wipe Data".

### 4. Warum kommen keine Benachrichtigungen mehr an?
Wenn du eine App zu aggressiv mit **NetGuard** blockierst oder die Hintergrundaktivität eingeschränkt hast, kann sie keine Push-Nachrichten empfangen. Prüfe in diesem Fall die Firewall-Regeln für diese spezifische App.
