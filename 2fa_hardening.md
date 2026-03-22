# 🔐 2FA-Hardening (Weg von SMS & Google)

Die Zwei-Faktor-Authentifizierung (2FA) ist essenziell, aber die Methode entscheidet über deine Privatsphäre. SMS-Codes und der Google Authenticator haben gravierende Nachteile.

---

## 🚫 Warum keine SMS oder Google Authenticator?
* **SMS-TAN:** Kann durch "SIM-Swapping" abgefangen werden. Zudem sieht dein Provider (und potenziell Behörden), wann du dich wo einloggst.
* **Google Authenticator:** Keine native Verschlüsselung der lokalen Datenbank und starke Bindung an dein Google-Konto.

---

## 🛠️ Die Lösung: Aegis oder Ente Auth
Nutze quelloffene Apps, die deine Codes lokal verschlüsseln und dir die volle Kontrolle geben.

### Empfehlung: Aegis Authenticator (F-Droid)
1. **Biometrische Sperre:** Schütze den Zugriff auf deine Codes mit einem starken Passwort oder Fingerabdruck.
2. **Verschlüsselte Backups:** Erstelle regelmäßig ein Backup deiner Vault-Datei. Speichere dieses Backup **niemals** unverschlüsselt in einer Cloud, sondern lokal oder auf einem USB-Stick.
3. **Icons & Gruppen:** Aegis erlaubt es, Logos für deine Dienste zu laden, was die Übersicht enorm verbessert.

---

## 💡 Profi-Tipp: Backup-Codes sichern
Wenn du 2FA für einen Dienst (z.B. Instagram) aktivierst, erhältst du einmalige **Backup-Codes**.
* **Aktion:** Drucke diese Codes aus oder speichere sie in einem verschlüsselten Passwort-Manager (wie KeePassDX). Wenn dein Handy verloren geht, sind diese Codes dein einziger Weg zurück in deinen Account.

---
[⬅️ Zurück zur Hauptseite](README.md)
