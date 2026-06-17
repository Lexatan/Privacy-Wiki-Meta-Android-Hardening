# 🔗 Link-Privatsphäre: Tracking-Stripping mit UntrackMe / Link Cleaner

Wenn du Links aus sozialen Netzwerken (Instagram, Facebook, TikTok) oder von Shopping-Plattformen kopierst und teilst, enthalten diese fast immer personalisierte Tracking-Parameter. 

Ein typischer Link sieht oft so aus:  
`https://example.com/artikel?utm_source=instagram&fbclid=AbC123XyZ&user_id=98765`

Diese Parameter (wie `fbclid` oder `utm_`) dienen rein der Profilbildung. Sie verknüpfen dein Surfverhalten direkt mit deiner Identität und tracken, wer welchen Link an wen weiterleitet. **UntrackMe** (und moderne Forks wie **Link Cleaner**) lösen dieses Problem vollautomatisch auf Betriebssystemebene.

## 🌟 Hauptfunktionen

* **Automatische Säuberung:** Die App fängt kopierte oder angeklickte Links im Hintergrund ab, strippt alle bekannten Tracking-Schnittstellen und Werbe-IDs weg und leitet nur die saubere, nackte URL weiter.
* **FOSS-Alternativen erzwingen:** UntrackMe kann URLs von datenhungrigen Plattformen automatisch in datenschutzfreundliche Frontends umwandeln (z. B. Twitter/X zu *Nitter*, YouTube zu *Invidious* oder *Piped*, Reddit zu *Libreddit*).
* **Keine Hintergrundlast:** Die App klinkt sich über das Android-Intent-System ein. Das bedeutet, sie verbraucht im Alltag weder RAM noch Akku, da sie erst in dem Bruchteil einer Sekunde aktiv wird, in dem ein Link verarbeitet wird.

## 🛠️ Einrichtung & Workflow

1. Installiere die App über den **Neo Store** oder **F-Droid**.
2. Öffne die App und aktiviere die Standard-Filterlisten für Tracking-Parameter.
3. Wenn du das nächste Mal einen Link in einer App (z. B. Instagram) anklickst, wähle **UntrackMe / Link Cleaner** als Standard-Anwendung zum Öffnen.
4. Die App säubert den Link im Hintergrund und übergibt ihn augenblicklich an deinen gehärteten Standard-Browser (z. B. *Mull* oder *Cromite*).

## 📋 Best Practice für geteilte Links
Wenn du einen Link an Freunde per Messenger (z. B. *Element X*) senden möchtest:
* Nutze das Share-Menü deines Browsers/deiner App.
* Wähle **Link Cleaner / UntrackMe** aus.
* Die gesäuberte URL wird direkt in deine Zwischenablage kopiert – bereit zum sicheren Teilen ohne digitalen Fußabdruck.

  ---
[⬅️ Zurück zur Hauptseite](README.md)
