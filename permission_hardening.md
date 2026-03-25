# 🛡️ Permission-Hardening & App-Ops

Standard-Berechtigungen in den Android-Einstellungen sind oft nur die Spitze des Eisbergs. Viele Apps nutzen "versteckte" Berechtigungen, um im Hintergrund aktiv zu bleiben.

### Was ist App-Ops?
App-Ops ist ein internes Framework von Android, das deutlich feiner arbeitet als das normale Berechtigungs-Menü. Mit Tools wie **App Ops** (via Shizuku) kannst du Apps kontrollieren, ohne dass diese abstürzen.

### 🛠️ Strategien für maximale Privatsphäre
1. **Den "Ignorieren"-Modus nutzen:** Anstatt einer App die Berechtigung hart zu entziehen (was oft zu Abstürzen führt), stellt man sie in App Ops auf "Ignorieren". Die App denkt, sie hätte Zugriff, erhält aber nur leere Daten.
2. **Hintergrund-Aktivität:** Entziehe Apps wie Instagram oder Facebook die Berechtigung "Run in background". Die App arbeitet dann nur, wenn du sie wirklich öffnest.
3. **Identifikatoren schützen:** Blockiere den Zugriff auf die Telefonnummer oder den WLAN-Namen, um geräteübergreifendes Tracking zu erschweren.

---
[Zurück zur Übersicht](README.md)
