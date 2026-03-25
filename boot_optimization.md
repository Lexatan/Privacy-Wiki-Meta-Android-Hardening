# ⚡ Boot- & Start-Optimierung

Ein wirklich gehärtetes System zeichnet sich dadurch aus, dass nur das läuft, was du aktiv gestartet hast. Xiaomi-Geräte laden beim Start standardmäßig viele unnötige Dienste.

### Den Autostart radikal aufräumen
1. **Manueller Check:** Gehe zu `Einstellungen -> Apps -> Berechtigungen -> Autostart`. Deaktiviere hier konsequent alles, was nicht sofort beim Einschalten bereitstehen muss.
2. **Hintergrund-Dienste killen:** Viele Tracker-Dienste starten sich selbst neu ("Broadcast Receivers"). Mit Tools wie **Libre3** (via Shizuku) kannst du diese Komponenten einzeln deaktivieren.
3. **Das Ergebnis:** * Deutlich schnellerer Systemstart.
   * Mehr freier RAM (ca. 10-15% Ersparnis).
   * Tracker können nicht direkt nach dem Booten "nach Hause telefonieren".

### ⚠️ Warnung
Konzentriere dich auf deine installierten Apps und bekannte Bloatware. Deaktiviere keine System-Dienste, deren Funktion du nicht kennst, um Bootloops zu vermeiden.

---
[Zurück zur Übersicht](README.md)
