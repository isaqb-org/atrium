---
id: FR-014
type: functional-requirement
title: "Manage provider accounts"
status: draft
created: 2026-11-26
updated: 2026-11-26
sources: ["[[SRC-022-provider-profile]]"]
related: ["[[STK-008-operator]]", "[[STK-009-is-wg]]", "[[STK-010-external-it-support]]", "[[DT-002-isaqb-association]]", "[[DT-003-isaqb-gmbh]]", "[[DT-030-provider-page]]", "[[DT-037-partner-logo-marquee]]", "[[FR-011-provider-profile-maintenance]]"]
tags: [functional-requirement, provider-profile]
notation: agile
level: story
parent: ["[[FR-011-provider-profile-maintenance]]"]
building-blocks: []
priority: Should
release: unscheduled
lane: platform
order: 4
goal: ["[[GOAL-002-excellent-usability]]"]
delivery:
delivery-checked:
---

# Manage provider accounts

## Story

As the [[STK-008-operator|operator]] I want **to issue logins and to hide or delete provider profiles**, so that **only contracted providers maintain a profile, and deletion stays in few hands**.

**Acceptance criteria.** > follows [[acceptance-criteria]]

- **Given** a provider has a contract with the [[DT-002-isaqb-association|iSAQB association]] or the [[DT-003-isaqb-gmbh|iSAQB GmbH]] **then** the operator issues its login.
- **Given** a provider is suspended or departs **when** the operator hides its profile by hand **then** there is no provider page, no logo in the [[DT-037-partner-logo-marquee|marquee]] and no login; the profile stays stored and can be shown again.
- **Given** a profile **then** only the operator can delete it.

The operator role is held by the [[STK-009-is-wg|Infrastructure Working Group]] and [[STK-010-external-it-support|external IT support]] ("infrastructure" and "support" in the source), for now.

## Hierarchy

- **Parent:** see `parent:`.
- **Children:** none.

> [!note] Open points
> - Whether profiles stay in atrium or move to [[DT-026-diwan|DIWAN]]: [[ISS-004-provider-profiles-in-atrium-or-diwan|ISS-004]]. If they move, these requirements apply to DIWAN, and atrium only shows the profile.

## History

> Hiding is manual: a rare case, simplest solution, by the human, 2026-11-26.
