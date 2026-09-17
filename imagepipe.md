# 📸 Imagepipe: EXIF-Metadaten-Cleaner & Bild-Anonymisierung

Wenn du ein Foto mit deinem Smartphone machst, speichert die Kamera-App im Hintergrund sogenannte **EXIF-Daten**. Dazu gehören exakte **GPS-Standortdaten**, Datum/Uhrzeit, Kameramodell und Geräteeinstellungen. Wenn du dieses Bild im Original teilst, kann jeder Empfänger deine genaue Adresse oder deinen Aufenthaltsort auslesen.

**Imagepipe** fängt Fotos vor dem Hochladen oder Versenden ab, entfernt alle versteckten Metadaten restlos und verkleinert das Bild auf Wunsch, um zusätzlichen Tracking-Abdruck zu minimieren.

---

## 🌟 Hauptfunktionen

* **Automatisches EXIF-Stripping:** Entfernt GPS-Daten, Seriennummern, Zeitstempel und Kamera-Profile vollständig aus Bilddateien.
* **Bildgröße & Qualität anpassen:** Reduziert die Bildauflösung vor dem Senden, was Datenvolumen spart und das Auslesen spezifischer Sensor-Fingerabdrücke erschwert.
* **Bilder verwischen / Anonymisieren:** Erlaubt das schnelle Unkenntlichmachen von Gesichtern oder Autokennzeichen direkt im Share-Workflow.
* **Absolut Offline:** Benötigt keinerlei Netzwerk-Berechtigung und verarbeitet sämtliche Daten ausschließlich lokal im RAM.

---

## 🛠️ Einrichtung & Bezugsquelle

### 📦 Woher bekommst du Imagepipe?
Die App ist vollständig Open Source und kann über folgende vertrauenswürdige Quellen bezogen werden:

* **Neo Store / F-Droid:** Suche im Store nach `Imagepipe` (im Standard F-Droid Repository enthalten).
* **Obtainium (Empfohlen):** Füge die Quell-URL des Entwicklers direkt hinzu, um automatische Releases ohne Verzögerung zu beziehen:
  `https://github.com/vaucher/imagepipe`
* **GitHub Releases:** Direkter APK-Download über das Repository des Entwicklers (*vaucher/imagepipe*).

---

## 🚀 Workflow beim Teilen

1. Wähle in deiner Galerie ein Bild aus und tippe auf **Teilen**.
2. Wähle **Imagepipe** als Ziel-App aus.
3. Imagepipe entfernt augenblicklich die Metadaten im Hintergrund.
4. Wähle anschließend die gewünschte Ziel-App (z. B. *Element X*, *Mull* oder Messenger), an die das gereinigte Bild übergeben werden soll.

---

## 📋 Best Practice für Medien-Sicherheit

* **Verknüpfung mit Kamera-Apps:** Deaktiviere zusätzlich in deiner System-Kamera-App die Option *„Standort speichern“* (`Einstellungen ➔ Standortschalter aus`), um bereits die Entstehung von GPS-Metadaten zu verhindern.
* **Dokumenten-Scans:** Nutze für PDFs und Dokumente die separate Dokumenten-Härtung, da Imagepipe auf Bildformate (JPG, PNG, WebP) spezialisiert ist.

---

| Eigenschaft | Bewertung |
| :--- | :--- |
| **Schwierigkeitsgrad** | 🟢 Leicht |
| **Root notwendig** | ❌ Nein |
| **Shizuku-Anbindung** | ❌ Nein |
| **Risiko** | 🟢 Absolut risikofrei |
| **Datenschutzgewinn** | ⭐⭐⭐⭐⭐ (Verhindert Standort-Leaks über Fotodateien) |
| **Sicherheitsgewinn** | ⭐⭐⭐☆☆ |

---
[⬅️ Zurück zur Hauptseite](README.md)
