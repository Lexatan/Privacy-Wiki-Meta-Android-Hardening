# ⚡ App Ops - Chirurgische Kontrolle (via Shizuku)

App Ops ist das präziseste Werkzeug in deinem Arsenal. Während die Standard-Android-Einstellungen oft nur "Ganz oder gar nicht" erlauben, greift App Ops tief in das Berechtigungs-Framework ein, um Trackern den Hahn abzudrehen, ohne die App unbrauchbar zu machen.

### 🎯 Das "Skalpell"-Prinzip: Ignorieren vs. Ablehnen
Der entscheidende Vorteil von App Ops gegenüber den Bordmitteln:
* **Der "Leere-Daten"-Trick:** Wenn du eine Berechtigung auf **"Ignorieren"** setzt, meldet das System der App Erfolg, liefert aber leere oder neutrale Daten zurück. 
* **Keine Abstürze:** Viele Apps (z.B. Instagram oder Facebook) stürzen ab, wenn man ihnen Rechte entzieht. Mit App Ops "denkt" die App, sie hätte Zugriff, bekommt aber nichts – die App bleibt stabil, deine Daten bleiben privat.

---

### 🔧 Kernfunktionen & Shizuku-Setup
Da dein System bereits für **Shizuku** optimiert ist, benötigt App Ops **keinen Root-Zugriff**.

* **Hintergrund-Abfragen stoppen:** Verhindere, dass Apps wie Meta-Dienste deinen Standort oder Kontakte scannen, während die App gar nicht geöffnet ist.
* **Sensoren-Hardening:** Entziehe Apps den Zugriff auf Clipboard, Benachrichtigungs-Log oder Aktivitätssensoren, die Android standardmäßig oft nicht anzeigt.
* **Vorlagen-System:** Erstelle Profile für verschiedene App-Typen (z.B. "Extremes Hardening" für Social Media).

---

### 🛡️ Empfohlener "Hardening-Eingriff"
Für Apps, die du behalten musst, aber denen du nicht vertraust:
1. **Standort (Hintergrund):** Auf "Ignorieren" setzen.
2. **Kontakte & Anruflisten:** Auf "Ignorieren" setzen (verhindert Schattenprofile).
3. **Clipboard-Zugriff:** Sperren, damit Passwörter aus dem Zwischenspeicher nicht ausgelesen werden.
4. **Wake-Lock:** Unterbinden, um zu verhindern, dass die App das Handy unnötig aufweckt (spart massiv Akku).

---

### ⚠️ Wichtige Hinweise
* **System-Stabilität:** Sei vorsichtig bei Google-Systemdiensten. Das Ändern von Berechtigungen für Android-Kernkomponenten kann zu Fehlfunktionen führen.
* **Prüfung:** Nutze [De1984](de1984.md), um nach dem Eingriff zu kontrollieren, ob die App weiterhin versucht, im Hintergrund nach Hause zu telefonieren.

---

### 🤝 Synergie im Wiki
* **Ergänzung zu [Athena](athena.md):** Während Athena das System härtet, zähmt App Ops die individuellen Apps.
* **Vorbereitung für [Hail](hail.md):** Nutze App Ops für Apps, die laufen müssen, und Hail für Apps, die nur sporadisch aktiv sein dürfen.


| Eigenschaft | Bewertung |
| :--- | :--- |
| **Schwierigkeitsgrad** | 🟡 Mittel bis Hoch |
| **Root notwendig** | ❌ Nein |
| **Shizuku-Anbindung** |  Ja |
| **Risiko** | 🟡 Gering (Gekappte Berechtigungen können Apps crashen lassen) |
| **Datenschutzgewinn** | ⭐⭐⭐⭐⭐ (Kontrolle über versteckte Tracker-Rechte) |
| **Sicherheitsgewinn** | ⭐⭐⭐⭐☆ |




---
[⬅️ Zurück zum Inhaltsverzeichnis](README.md)
