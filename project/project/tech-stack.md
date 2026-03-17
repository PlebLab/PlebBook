Purpose: Record chosen technologies and conventions for PlebBook.

# Tech Stack

## Source and Build
- Source format: Markdown + GitBook-exported markdown patterns
- Builder: HonKit (`6.1.6`)
- Content preprocessor: `scripts/prepare-content.sh`
- Build command: `npm run build`
- Build output: `_site/`

## Hosting
- Runtime host: DigitalOcean VPS (`KidA`)
- Web server: Nginx
- TLS: Certbot / Let's Encrypt
- Public DNS: Cloudflare

## Repo and Delivery
- Git remote: `PlebLab/PlebBook`
- Branch: `main`
- Deploy style: pull/build/copy/reload (no heavy runtime app process)

## Operational Notes
- Keep `_site/` as generated artifact only.
- Keep `.build-src/` ephemeral and excluded from git.
- Use DNS-only mode during redirect debugging; optionally re-enable proxy after validation.
