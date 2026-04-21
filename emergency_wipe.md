# 🚨 Notfall-Wipe & Diebstahlschutz

Ein gehärtetes System nützt wenig, wenn ein Angreifer physischen Zugriff auf das entsperrte Gerät erhält oder die PIN durch "Brute-Force" rät.

> ⚠️ **Wichtige Einschränkung vorweg:** Seit Android 12 können normale Apps (auch mit Geräteadministrator-Rechten) **keinen vollständigen Factory Reset mehr auslösen**. Die unten beschriebene App **Wasted** kann daher auf aktuellen Geräten nur noch das Gerät sperren – nicht löschen. Für echte Selbstzerstörung benötigst du Root oder Device-Owner-Rechte.

---

## 🛠️ Wasted (Notfall-Knopf) – eingeschränkt nutzbar

**Wasted** ist eine Open-Source-App (F-Droid), die bei bestimmten Ereignissen sofort alle sensiblen Daten löscht oder das Gerät sperrt. **Auf Android 12+ ist nur die Sperr-Funktion zuverlässig.**

### Auslöser (Trigger) – mit Einschränkungen:

| Trigger | Funktioniert noch? | Hinweis |
|:---|:---:|:---|
| Falsche PIN-Eingabe (X Fehlversuche) | ✅ Ja | Sperrt das Gerät nach X Versuchen. |
| Zeit-Trigger (X Stunden nicht entsperrt) | ✅ Ja | Sperrt das Gerät. |
| Remote-SMS | ❌ Nein | Android erlaubt SMS-Zugriff nur für Standard-SMS-App. |
| USB-Ereignis (unbekanntes Gerät) | ✅ Ja | **Achtung:** Ein normales Ladekabel löst den Alarm ebenfalls aus! |

---

## ⚙️ Einrichtung am Poco

1. **Admin-Rechte:** Wasted benötigt "Geräteadministrator"-Rechte, um das System sperren zu können.
2. **Sicherheitsstufe wählen:**
   - *Stufe 1:* Nur Apps sperren (funktioniert)
   - *Stufe 2:* Alle Daten löschen (Factory Reset) – **funktioniert auf Android 12+ NICHT ohne Root/Device-Owner**
3. **Testlauf mit Vorsicht:**
   - Teste die App **auf einem nicht kritischen Gerät** oder mit einem Zweitprofil.
   - **Warnung:** Ein echter Test mit falscher PIN kann dich aussperren, wenn du die Backup-PIN vergisst.

---

## 🔄 Alternative Strategien (ohne Wasted)

Falls Wasted für dich nicht funktioniert:

1. **Shelter / Insular:** Das Arbeitsprofil kann bei zu vielen Fehlversuchen automatisch zurückgesetzt werden (über die integrierte Funktion "Profil zurücksetzen").
2. **Find My Device (Google):** Ermöglicht Fernlöschung, aber mit Datenschutz-Nachteilen.
3. **Manuelle Strategie:** Verschlüsseltes Backup + Vertrauen darauf, dass ein Hard Reset (Recovery-Modus) das Gerät löscht.

---

> [!CAUTION]
> **Backup-Pflicht!**
> Bevor du einen Notfall-Wipe einrichtest, stelle sicher, dass du ein aktuelles verschlüsseltes Backup (siehe [Cloud Encryption](cloud_encryption.md)) hast. Ein Fehlalarm löscht unwiederbringlich alles! Prüfe auch die Wiederherstellung (siehe [Emergency Kit](emergency_kit.md)).

---
[⬅️ Zurück zum Inhaltsverzeichnis](README.md)
