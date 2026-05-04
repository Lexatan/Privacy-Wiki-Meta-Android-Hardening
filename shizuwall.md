# 🛡️ ShizuWall: Firewall ohne VPN-Zwang

**ShizuWall** ist eine bahnbrechende Open-Source-Firewall für Android (ab Version 11), die einen entscheidenden Vorteil bietet: Sie benötigt **keinen VPN-Slot**.

## 🚀 Warum ShizuWall?

Herkömmliche Firewalls wie NetGuard nutzen die Android-VPN-Schnittstelle. Das bedeutet, du kannst keinen echten VPN (wie Mullvad oder Proton) gleichzeitig nutzen. ShizuWall nutzt stattdessen **Shizuku**, um direkt mit dem systeminternen Netzwerk-Framework von Android zu kommunizieren.

### 💎 Vorteile
* **Kein VPN-Tunnel:** Dein VPN-Slot bleibt frei für echte Verschlüsselung.
* **Systemnahe Kontrolle:** Nutzt Androids native "Chain-3" Steuerung.
* **Extrem Akkusparend:** Da kein lokaler VPN-Server im Hintergrund laufen muss.
* **Keine Paket-Inspektion:** Die Daten werden nicht umgeleitet, sondern der Hahn wird direkt an der Quelle zugedreht.

### 🛠️ Einrichtung
1. **Shizuku** starten.
2. ShizuWall die Berechtigung erteilen.
3. Apps auswählen, denen der Internetzugriff entzogen werden soll (besonders effektiv für System-Apps und Tracker).

---
[⬅️ Zurück zur Übersicht](README.md)
