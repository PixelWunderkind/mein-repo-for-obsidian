### Blueprint: Full-Stack Project Initialization

When instructed to initialize a new full-stack project, you must structure your initial planning and scaffolding prompt based on this master configuration.

## 1. Tech Stack Matrix (Variables)
- **Frontend Framework:** [FRONTEND_FRAMEWORK] (e.g., Next.js, Vite+React)
- **Styling Architecture:** Tailwind CSS (Native setup, no CDN runtime)
- **Backend Architecture:** [BACKEND_SETUP] (e.g., Next.js Route Handlers, Express, Python FastAPI)
- **Database Layer:** [DATABASE_TYPE] (e.g., PostgreSQL, SQLite, MongoDB)
- **ORM / Driver:** [ORM_CHOICE] (e.g., Prisma, Drizzle, Mongoose)

## 2. Core Technical Requirements
Every full-stack initialization prompt must enforce the following stack layers:

1. **Database & ORM:** Define explicit database schemas/models for the core entities (e.g., User, Content). Generate migrations immediately.
2. **Backend APIs:** Implement clean, structured CRUD REST endpoints or Route Handlers. All data transformations must happen here.
3. **Frontend Integration:** Build reactive UI components that consume the backend APIs natively via async fetch/axios operations.
4. **Security & Auth:** Implement secure authentication (session-based or JWT) including client/server-side password hashing (bcrypt/argon2).

## 3. Strict Execution Protocol
Before generating code, output a system architecture breakdown containing:
- File tree structure of the entire repository.
- Database Schema definition.
- API Endpoint specifications (Routes, HTTP Methods, Payloads).