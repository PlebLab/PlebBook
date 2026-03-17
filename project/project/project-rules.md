Purpose: Define engineering and operations rules for maintaining PlebBook.

# Project Rules

## Source of Truth
- Markdown content in repo is canonical.
- Generated folders (`_site`, `.build-src`) are not edited manually.

## File and Script Rules
- Keep deployment logic in `scripts/`.
- Keep web server config templates in `ops/`.
- Keep operational runbooks in `SELF_HOSTING.md` and `project/workflows/`.

## Deployment Rules
- Validate build before deploy.
- Never deploy without confirming Nginx config test (`nginx -t`).
- Verify both apex and `www` domains after each DNS or TLS change.

## Change Management
- Commit infrastructure or deploy changes to git.
- Record important production incidents and fixes in OCE (`OPENCLAW_ENVIRONMENT.md`).
