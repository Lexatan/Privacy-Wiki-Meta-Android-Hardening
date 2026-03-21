# 👥 Meta (Instagram & Facebook) Anti-Tracking Guide

Meta-Apps (Facebook, Instagram, WhatsApp, Messenger) sind dafür bekannt, intensiv Daten über dein Verhalten außerhalb ihrer eigenen Plattformen zu sammeln. Dieser Guide hilft dir, dieses "Cross-App-Tracking" auf deinem Android-Gerät zu unterbinden.

---

## 🛡️ Kern-Einstellung: Off-Facebook-Activity
Dies ist die wichtigste Option, um zu verhindern, dass Meta erfährt, welche anderen Apps (Shopping, Fitness, Finanzen) du auf deinem Poco nutzt.

### 📍 Der Pfad (Instagram/Facebook App):
1.  Öffne **Einstellungen und Privatsphäre**.
2.  Gehe zur **Kontenübersicht** (Meta Accounts Center).
3.  Wähle **Deine Informationen und Berechtigungen**.
4.  Klicke auf **Deine Aktivitäten außerhalb von Meta-Technologien**.
5.  Wähle **Bisherige Aktivitäten trennen** und bestätige dies.
6.  Gehe auf **Künftige Aktivitäten verwalten** und stelle den Schalter auf **Aktivitäten künftig trennen**.

---

## 📢 Werbepräferenzen & Partnerdaten
Meta kauft Daten von Drittanbietern, um dein Profil zu vervollständigen. Das kannst du hier stoppen:

1.  In der **Kontenübersicht** auf **Werbeeinstellungen** gehen.
2.  Wähle **Wirtschaftliche Akteure** (oder "Daten von Partnern über deine Aktivitäten").
3.  Stelle sicher, dass die Nutzung dieser Daten für personalisierte Werbung auf **NEIN** steht.

---

## 🚫 System-Ebene (Poco/Android)
Zusätzlich zu den In-App-Einstellungen solltest du dem System den Hahn zudrehen:

* **Berechtigungen:** Entziehe den Meta-Apps unter **App-Info** den Zugriff auf **Kontakte**, **Kalender** und den **Standort** (oder setze ihn auf "Nur während der Nutzung").
* **Hintergrunddaten:** Deaktiviere in der App-Info die **Hintergrunddatennutzung**, damit die Apps nicht im Standby nach Hause telefonieren können.
* **Debloating:** Nutze die [Übeltäter-Liste (Culprits)](culprits.md), um die vorinstallierten Pakete `com.facebook.services` und `com.facebook.system` via Canta/Shizuku zu entfernen.

---

> **💡 Profi-Tipp:** Nutze für Instagram oder Facebook nach Möglichkeit den Browser (z. B. **Mull** oder **Firefox** mit uBlock Origin) anstatt der nativen Apps. Browser-Isolation verhindert einen Großteil des Hardware-Trackings.

---
[⬅️ Zurück zur Hauptseite](README.md)
