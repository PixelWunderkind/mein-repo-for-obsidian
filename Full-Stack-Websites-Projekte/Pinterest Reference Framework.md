

# 📘 PROMPT 3 — Pinterest Reference Framework

_(Obsidian‑Script — Copy‑Ready)_

## 🎯 Zweck - dein _Qualitätsfilter_                        , bevor du überhaupt ein Bild in Kimi gibst.** 

Dieser Prompt dient als **Vorab‑Checkliste**, um zu entscheiden, ob ein Pinterest‑Bild überhaupt geeignet ist, um daraus mit Kimi K2.6 eine Landingpage generieren zu lassen.  
Er verhindert schlechte Inputs → schlechte Outputs.

---

## 🧩 Warum dieser Prompt wichtig ist

Vision‑Coder wie Kimi sind extrem stark, aber nur wenn das Referenzbild:

- klar strukturiert ist
- keine störenden Elemente enthält
- technisch lesbar ist
- in Web‑Layout übertragbar ist

PROMPT 3 stellt sicher, dass du **nur hochwertige, AI‑parsebare Bilder** verwendest.

---

## 🛠️ Was der Prompt konkret macht

Er bewertet jedes Bild anhand von **4 Kriterien** (je 1 Punkt):

### 1) **Klare Hierarchie**

Das Bild muss erkennbare Sektionen haben (Hero / About / Features / Contact).  
→ Kimi kann nur sauber coden, wenn die Struktur visuell klar ist.

**Reject:** Collagen, chaotische Layouts, unklare Bereiche.

---

### 2) **Keine Wasserzeichen**

Wasserzeichen werden von Vision‑Modellen als echte UI‑Elemente interpretiert.  
→ Führt zu Müll im Hero.

**Reject:** Logos, Signaturen, Designer‑Tags.

---

### 3) **Scharfe Details**

Typo muss lesbar sein, Farben klar, Proportionen erkennbar.  
→ Kimi braucht klare visuelle Daten.

**Reject:** Unscharfe Fotos, Handyfotos, Screenshots aus der Ferne.

---

### 4) **Reproduzierbare Struktur**

Das Bild muss auf Web‑Primitives basieren (Grids, Cards, Sections).  
→ Keine Print‑Layouts, keine Papiertexturen, keine handgemalten Elemente.

**Reject:** Print‑Mockups, Collagen, analoge Effekte.

---

## 🧮 Scoring

- **4/4** → Perfekt → direkt in Kimi verwenden
- **3/4** → Gut → Problemstelle fixen (z. B. crop)
- **2/4** → Riskant → besseres Bild suchen
- **1/4 oder weniger** → Wegwerfen

---

## 🔍 Bonus‑Heuristik

Wenn du das Bild **in 30 Sekunden am Telefon beschreiben kannst**,  
und die Person kann es sich vorstellen → **AI‑tauglich**.

Wenn du sagst:  
„Das muss man sehen, sonst versteht man es nicht“ → **nicht AI‑tauglich**.

---

## 🧭 Wann du PROMPT 3 benutzt

**Immer VOR Prompt 1.**  
Er ist der Gatekeeper, der entscheidet, ob das Bild überhaupt geeignet ist.

---

## 🚀 Ergebnis

PROMPT 3 sorgt dafür, dass:

- Kimi das Bild korrekt versteht
- die generierte Landingpage sauber strukturiert ist
- keine Artefakte oder Fehler entstehen
- du nur hochwertige Inputs nutzt
- dein gesamter Build‑Prozess stabil bleibt

---


###  PROMPT 3 — Pinterest Reference Framework (Bonus)

**When to use:** Before you even open Kimi. This is the framework I use to evaluate whether a Pinterest reference will actually translate well into AI-generated code.

**Use it as a checklist:** Score each reference image against these four criteria. If it scores 3/4 or better, it's worth feeding into Kimi. If it scores below, find a better reference.

```markdown
PINTEREST REFERENCE EVALUATION FRAMEWORK

Before feeding any image to a vision-aware coding model (Kimi K2.6, GPT-4V, etc.), evaluate the reference against these four criteria:

1. CLEAR HIERARCHY (1 point)
The image has obvious, distinct sections. You can mentally segment it into hero / about / features / contact without ambiguity. The model needs to be able to identify and code each section separately.

REJECT IF: The design is one continuous abstract collage with no clear section boundaries.

2. NO WATERMARKS (1 point)
The image has no visible watermarks, signatures, or designer attribution overlays. Vision models read these as text and will try to code them into your hero as actual elements.

REJECT IF: Any text overlay exists that isn't part of the design itself.

3. SHARP DETAILS (1 point)
Typography is legible. Spacing and proportions are visible. Colors are saturated, not washed out. The model needs to read these details to replicate them.

REJECT IF: The image is blurry, low-resolution, or photographed from a distance.

4. REPLICABLE STRUCTURE (1 point)
The design uses standard web layout primitives — grids, columns, sections, cards, hero compositions. It's not relying on physical media effects (paper texture, ink bleeds, hand-drawn elements) that don't translate to code.

REJECT IF: The design is a print mockup or relies on tactile elements that can't be coded.

---

SCORING

4/4 — Premium reference. Feed it directly to Kimi.
3/4 — Good reference. Crop or adjust the failing criterion if possible.
2/4 — Risky. Find a better reference.
1/4 or below — Skip. The output will be unusable.

---

BONUS HEURISTIC

If you can describe the layout to a friend over the phone in 30 seconds and they can mentally picture it accurately, the reference is AI-parseable. If your description requires "you have to see it to get it" — skip it.
```

---

---
---
---
[[Die 4 Prompts-Kimi Pipeline|← Die 4 Prompts-Kimi Pipeline]] | **NAV:** [[Bild-Analyse-Tool Kimi K2.6|02. Bild-Analyse-Tool Kimi K2.6 →]]