
                                             Vorgehensweise für neuen Songeintrag:


### 1. Eine neue Notiz erstellen

Erstelle im Ordner **`Song-Projekte`** eine neue Notiz (z. B. `Mein neuer Song`).

### 2. Properties (Metadaten) oben einfügen

Ganz oben in diese neue Notiz kopierst du diesen Block. Er ist der "Ausweis" für den Song, damit die Übersicht ihn erkennt:

```markdown
---
type: song
style_prompt: "Hier deinen Style-Prompt einfügen"
status: "In Arbeit"
---

```

Kopieren

### 3. Deine Lyrics darunter einfügen

Unter diesem Block (nach den drei Strichen `---`) schreibst du deine Lyrics. Deine Datei sieht dann so aus:

```markdown
---
type: song
style_prompt: "Deep House, 120 BPM, female vocals"
status: "Fertig"
---

# Lyrics: Mein neuer Song

### Vers 1
Hier steht dein erster Songtext...

### Chorus
Und hier der Refrain...

```

Kopieren

---

### Was dann passiert:

Sobald du diese Datei im Ordner gespeichert hast, musst du nichts weiter tun. Wenn du jetzt deine Notiz **`_Übersicht Song-Projekte`** öffnest, hat Dataview dort automatisch eine neue Zeile hinzugefügt:

* In der Spalte **File** steht der Link zu deinem Song.
* In der Spalte **Style-Prompt** steht das, was du oben in der Datei eingetragen hast.

**Zusammengefasst:** Die Lyrics kommen in ihre eigene, neue Notiz innerhalb des Ordners `Song-Projekte`. Die Übersicht "zieht" sich die Infos von dort automatisch zusammen.