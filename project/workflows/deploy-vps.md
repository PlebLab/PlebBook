Purpose: One-pass production deploy workflow for PlebBook on DigitalOcean VPS.

# Deploy to VPS

## Target
- Host: `digitalocean-vps` (`KidA`)
- Web root: `/var/www/plebbook`
- Domain: `plebbook.com`

## Steps
1. Update source
- `git pull`

2. Install deps if needed
- `npm ci`

3. Build static site
- `npm run build`

4. Deploy output
- `sudo cp -a _site/. /var/www/plebbook/`

5. Reload web server
- `sudo nginx -t && sudo systemctl reload nginx`

6. Verify
- `curl -I https://plebbook.com`
- `curl -I https://www.plebbook.com`

## DNS Notes
- Required records:
  - `A plebbook.com -> 165.245.133.66`
  - `A www.plebbook.com -> 165.245.133.66`
