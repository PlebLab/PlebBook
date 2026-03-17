Purpose: Template for the setup phase that delivers a barebones but running baseline.

# Setup Phase

Use this phase to get a running skeleton with the minimum tooling and a thin vertical slice. Replace the placeholders with your project-specific tasks.

## Goals
- Establish the repo, scripts, and local dev workflow.
- Ship a minimal end-to-end path (even if stubbed).
- Document the initial architecture and conventions.

## Scope
- In scope: scaffolding, tooling, skeleton UI or CLI, initial data flow stubs.
- Out of scope: full feature completeness, performance tuning, advanced security work.

## Steps (example)
1. **Repo and tooling baseline**
   - Scaffold the project and align scripts with `llm/workflows/`.
2. **App shell and navigation**
   - Build the minimal UI or CLI entry and wiring to run locally.
3. **Thin vertical slice**
   - Implement one core flow end to end with mock or placeholder data.
4. **Docs and guardrails**
   - Update README and capture early architecture notes in `llm/implementation/` if needed.

## Exit Criteria
- App runs locally with a minimal flow (`npm run dev` or equivalent).
- Lint/build/test commands execute (even if minimal coverage).
- Baseline docs updated to reflect the current state.

## Suggested Agent Prompt
```
Update @llm/project/phases/setup-phase.md with project-specific steps.
Keep scope minimal and shippable. List 3-5 actionable steps per feature.
```
