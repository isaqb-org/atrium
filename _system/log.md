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

## [2026-11-25] capture | Site search and curriculum pages (SRC-011 to SRC-019)
- Source: `raw/site-search/` (8 files), archived to `raw/ingested/site-search/`; `raw/curriculum-pages.md`, added by the human during the grill, archived to `raw/ingested/`. Grill gate run one question at a time: module and curriculum split into two kinds of page, typo allowance scaled by word length, training dates limited to 3 plus a hand-over to the finder, search in the current site language only, news and blog merged, query list kept by editorial team and product owner as an automated test, search added as a core task, content tags with one main tag per page instead of exactly one category.
- Created: FR-001 (epic) to FR-008 (stories), FR-009 (curriculum pages), QR-001 (popup latency), DT-034 content tag, DT-035 curriculum page, DT-036 site search.
- Updated: DT-012, DT-028, DT-032, GOAL-002 (content: versions, curriculum page link, hand-over, search core task); DT-002, DT-004, DT-020, DT-030, DT-031, GOAL-005, STK-007, STK-012, STK-014 (reciprocal links).
- Closing round answered one by one (2026-11-26): start and legal pages get main tag Organisation, the finder page Training date; curriculum pages only for the upcoming, current and previous version, since exams are taken against the current version (apart from a grace period of a few weeks after a new Foundation Level curriculum); the Expert Level has no curriculum (DT-010, DT-012 corrected) and its page gets main tag Module; FR-009 raised to Must; search shortcuts `/` and `Ctrl+K`/`Cmd+K`. No issues raised.
