# 🛠️ SystemUI Tuner - Die Optische & Funktionale Kontrolle

Der SystemUI Tuner ist das Schweizer Taschenmesser für die Android-Oberfläche. Er ermöglicht es dir, versteckte Einstellungen zu verändern, die Xiaomi/Poco normalerweise vor dir verbirgt, um ein minimalistisches und ablenkungsfreies System zu schaffen.

### 🎯 Warum SystemUI Tuner?
Standard-Android (und besonders MIUI/HyperOS) überlädt die Statusleiste und das System oft mit unnötigen Symbolen und Funktionen. Mit diesem Tool holst du dir die Kontrolle zurück:

* **Statusleisten-Hardening:** Entferne unnötige Icons (wie NFC, VoLTE, Bluetooth oder den Wecker), um eine saubere Optik zu erhalten.
* **Immersiver Modus:** Erzwinge, dass Apps die Status- oder Navigationsleiste ausblenden – ideal für maximalen Fokus (Digitaler Minimalismus).
* **Sensor-Status:** Blende Icons aus, die Apps signalisieren könnten, welche Hardware gerade aktiv ist.
* **Demo-Modus:** Erstelle saubere Screenshots ohne private Benachrichtigungen oder Provider-Namen.

---

### 🔧 Einrichtung (via Shizuku / ADB)
Da du bereits **Shizuku** nutzt, ist die Einrichtung in Sekunden erledigt:
1. Öffne den SystemUI Tuner und wähle die Verbindungsmethode **"Shizuku"** (oder ADB, falls bevorzugt).
2. Gewähre die `WRITE_SECURE_SETTINGS`-Berechtigung über die App.
3. Du kannst nun Systemeinstellungen ändern, die normalerweise gesperrt sind.

---

### 🛡️ Der "Clean-System" Workflow
Für ein wirklich gehärtetes und minimalistisches Interface empfehlen wir:
1. **Icon-Purge:** Entferne alle Icons aus der Statusleiste, die keinen direkten Informationswert haben. Ein leerer Homescreen reduziert den Drang, ständig auf das Handy zu schauen.
2. **Lockscreen-Tweaks:** Deaktiviere unnötige Shortcuts auf dem Sperrbildschirm, um den schnellen Zugriff auf Daten im Falle eines Verlusts zu erschweren.
3. **Ambient Display:** Kontrolliere genau, welche Informationen im Standby angezeigt werden, um "Schulter-Surfen" (Mitlesen von Fremden) zu verhindern.

---

### ⚠️ Wichtige Hinweise
* **System-Abhängigkeit:** Da Xiaomi (HyperOS/MIUI) die System-UI stark verändert hat, funktionieren manche Standard-AOSP-Tweaks eventuell nicht. Teste Änderungen einzeln.
* **Kein Root nötig:** Dank Shizuku bleiben alle Änderungen "non-invasive" und beeinträchtigen nicht deine Garantie oder Banking-Apps.

---

### 🤝 Synergie im Wiki
* **Ergänzung zu [Athena](athena.md):** Während Athena das System unter der Haube härtet, räumt der SystemUI Tuner die Oberfläche auf.
* **Kombiniert mit [Digitaler Minimalismus](mindset_privacy.md):** Weniger visuelle Ablenkung in der Statusleiste führt zu weniger "Smartphone-Checking".

| Eigenschaft | Bewertung |
| :--- | :--- |
| **Schwierigkeitsgrad** | 🟡 Mittel (Braucht ADB-Rechtevergabe) |
| **Root notwendig** | ❌ Nein |
| **Shizuku-Anbindung** | ❌ Nein (Nutzt Systemeinstellungen) |
| **Risiko** | 🟡 Gering (Versteckt UI-Elemente oder ändert Flags) |
| **Datenschutzgewinn** | ⭐⭐☆☆☆ |
| **Sicherheitsgewinn** | ⭐⭐⭐☆☆ |




---
[⬅️ Zurück zum Inhaltsverzeichnis](README.md)
