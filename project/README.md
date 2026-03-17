Purpose: Canonical project docs workspace for PlebBook planning, operations, and handoff.

# PlebBook Project Docs

This folder is the project documentation workspace for `PlebBook`, adapted from `new-project-boilerplate`.

## Structure

```
project/
├── README.md
├── project/
│   ├── setup.md
│   ├── project-overview.md
│   ├── user-flow.md
│   ├── tech-stack.md
│   ├── design-rules.md
│   ├── project-rules.md
│   └── phases/
├── context/
├── implementation/
└── workflows/
```

## Current Status

- Production domain: `plebbook.com`
- Hosting: self-hosted on `digitalocean-vps` (`KidA`)
- Runtime web server: Nginx
- Static output source: HonKit build (`_site/`)
- GitBook subscription dependency: removed after DNS cutover

## How to use

1. Start with `project/project-overview.md`
2. Follow `project/phases/` for planned changes
3. Use `workflows/` for repeatable operational tasks
4. Record architecture or incident notes in `implementation/`
