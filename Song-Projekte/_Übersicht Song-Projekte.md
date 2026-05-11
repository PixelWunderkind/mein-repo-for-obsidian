# 🎵 Song-Projekte Dashboard

> [!TIP] Workflow
> Neue Songs im Ordner `Song-Projekte` erstellen und die Properties (Rechtsklick -> Properties) ausfüllen.

---
```dataview
TABLE 
    style_prompt AS "Style-Prompt", 
    status AS "Status"
FROM "Song-Projekte"
WHERE type = "song" 
AND file.name != "_Übersicht Song-Projekte"
SORT file.name ASC

