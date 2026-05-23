   ---
tags:
  - branding
  - figma
  - workflow
  - prompt
---

# ⚡ Branding_Assets_auslesen_mit_Figma

## Konzept
Nutzung einer KI als visueller Code-Extraktor. Ein bestehendes Design wird analysiert, die Design-DNA entschlüsselt und als strukturiertes Regelwerk exportiert. Ein spezifischer Prompt extrahiert aus einem Screenshot die exakten Design-Token.

## Extraktions-Prompt für die KI
Der folgende Prompt wird zusammen mit dem Screenshot in das KI-Tool geladen:

Analysiere diesen Screenshot einer Webseite und extrahiere die visuelle Design-DNA. Erstelle daraus ein valides Markdown-Dokument für meine brand_assets.md. Geh dabei extrem präzise vor:

1. CORE VISUAL VIBE: Beschreibe die Ästhetik, die Stimmung und den UI-Stil (z.B. Brutalismus, Clean SaaS, Cyberpunk).

2. COLOR PALETTE: Analysiere die Farben im Bild. Gib mir die exakten Hex-Werte für: Primary Background, Secondary Background (Cards, Surfaces), Primary Accent, Secondary Accent, Text Primary und Text Secondary.

3. TYPOGRAPHY: Welche Schriftarten (oder Stil-Kategorien wie Serif, Geometric Sans, Monospace) werden für Headings und Body genutzt? Wie ist das Styling (Großbuchstaben, Zeichenabstand, Zeilenhöhe)?

4. UI-SIGNATURE: Welche feinen Design-Details fallen auf? (z.B. Border-Radius in Pixeln, Schatten-Stil, Linienstärken, Hover-Effekte, Glühen, Texturen).

Ausgabe-Format: Liefere AUSSCHLIESSLICH den fertigen Markdown-Code, den ich direkt in meine brand_assets.md kopieren kann. Nutze exakt die Struktur des Brand-Assets-Templates.

## Importieren und Festschreiben
Die KI analysiert das Bild, generiert den fertigen Markdown-Text und dieser wird eins zu eins in die Datei brand_assets.md kopiert.

## Analyse-Tools

### 1. Figma
Der Profi-Weg mit dem Figma-Plugin html.to.design. Installiere in Figma das kostenlose Plugin html.to.design.

### 2. Claude Design
Kostenpflichtig.

### 3. Gemini
Advanced, Pro 1.5 oder 2.0.

### 4. v0.dev
Plattform von Vercel.

### 5. ChatGPT
Version GPT-4o.

## Features im kostenlosen Figma-Abo
* **3 Figma-Design-Dateien:** Bis zu 3 separate Arbeitsdateien in einem Team-Projekt. Innerhalb einer einzigen Datei können unendlich viele Seiten und Abschnitte angelegt werden.

* **Unbegrenzte persönliche Entwürfe (Drafts):** Im privaten Drafts-Ordner können unbegrenzt viele Dateien erstellt werden.
 
* **Plugins und Widgets:** Kostenlose Plugins wie html.to.design sind komplett gratis nutzbar.
 
* **Standard-Inspektor:** Jedes Element ist anklickbar und zeigt in der rechten Seitenleiste die Farben und Schriften.

## Gratis-Workaround für den Figma-Workflow
Um die Werte für die brand_assets.md zu ermitteln, ist der kostenpflichtige Dev Mode nicht erforderlich.

1. Importiere die gewünschte Webseite mit dem gratis Plugin html.to.design in eine kostenlose Figma-Datei.

2. Klicke ein Element (z. B. einen Button oder einen Text) mit dem normalen Mauszeiger an.

3. Lies die Werte in der rechten Seitenleiste (Design-Tab) ab:
   - Den exakten Hex-Farbcode (z. B. #00FF66).
   - Die Schriftart (z. B. Inter), die Schriftgröße und die Fettschrift.

Diese Basis-Informationen sind in Figma dauerhaft kostenlos ablesbar. Die Werte werden direkt in das Markdown-Template übertragen.