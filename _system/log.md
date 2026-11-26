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

## [2026-11-26] capture | Public static site for the atrium dashboard (SRC-020)
- Source: `raw/2026-11-25-public-static-site-for-the-atrium-dashboard.md`, archived to `raw/ingested/`. Grill gate run: a decision record, not a product requirement; DR-001 records what is published, the build approach stays with the dashboard; decision-makers product owner and technical owner by role; accepted, decided 2026-11-25.
- Created: DR-001 (publish the whole wiki as a public static site), ISS-012 (does the showcase need pages of its own), resolved in the closing round: tagline, about page and brand are enough, the config-only rule goes into DR-001.
- Updated: GOAL-007, STK-003, STK-011, STK-012, STK-013 (reciprocal links).
- Follow-up: PR with the `site:` block in `_system/wiki.yaml`, the AGENTS.md export exception and the dashboard update, once the dashboard release with the export exists.

## [2026-11-26] capture | Partner logo marquee (SRC-021)
- Source: `raw/partner-logo-laufband.md` (German, by the atrium team, partly reverse-engineered from the current isaqb.org start page), moved out of the repository by the human's choice; captured from the English short version `raw/partner-logo-marquee.md` without personal or provider names, archived to `raw/ingested/`. Grill gate run: one logo per provider and the fairness metric counting providers (ISS-011 resolved by the human); no static-site constraint, but every JavaScript feature needs a fallback; load time measured by GOAL-006; one story instead of a feature.
- Created: FR-010 (show the partner logo marquee), QR-002 (every JavaScript feature has a fallback), DT-037 partner logo marquee.
- Updated: GOAL-009 (n counts providers, term link), ISS-011 (resolved); DT-016, DT-028, DT-030, FR-001, FR-002, GOAL-002, GOAL-006, STK-001, ISS-004 (reciprocal links).
- Closing round answered one by one: FR-010 stays Should (launch without the marquee is acceptable); a provider with several companies chooses its one logo and maintains it with its profile, checked by a reviewer. No issues raised.

## [2026-11-26] capture | Provider profile maintenance (SRC-022)
- Source: `raw/provider-profile.md`, archived to `raw/ingested/`. Grill gate run: ISS-004 stays open, the requirements hold if profiles stay in atrium and otherwise apply to DIWAN; "infrastructure" and "support" act in the operator role (is-wg, external IT support), for now; "PR" is a possible implementation, how reviews and notifications work is an architecture decision; description required in German and English, hard limit 230 words per language; suspended providers hidden by hand by the operator.
- Created: FR-011 (feature) with stories FR-012 (edit own profile), FR-013 (review before publication), FR-014 (manage provider accounts).
- Updated: DT-029, DT-030 (content); DT-002, DT-003, DT-006, DT-037, GOAL-005, STK-001, STK-008, STK-009, STK-010, ISS-004 (reciprocal links).
- Raw: `raw/i18n.md` added at the human's request (profile languages, language switcher placeholder), not captured.
- Closing round answered one by one: FR-011 to FR-014 stay Should, the editorial team or the operator enters profiles until self-service exists; FR-011 success metrics: complete German and English profiles at launch, 90 % of changes reviewed within 5 working days; a rejection always carries a reason. No issues raised.

## [2026-11-26] edit | Only the Foundation Level exam is based on a curriculum
- Source: correction by the human in the session. Advanced Level certification follows the exam rules (Prüfungsordnung) that iSAQB publishes on its website; atrium does not specify them.
- Updated: DT-012 curriculum (definition, in context, distinguish from), DT-009 Advanced Level (exam not based on a curriculum), FR-009 (history note; the three curriculum pages still hold). DT-009 and DT-012 now link each other.
