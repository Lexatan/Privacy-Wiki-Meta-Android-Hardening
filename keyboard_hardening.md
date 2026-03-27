# ⌨️ Tastatur-Härtung (Eingabe-Privatsphäre)

Die Tastatur ist die sensibelste Schnittstelle deines Smartphones. Standard-Apps wie Gboard (Google) oder SwiftKey (Microsoft) protokollieren oft jeden Tastendruck für "personalisierte Vorschläge" und senden diese Daten in die Cloud. Ziel dieses Kapitels ist die vollständige Isolation deiner Eingaben.

---

> [!IMPORTANT]
> **VORSICHT: Zuerst installieren, dann deaktivieren!**
> Installiere und aktiviere deine neue Tastatur (z. B. OpenBoard) **bevor** du Gboard deaktivierst oder die Berechtigungen entziehst. Wenn du Gboard abschaltest, ohne einen aktiven Ersatz zu haben, kannst du beim nächsten Sperrbildschirm keine PIN/Passwort mehr eingeben!

---

## 🚫 Das Problem mit Gboard & Co.
* **Keylogging:** Alles, was du tippst (Passwörter, Nachrichten, Notizen), kann theoretisch an Server übertragen werden.
* **Lern-Algorithmen:** "Personalisierte Wörterbücher" basieren auf der Auswertung deiner privatesten Texte.
* **Tracker:** Viele Tastaturen fordern Zugriff auf Kontakte, Standort und das Internet.

## 🛡️ Empfohlene FOSS-Alternativen (via F-Droid)

Diese Tastaturen benötigen **keinen Internetzugriff** und respektieren deine Daten:

| App-Name | Fokus | Vorteil |
| :--- | :--- | :--- |
| **OpenBoard** | Gboard-Alternative | 100% Open Source, gewohntes Layout, keine Tracker. |
| **AnySoftKeyboard** | Maximale Kontrolle | Extrem anpassbar, sehr strikte Berechtigungen. |
| **Heliboard** | Moderner Fork | Basiert auf OpenBoard, unterstützt aber Wischgesten (Glide Typing). |

---

## ⚙️ Schritt-für-Schritt Einrichtung am Poco

1. **Installation:** Lade deine Wunsch-Tastatur (Empfehlung: **OpenBoard**) via **F-Droid** herunter.
2. **Aktivierung:** 
   * Gehe zu `Einstellungen` > `Weitere Einstellungen` > `Sprachen & Eingabe`.
   * Wähle `Tastaturen verwalten`.
   * Aktiviere den Schalter bei deiner neuen Tastatur.
3. **Standard setzen:**
   * Tippe auf `Aktuelle Tastatur` und wähle dein neues FOSS-Tool aus.
4. **Berechtigungen prüfen:**
   * Gehe in die `App-Info` der neuen Tastatur.
   * Stelle sicher, dass keine unnötigen Berechtigungen (wie Kontakte) gewährt sind.

---

## 🔒 Gboard "Zähmen" (Backup-Strategie)

Falls du Gboard als Backup behalten musst, solltest du es komplett isolieren:

1. **Firewall:** Nutze **NetGuard** (siehe [Firewall Guide](netguard_guide.md)), um Gboard jeglichen Internetzugriff (WLAN & Mobile Daten) zu entziehen.
2. **Interne Einstellungen:** Deaktiviere in den Gboard-Einstellungen:
   * `Wörterbuch` > `Gelerntes löschen`.
   * `Erweitert` > `Nutzungsstatistik teilen`.
   * `Erweitert` > `Personalisierung`.

---
[⬅️ Zurück zum Inhaltsverzeichnis](README.md)
