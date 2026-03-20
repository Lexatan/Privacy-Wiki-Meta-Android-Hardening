import requests
import time
import os
import difflib
import re

# Direkte URLs ohne Google-Umweg für bessere Ergebnisse
PLATFORMS = {
    "Instagram-Privacy": "https://help.instagram.com/155833707900388",
    "Facebook-Activity": "https://www.facebook.com/help/220725669275554"
}

HEADERS = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"}

stats = {"scans": 0, "changes": 0, "last_check": "Niemals"}
history_logs = []
last_content = {platform: "" for platform in PLATFORMS}

def clean_html(raw_html):
    # Entfernt Script-Tags, Styles und HTML-Tags für sauberen Textvergleich
    clean = re.sub(r'<(script|style|header|footer).*?>.*?</\1>', '', raw_html, flags=re.DOTALL)
    clean = re.sub(r'<[^>]+>', ' ', clean)
    return " ".join(clean.split())

def get_diff(old_text, new_text):
    # Vergleicht nur auf Wort-Basis, um Token-Änderungen zu ignorieren
    d = difflib.Differ()
    diff = d.compare(old_text.split(), new_text.split())
    # Zeige nur Zeilen mit echten Wort-Änderungen (+ oder -)
    return [line for line in diff if line.startswith(('+', '-'))]

def run_scan():
    stats["scans"] += 1
    stats["last_check"] = time.strftime("%H:%M:%S")
    found_something = False
    
    for platform, url in PLATFORMS.items():
        print(f"🔍 Scanne {platform}...")
        try:
            response = requests.get(url, headers=HEADERS, timeout=15)
            if response.status_code == 200:
                current_text = clean_html(response.text)
                
                if last_content[platform] and current_text != last_content[platform]:
                    changes = get_diff(last_content[platform], current_text)
                    if len(changes) > 5: # Ignoriere minimales Rauschen
                        stats["changes"] += 1
                        found_something = True
                        log_entry = f"🔔 [{stats['last_check']}] {platform}: TEXT-ÄNDERUNG!\n"
                        log_entry += f"   Gefundene Wörter: {' '.join(changes[:10])}..."
                        history_logs.append(log_entry)
                else:
                    history_logs.append(f"✅ [{stats['last_check']}] {platform}: Alles stabil.")
                
                last_content[platform] = current_text
            else:
                history_logs.append(f"❌ [{stats['last_check']}] {platform}: Status {response.status_code}")
        except Exception as e:
            history_logs.append(f"⚠️ [{stats['last_check']}] {platform}: Error {str(e)[:30]}")
    
    if found_something:
        print("\n⚠️ Inhaltsänderung erkannt!")
        input("Drücke ENTER für Details...")
        show_logs()
    else:
        print("\nScan sauber. Zurück zum Menü...")
        time.sleep(1.5)

def show_logs():
    os.system('cls' if os.name == 'nt' else 'clear')
    print("📜 REINE TEXT-ÄNDERUNGEN (Gereinigt):")
    print("-" * 45)
    if not history_logs:
        print("Keine Ereignisse.")
    else:
        for log in history_logs[-15:]:
            print(log)
    print("\n" + "-" * 45)
    input("Drücke ENTER für das Menü...")

def show_menu():
    os.system('cls' if os.name == 'nt' else 'clear')
    print("="*45)
    print("🛡️  META PRIVACY MONITOR (SMART FILTER)")
    print("="*45)
    print(f"📊 Scans: {stats['scans']} | 🔔 Echte Funde: {stats['changes']}")
    print(f"🕒 Letzter Check: {stats['last_check']}")
    print("-" * 45)
    print("1. 🔍 Scan starten")
    print("2. 📜 Text-Logs ansehen")
    print("3. ❌ Beenden")

def main():
    while True:
        show_menu()
        choice = input("Wahl: ")
        if choice == "1": run_scan()
        elif choice == "2": show_logs()
        elif choice == "3": break

if __name__ == "__main__":
    main()
    
