
# GuideOS Shutdown-Timer

## Übersicht
Der **GuideOS Shutdown-Timer** ist ein Zenity-basiertes Bash-Skript, das ein zeitgesteuertes Herunterfahren des Systems ermöglicht.  
Es erlaubt die Eingabe einer beliebigen Zeitspanne (Stunden, Minuten, Sekunden) und zeigt den Countdown in einem grafischen Fortschrittsfenster mit Abbruchoption an.  
Dadurch können geplante Shutdowns komfortabel gesteuert und jederzeit abgebrochen werden.

- **Entwickler:** evilware666, helga & Copilot  
- **Version:** 1.1  
- **Datum:** 19.12.2025  
- **Lizenz:** MIT  

---

## Voraussetzungen
- **Linux-System** mit Bash und `zenity` installiert  
- **Sudo-Rechte** (Passwort wird beim Start abgefragt)  
- Optional: GTK-Theme-Anpassung über `gsettings`  

---

## Installation
1. Lade das Skript herunter und speichere es z. B. unter `/usr/local/bin/shutdown-timer.sh`.
2. Mache die Datei ausführbar:
   ```bash
   chmod +x /usr/local/bin/shutdown-timer.sh
   ```
3. Stelle sicher, dass `zenity` installiert ist:
   ```bash
   sudo apt install zenity   # Debian/Ubuntu
   sudo dnf install zenity   # Fedora
   sudo pacman -S zenity     # Arch
   ```

---

## Nutzung
Starte das Skript im Terminal:
```bash
./shutdown-timer.sh
```

### Ablauf:
1. **Passwortabfrage:** Eingabe des Sudo-Passworts zur Validierung.  
2. **Formular:** Eingabe der gewünschten Zeitspanne (Stunden, Minuten, Sekunden).  
3. **Info-Fenster:** Anzeige, wann der Shutdown erfolgen wird.  
4. **Countdown:** Fortschrittsanzeige mit verbleibender Zeit und Abbruchoption.  
5. **Shutdown:** Nach Ablauf fährt das System automatisch herunter.  

---

## Beispiele
- Shutdown in 30 Minuten:
  - Eingabe: `0 Stunden`, `30 Minuten`, `0 Sekunden`
- Shutdown in 2 Stunden:
  - Eingabe: `2 Stunden`, `0 Minuten`, `0 Sekunden`

---

## Hinweise
- Der Countdown läuft systemweit und kann jederzeit über das GUI-Fenster abgebrochen werden.  
- Bei falscher Passworteingabe wird das Skript sofort beendet.  
- Eingaben müssen numerisch sein, sonst erscheint eine Fehlermeldung.  
- Gesamtdauer **muss größer als 0 Sekunden** sein.  

---

## Bekannte Einschränkungen
- Funktioniert nur mit gültigen Sudo-Rechten.  
- Kein automatisches Speichern von Einstellungen.  
- Shutdown erfolgt sofort nach Ablauf des Countdowns (kein Suspend/Restart).  

---

## Lizenz
Dieses Projekt steht unter der **MIT-Lizenz**.  
Freie Nutzung, Modifikation und Weitergabe sind erlaubt, solange der Lizenztext beibehalten wird.
```
