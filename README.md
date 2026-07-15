# Elite Coach — All-in-one Fitness Dashboard (Web)

Ein selbst-enthaltenes Fitness-Dashboard als **eine einzige Datei** (`index.html`).
Kein Build, kein npm, keine externen Abhängigkeiten – einfach öffnen.

## Features (v1)
- **3 Ringe** – Schlaf-Score, Erholung/Recovery (grün/gelb/rot je nach Score), Kalorien (kcal übrig)
- **Goal-Ticker** – NASDAQ-artige Leiste, die durch offene Ziele rotiert
- **KI-Coach** – Tagesnachricht + Chat. Ohne API-Key mit Demo-Logik, mit Key echte **Claude API** (`claude-sonnet-5`)
- **Nährwerte** – kcal / Protein / Kohlenhydrate / Fett als Fortschrittsbalken
- **Letztes Training**, **Streak** mit Mini-Kalender, **Ziele-Liste** (anlegen/abhaken/löschen)
- **Kacheln** – Schritte, aktive kcal, VO₂max, Gewicht
- Alle Daten lokal im Browser (`localStorage`) – editierbar über ⚙️

## Lokal öffnen (localhost)

**Variante A – Doppelklick:** `index.html` einfach im Browser öffnen. Läuft sofort.

**Variante B – lokaler Server (echter localhost):**
```bash
# im Projektordner:
python3 -m http.server 8000
# dann im Browser öffnen:
#   http://localhost:8000
```
Oder mit VS Code: Erweiterung **Live Server** installieren → Rechtsklick auf `index.html` → *Open with Live Server*.

## KI-Coach aktivieren (optional)
1. API-Key auf https://console.anthropic.com holen
2. In der App ⚙️ → *Claude API-Key* einfügen → Speichern
3. „Mit Coach chatten"

> ⚠️ Der Key wird im Browser gespeichert und direkt an die Anthropic-API gesendet – **nur für lokale/private Nutzung** gedacht. Für eine öffentliche Website den API-Call über ein kleines Backend leiten.

## Anpassen / umdesignen
Farben und Abstände stehen als CSS-Variablen ganz oben in `index.html` (`:root { … }`).
Demo-Werte stehen in der Funktion `seedState()` im `<script>`.
