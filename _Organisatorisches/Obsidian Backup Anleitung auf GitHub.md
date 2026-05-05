# 🚀 GitHub Sync Workflow

Diese Befehle sichern meinen Tresor auf GitHub.

## Schnellstart (PowerShell im Ordner öffnen)
1. Gehe im Windows Explorer zu `F:\MindVault\MindVault`.
2. Klicke oben in die Adresszeile, tippe `powershell` ein und drücke **Enter**.

## Die 3 Standard-Befehle
Führe diese Befehle nacheinander aus, um Änderungen hochzuladen:

```powershell
# 1. Alle Änderungen vormerken
git add .

# 2. Änderungen bestätigen (Datum/Zeit wird automatisch ergänzt)
git commit -m "Update $(Get-Date -Format 'dd.MM.yyyy HH:mm')"

# 3. Hochladen
git push

oder 

### 1. Den Ordner öffnen

1. Drücke **Windows-Taste + E** (Der Windows Explorer öffnet sich).
    
2. Klicke ganz oben in die lange weiße Adresszeile (dort steht oft "Schnellzugriff" oder "Dieser PC").
    
3. Lösche den Text dort, kopiere diesen Pfad hinein und drücke **Enter**:
    
    `F:\MindVault\MindVault`
    

### 2. Die PowerShell im richtigen Ordner starten

1. Klicke erneut oben in dieselbe Adresszeile (wo jetzt dein Pfad steht).
    
2. Lösche den Pfad weg und tippe nur das Wort **`powershell`** ein.
    
3. Drücke **Enter**.
    
    _Ein blaues Fenster öffnet sich. In der letzten Zeile muss nun `PS F:\MindVault\MindVault>` stehen._
    

### 3. Der Upload (Die 3 Befehle)

Kopiere nun diese Befehle nacheinander in das blaue Fenster und bestätige jeden mit **Enter**:

PowerShell

```
git add .
```

PowerShell

```
git commit -m "Update $(Get-Date -Format 'dd.MM.yyyy HH:mm')"
```

PowerShell

```
git push

---

**PowerShell Aktivierung:**

`Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`


Ausschließlich zu nutzen bei Fehlermeldungen in der **PowerShell**.

Hier ist die Regel für dich:

- **Wenn alles funktioniert:** Ignoriere den Befehl zur Aktivierung einfach.
    
- **Wenn roter Text erscheint:** Kopiere den Befehl hinein, drücke **Enter** und versuche es dann noch einmal mit deinem Git-Upload.
    
---

