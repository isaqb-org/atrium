---
id: FR-011
type: functional-requirement
title: "Provider profile maintenance"
status: draft
created: 2026-11-26
updated: 2026-11-26
sources: ["[[SRC-022-provider-profile]]"]
related: ["[[DT-030-provider-page]]", "[[DT-029-admin-app]]", "[[STK-001-training-provider]]", "[[ISS-004-provider-profiles-in-atrium-or-diwan]]", "[[FR-012-edit-the-own-provider-profile]]", "[[FR-013-review-a-profile-change-before-publication]]", "[[FR-014-manage-provider-accounts]]", "[[STK-007-editorial-team]]", "[[STK-008-operator]]"]
tags: [functional-requirement, provider-profile]
notation: agile
level: feature
parent: []
building-blocks: []
priority: Should
release: unscheduled
lane: platform
order: 1
goal: ["[[GOAL-002-excellent-usability]]"]
delivery:
delivery-checked:
---

# Provider profile maintenance

## Story

As a [[STK-001-training-provider|training provider]] I want **to keep my own profile on atrium up to date**, so that **prospects see correct and current information about me**.

**PROBLEM / GOAL**

Every accredited provider has a [[DT-030-provider-page|provider page]] and a logo in the [[DT-037-partner-logo-marquee|partner logo marquee]]. Providers maintain the content themselves; iSAQB checks every change before it goes public.

**Success metric(s).**
- At launch, 100 % of active providers have a complete profile in German and English, whoever entered it.
- Once self-service runs, 90 % of profile changes are approved or rejected within 5 working days.

**Scope.** in: login, editing the own profile, review before publication, hiding and deleting · out: [[DT-020-training-date|training dates]], maintained in [[DT-026-diwan|DIWAN]].

**Launch.** Self-service may come after launch. Until then, the [[STK-007-editorial-team|editorial team]] or the [[STK-008-operator|operator]] enters the profiles (decided by the human, 2026-11-26).

## Hierarchy

- **Parent:** none.
- **Children:** projected from the `parent:` backlinks.

> [!note] Open points
> - Whether profiles stay in atrium or move to [[DT-026-diwan|DIWAN]]: [[ISS-004-provider-profiles-in-atrium-or-diwan|ISS-004]]. If they move, these requirements apply to DIWAN, and atrium only shows the profile.
