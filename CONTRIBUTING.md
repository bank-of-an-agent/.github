# Contributing to Agent Bank

Thanks for helping build safe, programmable money for AI agents. This guide applies to every
repository in the organization; repositories add their own setup steps in their README.

## Ground rules

These come from the design and are enforced in review:

1. **Non-custodial.** No code path, upgrade path or admin function may let Agent Bank, or any
   bank-held key, move customer funds alone.
2. **Testnet only.** Base Sepolia (and local Anvil/simulated chains). Never add mainnet keys,
   RPC endpoints or deployments.
3. **Money is integer minor units** (`bigint` / `uint256` / `int`), never floats. Decimal
   strings on the wire.
4. **Every write is idempotent.**
5. **No secrets** in code, tests, logs or prompts. The only keys allowed in the repository are
   the public Anvil development keys in tests.
6. **Fail closed.** If a dependency is down, payments stop.

## How to contribute

1. Open an issue first for anything larger than a small fix, so we can agree on the approach.
2. Fork or branch from `main`; keep pull requests focused.
3. Write tests. Ledger and policy code needs at least 90% coverage; contracts need unit, fuzz
   and invariant tests.
4. Record significant decisions as an ADR in `docs/adr/` (one page: context, decision,
   consequences).
5. Use [Conventional Commits](https://www.conventionalcommits.org/) (`feat:`, `fix:`,
   `docs:`, `chore:` …).
6. CI must be green: formatting, lint, types, tests and builds.

## Security issues

Never file security problems as public issues. See [SECURITY.md](SECURITY.md).

## Code of conduct

Participation is governed by our [Code of Conduct](CODE_OF_CONDUCT.md).
