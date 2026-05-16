
---

# 🚀 High-End Animated Frontpage Workflow

Dieser Workflow beschreibt die Erstellung einer High-End Landingpage mit scrollgesteuerten WebP-Sequenzen (Parallax-Animation).

## Phase 1: Asset-Generierung (Visuals)

### Schritt 1: First Frame (Startzustand)

- **Tool:** Whisk (Nanobanana)
    
- **Ziel:** Erstellung des sauberen statischen Ausgangsbildes (z. B. die schwebende Dose).
    
- **Fokus:** Perfekte Ausleuchtung, Branding-Details und zentrierte Platzierung auf reinem Schwarz (`#000000`).
    

### Schritt 2: Endframe (Finaler Zustand)

- **Tool:** Whisk (Nanobanana)
    
- **Ziel:** Erstellung des finalen "Burst"-Frames (Explosion der Inhaltsstoffe).
    
- **Fokus:** Konsistenz zum First Frame wahren (Lighting & Proportions). Das Produkt bleibt im Zentrum, während die Umgebung dynamisch explodiert.
    

### Schritt 3: Dynamische Transition (Motion)

- **Tool:** Google Flow (Veo)
    
- **Input:** First Frame + Endframe.
    
- **Ziel:** Generierung des flüssigen Übergangs (Rotation, Splash-Effekte, Partikelflug).
    
- **Output:** Ein hochauflösendes Video der Animation (ca. 240 Frames).
    

---

## Phase 2: Optimierung & Konvertierung

### Schritt 4: Video-zu-WebP Konvertierung

- **Tool:** [ezgif.com/video-to-webp](https://ezgif.com/video-to-webp)
    
- **Einstellungen:** 30 FPS für flüssige Parallax-Wiedergabe.
    
- **Ziel:** Eine performante WebP-Sequenz, die via CSS/JS frame-genau gesteuert werden kann.
    

---

## Phase 3: Entwicklung & Deployment

### Schritt 5: Layout-Shaping & Frontend

- **Tool:** Firebase (Hosting / Backend) & Claude/Cursor (Coding)
    
- **Aufgabe:** * Implementierung des Parallax-Scroll-Scripts (Mapping `window.scrollY` zu WebP-Frames).
    
    - Aufbau der Hero-Section (Sticky Content links, Navigation rechts).
        
    - Responsive Design & Dark Mode Logik.
        

### Schritt 6: Deployment

- **Befehl:** `firebase deploy`
    
- **Ziel:** Die Website ist live und die Asset-Sequenz wird über das Firebase CDN performant ausgeliefert.
    

---

## 🛠️ Pro-Tipps für Obsidian

> [!TIP] Animation-Performance
> 
> Nutze in deinem CSS immer `will-change: transform;` für die WebP-Container, um Hardware-Beschleunigung (GPU) zu erzwingen.

> [!IMPORTANT] Asset-Management
> 
> Speichere die generierten Prompts direkt in deiner Obsidian-Projektnote unter `## Prompts`, um bei Flavor-Varianten (z. B. Cherry zu Grape) die visuelle Konsistenz zu halten.

---

