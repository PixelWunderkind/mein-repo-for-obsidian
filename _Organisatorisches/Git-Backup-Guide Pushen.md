
---

# 🚀 Git Backup Routine

Diese Notiz beschreibt den Workflow, um den Vault am PC zu sichern und auf GitHub zu pushen.

## 🛠️ Methode 1: Über PowerShell (Manuell)

                                                       
                                           Git pushen for backups!


So gehst du vor:

    Pfad ansteuern:
    Gib diesen Befehl ein, um in deinen Ordner zu springen:
    PowerShell öffnen mit Win+X

    1.)            cd F:\MindVault\MindVault

    2.)            Skript ausführen:
                     Erst wenn du dort bist, kannst du das Backup-Skript starten:
                     PowerShell

    3.)            .\backup.ps1


    4.)             git status



---

## ⚡ Methode 2: Der "Faulpelz-Trick" (Explorer)

Wenn du nicht tippen willst, nutze den direkten Weg über den Windows-Explorer:

1. Öffne den Ordner `F:\MindVault\MindVault`.
    
2. Suche die Datei **`backup.ps1`**.
    
3. **Rechtsklick** auf die Datei -> **"Mit PowerShell ausführen"** wählen.
    

> [!IMPORTANT] Wichtig
> 
> Falls eine Sicherheitsabfrage erscheint, drücke einfach **J** (Ja) oder **Y** (Yes), um den Vorgang zu bestätigen.

---

## 📝 Was das Skript macht

- Fügt alle neuen/geänderten Dateien hinzu (`git add .`).
    
- Erstellt einen Zeitstempel-Commit.
    
- Pusht alles auf dein GitHub-Repository.
    
- Ignoriert automatisch die `workspace.json` (dank `.gitignore`).