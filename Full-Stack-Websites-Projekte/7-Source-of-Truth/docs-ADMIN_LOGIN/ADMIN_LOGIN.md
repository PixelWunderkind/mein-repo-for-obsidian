# ⭐ ADMIN_LOGIN.md

## ⭐ Zweck

**Komplette Spezifikation für Admin‑Authentifizierung, Passwort‑Reset und erweiterte Sicherheitsregeln.**  
Diese Datei ist als einsatzbereite Referenz für Entwickler und Operatoren gedacht und enthält Implementierungsdetails, API‑Contracts, Datenmodell, UI‑Vorgaben und harte Sicherheitsanforderungen.

---

## ⭐ 1 Authentifizierung und Security Spezifikationen

**Protokoll**

- Empfohlen: **NextAuth.js (Auth.js)** oder **JWT‑basierte Sessions** in Next.js Middleware. Wähle NextAuth.js für schnelle Integration mit Provider‑Optionen; wähle JWT für maximale Kontrolle und minimale Abhängigkeiten.

**Hashing**

- **bcrypt** (SALT_ROUNDS ≥ 12) oder **argon2** (empfohlen für neue Projekte).
- Passwörter niemals im Klartext speichern.

**Routen Schutz**

- Middleware blockiert `/admin/*` mit Ausnahme von `/admin/login` und `/admin/reset-password`.
- Nicht authentifizierte Anfragen → Redirect auf `/admin/login` (Server‑Side Redirect).

**Rate Limiting**

- IP‑basiertes Bruteforce‑Blocking auf Login und Reset APIs.
- Beispiel: max 5 Versuche pro 15 Minuten, danach 1h Sperre; Logging aller gesperrten Versuche.

**Cookies**

- HTTP‑only, Secure, SameSite=Lax (oder Strict, wenn möglich).
- Cookie‑Name: `admin_auth` oder `auth_token`.
- Cookie Ablauf: kurzlebig (z. B. 7 Tage) + Refresh‑Mechanismus.

**Transport**

- HTTPS zwingend in Produktion. HSTS aktivieren.

---

## ⭐ 2 Passwort vergessen Workflow Reset

**1 Anforderung**

- Admin gibt registrierte E‑Mail auf `/admin/login` ein (Dialog/Modal).

**2 Token Generierung**

- Server generiert kryptografisch sichere Token (z. B. `crypto.randomBytes(32).toString('hex')` oder JWT mit kurzer Laufzeit).
- Ablaufzeit: **30 Minuten**.

**3 Speicherung**

- Token und Ablaufzeit im Admin‑Datensatz speichern (`resetToken`, `resetTokenExpires`).

**4 Versand**

- Versand über **Resend API** (verwende `RESEND_API_KEY` aus zentraler Konfiguration).
- E‑Mail enthält sicheren Link, kein Passwort.

**5 Reset Link Format**

```
https://{domain}/admin/reset-password?token={TOKEN}
```

**6 Validierung & Update**

- `/admin/reset-password` validiert Token serverseitig.
- Bei Erfolg: Formular anzeigen, neues Passwort annehmen, gehasht speichern, Token löschen.
- Token nur einmal verwendbar.

**7 Audit**

- Logge Reset‑Anfragen, Token‑Verwendung und IPs. Benachrichtige Owner bei mehreren fehlgeschlagenen Versuchen.

---

## ⭐ 3 Datenhaltung Storage Schema

**Ziel:** relationale Speicherung, lokal SQLite für Entwicklung, Prisma kompatibel.

**Admin Modell (TypeScript Interface)**

```ts
interface AdminUser {
  id: string;
  username: string;        // änderbar via Dashboard
  email: string;           // unique
  passwordHash: string;
  resetToken: string | null;
  resetTokenExpires: Date | null;
  createdAt: Date;
  updatedAt: Date;
}
```

**Prisma Schema Beispiel**

```prisma
model AdminUser {
  id                 String   @id @default(cuid())
  username           String
  email              String   @unique
  passwordHash       String
  resetToken         String? 
  resetTokenExpires  DateTime?
  createdAt          DateTime @default(now())
  updatedAt          DateTime @updatedAt
}
```

---

## ⭐ 4 UI UX Sektionen gemäß DESIGN_SYSTEM

**Design Vorgaben**

- `shadcn/ui`‑Konventionen, `rounded-none` für Formular‑Cards, klare, solide Buttons ohne Verläufe.
- Mobile First, sichtbare Focus‑States, Touch‑Targets ≥ 44×44 px.

### ⭐ Route `/admin/login`

- Zentrierte Login‑Card.
- Felder: **Benutzername/E‑Mail**, **Passwort**.
- Link: **Passwort vergessen?** öffnet `Dialog` zur E‑Mail‑Eingabe.
- Inline‑Fehler, ARIA‑Labels, `autocomplete` Attribute korrekt setzen.
- Optional: Captcha oder Rate‑Limit Hinweis bei mehreren Fehlversuchen.

### ⭐ Route `/admin/reset-password`

- Token wird serverseitig validiert.
- Formular: **Neues Passwort**, **Passwort wiederholen**.
- Validierung: min. 12 Zeichen, Mixed Case, Zahl, Sonderzeichen empfohlen.
- Nach Erfolg: Redirect auf `/admin/login` mit Erfolgsmeldung.

### ⭐ Route `/admin/dashboard`

- Layout: Dashboard‑Shell mit Tab‑Navigation.
- Tabs: **Leads**, **Einstellungen**.
- **Leads**: Tabelle mit Einträgen, Filter, Export (nur für Admins).
- **Einstellungen**:
    - Formular 1: Admin‑Benutzernamen ändern (Validierung: min 3 Zeichen).
    - Formular 2: Passwort ändern (aktuelles Passwort, neues Passwort, Wiederholung).
- Alle Aktionen auditloggen.

---

## ⭐ 5 Vorbereitende Scaffold Maßnahmen (zu erstellen)

**Pfadstruktur (mindestens)**

```
app/admin/login/page.tsx
app/admin/reset-password/page.tsx
app/admin/dashboard/page.tsx
app/api/admin/auth/route.ts
app/api/admin/reset-request/route.ts
lib/auth/hash.ts
lib/auth/jwt.ts
lib/email/resend.ts
middleware.ts
prisma/schema.prisma
```

**API Contracts Kurz**

- `POST /api/admin/auth`
    
    - Body: `{ email, password }`
    - Response: `200 { user: { id, email }, token }` oder `401`
- `POST /api/admin/reset-request`
    
    - Body: `{ email }`
    - Response: `200 { ok: true }` (immer 200, um Enumeration zu verhindern)
- `POST /api/admin/reset`
    
    - Body: `{ token, newPassword }`
    - Response: `200 { ok: true }` oder `400`

**Implementationshinweise**

- `reset-request` erzeugt Token, speichert Token+Expiry, sendet E‑Mail via Resend.
- `reset` validiert Token, hasht Passwort, löscht Token, invalidiert Sessions.

---

## ⭐ 6 Ultra Mini JSON für Agenten Kontext

```json
{"c":"AdminAuth","f":["login:user+pass","bcrypt","jwt/middleware","/admin:auth","pw-reset:email,token(30min),resend-api","/reset:form,validate,hash","storage:sqlite-prisma","dash:settings-tab,change:user,pw"],"s":{"fe":"tailwind-shadcn","resp":true},"t":"fullstack-nextjs16"}
```

---

## ⭐ 7 Erweiterter Sicherheitsblock für versteckte Admin Zugänge

**Diese Regeln sind bindend und überschreiben implizite Defaults**

- **KEIN öffentlich sichtbares Login** in der Hauptnavigation.
- **KEIN öffentlich sichtbares Register**. Admins werden manuell provisioniert oder per Seed/Invite.
- **KEINE Route `/admin/login`**, die im UI verlinkt ist. Login darf nur über versteckte, nicht indexierte Pfade oder per Direktlink erreichbar sein.
- **Login und Setup nur über explizit definierte, versteckte Routen** erreichbar.
- **Agenten dürfen KEINE zusätzlichen Auth‑Routen oder Links** anlegen, die nicht explizit beschrieben sind.
- **Admin‑Endpoints nicht in Sitemaps** aufnehmen; robots.txt entsprechend konfigurieren.
- **IP‑Allowlist** für Admin‑Zugänge optional, wenn möglich.
- **MFA** (TOTP oder WebAuthn) dringend empfohlen für alle Admins.
- **Audit Logging**: alle Admin‑Logins, Passwortänderungen, Reset‑Anfragen und kritische Aktionen müssen mit Zeitstempel, User‑ID und IP geloggt werden. Logs müssen manipulationssicher gespeichert werden.

---

## ⭐ 8 Checkliste für Implementierung und Betrieb

- [ ] Middleware schützt `/admin/*` außer erlaubte Ausnahmen.
- [ ] Rate Limiting implementiert für Login und Reset APIs.
- [ ] Reset Token sicher generiert, gespeichert und gelöscht nach Verwendung.
- [ ] E‑Mail Versand über Resend konfiguriert (`RESEND_API_KEY` gesetzt).
- [ ] Cookies: HTTP‑Only, Secure, SameSite korrekt gesetzt.
- [ ] Passwort‑Hashing mit bcrypt/argon2 implementiert.
- [ ] Admins werden nicht öffentlich registriert.
- [ ] MFA für Admins aktiviert oder geplant.
- [ ] Audit Logging für sicherheitsrelevante Aktionen aktiv.
- [ ] Sitemaps/robots.txt schließen Admin‑Routen aus.
- [ ] CI/Deployment: Secrets (`JWT_SECRET`, `RESEND_API_KEY`) sicher verwaltet.

---

## ⭐ 9 Beispielcode Snippets

**Token generieren (Node.js)**

```ts
import crypto from "crypto";

export function generateResetToken() {
  return crypto.randomBytes(32).toString("hex");
}
```

**Passwort hashen mit bcrypt**

```ts
import bcrypt from "bcrypt";
const SALT_ROUNDS = 12;

export async function hashPassword(password: string) {
  return bcrypt.hash(password, SALT_ROUNDS);
}

export async function verifyPassword(password: string, hash: string) {
  return bcrypt.compare(password, hash);
}
```

**Resend E‑Mail Beispiel (minimal)**

```ts
import fetch from "node-fetch";

export async function sendResetEmail(email: string, link: string) {
  const res = await fetch("https://api.resend.com/emails", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "Authorization": `Bearer ${process.env.RESEND_API_KEY}`
    },
    body: JSON.stringify({
      from: "no-reply@yourdomain.com",
      to: [email],
      subject: "Admin Passwort zurücksetzen",
      html: `<p>Klicke hier: <a href="${link}">${link}</a></p>`
    })
  });
  return res.ok;
}
```

---

## ⭐ 10 Betriebshinweise und Hardening

- **Secrets Management:** `JWT_SECRET`, `RESEND_API_KEY` und DB‑Credentials niemals im Repo. Nutze Vault/Secrets Manager.
- **Monitoring:** Login‑Fehler, Reset‑Requests und ungewöhnliche IP‑Muster in SIEM integrieren.
- **Backups:** Regelmäßige DB‑Backups, verschlüsselt und getestet.
- **Penetration Tests:** Regelmäßige Security‑Reviews und Pentests für Admin‑Flows.
- **Incident Response:** Playbook für kompromittierte Admin‑Accounts (Token‑Revocation, Passwort‑Reset, Forensik).

---

## ⭐ 11 FAQ Kurz

**Q:** Darf es ein öffentliches Register geben  
**A:** Nein. Admins werden provisioniert oder per Seed/Invite angelegt.

**Q:** Wie lange ist ein Reset Token gültig  
**A:** 30 Minuten.

**Q:** Welche Hashing‑Algorithmen sind erlaubt  
**A:** `argon2` empfohlen; `bcrypt` mit SALT_ROUNDS ≥ 12 ist akzeptabel.

---

## ⭐ 12 Revision History

- **v1.0** Initiale Spezifikation mit Reset‑Flow, Datenmodell und Sicherheitsblock.
- **v1.1** Ergänzung: Resend API, MFA Empfehlung, Audit Logging.

---

**Datei Ort:** `ADMIN_LOGIN.md`  
**Nächster Schritt:** Wenn gewünscht, liefere ich die vollständigen `page.tsx` und `route.ts` Dateien (Login, Reset, API Endpoints) als einsatzbereite Snippets zum Einfügen.