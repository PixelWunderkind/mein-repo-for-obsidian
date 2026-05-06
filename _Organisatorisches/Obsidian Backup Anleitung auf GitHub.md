# 🚀 GitHub Sync Workflow

Diese Befehle sichern meinen Tresor auf GitHub.


---

# 📂 Anleitung: Obsidian Backup auf GitHub

### Dein künftiger Schnell-Workflow

**Schritt 1: Ordner öffnen**

1. Drücke **Windows-Taste + E**.
    
2. Klicke oben in die Adresszeile, lösche alles und gib ein: `F:\MindVault\MindVault`
    
3. Drücke **Enter**.
    

**Schritt 2: PowerShell starten**

1. Halte die **Shift-Taste** gedrückt und mache einen **Rechtsklick** auf eine freie Stelle im Ordner.
    
2. Wähle **"PowerShell-Fenster hier öffnen"**.
    

**Schritt 3: Daten hochladen**

Kopiere diese Befehle nacheinander in das blaue Fenster (jeweils mit **Enter** bestätigen). Achte darauf, beim Einfügen nur **einmal rechts zu klicken**:

1. **Änderungen vormerken:**
    
    PowerShell
    
    ```
    git add .
    ```
    
2. **Speichern mit Zeitstempel:**
    

PowerShell

```
   git commit -m "Update $(Get-Date -Format 'dd.MM.yyyy HH:mm')"
```

3. **Auf GitHub hochladen:**
    
    PowerShell
    
    ```
    git push
    ```
    

---

### ⚡ Aktivierungsbefehle

Falls du technische Skripte oder eine Python-Umgebung in deinem Vault startest, nutze diese Befehle zur Vorbereitung:

PowerShell

```
# Erlaubt das Ausführen von Skripten (einmalig bestätigt mit 'A')
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Aktiviert die virtuelle Umgebung (falls vorhanden)
if (Test-Path ".\venv\Scripts\Activate") { .\venv\Scripts\Activate }
```

---

### 💡 Tipps bei Fehlern

- **Doppelter Text:** Falls ein Befehl doppelt erscheint, drücke die **Esc-Taste**, um die Zeile zu leeren.
    
- **Dubious Ownership:** Falls Git den Ordner auf `F:` ablehnt, gib einmalig diesen Befehl ein:
    
    `git config --global --add safe.directory F:/MindVault/MindVault`

