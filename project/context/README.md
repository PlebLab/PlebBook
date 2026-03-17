Purpose: Guidance on when and what to add to the context folder.

# Context Files

Add focused, reusable reference documents here that you'll cite in prompts during implementation.

## When to Add Context Files
- Protocol or crypto specs you need to implement against (e.g., `nostr-nip-01.md`)
- Domain models or data schemas
- Library usage patterns or API references
- Security models or encryption schemes
- Agent prompts for specialized tooling (e.g., `freedom-tech-agent-prompt.md`)

## Guidelines
- Keep files short and implementation-oriented
- Summarize external specs rather than copying them wholesale
- Update files when upstream specs change
- Reference context files in prompts using `@llm/context/[filename].md`
