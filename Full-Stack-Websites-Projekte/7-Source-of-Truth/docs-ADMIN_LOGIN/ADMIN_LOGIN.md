### docs/ADMIN_LOGIN

> **WICHTIG:** Dieses Sub-System wird in Phase 2 umgesetzt. Der Coding-Agent MUSS die Architektur in Phase 1 jedoch exakt nach diesen Spezifikationen vorbereiten (Routen, DB-Schema-Felder, API-Stubs).

---

## 1. Authentifizierung & Security-Spezifikationen

* **Protokoll:** NextAuth.js (Auth.js) oder JWT-basiertes Session-Handling in Next.js Middleware.
* **Hashing:** Passwort-Verschlüsselung via `bcrypt` oder `argon2`.
* **Routen-Schutz:** Middleware blockiert `/admin/*` (Ausnahme: `/admin/login` und `/admin/reset-password`). Nicht authentifizierte Aufrufe leiten auf `/admin/login` um.
* **Rate Limiting:** IP-basiertes Bruteforce-Blocking auf der Login- und Reset-API.

---

## 2. "Passwort vergessen"-Workflow (Reset)

1. **Anforderung:** Eingabe der registrierten Admin-E-Mail auf `/admin/login` (Trigger-Link).
2. **Token-Generierung:** Server generiert einen sicheren, kryptografischen Token (UUID oder JWT) mit einer strikten Ablaufzeit von **30 Minuten**.
3. **Datenbank-Abgleich:** Speicherung des Tokens mit Ablaufzeitstempel im Admin-User-Datensatz.
4. **Versand:** E-Mail-Versand nativ über **Resend-API** (Nutzt den `RESEND_API_KEY` aus der zentralen Konfiguration).
5. **Reset-Link-Format:** `https://{domain}/admin/reset-password?token={UUID}`
6. **Validierung & Update:** Die Route `/admin/reset-password` validiert den Token im Server-Inhalt. Bei Erfolg: Formular-Freigabe, Gehashtes Überschreiben des Passworts, Löschen des verbrauchten Tokens.

---

## 3. Datenhaltung (Storage-Schema)

Die Daten werden relational verarbeitet (SQLite für lokale Entwicklung, kompatibel mit Prisma-Schema).

### Admin-Modell (Schema-Vorgabe):

```typescript
interface AdminUser {
  id: string;
  username: string; // Änderbar via Dashboard
  email: string;    // Eindeutig
  passwordHash: string;
  resetToken: string | null;
  resetTokenExpires: Date | null;
}

```

---

## 4. UI/UX & Sektionen (Gemäß DESIGN_SYSTEM)

Strikter `shadcn/ui`-Standard, `rounded-none` für Formular-Cards, solide Buttons ohne Verläufe.

### Route: `/admin/login`

* Saubere, zentrierte Login-Card.
* Felder: Benutzername/E-Mail, Passwort.
* Link: "Passwort vergessen?" öffnet ein shadcn-`Dialog`-Fenster zur E-Mail-Eingabe.

### Route: `/admin/dashboard`

* **Tab "Leads":** Hauptübersicht der Anfragen.
* **Tab "Einstellungen":**
* Formular 1: Admin-Benutzernamen ändern (Validierung: nicht leer, min. 3 Zeichen).
* Formular 2: Passwort ändern (Felder: Aktuelles Passwort, Neues Passwort, Wiederholung).



---

## 5. Vorbereitende Scaffold-Maßnahmen (JETZT umzusetzen)

Der Agent legt beim initialen Projekt-Setup zwingend folgende Struktur an:

* `app/admin/login/page.tsx` -> Login-Formular-Stub mit "Passwort vergessen"-Trigger.
* `app/admin/reset-password/page.tsx` -> Reset-Formular-Stub (Token-Abfrage).
* `app/admin/dashboard/page.tsx` -> Dashboard-Layout mit Tab-Infrastruktur (Leads / Einstellungen).
* `app/api/admin/auth/route.ts` -> API-Endpunkt für Session-Handling.
* `app/api/admin/reset-request/route.ts` -> API-Endpunkt für Token-Generierung und Resend-Versand.

---

## 6. Ultra-Mini-JSON für Agenten-Kontext

```json
{"c":"AdminAuth","f":["login:user+pass","bcrypt","jwt/middleware","/admin:auth","pw-reset:email,token(30min),resend-api","/reset:form,validate,hash","storage:sqlite-prisma","dash:settings-tab,change:user,pw"],"s":{"fe":"tailwind-shadcn","resp":true},"t":"fullstack-nextjs16"}
