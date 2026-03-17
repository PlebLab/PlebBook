Purpose: Define PlebBook mission, operating model, and delivery roadmap.

# PlebBook Project Overview

## Snapshot
- Project: PlebBook
- Type: Static documentation site for Bitcoin/Lightning builders
- Primary domain: `plebbook.com`
- Hosting model: Self-hosted on DigitalOcean VPS with Nginx
- Build model: Markdown source -> prepared content -> HonKit static output

## Mission
Provide a durable, low-cost, self-hosted knowledge base for the PlebLab builder ecosystem without dependency on paid GitBook hosting.

## Core Objectives
- Keep markdown content as source-of-truth in GitHub (`PlebLab/PlebBook`)
- Build static output reliably despite GitBook-specific tags in content
- Serve production from VPS infrastructure owned by the team
- Maintain clear operator docs for future handoff and fast recovery

## Audience
- Bitcoin and Lightning developers looking for resources
- PlebLab community contributors and organizers
- Operators maintaining production hosting and DNS

## Current Production State (2026-03-17)
- VPS host: `digitalocean-vps` (`KidA`)
- Public IP: `165.245.133.66`
- Web root: `/var/www/plebbook`
- TLS: Let's Encrypt cert via certbot for `plebbook.com` + `www.plebbook.com`
- DNS target: both apex and `www` point to `165.245.133.66`

## Risks and Constraints
- Source markdown includes GitBook custom blocks (`embed`, `hint`) that require preprocessing.
- Cloudflare rule changes may require broader token scopes than DNS-only operations.
- VPS GitHub SSH deploy path is not guaranteed; fallback deploy must exist (sync/tar path).

## Success Criteria
- `https://plebbook.com` serves VPS content directly
- Build and deploy can be executed by one operator from documented runbook
- No paid GitBook hosting required for production delivery
