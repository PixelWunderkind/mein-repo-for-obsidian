Kurzantwort zuerst:  
**PROMPT 4 ist der „SaaS‑Upgrade‑Prompt“.**  
Er verwandelt deine fertige, statische Cinematic‑Landingpage (aus Prompt 1 + 2) in eine **vollwertige Buchungs‑Plattform** mit Login, Datenbank, Zahlungen und E‑Mails.


---

# 📘 PROMPT 4 — Backend Extension / SaaS‑Upgrade

_(Obsidian‑Script — Copy‑Ready)_

## 🎯 Zweck

Dieser Prompt erweitert deine fertige Japan‑Tours‑Landingpage zu einer **kompletten SaaS‑Applikation**:

- Benutzerkonten
- Authentifizierung
- Buchungslogik
- Stripe‑Zahlungen
- Webhooks
- Datenbank
- Dashboard
- E‑Mail‑Bestätigungen

Er ist der **dritte Schritt** nach Prompt 1 (Kimi) und Prompt 2 (Claude‑Refinement).

---

## 🧩 Warum dieser Prompt wichtig ist

Die Landingpage aus Prompt 1 + 2 ist:

- visuell perfekt
- animiert
- cinematic
- aber **rein statisch**

PROMPT 4 macht daraus eine **echte Anwendung**, die:

- Nutzer registriert
- Buchungen speichert
- Zahlungen verarbeitet
- E‑Mails verschickt
- ein Dashboard bereitstellt

Kurz: **Von „Website“ zu „Produkt“**.

---

## 🛠️ Was der Prompt konkret macht

### 1) **Supabase Auth + Datenbank**

Er erstellt:

- `profiles` Tabelle
- `bookings` Tabelle
- `booking_events` Tabelle
- Row Level Security
- Magic Link Login
- Google OAuth

→ Deine User können sich einloggen und ihre Buchungen verwalten.

---

### 2) **Stripe Checkout Integration**

Er baut:

- `/api/checkout/route.ts`
- Stripe Session
- Deposit‑Zahlung (500 USD)
- Customer Portal
- Payment Intent Speicherung

→ Nutzer können verbindlich buchen.

---

### 3) **Stripe Webhooks**

Er erstellt:

- `/api/webhooks/stripe/route.ts`
- schreibt Payment‑Events in Supabase
- aktualisiert Buchungsstatus

→ Deine Datenbank bleibt synchron mit Stripe.

---

### 4) **Resend E‑Mail Bestätigungen**

Er baut:

- E‑Mail‑Template
- Versand nach erfolgreicher Zahlung
- Buchungsbestätigung

→ Nutzer bekommen sofort eine professionelle Bestätigung.

---

### 5) **Booking Modal statt Kontaktformular**

Er ersetzt das statische Formular durch:

- Datumsauswahl
- Personenanzahl
- CTA → Stripe Checkout

→ Der „Book“ Button wird funktional.

---

### 6) **User Dashboard**

Er erstellt `/dashboard`:

- Übersicht aller Buchungen
- Status (pending / confirmed / cancelled)
- Daten aus Supabase

→ Nutzer sehen ihre Reise‑Historie.

---

### 7) **.env Template**

Er generiert eine vollständige `.env.example`:

- Supabase Keys
- Stripe Keys
- Resend Key
- Next Auth Secrets

→ Du kannst das Projekt sofort deployen.

---

## 🧭 Wann du PROMPT 4 benutzt

**Erst wenn Prompt 1 + Prompt 2 abgeschlossen sind.**

Reihenfolge:

1. **Prompt 1 → Kimi**  
    Generiert das komplette Frontend.
    
2. **Prompt 2 → Claude**  
    Fixes, Parallax, Motion, Cursor, Lenis.
    
3. **Prompt 4 → Claude**  
    Baut Backend, Auth, Payments, Dashboard.
    

---

## 🚀 Ergebnis

Nach Prompt 4 hast du:

- eine cinematic Landingpage
- ein funktionierendes Buchungssystem
- Auth + Payments + Emails
- ein Dashboard
- eine echte SaaS‑Struktur

→ **Ein vollständiges Produkt**, nicht nur eine Website.

---


## 🚀 PROMPT 4 — Sequel Build: Backend Extension (Bonus)

**When to use:** Once you've shipped the static landing page from Prompts 1 + 2, this prompt extends the build into a full SaaS with Supabase auth, Stripe payments, and email confirmations.

**Note:** This is the prompt I'll use in the sequel video if the comments hit "EXPAND" volume. Feel free to use it now.

```markdown
ROLE
You are a senior full-stack engineer building production SaaS infrastructure. 
You're extending the existing Japan Tours landing page (Next.js 14 + Framer Motion + Tailwind) into a full booking platform with auth, payments, and confirmation emails.

CONTEXT
The existing codebase is a static landing page with a contact form. You will not modify the visual design or motion system — those are locked. You're only adding backend infrastructure and replacing the contact form with a real booking flow.

---

ARCHITECTURE OVERVIEW

User flow:
1. Visitor lands on the page, sees the cinematic experience
2. Clicks "Book" CTA → opens authenticated booking modal
3. Signs in via Supabase magic link OR Google OAuth
4. Selects dates + traveler count
5. Stripe Checkout for the deposit ($500 USD)
6. Webhook fires → creates booking record in Supabase
7. Confirmation email sent via Resend
8. User redirected to /dashboard with their booking details

---

BACKEND STACK

- Supabase (Postgres + Auth + Row Level Security)
- Stripe (Checkout + Customer Portal + Webhooks)
- Resend (transactional email)
- Next.js Route Handlers for API endpoints

---

DATABASE SCHEMA

Create three tables in Supabase:

profiles
- id uuid (references auth.users)
- email text
- full_name text
- phone text
- created_at timestamp

bookings
- id uuid primary key
- user_id uuid (references profiles)
- start_date date
- traveler_count int
- status enum (pending, confirmed, cancelled)
- stripe_session_id text
- stripe_payment_intent_id text
- amount_cents int
- created_at timestamp

booking_events
- id uuid primary key
- booking_id uuid (references bookings)
- event_type enum (created, paid, refunded, cancelled)
- payload jsonb
- created_at timestamp

Apply Row Level Security: users can only read/write their own bookings.

---

DELIVERABLES

1. Supabase SQL migration file with all three tables + RLS policies
2. Auth flow components (sign in, sign up, magic link)
3. Booking modal that replaces the existing contact form
4. Stripe Checkout API route at /api/checkout/route.ts
5. Stripe Webhook handler at /api/webhooks/stripe/route.ts (writes to bookings table)
6. Resend email integration with a clean booking confirmation template
7. /dashboard page showing the user's booking history
8. Environment variable template (.env.example)

CONSTRAINTS

- Do NOT modify any existing visual components, animations, or motion logic
- Do NOT change the existing color palette or typography
- All new UI must match the existing aesthetic (glassmorphism, lime accent, editorial serif headings)
- Use Server Actions where possible, Route Handlers only for webhooks and Stripe integration

OUTPUT FORMAT

Output each new file with its full path and complete code. For modifications to existing files (like layout.tsx for auth context), output only the diff with clear context.
```


---
---
---
[[Technischer Reparatur‑ und Veredelungs‑Prompt|← 03. Technischer Reparatur-Prompt]] | **NAV:** [[Die 4 Prompts-Kimi Pipeline|Die 4 Prompts-Kimi Pipeline →]]