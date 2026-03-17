Purpose: Example workflow to set up and validate a local dev environment for Node/JS projects.

# Local Dev Environment (Workflow)

Use this workflow whenever a contributor (human or agent) needs to spin up the project locally. Keep it minimal, fast, and cross-platform. Copy and rename this file for your stack (see `llm/README.md` conventions).

## What Belongs In llm/workflows
- Short runbooks you execute consistently (local lint/build/CI checks before push, db migrations, release steps).
- One workflow per file; keep each focused and easy to follow.

## Prerequisites
- Node.js 20+ (LTS). Verify with `node -v`.
- A package manager (npm is fine). Verify with `npm -v`.
- Optional: `pnpm` or `yarn` if the project standardizes on one.

## Install
1. Clone the repo and switch to the project root.
2. Install dependencies:
   - `npm install`

## Develop
- Start the app with hot reload:
  - `npm run dev`
- Lint and format:
  - `npm run lint` or `npm run lint -- --fix`
- Type check + production build:
  - `npm run build`
- Run tests (and coverage):
  - `npm run test`
  - `npm run test -- --coverage`

## Environment Variables
- Create `.env.local` in the project root (never commit it).
- Add required keys as documented in `README.md`.

## Health Checks
- App runs locally without errors (`npm run dev`).
- `npm run build` passes type checks.
- `npm run test -- --coverage` ≥ target coverage (default 80%).

## Troubleshooting
- Delete lockfile and `node_modules/`, reinstall.
- Clear framework caches when applicable (e.g., Next.js `.next/`).
- Check Node version (must be 20+).

## Maintenance
Keep this workflow updated when scripts, Node versions, or verification steps change. Link additional runbooks (e.g., `release-process.md`, `sign-mac-builds.md`) here as they are added.
