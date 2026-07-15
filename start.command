#!/bin/bash
# Elite Coach – lokaler Start (macOS)
# Doppelklick auf diese Datei startet den localhost-Server im richtigen Ordner
# und öffnet die App im Browser. Zum Stoppen: dieses Fenster schließen (oder Ctrl+C).

cd "$(dirname "$0")" || exit 1

PORT=8000
echo "======================================================"
echo "  Elite Coach startet auf  http://localhost:$PORT"
echo "  Dieses Fenster offen lassen. Stoppen mit Ctrl+C."
echo "======================================================"

# Browser nach kurzer Verzögerung öffnen
( sleep 1 && open "http://localhost:$PORT" ) &

# Server starten (python3 ist auf macOS via Command Line Tools verfügbar)
if command -v python3 >/dev/null 2>&1; then
  python3 -m http.server "$PORT"
elif command -v python >/dev/null 2>&1; then
  python -m http.server "$PORT"
else
  echo "python3 nicht gefunden. Bitte im Terminal 'xcode-select --install' ausfuehren und erneut versuchen."
  read -r -p "Enter zum Schliessen..." _
fi
