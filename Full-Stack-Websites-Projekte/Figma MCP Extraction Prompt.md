### Der genaue Ablauf in der Praxis

bereite mir das mal auf um es in Obsi zu speichern: ### Der genaue Ablauf in der Praxis

1. **Die Brücke bauen:** Du verbindest Figma über die MCP-Einstellungen (Model Context Protocol) in Roo Code oder Antigravity. Dafür generierst du einmalig einen API-Token in deinem Figma-Konto und trägst ihn im Editor ein.
    
2. **Den Prompt abfeuern:** Du öffnest den KI-Chat in Roo Code / Antigravity, gibst den Link zu deiner Figma-Datei an und fügst den Prompt ein.
    
3. **Die KI arbeiten lassen:** Der Editor greift über die MCP-Brücke live auf Figma zu, liest alle Abstände, Farben und Schriften aus und schreibt die Dateien (`design-tokens.ts`, `brand_assets.md` und den `/styleguide`) direkt lokal in dein Programmierprojekt.
    

Ablauf:

1. Der exakte Ablauf (Damit kein Fehler passiert):
    
2. Du öffnest dein Projekt in Antigravity.
    
3. Du stellst sicher, dass die MCP-Verbindung zu Figma in den Einstellungen aktiv ist.
    
4. Du öffnest den KI-Chat in Antigravity und tippst dort den Prompt ein.
    

Wichtig: Du musst der KI im Chat noch den Link zu deiner Figma-Datei mitgeben, damit sie weiß, welches Design sie auslesen soll.

Du gibst den Prompt in Antigravity (oder Roo Code) ein:

Hier ist der Link zu meinem Figma-Design: [DEIN FIGMA DATEI-LINK HIER EINFÜGEN]

Extract the design tokens directly from Figma using the MCP connection. Execute the workflow in these exact steps:

1. Update/Create the `brand_assets.md` file with the extracted values (Core Visual Vibe, Color Palette, Typography, UI-Signature).

2. Create the `/styles/design-tokens.ts` file based on those brand assets, including:
    - All color variables (primary, secondary, neutrals, semantic colors)
    - Typography scale (font families, sizes, weights, line heights)
    - Spacing scale (using Tailwind's spacing conventions)
    - Border radius values, shadow definitions, and responsive breakpoints
3. Create a `/app/styleguide` page that visually displays all these tokens so the team can reference them..