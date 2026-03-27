# 📄 Dokumenten-Härtung (Metadaten-Stripping)

Während Bilder oft über EXIF-Daten getrackt werden, enthalten Dokumente (PDF, .docx) oft Informationen über den Ersteller, die verwendete Software, Bearbeitungszeiten und sogar lokale Dateipfade.

---

## 🚫 Risiken in Dokumenten
* **Klarnamen:** PDFs speichern oft den Namen des PC-Benutzers als Autor.
* **Software-Fingerprint:** Versionen von Office-Suites können Rückschlüsse auf dein System zulassen.
* **Zeitstempel:** Erstellungs- und Änderungsdaten verraten deine Aktivitätsmuster.

---

## 🛠️ Empfohlene Tools für Android
* **ExifEraser:** Unterstützt neben Bildern auch viele andere Dateitypen.
* **Scrambled Exif:** Ideal zum schnellen Teilen via Messenger.
* **Document Viewer (FOSS):** Viele Open-Source Betrachter erlauben das Drucken als "sauberes" PDF, was viele Metadaten entfernt.

---

## 🛡️ Workflow zur Absicherung
1. **Datei auswählen:** Bevor du ein Dokument hochlädst, öffne es in einem Metadaten-Editor.
2. **Säubern:** Entferne alle Tags wie `Author`, `Producer` und `CreationDate`.
3. **Drucken als PDF:** Ein effektiver Trick ist es, das Dokument erneut als PDF zu "drucken". Dabei wird oft ein neues Dokument ohne den historischen Ballast der Originaldatei erstellt.

---

> [!CAUTION]
> **Cloud-Uploads:** Lade niemals ungesäuberte Dokumente in Cloud-Speicher hoch. Anbieter scannen diese Dateien automatisch und verknüpfen die Metadaten mit deinem Profil.

---
[⬅️ Zurück zum Inhaltsverzeichnis](README.md)
