Purpose: Template for drafting any project phase, including spec-first and test-first guidance for protocol or crypto work.

# Phase Template

Use this file as a scaffold when drafting a new phase. Replace placeholders and keep the plan specific, shippable, and short.

## Goals
- [One sentence on what this phase delivers and why it matters.]

## Inputs
- `llm/project/project-overview.md`
- `llm/project/user-flow.md`
- `llm/project/tech-stack.md`
- `llm/project/project-rules.md`
- `llm/context/[relevant-spec].md` (required for protocol or crypto work)

## Scope
- In scope:
- Out of scope:

## Steps (per feature)
1. **Context and specs**
   - Summarize the protocol or crypto spec in `llm/context/` with key requirements and citations.
2. **Test-first plan**
   - Define acceptance criteria, fixtures, and test vectors.
   - Write failing tests before implementation.
3. **Implementation**
   - Implement to satisfy the tests and spec.
4. **Verification**
   - Run tests, document results, and update `llm/implementation/` notes as behavior stabilizes.

## Exit Criteria
- [Tests pass with documented vectors or fixtures.]
- [Core feature behavior matches the spec and the phase goals.]
- [Relevant docs updated.]

## Suggested Agent Prompt
```
Create or update [phase-name].md using @llm/project/project-overview.md, @llm/project/user-flow.md, @llm/project/tech-stack.md, and @llm/project/project-rules.md.
For protocol or crypto work, require a spec summary in @llm/context/ and test-first implementation steps with verification.
Keep scope tight and list 3-5 actionable steps per feature.
```
