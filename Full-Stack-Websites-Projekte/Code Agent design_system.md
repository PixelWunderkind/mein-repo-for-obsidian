### Design System & Code Quality Guardrails

## 1. Local Server & Environment Defaults
- **Framework:** Vite + React (TypeScript)
- **Styling:** Tailwind CSS (Modern Utilities only)
- **Architecture:** Component-Driven, Modular, Strict separation of logic and view.

## 2. Anti-Generic Guardrails (Strikte Design-Regeln)
*The AI must never generate standard, boring, or generic out-of-the-box layouts. Apply high-end UI/UX standards by default.*

### A. Color & Contrast
- **No Default Tailwind Palettes:** Never use standard `bg-gray-50` or `bg-blue-500`. Create an intentional dark/light mode palette or derive from `brand_assets.md`.
- **Contrast Ratios:** Maintain ultra-sharp readability. Text must contrast strictly with background layers.
- **Surfacing:** Use a clear elevation model (e.g., Deep background -> Raised card -> Elevated hover state).

### B. Typography
- **Font Pairing:** Headings and body text must never use the same font family. Pair a high-character display/serif font for headings with a clean, highly readable sans/mono font for body text.
- **Hierarchy:** Strict scaling. Headings must use explicit line-height (`leading-tight`) and letter-spacing (`tracking-tight`) to avoid default browser rendering.

### C. Layout & Spacing
- **Whitespace:** Prioritize breathing room. Use generous padding (`py-12`, `md:py-24`) to separate major landing page blocks.
- **Responsiveness:** Mobile-first architecture is mandatory. Grids must scale fluidly (`grid-cols-1 md:grid-cols-3`).
- **Interactive States:** Every button, link, and card must have an explicit, animated hover/focus state (e.g., `transition-all duration-300 ease-in-out`).

## 3. Reference & Integration Hierarchy
1. **Brand Assets Check:** Before generating any UI code, search for `brand_assets.md` or a `brand_assets/` directory to extract the active project identity.
2. **Merging Logic:** Apply the functional rules of this design system (spacing, mobile-first, clean code) directly onto the visual styles (colors, fonts) defined in the brand assets.