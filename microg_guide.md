# 🧩 Google-Dienste ersetzen (microG)

Nachdem das System von Bloatware befreit wurde (**Debloating**), sind die **Google Play Services (GMS)** oft die letzte große verbleibende Datenquelle auf dem Android-Gerät. Sie sind tief im System verwurzelt und senden permanent Telemetriedaten an Google.

**microG** ist eine Open-Source-Alternative, die diese Dienste nachahmt, ohne die Privatsphäre zu opfern.

---

## 🧐 Warum microG nutzen?

Standard-Google-Dienste tracken Standorte, installierte Apps und Gerätenutzung. microG bricht diese Verbindung auf:

*   **Datenschutz:** Keine permanente Identifizierung deines Geräts durch Google-Server.
*   **Akkulaufzeit:** Da microG extrem leichtgewichtig ist, sinkt der Hintergrundverbrauch spürbar (oft 10-15% längere Laufzeit).
*   **Funktionalität:** Viele Apps (z. B. Signal, Banking-Apps, Lieferdienste) benötigen Google-Schnittstellen für Push-Benachrichtigungen oder Karten. microG stellt diese bereit.

---

## 📊 Vergleich: GMS vs. microG vs. No-Gapps

| Feature | Google Play Services (GMS) | microG Framework | No-Gapps (Rein AOSP) |
| :--- | :--- | :--- | :--- |
| **Datenschutz** | 🔴 Niedrig (Tracking) | 🟢 Hoch (Anonymisiert) | 🛡️ Maximal |
| **App-Kompatibilität** | 🟢 100% | 🟡 ~90% (Kein Google Pay) | 🔴 Eingeschränkt |
| **Push-Nachrichten** | 🟢 Perfekt | 🟢 Funktioniert (GCM/FCM) | 🔴 Nur über Hintergrund-Apps |
| **Ressourcenverbrauch** | 🔴 Hoch | 🟢 Sehr niedrig | 🟢 Minimal |

---

## ⚠️ Die Hürde: Signature Spoofing

Damit eine App "glaubt", sie würde mit Google sprechen, muss microG die Identität der originalen Google-Dienste annehmen. Dies nennt man **Signature Spoofing**.

*   **Auf Stock-ROMs (MIUI/HyperOS):** Xiaomi blockiert diese Funktion. Ohne Root ist eine vollständige microG-Installation hier fast unmöglich.
*   **Auf Custom-ROMs:** Viele Privatsphäre-orientierte ROMs (wie *LineageOS for microG* oder *CalyxOS*) haben diese Funktion bereits eingebaut.

---

## 🛠️ Der "sanfte" Weg (ohne System-Eingriff)

Wenn du kein neues Betriebssystem installieren möchtest, kannst du Google-Dienste einschränken, statt sie zu ersetzen:

1.  **Vanced/Revanced MicroG:** Erlaubt es, modifizierte Apps (wie YouTube ReVanced) mit einem Account zu nutzen, ohne das gesamte System zu ändern.
2.  **Aurora Store:** Nutze diesen Client (aus F-Droid), um Apps aus dem Play Store anonym und ohne Google-Konto auf dem Gerät zu installieren.
3.  **Sandboxed Google Play:** Auf Geräten mit GrapheneOS (Pixel-Reihe) können Google-Dienste in einer isolierten "Sandbox" laufen, ohne Systemrechte zu haben.

---

## 🚀 Fazit für das Hardening
microG ist der **"Endgegner"** des Android-Hardening. Es ist der Schritt weg von der Kontrolle durch Konzerne hin zu einem wirklich freien Gerät. 

> **Empfehlung:** Beginne mit dem [Debloating](culprits.md). Wenn du merkst, dass du maximale Privatsphäre willst, ist der Wechsel zu einer microG-basierten Custom ROM der nächste logische Schritt.

| Eigenschaft | Bewertung |
| :--- | :--- |
| **Schwierigkeitsgrad** | 🔴 Hoch (Je nach ROM/ROM-Unterstützung) |
| **Root notwendig** | ❌ Nein (Oder via Root-Spoofing) |
| **Shizuku-Anbindung** | ❌ Nein |
| **Risiko** | 🟡 Mittel (Kann Push-Dienste beeinflussen) |
| **Datenschutzgewinn** | ⭐⭐⭐⭐⭐ (Ersetzt proprietäre Google-Play-Dienste) |
| **Sicherheitsgewinn** | ⭐⭐⭐⭐☆ |


---
[⬅️ Zurück zur Hauptseite](README.md)
