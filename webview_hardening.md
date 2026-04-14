# 🌐 WebView-Hardening (Sicheres In-App Browsing)

Die **Android System WebView** ist eine Systemkomponente, die es Apps ermöglicht, Webinhalte anzuzeigen, ohne einen externen Browser zu öffnen. Da sie tief im System verankert ist, stellt sie ein erhebliches Datenschutzrisiko dar (Tracking, Fingerprinting, JavaScript-Exploits).

## ⚠️ Das Risiko auf Stock-OS
Auf Xiaomi/Poco-Geräten ist die Standard-WebView meist die von Google oder eine modifizierte Version von Xiaomi. Diese sind darauf optimiert, Daten zu sammeln und Nutzerprofile über App-Grenzen hinweg zu verknüpfen.

---

## 🛠 Hardening-Strategien

### 1. In-App-Browser deaktivieren (Priorität 1)
Die sicherste WebView ist die, die gar nicht erst benutzt wird.
* **Strategie:** Gehe in den Einstellungen deiner meistgenutzten Apps (z.B. Reddit, Apps mit Links) und suche nach einer Option wie "Links in der App öffnen" oder "Interner Browser".
* **Aktion:** Deaktiviere diese Option, damit Links stattdessen in deinem gehärteten Browser (z.B. **Mull** oder **Cromite**) geöffnet werden.

### 2. WebView-Implementierung wählen
In den Entwickleroptionen kannst du sehen, welche WebView aktuell aktiv ist:
1. Gehe zu **Einstellungen > Entwickleroptionen**.
2. Suche nach **WebView-Implementierung**.
3. Auf Stock-OS ist hier oft nur "Android System WebView" verfügbar. Falls du jedoch eine sicherere Version (wie Bromite WebView via LSPatch) installiert hast, kannst du sie hier auswählen.

### 3. Updates erzwingen
Eine veraltete WebView ist ein Sicherheitsrisiko.
* Da wir Google-Dienste einschränken, stelle sicher, dass die WebView dennoch regelmäßig über den **Aurora Store** oder manuell aktualisiert wird.

---

## 🛡️ Fortgeschrittene Isolierung

### Nutzung von "Mull" als WebView-Ersatz
Einige Browser können sich als "Custom Tab"-Provider registrieren. Wenn du in den Android-Einstellungen deinen Standard-Browser auf **Mull** oder **Cromite** setzt, nutzen viele Apps diese sichereren Engines anstelle der Standard-WebView.

### Überwachung mit NetGuard
Da die WebView als Prozess oft unter dem Namen der aufrufenden App oder als `com.google.android.webview` läuft, kannst du in **NetGuard** gezielt den Internetzugriff für Systemkomponenten einschränken, die eigentlich keine Webinhalte laden müssten.

---

## 📋 Checkliste für WebView-Sicherheit
* [ ] In-App-Browser in Social-Media-Apps deaktiviert.
* [ ] Standard-Browser auf eine datenschutzfreundliche Alternative gesetzt.
* [ ] WebView-Updates im Aurora Store priorisiert.
* [ ] (Optional) WebView via App Ops die Standort- und Mikrofonberechtigung entzogen.

---
[⬅️ Zurück zur Hauptseite](README.md)
