Purpose: Example template to copy to llm/project/project-overview.md and customize.

# Project Overview Example

> How to use: Copy this file to `llm/project/project-overview.md`, then tailor it. Keep it under 500 lines and start with a one-line purpose note.

## Snapshot
- **Project:** Noslock — encrypted pastebin on Nostr relays
- **Type:** Browser-based PWA, zero-knowledge document sharing
- **Approach:** Documentation-first, iterative delivery across three phases
- **Model:** Capability URLs — anyone with the link can decrypt

## Mission & Outcomes
Deliver a zero-knowledge pastebin where users encrypt content locally and publish ciphertext to Nostr relays. Relays never see plaintext. Access is controlled by sharing a capability URL containing the decryption key. Success means seamless write/read flows, cross-relay redundancy, and a clean "copy link" UX.

## Core Objectives
- Local-first encryption using XChaCha20-Poly1305 (AEAD)
- Capability URLs: `noslock://<doc_id>#<K_doc>` — key never leaves the fragment
- Publish encrypted events to multiple Nostr relays for redundancy
- Simple, focused UI: write text → get link → share link → reader decrypts

## Audience & Personas
- **Privacy advocates** sharing sensitive text without trusting servers
- **Developers** needing quick, encrypted snippet sharing
- **Journalists/activists** exchanging information under adversarial conditions
- **Anyone** who wants pastebin simplicity with real encryption

## Delivery Roadmap

### Phase 1 — Foundations
- Scaffold Vite + React app with TypeScript and Tailwind
- Implement crypto primitives: key generation, XChaCha20-Poly1305 encrypt/decrypt
- Build minimal UI: textarea input, "Create" button, link display
- Local-only testing (no relay integration yet)

### Phase 2 — Core Features
- Integrate nostr-tools for relay communication
- Write flow: encrypt → publish event with ciphertext + doc_id → show share link
- Read flow: parse URL → fetch event by doc_id → decrypt → display plaintext
- Publish to multiple relays; fetch from any that responds
- Copy-to-clipboard UX for share links

### Phase 3 — Security Hardening
- Audit crypto implementation (nonce handling, key derivation)
- Handle edge cases: relay failures, malformed links, tampered ciphertext
- Optional: NIP-44 encrypted DM to share link privately
- Polish UI: loading states, error messages, mobile responsiveness
- Documentation and smoke tests

## Architecture & Stack
- **Frontend:** Vite + React with TypeScript + Tailwind CSS
- **Crypto:** tweetnacl or libsodium.js for XChaCha20-Poly1305
- **Nostr:** nostr-tools for event creation and relay queries
- **Storage:** None server-side; optional IndexedDB for recent links cache
- **PWA:** Service worker for offline shell (optional enhancement)

## Constraints & Risks
- **No revocation:** If a link leaks, access leaks — by design
- **No edits/versioning:** Each paste is immutable; new content = new link
- **Relay trust:** Relays see ciphertext only, but availability depends on relay uptime
- **Link security:** The `#fragment` keeps the key client-side, but users must share links carefully

## Success Criteria
- **Phase 1:** Encrypt/decrypt round-trip works locally with correct AEAD
- **Phase 2:** Full write/read flow works across at least 2 relays
- **Phase 3:** Graceful error handling, mobile-friendly UI, optional NIP-44 sharing functional
- **Overall:** A user can write text, get a link, share it, and recipient decrypts successfully
