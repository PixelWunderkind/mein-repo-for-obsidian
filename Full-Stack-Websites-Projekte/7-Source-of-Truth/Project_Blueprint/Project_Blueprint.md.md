### 1. Technisches Protokoll (Standard)

* **Stack:** Next.js 16 (App Router), TypeScript (strict), Tailwind 4, shadcn/ui.
* **Backend:** Next.js Route Handlers (kein externes Express/FastAPI, um die Komplexität gering zu halten).
* **Daten-Management:** 
  - `lib/config.ts` als Single Source of Truth für globale, statische Firmendaten (Firmenname, Steuernummer, Core-Design-Werte). Keine Hardcodierung.
  - `Prisma / PostgreSQL` für die dynamische Skalierung der Multi-Location-Inhalte (Städte, Services, Geo-Landingpages).
* **Deployment:** Vercel.

## 2. Strikte Initialisierungs-Regeln

Bevor Code generiert wird, MUSS der Agent folgendes ausgeben:

1. **File Tree:** Die geplante Struktur basierend auf dem `app/`, `components/`, `lib/` Schema (inklusive dynamischer Routen).
2. **Daten-Mapping:** Definition, welche Informationen aus `docs/BRANCHE.md` in die `lib/config.ts` bzw. in die Seed-Daten der Datenbank übertragen werden.
3. **API-Specs:** Definition der Route Handlers (z. B. `/api/contact`) mit erwarteten Payloads.

## 3. Implementierungs-Guardrails (Die "Handwerker-DNA")

* **Anti-Vibe-Coding (Priorität 1):** Keine `rounded-2xl/3xl`, kein Lila, keine `shadow-2xl` auf Cards, kein übertriebenes Spacing.
* **UI-Zwang:** shadcn/ui für alle Komponenten. Eigene Komponenten sind nur erlaubt, wenn sie explizit in `components/shared/` modularisiert werden.
* **UX:** Mobile-First Entwicklung. Jede Telefonnummer ist ein `tel:`-Link.
* **Performance:** Bilder über `next/image` mit `priority` für Hero-Sektionen.
* **Tonalität:** Professionelle Sie-Form. Kein "AI-Sprech" oder Emojis.

## 4. Struktur-Standard

* `app/`: Routing & Pages.
  - `app/page.tsx` (Homepage)
  - `app/standorte/page.tsx` (Standort-Hub)
  - `app/[service]/page.tsx` (Statische Service-Hubs via Dynamic Routes)
  - `app/[service]/[stadt]/page.tsx` (Dynamische Geo-Landingpages)
* `components/`: `layout/` (Header/Footer), `sections/` (Hero/Services/Trust), `shared/`, `ui/` (shadcn).
* `lib/`: `config.ts`, `animations.ts`, `utils.ts`, `prisma.ts`.
* `docs/`: `BRANCHE.md`, `DESIGNSYSTEM.md`, `ANFORDERUNGEN.md`.

<!-- ARCHITEKTUR-ERWEITERUNG: MULTI-LOCATION HUB SYSTEM -->

## Multi-Location Routing & Verlinkungs-Matrix

### 1. URL- & Routing-Struktur (Next.js App Router)
/                           -> Homepage (Ebene 1)
├── /standorte              -> Standort-Hub (Ebene 2)
├── /malerarbeiten          -> Service-Hub 1 (Ebene 2)
├── /stuckateur             -> Service-Hub 2 (Ebene 2)
└── /[service]/[stadt]      -> Lokale Service-Seite (Ebene 3)

### 2. Komponenten- & Verlinkungs-Regeln für den Agenten

#### Komponente: Navigation (Global)
- Verlinkt permanent auf die Hauptextensionen der Service-Hubs (max. 5-7) und den Standort-Hub.

#### Komponente: ServiceHubDirectory
- Implementiert auf: `app/[service]/page.tsx`
- Funktion: Dynamische Auflistung aller verknüpften Städte für diese spezifische Dienstleistung.
- Datenquelle: Prisma Query gefiltert nach Service-Typ.

#### Komponente: LocationHubDirectory
- Implementiert auf: `app/standorte/page.tsx`
- Funktion: Übersicht aller bedienten Regionen/Städte.

#### Komponente: LocalServiceBridge (Ebene 3 Page-Komponente)
- Implementiert auf: `app/[service]/[stadt]/page.tsx` (z. B. `/malerarbeiten/stuttgart`)
- Striktes Verlinkungs-Regelwerk:
  1. Breadcrumb-Link zurück zum primären Service-Hub (`/[service]`)
  2. Footer/Sidebar-Link quer zum zentralen Standort-Hub (`/standorte`)

### 3. Datenbank-Schema-Erweiterung (Prisma)
```prisma
model Service {
  id        String   @id @default(uuid())
  slug      String   @unique // z.B. "malerarbeiten"
  title     String
  locations LocalPage[]
}

model Location {
  id        String   @id @default(uuid())
  slug      String   @unique // z.B. "stuttgart"
  cityName  String
  services  LocalPage[]
}

model LocalPage {
  id         String   @id @default(uuid())
  serviceId  String
  locationId String
  service    Service  @relation(fields: [serviceId], references: [id])
  location   Location @relation(fields: [locationId], references: [id])
  content    Json     // Struktureller Page-Content, SEO-Metadaten

  @@unique([serviceId, locationId])
}