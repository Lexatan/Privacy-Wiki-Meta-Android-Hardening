# 🛡️ InstallWithOptions – Kontrollierte App-Installation

Ein mächtiges Tool, das Shizuku nutzt, um Apps mit erweiterten Parametern zu installieren. Es erlaubt dir, die Kontrolle über den Installationsprozess zu behalten, die das System normalerweise verbirgt.

## 🌟 Warum dieses Tool?
* **Downgrades:** Erlaubt das Installieren älterer App-Versionen über neuere (ohne Datenverlust).
* **Test-Flags:** Installiert Apps als "Test-Pakete", um bestimmte Systemberechtigungen einzuschränken.
* **Einschränkungen:** Verhindert, dass Apps bei der Installation direkt als "Standard-Handler" für bestimmte Dateitypen registriert werden.

## 🛠️ Anwendung
1. **Shizuku** muss im Hintergrund aktiv sein.
2. Wähle eine `.apk` oder `.apks` Datei aus deinem Speicher.
3. Wähle die gewünschten Flags (z.B. `ALLOW_DOWNGRADE` oder `DONT_KILL_APP`).
4. Führe die Installation aus.

Dies ist besonders nützlich für "Gehärtete Apps" oder modifizierte Clients, die vom System oft blockiert werden.
