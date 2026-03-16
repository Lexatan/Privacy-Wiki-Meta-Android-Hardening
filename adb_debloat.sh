#!/bin/bash

echo "🚀 Starte Poco/Xiaomi Privacy Hardening via ADB..."
echo ""

# Check if adb is installed
if ! command -v adb &> /dev/null; then
    echo "❌ ADB ist nicht installiert. Bitte installiere das Android Debug Bridge zuerst."
    echo "📖 Anleitung: https://developer.android.com/studio/command-line/adb"
    exit 1
fi

# Check if device is connected
if [ -z "$(adb devices | grep -w device)" ]; then
    echo "❌ Kein Android-Gerät verbunden. Bitte schließe dein Poco/Xiaomi an und aktiviere USB-Debugging."
    exit 1
fi

echo "✓ Gerät erkannt. Starte Debloating-Prozess..."
echo ""

# Deaktiviert den Werbe-Dienst (MSA - MIUI System Ads)
echo "🔄 Entferne MSA (MIUI System Ads)..."
adb shell pm uninstall --user 0 com.miui.msa.global 2>/dev/null && echo "✓ MSA entfernt" || echo "⚠ MSA bereits entfernt oder nicht vorhanden"

# Deaktiviert die System-Analyse (Tracking)
echo "🔄 Entferne MIUI Analytics..."
adb shell pm uninstall --user 0 com.miui.analytics 2>/dev/null && echo "✓ Analytics entfernt" || echo "⚠ Analytics bereits entfernt"

# Deaktiviert den Facebook Services Ballast (oft vorinstalliert)
echo "🔄 Entferne Facebook System Services..."
adb shell pm uninstall --user 0 com.facebook.system 2>/dev/null && echo "✓ Facebook System entfernt" || echo "⚠ Facebook System nicht vorhanden"
adb shell pm uninstall --user 0 com.facebook.appmanager 2>/dev/null && echo "✓ Facebook AppManager entfernt" || echo "⚠ Facebook AppManager nicht vorhanden"
adb shell pm uninstall --user 0 com.facebook.services 2>/dev/null && echo "✓ Facebook Services entfernt" || echo "⚠ Facebook Services nicht vorhanden"

# Weitere Xiaomi Tracking-Services
echo "🔄 Entferne weitere Tracking-Services..."
adb shell pm uninstall --user 0 com.miui.bugreport 2>/dev/null && echo "✓ Bug Reporter entfernt" || echo "⚠ Bug Reporter nicht vorhanden"
adb shell pm uninstall --user 0 com.xiaomi.mipush.sdk 2>/dev/null && echo "✓ MiPush entfernt" || echo "⚠ MiPush nicht vorhanden"

echo ""
echo "✅ Debloating abgeschlossen!"
echo "🔄 Starte dein Handy jetzt neu für volle Wirkung."
echo ""
echo "💡 Tipp: Um Änderungen rückgängig zu machen, öffne die Play Store App Store und suche nach den App-Namen.",