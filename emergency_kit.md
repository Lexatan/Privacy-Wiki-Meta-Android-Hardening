# 🚨 Notfall-Kit: Wenn nichts mehr geht

Falls dein Poco nach einem Debloating-Schritt nicht mehr startet, Apps ständig abstürzen oder das System instabil wird: **Bewahre Ruhe.** Fast alles lässt sich rückgängig machen – **vorausgesetzt, du hattest vorher USB-Debugging aktiviert.**

> [!CAUTION]
> **Die wichtigste Regel:** Deaktiviere niemals mehr als 3–5 Apps gleichzeitig, ohne zwischendurch neu zu starten. So weißt du im Ernstfall sofort, wer der "Übeltäter" war.

---

## 1. 🔍 Den Übeltäter finden

Falls du nicht genau weißt, welche App den Fehler verursacht, lass dir alle betroffenen System-Apps anzeigen:

```bash
adb shell pm list packages -d      # deaktivierte Apps
adb shell pm list packages -u      # deinstallierte Apps (uninstalled)
```

Tipp: Achte besonders auf Apps, die du zuletzt bearbeitet hast.

Für Fortgeschrittene: adb shell cmd package list packages --user 0 zeigt alle Pakete für den Hauptnutzer.

---

2. Einzelne App sofort wiederherstellen

Wenn du den Paketnamen kennst, kannst du die App mit diesem Befehl für den aktuellen Benutzer neu installieren:

```bash
adb shell cmd package install-existing [PAKETNAME]
```

Beispiel für das Sicherheitszentrum (korrekter Paketname):

```bash
adb shell cmd package install-existing com.miui.securitycenter
```

---

3. Der "Abgesicherte Modus" (Safe Mode)

Bevor du alles löschst, versuche den Safe Mode. Hier werden Drittanbieter-Apps und viele Modifikationen temporär deaktiviert.

So aktivierst du ihn (je nach Gerät variiert es):

Methode Tasten / Aktion
Methode 1 (meiste Poco) Gerät ausschalten → einschalten → beim Poco-Logo Leiser-Taste (Volume Down) gedrückt halten
Methode 2 (alternativ) Power-Menü öffnen → lange auf "Neustart" drücken → Bestätigen
Methode 3 (Notfall) Beim Booten Lauter + Leiser gleichzeitig gedrückt halten

Wenn das System im Safe Mode startet, versuche die problematischen Änderungen via ADB rückgängig zu machen. Ein normaler Neustart beendet den Safe Mode wieder.

---

4. Bootloop-Check

Wenn das Handy beim Logo hängen bleibt und nicht mehr hochfährt:

1. ADB-Test: Prüfe am PC, ob das Gerät noch auf Befehle reagiert:
   ```bash
   adb devices
   ```
2. Reaktion? Falls es angezeigt wird, versuche einen Neustart via Befehl:
   ```bash
   adb reboot
   ```
3. Keine Reaktion? Wenn ADB das Gerät nicht findet, ist das System zu früh im Boot-Prozess blockiert. In diesem Fall hilft meist nur noch Punkt 5 oder 6.

---

5. Fastboot (vorletzte Rettung)

Falls Recovery nicht erreichbar ist, versuche Fastboot:

1. Schalte das Gerät aus.
2. Halte Power + Leiser-Taste (Volume Down) gedrückt, bis der Fastboot-Modus erscheint.
3. Am PC: fastboot devices (prüft Verbindung)
4. Von hier aus kannst du ein Factory Reset via fastboot -w auslösen (löscht alle Daten!) oder ein neues ROM flashen.

---

6. "The Nuclear Option" (Alles zurücksetzen)

Dies ist der letzte Ausweg, wenn das System gar nicht mehr lädt, kein ADB-Zugriff möglich ist und Fastboot nicht hilft.

1. Schalte das Handy aus.
2. Halte Power + Lauter (Volume Up) gleichzeitig gedrückt, bis das Poco/Xiaomi Recovery-Menü erscheint.
3. Navigiere mit den Lautstärketasten zu "Wipe Data" und bestätige mit der Power-Taste.
4. Wähle "Wipe All Data" und bestätige die Abfrage.

[!CAUTION]
Achtung: Dabei werden alle Fotos, Apps und Daten auf dem internen Speicher unwiderruflich gelöscht! Ein vorheriges Backup ist dein bester Freund.

---

🆘 Wenn gar nichts mehr hilft

· EDL Mode (Emergency Download): Benötigt spezielle Authorisierung (Xiaomi-Account). Nur für Fortgeschrittene.
· Xiaomi Service Center: Wenn das Gerät hard-bricked ist, bleibt oft nur der Weg zum Fachhändler.

---

⬅️ Zurück zur Hauptseite(readme.md)

```
