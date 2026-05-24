### Brand Assets – Industrial Craft UI (Handwerker-Websites)

Dieses Dokument definiert die visuelle Identität, die Designsprache, die UI-Regeln, die Farb-DNA und die gewerkspezifischen Themes für alle Handwerker-Websites im System. Es ergänzt das globale DESIGN_SYSTEM.md und bildet die Branding-Ebene für alle Gewerke.

---

## 1. Design-Philosophie: „Konstruktive Strenge“

Die Designsprache basiert auf der Logik des Handwerks: präzise, solide, langlebig, ohne unnötigen Verschnitt.

Grundprinzipien:
- Handwerk statt Startup
- Vertrauen statt Wow-Effekt
- Klarheit statt Trend-UI
- Deutsche Seriosität statt Silicon-Valley-Lockerheit
- Keine AI-typischen Vibe-Coding-Elemente

---

## 2. Anti-Vibe-Coding (Verbindlich)

Verboten:
- rounded-2xl, rounded-3xl
- Lila/Violett, Neonfarben
- shadow-2xl, Glassmorphism (außer Header)
- Gradient-Buttons
- Übertriebener Whitespace (py-32, gap-12)
- Emojis in Headlines
- Hero-Gradient-Overlays

Erlaubt / Vorgeschrieben:
- Cards: rounded-none
- Buttons/Inputs: rounded-md
- Avatare/Badges: rounded-full
- Borders statt Shadows
- DM Sans + JetBrains Mono
- Realistische Bilder, dunkles Overlay (bg-black/50)
- Mobile-First, 44px-Touch-Targets

---

## 3. Typografie

Primärfont: DM Sans  
Monospace: JetBrains Mono (für Zahlen, Trust-Werte, Badges)

Typo-Skala (Tailwind):
- Hero: text-4xl md:text-5xl lg:text-6xl font-bold tracking-tight
- H2: text-3xl md:text-4xl font-bold
- H3: text-xl md:text-2xl font-bold
- Body: text-base leading-relaxed
- Small: text-sm text-slate-500

Regeln:
- Headlines immer tracking-tight
- Body immer leading-relaxed
- Keine font-black oder font-extrabold

---

## 4. Farb-System (Global)

Das globale Farbsystem definiert die Grundpalette, die in allen Gewerken gilt.

primary:
  default: "#1a365d"
  light: "#2b5ea7"
  lighter: "#e8f0fe"

accent:
  default: "#d97706"
  light: "#f59e0b"
  lighter: "#fef3c7"

surface:
  white: "#ffffff"
  light: "#f8fafc"
  muted: "#f1f5f9"
  border: "#e2e8f0"

text:
  default: "#0f172a"
  body: "#334155"
  muted: "#64748b"

status:
  emergency: "#dc2626"
  success: "#16a34a"

---

## 5. Multi-Gewerk-Themes (Deterministische Farb-DNA)

Die Website schaltet per data-gewerk="xyz" automatisch auf das passende Theme.

shk:
  name: "Sanitär Heizung Klima"
  primary: "#1a365d"
  accent: "#d97706"
  bgLighter: "#e8f0fe"

dachdecker:
  name: "Dachdeckerei"
  primary: "#7f1d1d"
  accent: "#1a365d"
  bgLighter: "#fee2e2"

maler:
  name: "Maler & Lackierer"
  primary: "#1e293b"
  accent: "#2563eb"
  bgLighter: "#f1f5f9"

schreiner:
  name: "Schreinerei / Tischlerei"
  primary: "#451a03"
  accent: "#d97706"
  bgLighter: "#fdf6e2"

---

## 6. Border-Radius-Strategie

Cards: rounded-none  
Buttons/Inputs: rounded-md  
Badges/Avatare: rounded-full  
Hero-Bilder: rounded-none  
Card-Bilder: rounded-sm  

Faustregel: Je größer das Element, desto weniger Radius.

---

## 7. Shadow-Strategie

Standard-Cards: kein Shadow, nur Border  
Testimonials: shadow-sm  
Header beim Scrollen: shadow-md  
Floating CTA (mobil): shadow-lg  
Sonst: keine Shadows

---

## 8. Sektions-Rhythmus

Hintergrund-Wechsel:
weiß → dunkel → weiß → hell → dunkel → weiß → hell → weiß → dunkel → sehr dunkel

Layouts:
- Hero: Full-Width, dunkles Bild
- Trust Bar: schmal, bg-primary
- Leistungen: Grid, Cards mit Border
- Über uns: Split-Layout
- Lead Magnet: bg-primary, weißer Text
- Bewertungen: Grid/Slider
- Einzugsgebiet: Chips
- FAQ: Akkordeon
- CTA Banner: bg-primary

---

## 9. UX-Regeln (Handwerker-spezifisch)

- 44px-Gesetz: Alle klickbaren Elemente ≥ 44px
- Telefonnummern: Immer tel:
- Mobile-First: Navigation via Sheet
- Keine Hover-only-Interaktionen
- CLS = 0: Feste Aspect-Ratios
- Formulare: Native HTML5 + Zod

---

## 10. Komponenten-Regeln (shadcn/ui)

Buttons:
- Primary: bg-accent text-white rounded-md px-6 py-3
- Secondary: border-2 border-primary text-primary rounded-md
- Ghost: Textlink-Stil, underline-hover
- Keine Gradients, keine Shadows, keine Icon-only Buttons ohne Label

Cards:
- Border: border-slate-200
- Kein Shadow
- Icon-Container: bg-primary-lighter rounded-md
- CTA: Ghost-Button

Trust Bar:
- bg-primary text-white py-4
- Zahlen: font-mono text-2xl font-bold

---

## 11. Animationen (Framer Motion)

Presets:
- fadeUp
- fadeLeft
- fadeRight