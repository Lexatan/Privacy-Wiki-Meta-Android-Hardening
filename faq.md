# ❓ Häufig gestellte Fragen (FAQ)

### 1. Bekomme ich nach dem Debloating noch System-Updates?
**Ja, mit einer Einschränkung.** Das Entfernen von Apps via ADB/Canta beeinträchtigt die offiziellen OTA-Updates (Over-the-Air) von Xiaomi/Poco nicht – **solange du keine kritischen System-Apps deaktiviert hast** (siehe [danger_zone.md](danger_zone.md)). Nach einem sehr großen System-Update (z.B. von MIUI auf HyperOS) kann es jedoch sein, dass einige gelöschte Apps automatisch wieder installiert werden.

### 2. Funktionieren Banking-Apps noch?
**Ja.** Da wir den Bootloader nicht öffnen und kein Root verwenden, bleibt der "SafetyNet/Play Integrity"-Status erhalten. Banking-Apps und Google Pay funktionieren weiterhin problemlos.

### 3. Verliere ich meine Garantie?
**Nein.** Debloating via ADB oder Canta öffnet nicht den Bootloader und hinterlässt keine dauerhaften Spuren. Xiaomi kann nicht nachweisen, dass du System-Apps deaktiviert hast – du kannst sie jederzeit via ADB wiederherstellen (`adb shell cmd package install-existing [PAKETNAME]`). Die Garantie bleibt also erhalten.

### 4. Was mache ich, wenn mein Handy in einem Bootloop steckt?
Keine Panik. Solange du keine kritischen System-Apps (siehe [danger_zone.md](danger_zone.md)) gelöscht hast, ist das unwahrscheinlich.

**Rettungsversuche in dieser Reihenfolge:**

1. **Falls USB-Debugging vorher aktiviert war:**  
   Verbinde das Handy mit dem PC und führe aus:  
   `adb shell cmd package install-existing [PAKETNAME]`

2. **Falls USB-Debugging NICHT aktiviert war:**  
   Versuche den **Safe Mode**: Halte beim Booten die Leiser-Taste gedrückt. Dort sind viele User-Apps deaktiviert – manchmal kann man so das System retten.

3. **Letzter Ausweg (Datenverlust!):**  
   Starte ins Recovery (Power + Lauter-Taste) und wähle **"Wipe Data"** – das setzt das Gerät auf Werkseinstellungen zurück.

### 5. Warum kommen keine Benachrichtigungen mehr an?
Wenn du eine App zu aggressiv mit **NetGuard** blockierst oder die Hintergrundaktivität eingeschränkt hast, kann sie keine Push-Nachrichten empfangen. Prüfe in diesem Fall die Firewall-Regeln in NetGuard oder die Akku-Optimierungseinstellungen für diese spezifische App.

### 6. Verbraucht Shizuku viel Akku?
**Nein.** Shizuku selbst ist lediglich eine Schnittstelle (API), die im Hintergrund auf Befehle wartet. Der Akkuverbrauch ist minimal bis gar nicht messbar. Apps, die Shizuku nutzen (wie Canta oder Hail), verbrauchen nur dann Energie, wenn du sie aktiv öffnest, um Änderungen vorzunehmen.

### 7. Muss ich Shizuku nach jedem Neustart manuell starten?
**Ja, aber das ist gewollt.** Android beendet aus Sicherheitsgründen alle Debugging-Dienste bei einem Neustart. Du kannst Shizuku jedoch mit der App **Daimon** oder **aDroid** (beide auf F-Droid) automatisch starten lassen. Alternativ: Ein kurzes Wireless-Debugging-Pairing innerhalb von Sekunden – oder via PC mit einem ADB-Befehl.

### 8. Kann ich die Änderungen rückgängig machen?
**Ja.** Jede deaktivierte oder gelöschte System-App kannst du über ADB wiederherstellen:  
`adb shell cmd package install-existing [PAKETNAME]`  
Alternativ: Ein Factory Reset setzt das Gerät komplett auf Werkseinstellungen zurück (aber Vorsicht: dann sind alle persönlichen Daten weg!).

---
[⬅️ Zurück zur Hauptseite](README.md)
