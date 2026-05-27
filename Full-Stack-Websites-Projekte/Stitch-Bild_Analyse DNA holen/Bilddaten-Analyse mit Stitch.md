
### <span style="color:#A855F7">Stitch → Drei echte Ergebnisse</span>

1. Brand Assets extrahieren alle Markeninformationen wie Farben, Typografie, Logo Eigenschaften und visuelle Identität direkt aus dem Bild, sodass sie als konsistentes Design System weiterverwendet werden können.

2. Design.md beschreibt das gesamte visuelle Konzept, die Designprinzipien, die Struktur, die eingesetzten Komponenten und die gestalterischen Entscheidungen als zusammenhängenden Text, der das UI klar dokumentiert.
 
3. Die UI Analyse liefert die technische Struktur des Interface als vollständige Beschreibung mit allen Tokens, Components, dem LayoutTree, den Layers und den Effects, exakt basierend auf dem Bild und ohne Interpretationen oder Optimierungen.

---

## ⭐ Kurz gesagt

- **Brand_Assets** = Branding
    
- **Design.md** = Beschreibung
    
- **UI‑Analyse** = Technische Struktur (mit tokens, components, layoutTree, layers, effects)
    

Du hast also **3 Dateien**, aber die UI‑Analyse enthält **5 interne Abschnitte**.

---


### <span style="color:#A855F7">⭐1 Stitch‑Analysebefehl: DNA holen</span>

Der Stitch Analysebefehl lautet: Analysiere dieses UI Bild vollständig und extrahiere alle Design Tokens wie Farben, Typografie, Spacing, Radii, Schatten und Blur, alle Komponenten Definitionen einschließlich Varianten und Zustände, den kompletten Layout Tree mit Hierarchie, Containern, Grids und Stacks, alle Abstände wie Margin, Padding, Gaps und Alignment, alle Border Radii und Border Styles, alle Farben einschließlich Hex, RGBA und Opacity, alle Typografie Werte wie Font Family, Größe, Gewicht, Zeilenhöhe, Zeichenabstand und Text Transform, alle Layer Informationen wie Z Index, Overlays und Hintergründe sowie alle Schatten und Blur Werte einschließlich Offsets, Radius, Spread und Farbe. Gib die gesamte Struktur des UI als JSON oder YAML mit den Bereichen tokens, components, layoutTree, layers und effects zurück und führe keine Optimierungen, Umbenennungen oder Interpretationen durch, sondern extrahiere exakt das, was im Bild vorhanden ist.

2. Beim nächsten Schritt an Gemini LLM schreiben: Hier ist die Stitch Analyse Output, mach mir daraus ein React und Tailwind Login und danach direkt darunter den Analyse Block mit tokens, components, layoutTree, layers und effects einfügen.

---

3. **Ergebnis hier reinkopieren:** 
 
   – Schick mir den **Analyse‑Output von Stitch** (oder den wichtigsten Teil davon).  
   – Je genauer die Struktur (Container, Inputs, Buttons, Farben), desto besser.
   

4. **Ich baue dir daraus ein React‑Script:** 
 
   – Ich mappe das 1:1 auf **React + Tailwind** (oder plain CSS, wenn du willst).  
   – Du bekommst ein **fertiges App.tsx/App.jsx**, das du direkt in CodeSandbox 
    oder Vite droppen kannst.