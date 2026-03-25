# 📂 Scoped Storage & Dateimanagement

### Warum ist das wichtig?
Früher konnten Apps mit der Berechtigung "Dateizugriff" dein gesamtes Handy scannen (Fotos, Dokumente, Downloads). **Scoped Storage** (ab Android 10/11) isoliert Apps, aber viele verlangen immer noch "Vollzugriff".

### 🛡️ Best Practices für deine Daten
1. **Den "Alles erlauben"-Reflex stoppen:** Wenn eine App (z.B. ein Foto-Editor) Zugriff fordert, nutze den systemeigenen **File Picker**. So sieht die App nur das eine Bild, das du auswählst, nicht deine ganze Galerie.
2. **Daten-Isolation:** Nutze separate Ordner für sensible Dokumente, die außerhalb der Standard-Ordner (DCIM, Downloads) liegen.
3. **Vermeide Cloud-Sync-Apps mit Vollzugriff:** Apps wie Dropbox oder Google Fotos scannen ständig im Hintergrund. Nutze stattdessen **Nextcloud** oder **Syncthing** mit gezielter Ordner-Freigabe.

### 🛠️ Empfohlene Dateimanager (F-Droid)
Diese Apps respektieren deine Privatsphäre und helfen dir, Scoped Storage zu verwalten:
* **Material Files:** Schlank, Open-Source und perfekt für die Navigation in geschützten Android-Verzeichnissen.
* **Simple File Manager Pro:** Sehr intuitiv, ohne Tracker und mit Fokus auf lokale Sicherheit.

---
[Zurück zur Übersicht](README.md)
