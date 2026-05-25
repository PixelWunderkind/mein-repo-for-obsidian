



  ### DESIGN_SYSTEM.md

## Zweck

**⭐ Globale Source‑of‑Truth** für das gesamte UI/UX‑System.  
Granulare Detailregeln befinden sich in `docs/DESIGN_SYSTEM/`.

---

## Core‑Prinzipien

- ⭐ **Mobile First**
- ⭐ **Anti‑Vibe‑Coding**
- ⭐ **Keine generischen SaaS‑Layouts**
- ⭐ **Handwerker‑orientierte Designsprache**
- ⭐ **Hohe visuelle Tiefe statt Flat Design**
- ⭐ **Konsistentes Token‑System**
- ⭐ **Komponentenbasierte Architektur**

---

## Branding Regeln

- ⭐ **Brand‑Farbpalette hat Vorrang**
- ⭐ **Keine Default‑Tailwind‑Farben**
- ⭐ **Gewerke‑spezifische Farb‑DNA verwenden**
- ⭐ **Logos und Assets konsistent nutzen**

**→** `docs/DESIGN_SYSTEM/COLORS.md`

---

## Typography System

- ⭐ **Heading / Body Pairing verpflichtend**
- ⭐ **Konsistente Line‑Heights**
- ⭐ **Einheitliche Tracking‑Werte**
- ⭐ **Keine zufälligen Schriftgrößen**

**→** `docs/DESIGN_SYSTEM/TYPOGRAPHY.md`

---

## Layout und Spacing System

- ⭐ **Einheitliches Token‑System** (Spacing, Breakpoints, Container)
- ⭐ **Konsistente Containerbreiten**
- ⭐ **Definierte Grid‑Gaps**
- ⭐ **Keine zufälligen Padding‑Werte**

**→** `docs/DESIGN_SYSTEM/SPACING.md`

---

## Komponenten System

- ⭐ **Konsistente Border‑Radien** (Token)
- ⭐ **Wiederverwendbare UI‑Patterns** (Buttons, Cards, Forms)
- ⭐ **Einheitliche Card‑/Button‑Systeme**
- ⭐ **Keine Inline‑Styles ohne Begründung**

**→** `docs/DESIGN_SYSTEM/COMPONENTS.md`

---

## Motion System

- ⭐ **Nur transform + opacity Animationen**
- ⭐ **Kein transition‑all**
- ⭐ **Spring‑basierte Easings bevorzugen**
- ⭐ **Performante Animationen verpflichtend**

**→** `docs/DESIGN_SYSTEM/ANIMATIONS.md`

---

## Interaction System

- ⭐ **Hover, Focus und Active States verpflichtend**
- ⭐ **Touch‑Targets Mobile‑optimiert**
- ⭐ **Interaktive Elemente benötigen visuelles Feedback**

**→** `docs/DESIGN_SYSTEM/INTERACTIONS.md`

---

## Depth System

- ⭐ **Layering verpflichtend**: `base`, `elevated`, `floating`
- ⭐ **Keine flachen Schatten**
- ⭐ **Mehrstufige Shadow‑Systeme bevorzugen**

**→** `docs/DESIGN_SYSTEM/DEPTH_SYSTEM.md`

---

## Responsive System

- ⭐ **Mobile First verpflichtend**
- ⭐ **Definierte Breakpoints dokumentieren**
- ⭐ **Fluid Typography bevorzugen**

**→** `docs/DESIGN_SYSTEM/RESPONSIVE.md`

---

## Accessibility System

- ⭐ **Sichtbare Focus‑States verpflichtend**
- ⭐ **WCAG‑orientierte Kontraste sicherstellen**
- ⭐ **Semantisches HTML bevorzugen**

**→** `docs/DESIGN_SYSTEM/ACCESSIBILITY.md`

---

## Harte Regeln

- ⭐ **Keine generischen Tailwind‑Defaults**
- ⭐ **Keine zufälligen Farben**
- ⭐ **Keine inkonsistenten Border‑Radien**
- ⭐ **Keine ungefragten Design‑Verbesserungen**

**→** `docs/DESIGN_SYSTEM/UI_RULES.md`

---

## Quick Checklist für Contributors

- ⭐ **Nutze Tokens aus `design_system.ts` für Farben, Spacing, Radius.**
- ⭐ **Prüfe neue Komponenten gegen `COMPONENTS.md`.**
- ⭐ **Mobile‑First testen auf echten Geräten.**
- ⭐ **Accessibility‑Checks: Fokus, Kontrast, Semantik.**
- ⭐ **Commit‑Message Konvention: `feat(ui): <kurze Beschreibung>` oder `chore(design): <Änderung>`**

---

**Datei‑Ort:** `DESIGN_SYSTEM.md`  
**Weitere Details:** Siehe `docs/DESIGN_SYSTEM/*` für tiefergehende Regeln und Beispiele.