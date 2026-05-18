
---

# 🚀 # High-End Animated Frontpage Workflow

Dieser Workflow beschreibt die Erstellung einer High-End Landingpage mit scrollgesteuerten Bildsequenzen (Parallax-Canvas-Animation).

---
tags:
  - workflow
  - animation
  - scrollytelling
  - canvas
  - antigravity
---

## Phase 1: Asset-Generierung (Visuals)

### Schritt 1: First Frame (Startzustand)
* **Tool:** Whisk (Nano Banana 2)
* **Ziel:** Erstellung des sauberen, statischen Ausgangsbildes (z. B. das ungeöffnete Produkt / die schwebende Dose).
* **Fokus:** Perfekte Ausleuchtung, Branding-Details und zentrierte Platzierung auf dem exakten Hintergrund-Farbwert (z. B. reinem Schwarz `#000000`).

### Schritt 2: Endframe (Finaler Zustand)
* **Tool:** Whisk (Nano Banana 2)
* **Ziel:** Erstellung des finalen "Burst"-Frames (Explosion der Inhaltsstoffe / Zerlegen des Objekts).
* **Fokus:** Konsistenz zum First Frame wahren (Beleuchtung & Proportionen). Das Kernprodukt bleibt im Zentrum, während die Umgebung dynamisch explodiert oder sich verändert.

### Schritt 3: Dynamische Transition (Motion)
* **Tool:** Google Flow (Veo)
* **Input:** First Frame + Endframe als Referenzbilder (Image-to-Video).
* **Ziel:** Generierung des flüssigen Übergangs (Rotation, Splash-Effekte, Partikelflug).
* **Output:** Ein hochauflösendes Video der Animation (ca. 120–240 Frames).

---

## Phase 2: Optimierung & Konvertierung

### Schritt 4: Video-zu-Bildsequenz Konvertierung
* **Tool:** `ezgif.com/video-to-png` (oder `/video-to-jpg`)
* **Einstellungen:** 30 FPS für flüssige Parallax-Wiedergabe.
* **Ziel:** Das Video in durchnummerierte Einzelbilder zerlegen (z. B. `frame_001.png` bis `frame_120.png`).
* **Output:** Download der Frames als gepackte **`ezgif-sequenz.zip`**.

---

## Phase 3: Implementierung in Antigravity

1. Die fertige `ezgif-sequenz.zip` aus Phase 2 per Drag-and-Drop in die **linke Sidebar** von Antigravity ziehen.
2. Den untenstehenden Universal-Prompt kopieren und in die **rechte Sidebar** von Antigravity einfügen.

### Effekt im Code:
* **Kein Autoplay:** Das Video verliert jegliche Eigendynamik und startet nicht von alleine.
* **Mausrad als Regisseur:** Der generierte Code koppelt die Frames aus der ZIP-Datei direkt an die Scroll-Position des Nutzers.

| Interaktion | Visueller Effekt |
| :--- | :--- |
| **Mausrad steht still** | Die Animation friert exakt im aktuellen Frame ein. |
| **Scrollen nach unten** | Das Objekt animiert sich vorwärts (z. B. explodiert / öffnet sich). |
| **Scrollen nach oben** | Das Objekt animiert sich rückwärts (setzt sich sauber zusammen). |

---

## Universal-Prompt: Scrollytelling Canvas Frame-Trigger

```markdown
**AGIERE ALS:**
Ein weltklasse Creative Developer (Awwwards-Niveau), spezialisiert auf Next.js, Framer Motion und scroll-basierte Animationen.

**DIE AUFGABE:**
Erstelle eine minimalistische, hochwertige "Scrollytelling"-Landingpage für [PRODUKT/PROJEKTNAME]. Die HAUPTFUNKTION ist eine scroll-gebundene Canvas-Animation, die eine Bildsequenz von [OBJEKT] zeigt, das sich beim Scrollen [ART DER BEWEGUNG/EFFEKT, z.B. um 360 Grad dreht / in seine Einzelteile zerlegt / explosionsartig ausbreitet].

**TECH STACK:**
- Framework: Next.js 14 (App Router)
- Styling: Tailwind CSS
- Animation: Framer Motion (speziell useScroll und useTransform)
- Rendering: HTML5 Canvas (für flüssige Performance)

**VISUELLE RICHTUNG & FARBEN:**
- **Design-Philosophie:** [STIL, z.B. Cyberpunk, Minimalistisch, Futuristisch]
- **Farbpalette:** Hintergrund: [HINTERGRUNDFARBE, z.B. #000000]. Text: [TEXTFARBE]
- **Typografie:** [SCHRIFTARTEN]. Großzügige Letter-spacing, viel Weißraum
- **Nahtloses Blending:** Der Canvas-Hintergrund MUSS exakt mit dem Seitenhintergrund übereinstimmen (Farbwert aus Bildern pipettieren!)

**KRITISCHE IMPLEMENTIERUNG - SCROLL-ANIMATION:**

1. **Canvas-Setup mit Scroll-Trigger:**
```typescript
// KI generiert hier das reaktive HTML5 Canvas Setup mit useScroll und useTransform