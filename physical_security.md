# 🛡️ Physische Sicherheit & Anti-Forensik

Hardening endet nicht bei der Software-Konfiguration. Wenn dein Gerät physisch entwendet wird oder du es im entsperrten Zustand aus der Hand geben musst, greifen andere Schutzmechanismen.

---

## 🔒 Der sicherste Zustand: BFU (Before First Unlock)
Nach einem Neustart befindet sich Android im **BFU-Modus**. In diesem Zustand sind fast alle Daten auf dem Speicher noch vollständig verschlüsselt. Erst nach der ersten PIN-Eingabe (AFU - After First Unlock) werden die Verschlüsselungs-Keys in den Arbeitsspeicher geladen.

### 🛠️ Hardening-Schritte auf dem Poco:
1. **Automatischer Neustart:**
   * **Pfad:** `Einstellungen -> Akku -> App-Energiesparmodus -> (Zahnrad oben rechts) -> Ein-/Ausschalten planen`.
   * **Aktion:** Plane einen täglichen Neustart (z.B. um 04:00 Uhr morgens).
   * **Effekt:** Dein Handy ist jeden Morgen im sichersten Verschlüsselungszustand.
2. **USB-Debugging deaktivieren:**
   * **Pfad:** `Einstellungen -> Weitere Einstellungen -> Entwickleroptionen`.
   * **Aktion:** Schalte **USB-Debugging** sofort aus, nachdem du mit Shizuku oder Canta fertig bist.
   * **Warum?** Ein aktives USB-Debugging ist ein offenes Tor für Forensik-Tools am PC.

---

## 🚨 Der "Panic Button" (Wasted)
Wenn du in eine Situation gerätst, in der du dein Handy schnell sperren oder sensible Daten schützen musst, hilft die App **Wasted** (F-Droid).

* **Funktionen:**
    * Sperrt das Handy sofort bei einem bestimmten Auslöser.
    * Kann so konfiguriert werden, dass es bei X Fehlversuchen der PIN-Eingabe sensible Apps (wie Shelter/Insular) löscht.
    * Trigger über eine diskrete Kachel in den Schnelleinstellungen.

---

## 🔌 Schutz vor "Juice Jacking"
Öffentliche Ladestationen (Flughäfen, Cafés) können präpariert sein, um Daten über das USB-Kabel abzugreifen.
* **Lösung:** Nutze ein reines Ladekabel (ohne Datenleitungen) oder einen **USB-Datenblocker** ("USB-Kondom"), der die Datenpins physisch trennt.

---
### 🛡️ Lockdown-Modus (Biometrie-Killswitch)
In Situationen, in denen du gezwungen werden könntest, dein Handy per Fingerabdruck zu entsperren, versetzt dieser Modus das Gerät sofort zurück in den sicheren BFU-ähnlichen Zustand.

* **Pfad:** Einstellungen > Sperrbildschirm > Sperrbildschirm-Einstellungen > "Sperroption anzeigen" aktivieren.
* **Nutzung:** Halte die Power-Taste gedrückt und wähle **Lockdown**.
* **Effekt:** Biometrie (Fingerabdruck/Face-Unlock) wird deaktiviert. Das Handy verlangt zwingend dein Passwort/PIN.

### 📋 Clipboard-Privacy (Zwischenablage-Schutz)
Verhindere, dass Apps im Hintergrund heimlich deine kopierten Passwörter oder 2FA-Codes auslesen.

* **Pfad:** Einstellungen > Datenschutz.
* **Aktion:** Aktiviere **"Zugriff auf Zwischenablage anzeigen"**. 
* **Vorteil:** Du erhältst sofort eine Benachrichtigung (Toast), wenn eine App auf deine Zwischenablage zugreift.
  
[⬅️ Zurück zur Hauptseite](README.md)
