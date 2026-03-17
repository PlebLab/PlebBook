# PlebBook Self-Hosting Runbook

This replaces GitBook hosting with a VPS-hosted static site.

## 1) VPS prerequisites

- Ubuntu 22.04 or newer
- Docker + Docker Compose plugin installed
- Git installed
- DNS for `plebbook.com` managed in Cloudflare

## 2) Clone and deploy on VPS

```bash
git clone git@github.com:PlebLab/PlebBook.git
cd PlebBook
bash scripts/deploy-vps.sh
```

This script:
- installs Node dependencies
- converts GitBook-specific markdown tags
- builds static output into `_site/`
- starts Caddy on ports 80/443

## 3) Point domain in Cloudflare

Create these DNS records:
- `A` record: `@` -> `YOUR_VPS_IPV4` (Proxy: Proxied or DNS only)
- `A` record: `www` -> `YOUR_VPS_IPV4` (Proxy: Proxied or DNS only)

## 4) Confirm TLS and site

After DNS propagates, open:
- `https://plebbook.com`
- `https://www.plebbook.com`

Caddy will automatically provision HTTPS certificates.

## 5) Update content later

```bash
cd PlebBook
git pull
bash scripts/deploy-vps.sh
```

## Notes

- Source markdown remains unchanged; conversion happens in `.build-src/`.
- Final static site is written to `_site/`.
