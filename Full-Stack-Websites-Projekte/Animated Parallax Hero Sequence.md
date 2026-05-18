
---

# 🚀 # High-End Animated Frontpage Workflow

Dieser Workflow beschreibt die Erstellung einer High-End Landingpage mit scrollgesteuerten Bildsequenzen (Parallax-Canvas-Animation).

---
---
tags:
  - workflow
  - animation
  - scrollytelling
  - canvas
  - antigravity
---

# High-End Animated Frontpage Workflow

Dieser Workflow beschreibt die Erstellung einer Landingpage mit scrollgesteuerten Bildsequenzen über eine reine HTML5-Canvas-Engine (ohne Overlays/Texte).

---

## Phase 1: Asset-Generierung (Visuals)

### Schritt 1: First Frame (Startzustand)
* **Tool:** Whisk (Nano Banana 2)
* **Ziel:** Erstellung des statischen Ausgangsbildes (Objekt geschlossen / im Startzustand).
* **Fokus:** Perfekt zentrierte Platzierung auf dem exakten Hintergrund-Farbwert (z. B. `#000000`).

### Schritt 2: Endframe (Finaler Zustand)
* **Tool:** Whisk (Nano Banana 2)
* **Ziel:** Erstellung des finalen Frames (Objekt explodiert / rotiert / geöffnet).
* **Fokus:** Konsistenz zum First Frame wahren (Licht & Proportionen). Das Objekt bleibt im Zentrum.

### Schritt 3: Dynamische Transition (Motion)
* **Tool:** Google Flow (Veo)
* **Input:** First Frame + Endframe als Referenzbilder.
* **Ziel:** Generierung des flüssigen Übergangs.
* **Output:** Ein hochauflösendes Video der Animation (ca. 120–240 Frames).

---

## Phase 2: Optimierung & Konvertierung

### Schritt 4: Video-zu-Bildsequenz Konvertierung
* **Tool:** `ezgif.com/video-to-png` (oder `/video-to-webp`)
* **Ziel:** Das Video in durchnummerierte Einzelbilder zerlegen (z. B. `frame_0.webp` bis `frame_119.webp`).
* **Output:** Download der Frames als gepackte **`ezgif-sequenz.zip`**.

---

## Phase 3: Implementierung in Antigravity

1. Die fertige `ezgif-sequenz.zip` per Drag-and-Drop in die **linke Sidebar** von Antigravity ziehen.
2. Den untenstehenden Universal-Prompt kopieren, Variablen anpassen und rechts in die **Promptbox** einfügen.

---

## Universal-Prompt: Scrollytelling Canvas Frame-Trigger

Kopiere diesen Text komplett in die rechte Sidebar von Antigravity:

```text
**AGIERE ALS:**
Ein weltklasse Creative Developer (Awwwards-Niveau), spezialisiert auf Next.js, Framer Motion und performante Canvas-Animationen.

**DIE AUFGABE:**
Erstelle eine extrem minimalistische Landingpage, deren einziger Inhalt eine scroll-gebundene HTML5-Canvas-Animation einer Bildsequenz ist. Die Seite dient als reines, funktionales Grundgerüst ohne Text-Overlays, ohne Navigation, ohne Buttons und ohne UI-Elemente.

**TECH STACK:**
- Framework: Next.js 14 (App Router)
- Styling: Tailwind CSS
- Animation: Framer Motion (speziell useScroll und useTransform)
- Rendering: HTML5 Canvas (für flüssige Performance)

**VISUELLE RICHTUNG & FARBEN:**
- Design-Philosophie: Absolut minimalistisch, Fokus liegt zu 100% auf dem zentrierten Canvas-Objekt.
- Farbpalette: Hintergrund: [HINTERGRUNDFARBE, z.B. #000000].
- Nahtloses Blending: Der Canvas-Hintergrund MUSS exakt mit dem Seitenhintergrund übereinstimmen.

**KRITISCHE IMPLEMENTIERUNG - SCROLL-ANIMATION:**

1. Canvas-Setup mit Scroll-Trigger:
   
   // Canvas-Setup mit Scroll-Trigger:
const containerRef = useRef<HTMLDivElement>(null);
const canvasRef = useRef<HTMLCanvasElement>(null);
   
```typescript
   // ScrollAnimation.tsx
   import { useScroll } from 'framer-motion';
   import { useEffect, useRef, useState } from 'react';
   
   // Container: h-[400vh] für lange Scroll-Dauer
   const containerRef = useRef<HTMLDivElement>(null);
   const canvasRef = useRef<HTMLCanvasElement>(null);
   
   const { scrollYProgress } = useScroll({
     target: containerRef,
     offset: ["start start", "end end"]
   });
   
   Bildsequenz laden und Frame-Mapping: // Lädt die hochgeladene ZIP-Sequenz
   const frameCount = [ANZAHL_FRAMES, z.B. 120];
   const images = useRef<HTMLImageElement[]>([]);
   
   // Preload beim Mount
   useEffect(() => {
     const loadImages = async () => {
       const imagePromises = Array.from({ length: frameCount }, (_, i) => {
         return new Promise<HTMLImageElement>((resolve) => {
           const img = new Image();
           img.src = `/frames/[DATEINAME_PRÄFIX]_${i}[DATEINAME_SUFFIX, z.B. .webp]`;
           img.onload = () => resolve(img);
         });
       });
       images.current = await Promise.all(imagePromises);
       setImagesLoaded(true);
     };
     loadImages();
   }, []);
   
   // Scroll-Progress (0 bis 1) zu Frame-Index mappen
   useEffect(() => {
     return scrollYProgress.on('change', (latest) => {
       const frameIndex = Math.min(
         frameCount - 1,
         Math.floor(latest * frameCount)
       );
       renderFrame(frameIndex);
     });
   }, [scrollYProgress]);
   
   // Frame auf Canvas zeichnen
   const renderFrame = (index: number) => {
     const canvas = canvasRef.current;
     const ctx = canvas?.getContext('2d');
     if (!ctx || !images.current[index]) return;
     
     ctx.clearRect(0, 0, canvas.width, canvas.height);
     ctx.drawImage(images.current[index], 0, 0, canvas.width, canvas.height);
   };  
   
   // Layout Struktur:
<div ref={containerRef} className="relative h-[400vh] w-full">
  {/* Sticky Canvas fixiert im Viewport */}
</div>
   
   <div ref={containerRef} className="relative h-[400vh] w-full">
     {/* Sticky Canvas fixiert im Viewport */}
     <div className="sticky top-0 h-screen w-full flex items-center justify-center">
       <canvas
         ref={canvasRef}
         className="w-full h-full object-contain"
       />
     </div>
   </div>
   
   **OUTPUT:** Generiere den vollständigen, sauberen Code für:

1. `app/page.tsx` - Lädt nur die Scroll-Komponente im Vollbildmodus.
    
2. `components/ScrollAnimation.tsx` - Die reine Canvas-Logik ohne Text-Elemente oder Interfaces.
    
3. `app/globals.css` - Styling inklusive globalem Smooth Scrolling.
    

Die Bildsequenz MUSS sich beim Vorwärts- und Rückwärtsscrollen absolut flüssig steuern lassen!