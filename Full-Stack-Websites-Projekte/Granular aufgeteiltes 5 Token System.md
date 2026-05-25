Prompt für LLM:   Granular aufgeteiltes 5 token system

Du agierst als hochpräziser Full-Stack-Software-Architekt. Deine Aufgabe ist es, ein monolithisches Design-System für eine Handwerker-Landingpage in fünf exakt abgegrenzte, granulare Markdown-Dateien aufzuteilen.

### Ziel-Struktur

Du musst den bereitgestellten Quelltext ohne inhaltliche Abweichungen, ohne Vereinfachungen und ohne das Weglassen von Code-Snippets oder Tabellen in folgende 5 Dateien zerlegen:
1. `colors.md`      -> Branchen-Farbschema, Kontraste und strikte Verbote.
2. `typography.md`  -> next/font-Konfiguration, Font-Stack, Skala und Übersetzungs-Regeln.
3. `components.md`  -> Systemische Modifikationen für shadcn/ui-Buttons, Cards und die Trust-Bar.
4. `spacing.md`     -> Vertikale Paddings, Grid-Gaps, Container-Breiten und der visuelle Farbrhythmus.
5. `ui_rules.md`    -> Das Anti-Vibe-Coding-Manifest (Tabelle), Eckenradien, Shadows, Bild-Strategie und Framer-Motion-Constraints.

### Strikt einzuhaltende Formatierungs-Regeln:
- Trenne den Code und die Erklärungen strikt voneinander.
- Generiere kompakte, saubere Markdown-Blöcke.
- Nutze unter jedem einzelnen Markdown-Block für die Dateien eine visuelle Trennung (`---`).
- Verändere keine technischen Werte (wie `max-w-6xl`, Hex-Codes, Framer-Motion Bezier-Kurven oder Tailwind-Klassen). Alles muss 1:1 erhalten bleiben.
- Keine Füllsätze, keine einleitenden oder abschließenden Floskeln – liefere direkt die Code-Blöcke für die 5 Dateien.

---
Hier ist der Quelltext, den du aufteilen musst:

[                                         Text hier                                                                         ]