---
id: FR-012
type: functional-requirement
title: "Edit the own provider profile"
status: draft
created: 2026-11-26
updated: 2026-11-26
sources: ["[[SRC-022-provider-profile]]"]
related: ["[[DT-030-provider-page]]", "[[DT-029-admin-app]]", "[[DT-037-partner-logo-marquee]]", "[[GOAL-005-multilingual-platform]]", "[[FR-011-provider-profile-maintenance]]", "[[FR-013-review-a-profile-change-before-publication]]"]
tags: [functional-requirement, provider-profile]
notation: agile
level: story
parent: ["[[FR-011-provider-profile-maintenance]]"]
building-blocks: []
priority: Should
release: unscheduled
lane: platform
order: 2
goal: ["[[GOAL-002-excellent-usability]]"]
delivery:
delivery-checked:
---

# Edit the own provider profile

## Story

As a [[STK-001-training-provider|training provider]] I want **to create and update my profile myself**, so that **I need not ask iSAQB for every change**.

**Acceptance criteria.** > follows [[acceptance-criteria]]

- **Given** I am logged in to the [[DT-029-admin-app|admin app]] **then** I can create and update my own profile, and no other.
- **Given** the profile **then** it holds name, website link, contact email, address, a description and one logo.
- **Given** the description **then** it is required in German and English; Spanish, French and later languages are optional and fall back to English ([[GOAL-005-multilingual-platform|GOAL-005]]).
- **Given** a description of more than 230 words in one language **when** I save **then** the admin app refuses it and shows the word count.
- **Given** the logo **then** it is PNG (transparent background preferred), JPG or SVG; landscape; at least 600 px wide if raster; at most 500 KB. One file serves the marquee (about 160 × 64 px) and the provider page (up to 300 px wide); atrium scales it.
- **Given** I save a change **then** it waits for review and is not public yet ([[FR-013-review-a-profile-change-before-publication|FR-013]]).

## Hierarchy

- **Parent:** see `parent:`.
- **Children:** none.

> [!note] Open points
> - Whether profiles stay in atrium or move to [[DT-026-diwan|DIWAN]]: [[ISS-004-provider-profiles-in-atrium-or-diwan|ISS-004]]. If they move, these requirements apply to DIWAN, and atrium only shows the profile.

## History

> 230-word hard limit kept from today's longest profiles on isaqb.org; German and English required, by the human, 2026-11-26. Logo formats and sizes proposed by the agent.
