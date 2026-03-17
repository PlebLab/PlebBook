Purpose: Describe primary user and operator flows for PlebBook.

# User Flow

## Reader Flow
1. User opens `plebbook.com`.
2. User lands on home page and navigates sections via sidebar/search.
3. User opens topic pages and external embedded resources.
4. User shares direct page links with other builders.

## Contributor Flow
1. Contributor edits markdown in GitHub repo.
2. Changes are merged to `main`.
3. Operator deploys updated static build to VPS.
4. Users receive updated content immediately after deploy.

## Operator Flow
1. Pull latest repo on deployment machine.
2. Run content preparation and static build.
3. Sync output to `/var/www/plebbook`.
4. Reload Nginx.
5. Verify live domain and TLS responses.
