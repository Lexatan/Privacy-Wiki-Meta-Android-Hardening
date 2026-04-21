# 🔄 De-Googled Sync: Kontakte, Kalender & Daten ohne Google

Wenn du Google-Dienste einschränkst oder deaktivierst, verlierst du die Standard-Synchronisation. Um dennoch geräteübergreifend aktuell zu bleiben, ohne deine Daten preiszugeben, nutzen wir quelloffene Protokolle (**DAV**).

## 🛡️ Die Strategie: Zero-Knowledge & FOSS
Das Ziel ist es, Daten entweder nur **lokal**, **End-zu-End verschlüsselt** oder auf **vertrauenswürdigen Servern** zu speichern, die nicht zu Werbezwecken mitlesen.

---

## 🛠 Tools für den Umstieg

### 1. DAVx⁵ (Der Alleskönner)
**DAVx⁵** ist die Brücke zwischen deinem Android-System und sicheren Cloud-Speichern.
* **Funktion:** Synchronisiert Kontakte (CardDAV) und Kalender (CalDAV).
* **Vorgehen:** Exportiere deine Google-Kontakte einmalig als `.vcf` und importiere sie bei einem sicheren Anbieter oder lokal. Nutze DAVx⁵, um sie fortan zu synchronisieren.

### 2. Ente Photos oder Nextcloud (Foto-Backup)
Statt Google Fotos nutzen wir Dienste, die Privatsphäre respektieren:
* **[Ente Photos](https://ente.io/):** Komplett End-zu-End verschlüsselt (E2EE). Selbst der Anbieter kann deine Bilder nicht sehen.
* **[Nextcloud](https://nextcloud.com/):** Die ultimative Lösung für Fortgeschrittene (Self-Hosting oder vertrauenswürdige Anbieter wie Hetzner/Mailbox.org).

### 3. Proton Drive / Mega (Datei-Cloud)
Für Dokumente, die du überall brauchst:
* Nutze Anbieter mit **Zero-Knowledge-Verschlüsselung**. Deine Daten werden auf deinem Handy verschlüsselt, bevor sie hochgeladen werden.

---

## 📋 Checkliste für den Umzug
1. [ ] **Export:** Kontakte bei Google Contacts als VCF exportieren.
2. [ ] **Import:** In einen neuen Account (z.B. Proton, Mailbox.org oder Nextcloud) importieren.
3. [ ] **Kopplung:** DAVx⁵ installieren und mit dem neuen Account verbinden.
4. [ ] **Abschluss:** In den Android-Einstellungen das Google-Konto für die Synchronisation von Kontakten/Kalendern deaktivieren.

---
[⬅️ Zurück zur Hauptseite](README.md)
