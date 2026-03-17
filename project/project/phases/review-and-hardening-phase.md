Purpose: Optional final phase for review, security hardening, and release readiness.

# Review & Hardening Phase (Optional)

Run this phase after the MVP is stable and before a public launch, major release, or external audit. It is a deliberate pause to verify quality, security, and operational readiness.

## Goals
- Identify and address security and privacy risks.
- Validate critical flows against requirements.
- Ensure operational readiness (monitoring, backups, incident response).
- Confirm release gates and sign-off criteria.

## Scope
- In scope: security review, data handling review, dependency audit, performance checks, release readiness.
- Out of scope: new product features or large refactors not required for risk mitigation.

## Steps
1. **Threat Model & Data Flow Review**
   - Map sensitive data paths, storage, and retention.
   - Identify trust boundaries and high-risk components.
   - Record mitigations and owners.
2. **Security & Privacy Hardening**
   - Audit authentication, authorization, and key handling.
   - Validate encryption at rest and in transit where applicable.
   - Confirm least-privilege access and secrets management.
3. **Dependency & Supply-Chain Audit**
   - Review direct dependencies for known issues.
   - Pin versions where appropriate and document update cadence.
   - Remove unused or risky packages.
4. **Operational Readiness**
   - Confirm logging, metrics, and alerting coverage for critical paths.
   - Verify backup/restore (if applicable) and incident runbooks.
   - Set performance budgets and validate against them.
5. **Release Gate Review**
   - Re-run tests and verify critical user flows.
   - Ensure docs match current behavior.
   - Record final sign-off and any deferred risks.

## Exit Criteria
- High/critical issues resolved or explicitly accepted.
- Monitoring and incident response are documented.
- Release checklist signed off and archived.

## Suggested Agent Prompt
```
Create a review-and-hardening checklist tailored to our project.
Use @llm/project/project-overview.md, @llm/project/tech-stack.md, @llm/project/project-rules.md, and any relevant @llm/implementation/ docs.
Focus on security, privacy, operational readiness, and release gates. Ask clarifying questions if needed.
```
