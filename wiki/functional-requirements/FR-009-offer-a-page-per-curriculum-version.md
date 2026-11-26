---
id: FR-009
type: functional-requirement
title: "Offer a page per curriculum version"
status: draft
created: 2026-11-25
updated: 2026-11-26
sources: ["[[SRC-019-curriculum-pages]]"]
related: ["[[DT-035-curriculum-page]]", "[[DT-032-module-page]]", "[[DT-012-curriculum]]", "[[DT-034-content-tag]]"]
tags: [functional-requirement, site-search]
notation: agile
level: story
parent: []
building-blocks: []
priority: Must
release: unscheduled
lane: backbone
order: 9
goal: ["[[GOAL-004-clear-path-to-certification]]"]
delivery:
delivery-checked:
---

# Offer a page per curriculum version

## Story

As a **certification prospect** I want **a page for each curriculum version**, so that **I know which version is current, what changed, and where to download it**.

**Acceptance criteria.** > follows [[acceptance-criteria]]

- **Given** a [[DT-032-module-page|module page]] **then** it links to the [[DT-035-curriculum-page|curriculum page]] of the latest curriculum and, if one is announced, of the upcoming one.
- **Given** a curriculum page **then** it states its version and release date and offers the [[DT-012-curriculum|curriculum]] as a download in each published language.
- **Given** a new curriculum version is released **then** three versions at most have a page: the upcoming (if announced), the current and the previous one.
- **Given** the page of the previous version **then** it says that it is superseded and links to the current version, so trainers can update their material from old to new.
- **Given** a version older than the previous one **then** it has no page of its own; its download stays in the version history on the current version's page.
- **Given** the site search **then** curriculum pages carry the main tag "Curriculum" and module pages the main tag "Module" ([[DT-034-content-tag|content tag]]).

## Hierarchy

- **Parent:** none yet.
- **Children:** none.

## History

> Added by the human during the site search capture, 2026-11-25. Pages limited to upcoming, current and previous version by the human, 2026-11-26: exams are taken against the current version, apart from a grace period of a few weeks after a new Foundation Level curriculum. Priority set to Must by the human, 2026-11-26.
