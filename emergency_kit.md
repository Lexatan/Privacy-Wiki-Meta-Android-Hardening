# Notfall-Kit: Wenn nichts mehr geht

Falls dein Poco nach einem Debloating-Schritt nicht mehr startet, Apps ständig abstürzen oder das System instabil wird: **Bewahre Ruhe.** Fast alles lässt sich ohne Datenverlust rückgängig machen, solange du noch Zugriff auf das System oder ADB hast.

---

## 1. Den Übeltäter finden

Falls du nicht genau weißt, welche App den Fehler verursacht, lass dir alle deaktivierten oder deinstallierten System-Apps anzeigen:

```bash
adb shell pm list packages -d
```

Tipp: Achte besonders auf Apps, die du zuletzt bearbeitet hast.

---

2. Einzelne App sofort wiederherstellen

Wenn du den Paketnamen kennst, kannst du die App mit diesem Befehl für den aktuellen Benutzer neu installieren:

```bash
adb shell cmd package install-existing [PAKETNAME]
```

Beispiel für das Sicherheitszentrum:

```bash
adb shell cmd package install-existing com.miui.security
```

---

3. Der "Abgesicherte Modus" (Safe Mode)

Bevor du alles löschst, versuche den Safe Mode.
Hier werden Drittanbieter-Apps und viele Modifikationen temporär deaktiviert, was oft einen normalen Systemstart ermöglicht.

1. Schalte das Gerät komplett aus.
2. Schalte es ein und halte die Leiser-Taste (Volume Down) gedrückt, sobald das Poco-Logo erscheint.
3. Wenn das System im Safe Mode startet, versuche die problematischen Änderungen via ADB rückgängig zu machen.
4. Ein normaler Neustart beendet den Safe Mode wieder.

---

4. Bootloop-Check

Wenn das Handy beim Logo hängen bleibt und nicht mehr hochfährt:

· ADB-Test: Prüfe am PC, ob das Gerät noch auf Befehle reagiert:
  ```bash
  adb devices
  ```
· Reaktion? Falls es angezeigt wird, versuche einen Neustart via Befehl:
  ```bash
  adb reboot
  ```
· Keine Reaktion? Wenn ADB das Gerät nicht findet, ist das System zu früh im Boot-Prozess blockiert. In diesem Fall hilft meist nur noch Punkt 5.

---

5. "The Nuclear Option" (Alles zurücksetzen)

Dies ist der letzte Ausweg, wenn das System gar nicht mehr lädt und kein ADB-Zugriff möglich ist.

1. Schalte das Handy aus.
2. Halte Power + Lauter (Volume Up) gleichzeitig gedrückt, bis das Poco/Xiaomi Recovery-Menü erscheint.
3. Navigiere mit den Lautstärketasten zu "Wipe Data" und bestätige mit der Power-Taste.
4. Wähle "Wipe All Data" und bestätige die Abfrage.

[!CAUTION] Achtung: Dabei werden alle Fotos, Apps und Daten auf dem internen Speicher unwiderruflich gelöscht!

---

Pro-Tipp für die Zukunft:
Deaktiviere niemals mehr als 3–5 Apps gleichzeitig, ohne zwischendurch neu zu starten. So weißt du im Ernstfall sofort, wer der "Übeltäter" war.

```
