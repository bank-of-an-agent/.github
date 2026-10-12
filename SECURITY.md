# Security policy

Agent Bank handles money for software agents, so we treat security reports as our highest
priority.

## Reporting a vulnerability

Please **do not open a public issue**. Report privately through GitHub:
**Security → Report a vulnerability** on the affected repository (private vulnerability
reporting). If that is unavailable, contact the maintainers listed on the organization page.

Include what you found, the affected repository and commit, steps to reproduce, and the impact
you believe it has. We acknowledge reports within 2 business days and send a first assessment
within 5.

## Scope

- Every repository in the `bank-of-an-agent` organization.
- The properties we care about most: Agent Bank (or any bank-held key) must never be able to
  move customer funds alone; agents must never exceed their on-chain session scope; the owner
  must always be able to exit; the ledger must reconcile with the chain.

## Status

Agent Bank is **pre-release and testnet-only** (Base Sepolia). Contracts have not been audited
yet; two independent audits and a public bug bounty are planned before any mainnet beta.

## Safe harbor

We will not pursue legal action for good-faith research that avoids privacy violations, data
destruction and service degradation, uses only testnet funds and test accounts you own, and
gives us reasonable time to fix the issue before disclosure.
