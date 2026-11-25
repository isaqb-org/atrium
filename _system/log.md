# Log

Append-only. One entry per operation. Keep the prefix exact so the log is
greppable: `grep '^## \[' _system/log.md | tail -5`.

<!-- Format (indented so the grep above does not match it):
    ## [YYYY-MM-DD] <op> | <subject>
    - Source / scope, grill gate, created, updated, issues, open questions
-->

## [2026-11-23] new-project | iSAQB atrium
- Created with `_system/scripts/new-project.sh new` from meta @ d006fe1.
- Product paths copied (schema, templates, anchors, workflows, skills, dashboard, docs). No decision records are inherited: `wiki/decisions/` starts empty and this project's own decisions start at DR-001.
- `wiki/` and `raw/` start empty. Next step: `_system/workflows/bootstrap.md`.

## [2026-11-25] capture | Domain terms (SRC-001)
- Source: `raw/domain-terms.md`, archived to `raw/ingested/`. Grill gate run: definitions taken from earlier work as decided by the human, `german:` field via PR #1, two bounded contexts (iSAQB, atrium), no stereotypes or attributes yet.
- Created: DT-001 to DT-033, all `draft`, `agreed: false`.
- Issues raised: ISS-001 to ISS-006. ISS-001 and ISS-002 by the human's decision, ISS-003 to ISS-006 from the unanswered closing round.
