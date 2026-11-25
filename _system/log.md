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

## [2026-11-25] capture | Stakeholder names (SRC-002)
- Source: `raw/stakeholder-names.md`, archived to `raw/ingested/`. Grill gate run: content taken from earlier work as decided by the human, influence and interest marked as estimates, empty goals left empty.
- Created: STK-001 to STK-013 from the source, STK-014 academic partner added by the human (who counts and how they appear decided in the closing round).
- Updated: DT-002, DT-003, DT-004, DT-005, DT-006, DT-015 to DT-018, DT-026, DT-031, DT-033 (reciprocal links, wikilinks to stakeholders); ISS-001 to ISS-006 (owners).
- Issues raised: ISS-007 (member-type labels, owner executive board). Closing round answered in full.

## [2026-11-25] capture | Vision and goals (SRC-003 to SRC-010)
- Source: `raw/vision-and-goals/` (8 files), archived to `raw/ingested/vision-and-goals/`. Grill gate run: vision in Moore format with a tile claim, objectives in PAM with target and horizon, beneficiaries derived (technical excellence and openness serve nearly everybody), technical excellence split into two objectives.
- Created: GOAL-001 to GOAL-009, all `draft`.
- Updated: DT-012, DT-019 to DT-021, DT-026 to DT-028, DT-031, DT-007 to DT-009, DT-011, DT-014, DT-016, DT-017; STK-003, STK-005 to STK-007, STK-011, STK-013, STK-001; ISS-004 (reciprocal links).
- Closing round answered one by one: baseline measurement dropped, transparency stays an advantage of GOAL-004, finder tie-break random but stable per day, n counts each accredited company once (provisional), ±10 % stays a note.
- Issues raised: ISS-008 (core tasks for alumni, members, employers), ISS-009 (keep GOAL-004, who defines next steps), ISS-010 (missing quality requirements), ISS-011 (companies per provider, executive board).
- Raw: `raw/core-task-proposals.md` added at the human's request, not captured.
