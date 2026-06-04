# Security Policy

## Supported Versions

The following versions of Kanghuru are currently supported with security updates:

| Version | Supported          |
| ------- | ------------------ |
| latest  | :white_check_mark: |

## Reporting a Vulnerability

We take the security of Kanghuru seriously. If you discover a security vulnerability, please report it responsibly.

### How to Report

1. **Do not** open a public GitHub issue.
2. Email **info@kanghuru.es** with the details of the vulnerability.
3. Include:
   - A description of the vulnerability
   - Steps to reproduce the issue
   - Potential impact
   - Any suggested remediation (optional)

### What to Expect

- **Acknowledgment**: You will receive an acknowledgment within 48 hours.
- **Update**: We will provide regular updates on our progress in resolving the vulnerability.
- **Resolution**: We aim to resolve critical vulnerabilities within 30 days, depending on complexity.
- **Credit**: We will credit reporters for responsible disclosure (unless you prefer to remain anonymous).

### Scope

This security policy applies to:

- The Docker image deployment
- The web application served by the Docker image

### Out of Scope

- Issues related to third-party dependencies (e.g., CDN-hosted scripts like Tailwind CSS or Lucide icons)
- Security of external services (e.g., email, phone)

## Security Hardening

Kanghuru follows Docker security best practices:

- Base images are pinned to specific versions
- Security updates are applied at build time
- Container runs as a non-root user
- Build context is minimized with .dockerignore
- Health checks are configured for monitoring
- No secrets or credentials are stored in the repository
