#!/bin/bash

# ============================================================
# Poco/Xiaomi Privacy Hardening Script
# Deaktiviert Tracking-Dienste, Werbung und Bloatware
# 
# Nutzung: ./adb_debloat.sh
# Voraussetzung: ADB installiert, USB-Debugging aktiviert
# ============================================================

echo "🚀 Starte Poco/Xiaomi Privacy Hardening via ADB..."
echo ""

# ============================================================
# PRÜFUNGEN
# ============================================================

# Check if adb is installed
if ! command -v adb &> /dev/null; then
    echo "❌ ADB ist nicht installiert."
    echo "📖 Bitte installiere die Android Debug Bridge:"
    echo "   https://developer.android.com/studio/command-line/adb"
    exit 1
fi

# Check if device is connected
if ! adb devices | grep -q "device$"; then
    echo "❌ Kein Android-Gerät verbunden."
    echo "📱 Bitte schließe dein Poco/Xiaomi an und aktiviere USB-Debugging:"
    echo "   Entwickleroptionen → USB-Debugging aktivieren"
    echo ""
    echo "   Falls die Entwickleroptionen nicht sichtbar sind:"
    echo "   Einstellungen → Mein Gerät → Alle Spezifikationen →"
    echo "   7x auf 'MIUI-Version' tippen"
    exit 1
fi

echo "✓ Gerät erkannt."
echo ""

# ============================================================
# SICHERHEITSABFRAGE MIT LESEZEIT
# ============================================================

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "⚠️  WICHTIGER HINWEIS"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Dieses Skript deaktiviert System-Apps und Tracking-Dienste."
echo ""
echo "Folgende Pakete werden NICHT entfernt (Gefahrenzone):"
echo "  • com.miui.securitycenter  (Security Center)"
echo "  • com.miui.home             (System-Launcher)"
echo "  • com.android.systemui      (System UI)"
echo ""
echo "Trotzdem gilt: Erstelle vorher ein Backup deiner Daten!"
echo "Im Notfall hilft die emergency_kit.md im Repository."
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 5 Sekunden Lesezeit für die Warnung
echo "⏳ Bitte lies den Hinweis oben sorgfältig..."
sleep 5

echo ""
echo -e "🤔 Bist du bereit, die Bereinigung zu starten?"
read -p "👉 Drücke [Enter] für Start oder [Strg+C] zum Abbrechen... " 

echo ""
echo "✓ Los geht's! Starte Debloating-Prozess..."
echo ""

# ============================================================
# KATEGORIE 1: SICHER ZU ENTFERNEN (Sofort weg)
# ============================================================

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📢 Kategorie 1: Werbung & Tracking (Sofort weg)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# MSA (System Ads) - Werbeanzeigen in System-Apps
echo "🔄 Entferne MSA (MIUI System Ads)..."
adb shell pm uninstall --user 0 com.miui.msa.global 2>/dev/null && echo "  ✓ MSA entfernt" || echo "  ⚠ MSA bereits entfernt oder nicht vorhanden"

# MIUI Analytics - Telemetrie-Daten an Xiaomi
echo "🔄 Entferne MIUI Analytics..."
adb shell pm uninstall --user 0 com.miui.analytics 2>/dev/null && echo "  ✓ Analytics entfernt" || echo "  ⚠ Analytics bereits entfernt"

# Glance - Lockscreen-Werbekarussell
echo "🔄 Entferne Glance (Lockscreen-Werbung)..."
adb shell pm uninstall --user 0 com.xiaomi.glance 2>/dev/null && echo "  ✓ Glance entfernt" || echo "  ⚠ Glance nicht vorhanden"

# Google Ads - Werbe-ID für personalisierte Anzeigen
echo "🔄 Entferne Google Ads..."
adb shell pm uninstall --user 0 com.google.android.gms.ads 2>/dev/null && echo "  ✓ Google Ads entfernt" || echo "  ⚠ Google Ads nicht vorhanden"

echo ""

# ============================================================
# KATEGORIE 2: META/FACEBOOK DIENSTE (Sofort weg)
# ============================================================

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📱 Kategorie 2: Meta/Facebook Dienste"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "🔄 Entferne Facebook System Services..."
adb shell pm uninstall --user 0 com.facebook.system 2>/dev/null && echo "  ✓ Facebook System entfernt" || echo "  ⚠ Facebook System nicht vorhanden"
adb shell pm uninstall --user 0 com.facebook.appmanager 2>/dev/null && echo "  ✓ Facebook AppManager entfernt" || echo "  ⚠ Facebook AppManager nicht vorhanden"
adb shell pm uninstall --user 0 com.facebook.services 2>/dev/null && echo "  ✓ Facebook Services entfernt" || echo "  ⚠ Facebook Services nicht vorhanden"

echo ""

# ============================================================
# KATEGORIE 3: EMPFOHLEN ZU ENTFERNEN
# ============================================================

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔧 Kategorie 3: Empfohlen zu entfernen"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# MiuiDaemon - Hintergrund-Statistiken
echo "🔄 Entferne MiuiDaemon..."
adb shell pm uninstall --user 0 com.miui.daemon 2>/dev/null && echo "  ✓ MiuiDaemon entfernt" || echo "  ⚠ MiuiDaemon bereits entfernt"

# Joyose - Massives Telemetrie-Tool (kann Performance beeinflussen)
echo "🔄 Entferne Joyose (Telemetrie)..."
adb shell pm uninstall --user 0 com.miui.joyose 2>/dev/null && echo "  ✓ Joyose entfernt" || echo "  ⚠ Joyose nicht vorhanden"

# Quick Apps - Instant-Apps Dienst mit Tracking
echo "🔄 Entferne Quick Apps..."
adb shell pm uninstall --user 0 com.miui.hybrid.accessory 2>/dev/null && echo "  ✓ Quick Apps entfernt" || echo "  ⚠ Quick Apps nicht vorhanden"

# Bug Reporter - Sendet Fehlerberichte an Xiaomi
echo "🔄 Entferne Bug Reporter..."
adb shell pm uninstall --user 0 com.miui.bugreport 2>/dev/null && echo "  ✓ Bug Reporter entfernt" || echo "  ⚠ Bug Reporter nicht vorhanden"

# MiPush - Xiaomi Push-Benachrichtigungsdienst
echo "🔄 Entferne MiPush..."
adb shell pm uninstall --user 0 com.xiaomi.mipush 2>/dev/null && echo "  ✓ MiPush entfernt" || echo "  ⚠ MiPush nicht vorhanden"

echo ""

# ============================================================
# KATEGORIE 4: OPTIONAL (Auskommentiert - bei Bedarf aktivieren)
# ============================================================

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "⚙️  Kategorie 4: Optional (standardmäßig deaktiviert)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# GetApps - Alternativer App-Store mit Push-Benachrichtigungen
# echo "🔄 Entferne GetApps..."
# adb shell pm uninstall --user 0 com.xiaomi.mipicks 2>/dev/null && echo "  ✓ GetApps entfernt" || echo "  ⚠ GetApps nicht vorhanden"

# Yellow Pages - Branchenverzeichnis mit Standortzugriff
# echo "🔄 Entferne Yellow Pages..."
# adb shell pm uninstall --user 0 com.miui.yellowpage 2>/dev/null && echo "  ✓ Yellow Pages entfernt" || echo "  ⚠ Yellow Pages nicht vorhanden"

# App Vault - Minus-One-Screen mit Tracking-Widgets
# echo "🔄 Entferne App Vault..."
# adb shell pm uninstall --user 0 com.mi.android.globalminusscreen 2>/dev/null && echo "  ✓ App Vault entfernt" || echo "  ⚠ App Vault nicht vorhanden"

echo ""
echo "💡 Hinweis: Optionale Pakete können durch Entfernen der '#'-Zeichen aktiviert werden."

# ============================================================
# ABSCHLUSS
# ============================================================

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Debloating abgeschlossen!"
echo ""
echo "🔄 Starte dein Handy jetzt neu für volle Wirkung."
echo ""
echo "📋 Übersicht der entfernten Pakete:"
echo "   • MSA (System Ads)            • Facebook System"
echo "   • MIUI Analytics              • Facebook AppManager"
echo "   • Glance (Lockscreen)         • Facebook Services"
echo "   • Google Ads                  • MiuiDaemon"
echo "   • Joyose (Telemetrie)         • Quick Apps"
echo "   • Bug Reporter                • MiPush"
echo ""
echo "💡 Wiederherstellung (falls etwas fehlt):"
echo "   adb shell cmd package install-existing [PAKETNAME]"
echo ""
echo "   Beispiel: adb shell cmd package install-existing com.miui.msa.global"
echo ""
echo "⚠️  Wichtiger Hinweis:"
echo "   Entferne niemals Pakete aus der 'Gefahrenzone' (danger_zone.md)!"
echo "   Dazu gehören: Security Center, System-Launcher, SystemUI u.a."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
