# ☁️ Verschlüsselte Synchronisation (Zero-Knowledge)

Daten in der Cloud (Google Drive, Dropbox, OneDrive) sind standardmäßig für die Anbieter lesbar. Ziel dieses Kapitels ist es, Daten zu verschlüsseln, *bevor* sie das Poco verlassen.

---

## 🔐 Cryptomator (Dateiverschlüsselung)
Cryptomator erstellt einen virtuellen Tresor auf deinem Handy. Jede Datei wird einzeln verschlüsselt, bevor sie in die Cloud hochgeladen wird.
* **Vorteil:** Der Cloud-Anbieter sieht nur unleserliche Zeichensalate, keine Dateinamen oder Inhalte.
* **Fokus:** Ideal für Dokumente aus deinem [Metadaten-Stripping](document_hardening.md).

---

## 🔄 EteSync (Kontakte, Kalender & Notizen)
Anstatt Google-Kontakte zu nutzen, verschlüsselt EteSync deine PIM-Daten (Personal Information Management) Ende-zu-Ende.
* **Vorteil:** Volle Synchronisation zwischen Geräten, aber ohne dass der Serverbetreiber Zugriff auf deine Termine oder Kontakte hat.

---

## ⚙️ Workflow für maximale Sicherheit
1. **Datei härten:** Metadaten mit ExifEraser entfernen.
2. **In Tresor schieben:** Datei in einen Cryptomator-Ordner kopieren.
3. **Synchronisieren:** Den verschlüsselten Ordner mit deiner bevorzugten Cloud-App (oder Nextcloud) hochladen.

---
[⬅️ Zurück zum Inhaltsverzeichnis](README.md)
