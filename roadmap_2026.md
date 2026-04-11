# 🛡️ Roadmap: Android-Sicherheit & Überleben 2026

Ab **September 2026** stellt Google das Android-System fundamental um. Dieses Wiki bereitet dich darauf vor, die Kontrolle über dein Poco zu behalten, auch wenn das System versucht, Sideloading und Privacy-Tools einzuschränken.

---

### 1. Der "Advanced Flow" Lockdown (September 2026) ⏳
Google führt eine neue Verifizierungspflicht für alle App-Entwickler ein. Apps, die nicht über einen registrierten Google-Entwickler-Account (inkl. Ausweis-Check und Gebühr) signiert sind, werden blockiert.

* **Die Hürde:** Beim Versuch, eine "unverifizierte" APK (z.B. von GitHub oder F-Droid) zu installieren, tritt ein **24-Stunden-Sicherheits-Timer** in Kraft.
* **Der Prozess:** 1. APK öffnen -> Warnmeldung erhalten.
    2. In die Systemeinstellungen gehen und den "Advanced Flow" manuell triggern.
    3. **24 Stunden warten.**
    4. Erst nach Ablauf der Zeit und erneuter biometrischer Bestätigung darf die App installiert werden.
* **Deine Lösung:** Nutze **Obtainium** oder den **Neo Store**, um Signaturen proaktiv zu verwalten. Wir zeigen hier, wie man Apps "vor-registriert", um den Timer zu umgehen.

---

### 2. HyperOS 2.0 & Shizuku-Resistenz 📱
Xiaomi verschärft mit **HyperOS 2.0** (Rollout ab Q2 2026) die Integration von Werbe-IDs und schränkt den Zugriff auf das Dateisystem sowie das "Wireless Debugging" weiter ein.

* **Shizuku ist Pflicht:** Da klassisches Rooten bei neuen Poco-Modellen fast unmöglich wird, bleibt Shizuku die einzige Brücke für Tools wie **Canta** oder **App Ops**.
* **Prävention:** Friere System-Apps mit **Hail** ein, *bevor* das große HyperOS-Update sie als "kritische Systemkomponente" markiert und unlöschbar macht.

---

### 3. Play Integrity & "Safe-Hardening" ✅
Apps (Banking, Streaming) prüfen immer strenger den Systemstatus. Ein zu aggressives Löschen von Xiaomi-Diensten kann dazu führen, dass dein Gerät den "Integrity-Status" verliert.

* **Das Risiko:** Das Handy funktioniert zwar, aber Google-Dienste oder Banking-Apps verweigern den Dienst.
* **Der Plan:** Dieses Wiki bietet eine **"Safe-Hardening-Liste"**. Damit entfernst du 90% des Trackings, ohne die Sicherheits-Zertifikate (Attestation) zu brechen.

---

### 📋 Checkliste: Was du JETZT tun solltest
- [ ] **Entwickleroptionen prüfen:** Stelle sicher, dass "USB-Debugging (Sicherheitseinstellungen)" aktiviert ist.
- [ ] **Sideloading-Backup:** Installiere alle kritischen F-Droid Apps jetzt, solange der 24h-Timer noch nicht aktiv ist.
- [ ] **DNS-Hardening:** Nutze `dns.quad9.net` oder `dns.adguard.com`  als festen Anker, um Tracking auf Netzwerkebene abzufangen, falls App-Sperren greifen.

---
[⬅️ Zurück zum Inhaltsverzeichnis](README.md)
