# 🐙 Obtanium: App-Updates direkt von der Quelle

Obtanium schließt eine der größten Lücken im Open-Source-App-Management: Die Verzögerung bei Sicherheitsupdates. Während traditionelle Repositories (wie F-Droid) Apps erst kompilieren, signieren und indexieren müssen – was oft Tage oder Wochen dauert –, holt Obtanium die Releases direkt vom Quellcode-Host (z. B. GitHub oder GitLab).

## 🛡️ Warum Obtanium? (Die Problemstellung)
* **Das F-Droid-Dilemma:** Große F-Droid-Repositories benötigen oft 24 bis 72 Stunden (manchmal länger), um ein Update nach dem offiziellen Release bereitzustellen. Bei kritischen Zero-Day-Sicherheitslücken ist das ein massives Risiko.
* **Das Signatur-Problem:** F-Droid kompiliert Apps selbst und signiert sie mit dem F-Droid-Schlüssel. Wenn du eine App direkt vom Entwickler (z. B. GitHub) installierst, kannst du sie nicht über F-Droid updaten, ohne sie vorher komplett zu deinstallieren (Datenverlust).
* **Die Lösung:** Obtanium überwacht die offiziellen Release-Seiten der Entwickler, lädt die originalen APKs herunter und installiert sie über das Android Package Installer Framework.

## ⚙️ Kernfunktionen
* **Plattform-Vielfalt:** Unterstützt GitHub, GitLab, Codeberg, SourceForge, F-Droid und sogar direkte URL-Verzeichnisse.
* **Maximale Integrität:** Es werden exakt die APKs installiert, die der Entwickler selbst signiert hat (Original-Entwicklersignatur).
* **Automatisierte Überprüfung:** Hintergrund-Checks auf neue Releases (einstellbar, z. B. alle 12 oder 24 Stunden).
* **Export/Import:** Vollständiges Backup deiner App-Liste als JSON-Datei zur schnellen Migration auf neue Geräte.

## 🚀 Einrichtung & Best Practices
1. **Installation:** Lade Obtanium über den **Neo Store** oder direkt von GitHub herunter.
2. **Rechte vergeben:** Erlaube Obtanium die Berechtigung "Unbekannte Apps installieren".
3. **Apps hinzufügen:** * Kopiere einfach den Link des GitHub-Repositorys (z. B. `https://github.com/Bnyro/TranslateYou`).
   * Füge ihn in Obtanium unter "App hinzufügen" ein.
   * Obtanium erkennt automatisch das neueste Release und die passende APK-Architektur (z. B. `arm64-v8a`).
4. **Filter nutzen:** Bei Repositories mit vielen experimentellen Pre-Releases kannst du in den App-Einstellungen "Prereleases ignorieren" aktivieren.

## 🔗 Zusammenspiel im Ecosystem
* **Neo Store / F-Droid:** Für den Großteil deiner Open-Source-Standard-Apps.
* **Aurora Store:** Für proprietäre Apps aus dem Play Store (anonymisiert).
* **Obtanium:** Für kritische, quelloffene Apps (z. B. Messenger wie Element X, Browser, Passwortmanager), bei denen jede Stunde Verzögerung bei Sicherheitsupdates zählt.
---
[⬅️ Zurück zur Hauptseite](README.md)
