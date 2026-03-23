# ⚡ Performance & Akku-Mythen: Warum Debloating wirkt

Viele denken, eine App, die man nicht öffnet, verbraucht keinen Strom. Bei Xiaomi/Poco und Meta-Apps ist das Gegenteil der Fall. Hier erfährst du, warum das Löschen von Bloatware dein Handy physisch entlastet.

---

## 🐢 Das Problem: "Zombies" im Hintergrund
System-Apps und Meta-Dienste (Facebook Installer, Analytics, etc.) starten sich oft selbstständig neu, auch wenn du sie nie öffnest.
* **CPU-Zyklen:** Jedes Mal, wenn eine App im Hintergrund nach Hause telefoniert, muss die CPU kurz "aufwachen". Das kostet Millisekunden, die sich summieren.
* **RAM-Fragmentierung:** Apps belegen wertvollen Arbeitsspeicher. Wenn der RAM voll ist, muss Android andere Apps aggressiv schließen – das Handy fühlt sich "laggig" an.

---

## 🔋 Der Akku-Killer: "Wakelocks"
Ein Wakelock verhindert, dass dein Handy in den Tiefschlaf (Deep Sleep) geht.
* **Tracking-Dienste:** Xiaomi-Analytics und Meta-Services prüfen ständig Standort, Netzwerk und Sensoren.
* **Das Ergebnis:** Dein Akku entlädt sich über Nacht um 5-10%, obwohl das Display aus war. Nach dem Debloating mit **Canta** sollte dieser Standby-Verbrauch auf 1-2% sinken.

---

## 🛠️ Profi-Tipp: Hintergrundprozesse limitieren
Wenn du Meta-Apps (Instagram/FB) nutzen musst, kannst du Android zwingen, sie sofort zu "töten", wenn du sie verlässt.
1. Gehe zu `Einstellungen -> Weitere Einstellungen -> Entwickleroptionen`.
2. Suche den Punkt **Hintergrundprozess-Limit**.
3. Stelle ihn auf **Höchstens 2 Prozesse** (für maximale Performance) oder nutze die Option **Aktivitäten nicht beibehalten** (sehr aggressiv – Apps starten jedes Mal neu).

---

## 🚀 Der "Visual Success" Check
Du willst sehen, ob es was gebracht hat?
* Schau unter `Einstellungen -> Akku -> Akkuverbrauch` nach dem Debloating. Die Kurve im Standby (Nacht) sollte deutlich flacher sein.
* Nutze Apps wie **DevCheck** (F-Droid), um die CPU-Auslastung im Leerlauf zu beobachten.

---
[⬅️ Zurück zur Hauptseite](README.md)
