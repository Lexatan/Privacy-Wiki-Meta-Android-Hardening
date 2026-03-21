# 🛡️ DNS-Filtering & Kontrolle (Deep-Dive)

Das "Private DNS" in den Android-Einstellungen ist der erste Schritt. Ein **kontrollierbarer DNS-Filter** ist jedoch das mächtigste Werkzeug, um Tracker systemweit (auch in Apps!) zu blockieren.

---

## 🛑 Warum Standard-DNS nicht reicht
Standard-Anbieter (wie Google oder dein Provider) protokollieren jede Website, die du aufrufst. Ein Privacy-DNS filtert diese Anfragen und lässt Tracker-Domains einfach "ins Leere" laufen.

### Vergleich der Profi-Anbieter:

| Dienst | Besonderheit | Filter-Level |
| :--- | :--- | :--- |
| **NextDNS** | Vollständig konfigurierbar (Dashboard/Listen) | 🛡️🛡️🛡️ (Maximal) |
| **AdGuard DNS** | Bekanntester Filter; sehr gute Balance & einfach | 🛡️🛡️🛡️ (Stark) |
| **Mullvad DNS** | Extrem fokussiert auf Privatsphäre (No-Log) | 🛡️🛡️ (Stark) |
| **Quad9** | Fokus auf Sicherheit & Malware-Schutz | 🛡️ (Basis) |

---

## 🛠️ Setup: NextDNS (Empfehlung für volle Kontrolle)
Mit NextDNS kannst du genau sehen, welche App versucht, "nach Hause zu telefonieren", und es gezielt unterbinden.

1.  Erstelle ein kostenloses Konto auf [NextDNS.io](https://nextdns.io).
2.  Wähle unter **"Privacy"** fertige Listen aus (z.B. *OISD* oder *Steven Black*).
3.  Aktiviere unter **"Security"** den Schutz vor bekannten Tracking-Servern.
4.  **Einrichtung auf dem Poco:** Kopiere deine persönliche ID (z.B. `deine-id.dns.nextdns.io`) in die Android-Einstellungen unter **Privates DNS**.

## ⚡ Schnelle Alternative: AdGuard (Ohne Account)
Wenn du sofort und ohne Registrierung systemweit Werbung und Tracker blockieren willst:

1.  Gehe in die **Einstellungen** -> **Verbindung & Teilen** -> **Privates DNS**.
2.  Wähle "Privater DNS-Anbieter-Hostname".
3.  Gib ein: `dns.adguard.com`
4.  **Ergebnis:** Sofortiger Schutz für das gesamte Gerät.

---

## 📊 Was wird blockiert?
Nach der Einrichtung werden Anfragen an folgende Domains automatisch gestoppt:
* `graph.facebook.com` (Meta Tracking)
* `app-measurement.com` (Google Analytics)
* `p.ads.xiaomi.com` (Xiaomi Werbung)

---
[⬅️ Zurück zur Hauptseite](README.md)
