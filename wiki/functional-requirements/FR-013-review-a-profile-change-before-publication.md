---
id: FR-013
type: functional-requirement
title: "Review a profile change before publication"
status: draft
created: 2026-11-26
updated: 2026-11-26
sources: ["[[SRC-022-provider-profile]]"]
related: ["[[DT-006-reviewer]]", "[[DT-030-provider-page]]", "[[FR-011-provider-profile-maintenance]]", "[[FR-012-edit-the-own-provider-profile]]"]
tags: [functional-requirement, provider-profile]
notation: agile
level: story
parent: ["[[FR-011-provider-profile-maintenance]]"]
building-blocks: []
priority: Should
release: unscheduled
lane: platform
order: 3
goal: ["[[GOAL-002-excellent-usability]]"]
delivery:
delivery-checked:
---

# Review a profile change before publication

## Story

As a [[DT-006-reviewer|reviewer]] I want **to check every profile change before it goes public**, so that **only correct and neutral content appears on atrium**.

**Acceptance criteria.** > follows [[acceptance-criteria]]

- **Given** a provider creates or updates its profile **then** the change becomes a change for review, and the public [[DT-030-provider-page|provider page]] still shows the last approved version.
- **Given** a new change for review **then** the reviewers are notified.
- **Given** I approve the change **then** it is published.
- **Given** I reject the change **then** I must give a short reason, and the provider sees it.

How reviews and notifications work (for example a pull request per change) is an architecture decision.

## Hierarchy

- **Parent:** see `parent:`.
- **Children:** none.

> [!note] Open points
> - Whether profiles stay in atrium or move to [[DT-026-diwan|DIWAN]]: [[ISS-004-provider-profiles-in-atrium-or-diwan|ISS-004]]. If they move, these requirements apply to DIWAN, and atrium only shows the profile.

## History

> Rejection always with a reason, confirmed by the human, 2026-11-26.
