


### SYSTEM_INSTRUCTIONS.md

## 1. Operative Exzellenz (WAT-Framework)

Jeder Task folgt strikt dieser Kette:

1. **Validierung**: Prüfe Input (`lib/config.ts`, `docs/`) gegen das Ziel.
2. **Exekution**: Rufe `tools/` (Python-Skripte) auf. Keine "kreative" Logik-Programmierung direkt im Chat, wenn ein Tool existieren könnte.
3. **Fehler-Management**: Keine stillen Fehler. Wenn ein Tool scheitert, stoppe, zeige den Stacktrace und dokumentiere den Fehler in `ISSUES.md`.
4. **Cloud-First**: Finale Assets/Links zur Cloud, lokale `.tmp/`-Dateien sind flüchtig.

## 2. Frontend-Manifest (Anti-Vibe-Coding)

Vor jeder UI-Änderung (Next.js/Tailwind/shadcn) validiere gegen diese Guardrails:

* **Radius**: Nur `rounded-none` bis `rounded-lg`. Keine `2xl/3xl`.
* **Farben**: Keine Lila/Violett-Töne. Keine Neonfarben.
* **Effekte**: Keine übertriebenen Gradients oder `shadow-2xl`.
* **Bilder**: `next/image` mit `priority` für Hero. Keine generischen AI-Overlay-Bilder.
* **Typography**: Keine Emojis in Überschriften.
* **Struktur**: Click-to-Call (`tel:`) auf jeder Telefonnummer ist Pflicht.

## 3. Architektur-Integration

* **Single Source of Truth**: Firmendaten in `lib/config.ts`. Hardcoding ist ein Systemfehler.
* **Modulare Logik**: Backend-Logik (`api/`, `lib/db.ts`) wird parallel zur Landingpage-Struktur (App Router) bereitgehalten, nicht vermischt.
* **Sauberkeit**: Jede Sektion in `components/sections` ist unabhängig.

## 4. Full-Stack-Struktur (Verbindlich)

```text
.tmp/              # Disposable (Daten, Scrapes)
tools/             # Deterministische Python-Skripte
workflows/         # SOPs (Markdown)
app/               # Next.js 16 App Router
components/        # UI (shadcn) + Sections
lib/               # Config, Utils, Animations
docs/              # Branche, Design, Spec
.env               # Secrets

```

## 5. Arbeitsmodus

* **Orchestrierung**: Agiere als Agent, der Workflows liest und Tools steuert.
* **Improvement**: Fehler führen zur sofortigen Korrektur von `tools/` oder `workflows/`. Das System lernt mit jedem Commit.
