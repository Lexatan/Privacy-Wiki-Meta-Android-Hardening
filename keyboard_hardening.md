# ⌨️ Tastatur-Härtung

Die Tastatur ist die Schnittstelle zu all deinen Daten. Standard-Apps wie Gboard übertragen Tipp-Daten ("Personalisierung") oft an externe Server. Ziel dieses Kapitels ist die vollständige Isolation deiner Eingaben.

---

## 🛠️ Empfohlene FOSS-Alternativen
Diese Tastaturen benötigen **keinen Internetzugriff**:

| App-Name | Fokus | Vorteil |
| :--- | :--- | :--- |
| **OpenBoard** | Gboard-Alternative | 100% FOSS, keine Tracker, gewohntes Layout. |
| **AnySoftKeyboard** | Maximale Kontrolle | Extrem viele Einstellungen, sehr sicher. |
| **Heliboard** | Moderner Fork | Basiert auf OpenBoard, bietet aber Glide-Typing. |

---

## ⚙️ Schritt-für-Schritt Einrichtung (Poco)

1. **Installation:** Lade deine Wunsch-Tastatur via **F-Droid** herunter.
2. **Aktivierung:** 
   * Gehe zu `Einstellungen` > `Weitere Einstellungen` > `Sprachen & Eingabe`.
   * Wähle `Tastaturen verwalten`.
   * Aktiviere die neue Tastatur und **deaktiviere Gboard**.
3. **Absicherung:**
   * Gehe in die `App-Info` der neuen Tastatur.
   * Entziehe (falls vorhanden) die Berechtigung für Kontakte oder Standort.

---

## 🛡️ Gboard "Zähmen" (Falls kein Wechsel möglich)
Falls du Gboard behalten musst (z.B. wegen einer speziellen Sprache), musst du es isolieren:

1. **Firewall:** Nutze **NetGuard**, um Gboard jeglichen Internetzugriff zu verbieten.
2. **Einstellungen:** Deaktiviere innerhalb der Gboard-Einstellungen:
   * `Wörterbuch` > `Gelerntes löschen`.
   * `Erweitert` > `Nutzungsstatistik teilen`.
   * `Erweitert` > `Personalisierung`.

---
[⬅️ Zurück zur Übersicht](README.md)
