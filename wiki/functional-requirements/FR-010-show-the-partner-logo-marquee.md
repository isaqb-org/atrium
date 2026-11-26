---
id: FR-010
type: functional-requirement
title: "Show the partner logo marquee"
status: draft
created: 2026-11-26
updated: 2026-11-26
sources: ["[[SRC-021-partner-logo-marquee]]"]
related: ["[[DT-037-partner-logo-marquee]]", "[[QR-002-every-javascript-feature-has-a-fallback]]", "[[GOAL-009-fairness-towards-providers-and-trainers]]", "[[GOAL-006-technical-excellence-of-the-running-site]]", "[[DT-016-training-provider]]", "[[DT-030-provider-page]]", "[[STK-001-training-provider]]", "[[ISS-004-provider-profiles-in-atrium-or-diwan]]", "[[ISS-011-how-providers-with-several-companies-count]]", "[[DT-006-reviewer]]"]
tags: [functional-requirement, fairness]
notation: agile
level: story
parent: []
building-blocks: []
priority: Should
release: unscheduled
lane: display
order: 1
goal: ["[[GOAL-009-fairness-towards-providers-and-trainers]]"]
delivery:
delivery-checked:
---

# Show the partner logo marquee

## Story

As a [[STK-001-training-provider|training provider]] I want **my logo on the start page to have the same chance as every other provider's to appear early**, so that **no provider gets a permanent edge from a fixed order**.

**Acceptance criteria.** > follows [[acceptance-criteria]]

- **Given** the start page **then** it shows the [[DT-037-partner-logo-marquee|partner logo marquee]] with the logos of all active accredited [[DT-016-training-provider|training providers]]; suspended or departed providers and trainers do not appear.
- **Given** a provider with several companies or locations **then** it appears exactly once, with one logo. The provider chooses that logo and maintains it with its profile; a [[DT-006-reviewer|reviewer]] checks it like any other profile data.
- **Given** I open or reload the start page **then** the order is drawn at random anew; there is no sorting, not even alphabetical.
- **Given** JavaScript is not available **then** an order applies that is drawn at random anew on every deploy ([[QR-002-every-javascript-feature-has-a-fallback|QR-002]]).
- **Given** any logo **then** it links to the provider's [[DT-030-provider-page|provider page]], and its link or alternative text names the provider.
- **Given** the mouse pointer is on the marquee or a logo has the keyboard focus **then** the marquee stops.
- **Given** the marquee **then** it has a visible control to stop it (WCAG 2.2.2).
- **Given** the visitor has set reduced motion **then** the marquee does not move and shows the logos static, in the random order.
- **Given** any two logos **then** they get the same area and the same time in the visible area.
- **Given** many visits **then** each provider is about equally often among the first visible logos, measured as in [[GOAL-009-fairness-towards-providers-and-trainers|GOAL-009]] (share of top-k positions within ±10 % of k/n).
- **Given** the marquee **then** the start page still reaches Lighthouse performance ≥ 95 ([[GOAL-006-technical-excellence-of-the-running-site|GOAL-006]]); logos outside the visible area load only when needed.
- **Given** the marquee **then** it sets no cookies, tracks nothing and stores no order shown.

Out of scope: paid placements, featured partners, personalisation. Where the random order is drawn, browser or server, is an architecture decision.

## Hierarchy

- **Parent:** none.
- **Children:** none.

> [!note] Open points
> - Provider profiles may move to [[DT-026-diwan|DIWAN]] ([[ISS-004-provider-profiles-in-atrium-or-diwan|ISS-004]]); the logo still links to the provider page in atrium.

## History

> Partly reverse-engineered from the current isaqb.org start page and overhauled by the atrium team, 2026-10-26. One logo per provider and the fairness metric counting providers, decided by the human, 2026-11-26. Priority Should confirmed by the human: a start page without the marquee is acceptable at launch. The provider chooses its one logo, decided by the human.
