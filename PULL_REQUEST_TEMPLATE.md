## Summary

<!-- What does this change do, and why? Link the issue. -->

## Checklist

- [ ] No code path, upgrade path or admin function lets a bank-held key move funds alone.
- [ ] Testnet only: no mainnet keys, endpoints or deployments.
- [ ] Money stays integer minor units; no floats.
- [ ] Writes are idempotent; failures fail closed.
- [ ] Tests added or updated (fuzz/invariant tests for contracts).
- [ ] Docs, OpenAPI and ADRs updated where relevant.
- [ ] No secrets in code, tests or logs.
