# 🏪 Aurora Store: Anonymes App-Management

Der **Aurora Store** ist ein Open-Source-Client für den Google Play Store. Er ermöglicht es, Apps herunterzuladen, ohne ein Google-Konto auf dem Gerät verknüpft zu haben. Dies ist ein entscheidender Schritt, um die Telemetrie-Verbindung zu Google zu kappen.

## 🚀 Warum Aurora Store statt Play Store?
* **Kein Google-Konto nötig:** Du kannst Apps über anonyme Sitzungen laden.
* **Tracker-Vorschau:** Sieht sofort, wie viele Tracker (Exodus-Integration) eine App enthält, bevor du sie installierst.
* **Region-Spoofing:** Zugriff auf Apps, die in deinem Land eventuell nicht verfügbar sind.

---

## 🛠 Konfiguration für maximale Privacy

### 1. Anonymer Login
Wähle beim ersten Start immer den **Anonymen Modus**. Verwende dein privates Google-Konto nur für gekaufte Apps (da Google diese an deine ID bindet).

### 2. Sitzungs-Isolation
In den Einstellungen unter **Netzwerk**:
* Aktiviere **Anonyme Sitzungen erzwingen**.
* Nutze den Aurora Store idealerweise immer hinter deinem konfigurierten **DNS (NextDNS/Quad9)** oder **InviZible Pro**, um die IP-Adresse beim Download zu verschleiern.

### 3. Filter-Listen
Du kannst in den Einstellungen Apps ausblenden, die bekanntermaßen massiv tracken oder die du bereits über F-Droid (Neo Store) beziehst, um Dubletten zu vermeiden.

---

## ⚠️ Wichtiger Hinweis zu Updates
Da wir auf Stock-OS sind: Deaktiviere die automatischen Updates im Google Play Store komplett (oder deaktiviere den Play Store via Canta/Hail), damit nur der Aurora Store deine Apps verwaltet. So verhinderst du, dass Google deine installierten Apps wieder mit deiner ID verknüpft.

| Eigenschaft | Bewertung |
| :--- | :--- |
| **Schwierigkeitsgrad** | 🟢 Leicht |
| **Root notwendig** | ❌ Nein |
| **Shizuku-Anbindung** | 🟡 Optional (Für unaufgefordertes Installieren) |
| **Risiko** | 🟢 Keine Systemgefahr |
| **Datenschutzgewinn** | ⭐⭐⭐⭐☆ (Anonymer Play-Store-Zugriff ohne Google-ID) |
| **Sicherheitsgewinn** | ⭐⭐⭐☆☆ |


---
[⬅️ Zurück zur Hauptseite](README.md)
