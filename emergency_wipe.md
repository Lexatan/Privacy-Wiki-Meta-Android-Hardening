# 🚨 Notfall-Wipe & Diebstahlschutz

Ein gehärtetes System nützt wenig, wenn ein Angreifer physischen Zugriff auf das entsperrte Gerät erhält oder die PIN durch "Brute-Force" rät.

---

## 🛠️ Wasted (Notfall-Knopf)
**Wasted** ist eine Open-Source-App (F-Droid), die bei bestimmten Ereignissen sofort alle sensiblen Daten löscht oder das Gerät sperrt.

### Auslöser (Trigger):
* **Falsche PIN-Eingabe:** Nach X Fehlversuchen wird der Wipe ausgelöst.
* **Zeit-Trigger:** Wenn das Handy X Stunden nicht entsperrt wurde.
* **Remote-SMS:** Ein spezielles Codewort per SMS löst die Sperrung aus.
* **USB-Ereignis:** Wenn ein unbekanntes USB-Gerät (z.B. Forensik-Tool) angeschlossen wird.

---

## ⚙️ Einrichtung am Poco
1. **Admin-Rechte:** Wasted benötigt "Geräteadministrator"-Rechte, um das System sperren oder löschen zu können.
2. **Sicherheitsstufe wählen:** * *Stufe 1:* Nur Apps sperren.
   * *Stufe 2:* Alle Daten löschen (Factory Reset).
3. **Testlauf:** Teste die App unbedingt einmal ohne die "Löschen"-Funktion, um sicherzugehen, dass sie korrekt auf die Trigger reagiert.

---

> [!CAUTION]
> **Backup-Pflicht!**
> Bevor du einen Notfall-Wipe einrichtest, stelle sicher, dass du ein aktuelles verschlüsseltes Backup (siehe [Cloud Encryption](cloud_encryption.md)) hast. Ein Fehlalarm löscht unwiederbringlich alles!

---
[⬅️ Zurück zum Inhaltsverzeichnis](README.md)
