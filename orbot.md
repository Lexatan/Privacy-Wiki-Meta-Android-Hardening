# 🧅 Orbot: Tor-Proxy & App-Routing für Android

**Orbot** ist die offizielle Open-Source-Anwendung des Guardian Projects / Tor Projects für Android. Es ermöglicht, den Internetverkehr ausgewählter Apps über das **Tor-Netzwerk** zu leiten, um deine IP-Adresse zu verschleiern, Standorte zu anonymisieren und Inhaltsblockaden zu umgehen.

Im Gegensatz zum *Tor Browser* ist Orbot kein reiner Browser, sondern fungiert als lokaler **Proxy & VPN-Dienst** für das gesamte System oder einzeln gewählte Apps.

---

## 🌟 Hauptfunktionen

* **App-basiertes Routing (Smart VPN):** Du kannst exakt festlegen, welche Apps über Tor getunnelt werden sollen (z. B. *Mull*, *Element X*, *Feeder*) und welche direkt verbinden.
* **Lokaler SOCKS5 / HTTP-Proxy:** Stellt lokale Proxy-Ports (`127.0.0.1:9050` / `9040`) bereit. Damit können Apps mit eigener Proxy-Unterstützung Tor nutzen, **ohne** den VPN-Slot von Android zu belegen.
* **Tor-Brücken (Bridges) & Snowflake:** Umgeht Tor-Sperren in restriktiven Netzwerken (z. B. öffentliches WLAN, Schulnetze oder restriktive Mobilfunkanbieter) über `obfs4` oder `snowflake`.
* **Onion-Services:** Ermöglicht den Zugriff auf versteckte `.onion`-Websites und -Dienste direkt über Drittanbieter-Apps.

---

## 🛠️ Einrichtung & Workflow

1. **Bezugsquelle:** Lade Orbot bevorzugt über **Obtainium** (direkt vom GitHub-Repository `guardianproject/orbot`) oder den **Aurora Store** / **F-Droid (Guardian Project Repo)** herunter.
2. **Standard-Modus (VPN-Tunneling):**
   * Öffne Orbot und wähle **VPN-Modus** (*VPN Mode*).
   * Tippe auf das Zahnrad-Symbol (**Apps auswählen**) und hake nur die Apps an, die anonymisiert werden sollen.
   * Tippe auf **Starten**, um die Verbindung zum Tor-Netzwerk aufzubauen.
3. **Tor-Brücken (falls Blockaden bestehen):**
   * Falls die Verbindung fehlschlägt oder hängen bleibt, aktiviere in den Einstellungen **Tor-Brücken verwenden** (*Use Bridges*) und wähle **Snowflake** oder **obfs4**.

---

## ⚠️ Wichtiger HyperOS / Poco Hinweis (VPN-Konflikte)

Android erlaubt grundsätzlich nur **eine aktive VPN-Schnittstelle** gleichzeitig.

* **Das Problem:** Wenn du bereits eine lokale Firewall wie **NetGuard**, **RethinkDNS** oder **ShizuWall** im VPN-Modus nutzt, blockiert diese den VPN-Slot für Orbot.
* **Die Lösung (Proxy-Modus):**
  1. Deaktiviere in Orbot den **VPN-Modus**.
  2. Starte Orbot ganz normal als Hintergrunddienst.
  3. Konfiguriere in der Ziel-App (z. B. Firefox/Mull, DuckDuckGo Browser oder Thunderbird) den Proxy manuell:
     * **Typ:** SOCKS5
     * **Host:** `127.0.0.1`
     * **Port:** `9050`
  4. Somit schützt deine Firewall das gesamte System, während ausgewählte Apps den Traffic direkt über Orbots SOCKS5-Proxy in das Tor-Netzwerk schleusen.

---

| Eigenschaft | Bewertung |
| :--- | :--- |
| **Schwierigkeitsgrad** | 🟡 Mittel |
| **Root notwendig** | ❌ Nein |
| **Shizuku-Anbindung** | ❌ Nein |
| **Risiko** | 🟢 Minimal (Mögliche Geschwindigkeitseinbußen durch Tor) |
| **Datenschutzgewinn** | ⭐⭐⭐⭐⭐ (Versteckt IP-Adresse & Standort vor Zielservern) |
| **Sicherheitsgewinn** | ⭐⭐⭐⭐☆ (Verschlüsselte Anonymisierung über 3 Hops) |

---
[⬅️ Zurück zur Hauptseite](README.md)
