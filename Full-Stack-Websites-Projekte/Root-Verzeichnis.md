```txt
/root
├── 🟨 SYSTEM_INSTRUCTIONS.md      # 1. Agent-Verhalten / WAT / Anti-Vibe-Coding
├── 🟨 PROJEKT_BLUEPRINTS.md       # 2. Architektur / Prisma / Routing / Guardrails
├── 🟨 BRAND_ASSETS.md             # 3. Branding / Gewerke-Themes / Farb-DNA
├── 🟨 HERO_BLUEPRINT.md           # 4. Hero-Blueprint / Motion / DOM / Canvas
│── 🟨 DESIGN_SYSTEM.md            # 5. Die globale Master-Datei, die  oberste
├── app                                 Zusammenfassung des gesamten UI-
│   ├── layout.tsx                      Systems.
│   ├── page.tsx
│   ├── globals.css
│   │
│   ├── admin
│   │   ├── page.tsx
│   │   ├── dashboard
│   │   │   └── page.tsx
│   │   └── login
│   │       └── page.tsx
│   │
│   ├── api
│   │   ├── auth
│   │   ├── contact
│   │   └── seed
│   │
│   └── services
│       └── page.tsx
│
├── components
│   ├── ui                         # shadcn/ui Komponenten
│   │   ├── button.tsx
│   │   ├── card.tsx
│   │   └── dialog.tsx
│   │
│   ├── layout
│   │   ├── Header.tsx
│   │   ├── Footer.tsx
│   │   └── Navigation.tsx
│   │
│   ├── hero
│   │   ├── HeroSection.tsx
│   │   ├── HeroCanvas.tsx
│   │   ├── HeroContent.tsx
│   │   ├── HeroHeader.tsx
│   │   ├── hero.css
│   │   ├── stitch.html
│   │   └── design.md
│   │
│   └── sections
│       ├── Services.tsx
│       ├── Testimonials.tsx
│       └── Contact.tsx
│
├── lib
│   ├── prisma.ts
│   ├── auth.ts
│   ├── utils.ts
│   └── validations.ts
│
├── prisma
│   ├── schema.prisma
│   ├── seed.ts
│   └── migrations
│
├── public
│   ├── favicon.ico
│   │
│   ├── hero
│   │   ├── illustration.png
│   │   ├── nebula-fallback.svg
│   │   └── shaders
│   │       └── particle.glsl
│   │
│   ├── logos
│   ├── icons
│   ├── team
│   └── images
│
├── styles
│   ├── animations.css
│   ├── utilities.css
│   └── typography.css
│
├── docs
│   ├── 🟨 ANFORDERUNGEN.md        # 6. Produkt-/Projekt-Spezifikation
│   │
│   ├── BUSINESS
│   │   └── 🟨 BRANCHE_MALER.md    # 7. Kundenspezifische Daten
│   │
│   ├── SEEDS
│   │   └── 🟨 SEED_DATA.md        # 8. Prisma Seed / Locations / Services
│   │
│   ├── DESIGN_SYSTEM  (granular)   # 9. Für detaillierte Einzelregeln 
│   │   ├── COLORS.md
│   │   ├── TYPOGRAPHY.md
│   │   ├── COMPONENTS.md
│   │   ├── SPACING.md
│   │   └── UI_RULES.md
│   │
│   └── ADMIN
│       ├── 🟨 ADMIN_LOGIN.md       # 10. Admin Login / Auth Flow
│       ├── ROLES.md
│       └── SECURITY.md
│
├── 
│
├── types
│   ├── auth.d.ts
│   ├── database.d.ts
│   └── global.d.ts
│
├── middleware.ts
├── next.config.js
├── tailwind.config.ts
├── tsconfig.json
├── package.json
└── README.md
```