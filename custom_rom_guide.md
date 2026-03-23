# 🔓 Custom ROMs: Der nächste Schritt?

Wenn dir das Debloating von HyperOS/MIUI nicht reicht, ist der Wechsel auf ein Custom ROM (ein alternatives Betriebssystem) die ultimative Lösung für Privatsphäre.

## ⚖️ Pro & Contra
Bevor du den Bootloader öffnest, solltest du die Vor- und Nachteile kennen:

| Vorteil | Nachteil |
| :--- | :--- |
| Keine Xiaomi-Tracker mehr auf Systemebene | Garantieverlust (oftmals) |
| Längere Updates (z. B. durch LineageOS) | Banking-Apps/Google Pay zicken oft (Play Integrity) |
| Volle Kontrolle über den Kernel | DRM-Einschränkungen (Netflix oft nur in SD/L3) |

## 🚀 Bekannte ROMs für Poco-Geräte
1. **LineageOS:** Der Klassiker. Stabil, sauber, aber ohne Google-Dienste (müssen extra installiert werden).
2. **Pixel Experience:** Sieht aus wie auf einem Google Pixel. Sehr benutzerfreundlich.
3. **Xiaomi.eu:** Eine optimierte Version der originalen China-ROM (ohne Werbung und Bloatware).

## ⚠️ Wichtiger Hinweis
Das Flashen eines ROMs erfordert das **Öffnen des Bootloaders**. Dies löscht alle Daten und schwächt die physische Sicherheit deines Geräts (kein Verified Boot). Überlege dir diesen Schritt gut!

---


## Ergänzungen: Wichtige Hinweise für Poco/Xiaomi-Nutzer

Bevor du den Schritt zu einem Custom ROM wagst, gibt es einige Xiaomi-spezifische Besonderheiten, die unbedingt beachtet werden sollten.

---

### Bootloader-Entsperrung bei Xiaomi/Poco

Der Prozess ist bewusst umständlich und dauert seine Zeit:

1. **Mi-Konto erforderlich** – Du benötigst ein Xiaomi-Konto, das auf dem Gerät angemeldet sein muss.
2. **Wartezeit** – Nach der ersten Entsperranforderung wartest du aktuell **7–14 Tage**, bevor der Bootloader tatsächlich entsperrt werden kann.
3. **Entsperr-Tool** – Die offizielle Methode nutzt das *Mi Unlock Tool* unter Windows.
4. **Datenverlust** – Der Entsperrvorgang löscht automatisch alle Daten auf dem Gerät.

> **Wichtig:** Nicht alle Poco/Xiaomi-Modelle sind entsperrbar. Manche Carrier-gebundene Geräte (z. B. Vodafone/Varaint) haben oft gesperrte Bootloader.

---

### Anti-Rollback – Die harte Falle

Xiaomi verbaut in vielen Geräten einen **Anti-Rollback-Mechanismus**:

- Jede offizielle MIUI/HyperOS-Version hat einen Anti-Rollback-Index (ARB).
- Ein Downgrade auf eine ältere Version mit **niedrigerem Index** kann das Gerät **unwiderruflich hard-bricken** (kein Recovery, kein Fastboot, kein Laden mehr).
- **Faustregel:** Flashe niemals eine ältere offizielle Xiaomi-Firmware zurück. Bei Custom ROMs ist das Risiko gering, solange du dich an die Anleitungen für dein spezifisches Gerät hältst.

---

### Verified Boot & Sicherheitswarnung

Nach dem Entsperren des Bootloaders:

- Beim Start erscheint eine **Warnmeldung**, dass das Gerät nicht vertrauenswürdig ist (kann nicht deaktiviert werden).
- Der **Verified Boot** ist deaktiviert – theoretisch könnte ein Angreifer mit physischem Zugriff das System manipulieren.
- **Banking-Apps & Google Pay:** Viele erkennen den entsperrten Bootloader und verweigern den Dienst (Play Integrity-Fail). Das kann oft mit Magisk/Zygisk und Modulen wie *Play Integrity Fix* umgangen werden – das erfordert jedoch zusätzlichen Aufwand.

---

### Google-Dienste auf Custom ROMs

Je nach ROM musst du Google-Dienste separat installieren:

| ROM-Typ | Empfehlung |
|---------|------------|
| LineageOS & ähnliche AOSP-ROMs | **MindTheGapps** (stabil, minimal) oder **NikGapps** (mehr Auswahl) |
| Pixel Experience / crDroid | Google-Dienste oft bereits integriert |
| Ohne Google | **microG** als Open-Source-Alternative – gut für Privatsphäre, aber nicht alle Apps funktionieren |

---

### Bootloader wieder sperren (Relock)

Wenn du zurück zu MIUI/HyperOS willst:

1. Flashe das **originale Fastboot-ROM** (nicht Recovery-ROM) über Mi Flash Tool.
2. Nach erfolgreichem Flash kann der Bootloader über *Mi Unlock Tool* mit der Option "Relock" wieder gesperrt werden.
3. **Achtung:** Der Relock löscht alle Daten und funktioniert **nur mit der originalen Xiaomi-Software**. Ein gesperrter Bootloader mit Custom ROM führt zu einem **Hard-Brick**.

---

### Kurz-Checkliste vor dem Start

- [ ] Gerätemodell genau kennen (z. B. Poco F3 = alioth)
- [ ] Offizielles Fastboot-ROM für Notfälle heruntergeladen
- [ ] Backup aller wichtigen Daten (nicht auf internem Speicher!)
- [ ] USB-Treiber und Mi Unlock Tool bereit
- [ ] 7–14 Tage Wartezeit eingeplant

---

**Zurück zur Hauptseite**
