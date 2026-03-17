Purpose: Template for the MVP phase that delivers the core user value.

# MVP Phase

Use this phase to ship the smallest version that solves the primary user problem end to end. Replace the placeholders with your project-specific tasks.

## Goals
- Deliver the primary user flow(s) from `llm/project/user-flow.md`.
- Integrate required services or protocols with verified behavior.
- Establish quality gates with meaningful tests.

## Scope
- In scope: core features, real data handling, critical error states, baseline tests.
- Out of scope: long-tail features, extensive polish, scale optimizations.

## Steps (example)
1. **Core flows**
   - Implement the primary user journey(s) with real persistence or integrations.
2. **Protocol or crypto implementation (if applicable)**
   - Add spec summary in `llm/context/`, write tests first, then implement and verify.
3. **Quality gates**
   - Add integration or unit tests for critical paths and regression coverage.
4. **Documentation**
   - Update README and `llm/implementation/` notes to match behavior.

## Exit Criteria
- Core user flow works end to end with documented constraints.
- Protocol or crypto behaviors are verified against tests.
- Docs and runbooks match the shipped MVP.

## Suggested Agent Prompt
```
Update @llm/project/phases/mvp-phase.md with project-specific steps.
Keep scope focused on the core value and list 3-5 actionable steps per feature.
```
