# 🔗 Link-Privatsphäre (Tracking-Parameter entfernen)

Wenn du Links aus Apps (Instagram, YouTube, Amazon) teilst, enthalten diese oft Tracking-IDs, die dein Profil mit dem Klick-Verhalten des Empfängers verknüpfen.

### 🚫 Das Problem: Tracking-Parameter
Ein normaler Link sieht oft so aus: 
`https://example.com/produkt?utm_source=share&utm_medium=android&igshid=XYZ123`
Alles nach dem `?` dient nur dazu, dich zu tracken.

### ✅ Die Lösung: UntrackMe (F-Droid)
Die Open-Source-App **UntrackMe** fängt Links automatisch ab und säubert sie, bevor sie geteilt oder im Browser geöffnet werden.

*   **Funktion:** Entfernt `utm_*`, `fbclid`, `igshid` und andere Parameter.
*   **Bonus:** Wandelt Links in datenschutzfreundliche Frontends um (z.B. YouTube zu **Invidious**, Twitter zu **Nitter**, Instagram zu **Bibliogram**).

### 🛠️ Einrichtung auf dem Poco
1. Installiere **UntrackMe** (oder **UntrackMe Lite**) über F-Droid.
2. Gehe zu **Einstellungen** > **Apps** > **Standard-Apps** > **Links öffnen**.
3. Setze UntrackMe als Standard für unterstützte Links.

---
[⬅️ Zurück zum Inhaltsverzeichnis](README.md)
