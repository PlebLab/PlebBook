Purpose: Runbook to generate baseline docs using the project/context/workflows layout.

# Project Setup Guide

Use this runbook to generate the documentation baseline before any coding. Complete each step in order—the outputs cascade into later prompts. All project docs live in `llm/project/`; supporting references go in `llm/context/`; repeatable runbooks go in `llm/workflows/`.

## Quick Start
- Copy `llm/project/project-overview-example.md` → `llm/project/project-overview.md` and tailor it.
- Treat the project overview as the most important document; write it yourself (do not have AI generate it).
- See `llm/README.md` for conventions (file limits, naming, example templates).

## Context and Workflows
- Add focused references in `llm/context/` for specs or implementation notes you'll cite in prompts.
- Copy and rename `llm/workflows/dev-env-local-example.md` for your stack.

## Phase 1 — Project Foundation

### Step 1 — Project Overview
- **Deliverable:** `llm/project/project-overview.md`
- **Capture:** purpose, goals, audience, primary features, guardrails.
- **Prompt:**
```
Create llm/project/project-overview.md defining the project's purpose, scope, target audience, primary features, and measurable goals.
Ask clarifying questions instead of guessing.
```

### Step 2 — User Flow
- **Deliverable:** `llm/project/user-flow.md`
- **Capture:** end-to-end journey, major states, key actions per user persona.
- **Prompt:**
```
Use @llm/project/project-overview.md to draft `user-flow.md` that maps each persona through the experience.
Detail screen/state transitions and decision points.
```

### Step 3 — Tech Stack
- **Deliverable:** `llm/project/tech-stack.md`
- **Prep:** Decide technologies you already favour (e.g., TypeScript, Next.js, Supabase).
- **Optional:** For sovereignty-focused suggestions, copy the [freedom-tech `agent-prompt.md`](https://github.com/pleb-devs/freedom-tech/blob/main/agent-prompt.md) into `llm/context/freedom-tech-agent-prompt.md`.
- **Prompt:**
```
Using @llm/project/project-overview.md and @llm/project/user-flow.md, recommend a tech stack.
I already want to use [LIST YOUR PREFERRED TECHNOLOGIES HERE].
For each layer, provide one primary choice and one alternative with trade-offs.
Optional: also reference @llm/context/freedom-tech-agent-prompt.md for sovereignty-focused suggestions.
```

### Step 4 — Stack Best Practices
- **Deliverable:** Update `llm/project/tech-stack.md` with usage notes, pitfalls, and conventions.
- **Prompt:**
```
Update @llm/project/tech-stack.md with best practices, common pitfalls, and usage conventions for each selected technology.
```

## Phase 2 — Design Guidelines

### Step 5 — Design Principles
- **Deliverable:** Research notes or inline summary for `llm/project/design-rules.md`.
- **Prompt:**
```
Using @llm/project/project-overview.md and @llm/project/user-flow.md, outline design principles that fit this product. Suggest 2–3 visual styles (e.g., minimalist, glassmorphic) with quick rationale.
```

### Step 6 — Design Rules
- **Deliverable:** `llm/project/design-rules.md`
- **Customize:** Add your chosen tone (mobile-first, animated, minimalist, etc.).
- **Prompt:**
```
I want the project to be [DESIGN DIRECTION].
Using @llm/project/project-overview.md, @llm/project/user-flow.md, and @llm/project/tech-stack.md, create `design-rules.md` covering:
- Design principles and accessibility guardrails
- Color palette and typography
- Component styling conventions
- Spacing, layout, and interaction patterns
```

## Phase 3 — Project Rules

### Step 7 — Engineering Standards
- **Deliverable:** `llm/project/project-rules.md`
- **Focus:** directory map, file naming, code documentation, workflow standards.
- **Prompt:**
```
We are building an AI-first codebase that must stay modular, readable, and well documented. Files need descriptive headers, functions require JSDoc/TSDoc, and individual files should stay under 500 lines.
Using @llm/project/tech-stack.md, @llm/project/user-flow.md, @llm/project/project-overview.md, and @llm/project/design-rules.md, draft `project-rules.md` with:
- Directory structure and naming conventions
- Code organisation patterns and documentation rules
- Development workflow expectations
```

## Phase 4 — Development Enablement

### Step 8 — Agent Rules
- **Deliverable:** Copy into Cursor User Rules, Goosehints hintsets, `AGENTS.md`, and any other shared agent-rules handbook.
- **Why:** Keep every assistant aligned with the engineering expectations.
- **Paste:**
```
You are an expert in [YOUR CHOSEN TECHNOLOGIES FROM STEP 3].
You have extensive experience building production-grade applications.
You specialize in clean, scalable architectures for complex codebases.
Never assume the user is correct; probe for clarity.
Always review existing files before generating new ones.

We are building an AI-first codebase: modular, scalable, readable. The structure must be highly navigable.
All files require descriptive names, a short header explaining contents, and documented functions (JSDoc/TSDoc/etc.). Keep files under 500 lines.

Code Style and Structure:
- Write concise, technical code.
- Prefer functional/declarative patterns over classes.
- Add descriptive block comments to functions.
- Favour iteration and modularisation over duplication.
- Throw errors instead of silent fallbacks.
- Use descriptive variables with auxiliary verbs (isLoading, hasError).
- Avoid enums; use maps.
- Use the `function` keyword for pure functions.
- Keep conditionals lean; avoid redundant braces.
```

Note: Also see `AGENTS.md` at the repo root and the Goosehints guide (https://block.github.io/goose/docs/guides/using-goosehints/) when syncing assistant rule repositories.

### Step 9 — README Refresh
- **Deliverable:** Updated project README.
- **Prompt:**
```
Using @llm/project/project-overview.md, @llm/project/user-flow.md, @llm/project/tech-stack.md, and @llm/project/project-rules.md, refresh the README with a concise project summary and key conventions.
```

## Phase 5 — Delivery Planning

### Step 10 — Phased Roadmap
- **Deliverables:** `llm/project/phases/setup-phase.md`, `llm/project/phases/mvp-phase.md`, plus any follow-up phases that fit your roadmap.
- **Prompt:**
```
Create an iterative development plan from setup to MVP to advanced phases.
Rules:
- Setup = barebones but running
- MVP = core value delivered
- Later phases = enhancements, scale, polish
- Each phase goes in its own document with scope and 3–5 actionable steps per feature
- Plans must build on the previous phase and remain shippable
- For protocol or crypto work: add a spec summary doc in `llm/context/`, write spec-based tests first, and verify the implementation against those tests
- Use `llm/project/phases/phase-template.md` as a scaffold; update `setup-phase.md` and `mvp-phase.md` rather than creating new names

Use @llm/project/project-overview.md, @llm/project/user-flow.md, @llm/project/tech-stack.md, and @llm/project/project-rules.md for context.
Place the files in `llm/project/phases/`.
```

### Step 11 — Review & Secure Checklist (Optional)
- **Deliverable:** `llm/project/phases/review-and-hardening-phase.md`
- **Prompt:**
```
Create a final optional phase focused on review, security hardening, and release readiness.
Use @llm/project/project-overview.md, @llm/project/tech-stack.md, @llm/project/project-rules.md, and any relevant @llm/implementation/ docs.
Include entry/exit criteria and 3–5 actionable steps.
```

## Phase 6 — Wrap-Up

### Step 12 — Documentation Audit
Confirm `llm/` contains the full set in the new layout:
- `llm/project/project-overview.md`
- `llm/project/user-flow.md`
- `llm/project/tech-stack.md`
- `llm/project/design-rules.md`
- `llm/project/project-rules.md`
- `llm/project/phases/README.md`
- `llm/project/phases/phase-template.md`
- `llm/project/phases/setup-phase.md`
- `llm/project/phases/mvp-phase.md`
- `llm/project/phases/review-and-hardening-phase.md` (optional)
- `llm/project/phases/[additional-phase].md` (optional)
- `llm/context/[any-supporting-context].md`
- `llm/workflows/dev-env-local-example.md`

### Step 13 — Kickoff Prompt
- **Deliverable:** First development task or pairing session.
- **Prompt:**
```
Let's get started on our project.
```
- **Attach:** Agent Rules, `llm/project/phases/setup-phase.md`, `llm/project/tech-stack.md`, and `llm/project/project-overview.md` (and `llm/workflows/dev-env-local-example.md`) to keep the assistant grounded.

## Tips for Success
- Iterate on earlier docs as new insights emerge.
- Ask clarifying questions instead of guessing requirements.
- Keep prompts and outputs in sync—update documentation when decisions change.
- Store everything in `llm/` (primarily `llm/project/`) so contributors and agents have a single source of truth.

## Directory Quick Reference
```
llm/
├── README.md
├── project/
│   ├── project-overview.md
│   ├── user-flow.md
│   ├── tech-stack.md
│   ├── design-rules.md
│   ├── project-rules.md
│   └── phases/
│       ├── README.md
│       ├── phase-template.md
│       ├── setup-phase.md
│       ├── mvp-phase.md
│       ├── review-and-hardening-phase.md (optional)
│       └── [additional-phase].md (optional)
├── context/
│   └── [supporting-context].md
├── implementation/
│   ├── README.md
│   └── implementation-note-template.md
└── workflows/
    └── dev-env-local-example.md
```
