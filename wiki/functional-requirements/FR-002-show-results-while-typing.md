---
id: FR-002
type: functional-requirement
title: "Show results while typing"
status: draft
created: 2026-11-25
updated: 2026-11-25
sources: ["[[SRC-012-results-while-typing]]"]
related: ["[[QR-001-search-popup-keeps-up-with-typing]]", "[[DT-034-content-tag]]", "[[FR-003-show-all-results-on-a-results-page]]"]
tags: [functional-requirement, site-search]
notation: agile
level: story
parent: ["[[FR-001-site-search]]"]
building-blocks: []
priority: Must
release: unscheduled
lane: backbone
order: 2
goal: ["[[GOAL-002-excellent-usability]]"]
delivery:
delivery-checked:
---

# Show results while typing

## Story

As a **visitor** I want **to see results while I type**, so that **I know whether it fits without sending a search first**.

**Acceptance criteria.** > follows [[acceptance-criteria]]

- **Given** I type into the search field **when** I enter the second character **then** a popup with results opens below the field, without a page change.
- **Given** the popup is open **when** I keep typing **then** it keeps up ([[QR-001-search-popup-keeps-up-with-typing|QR-001]]).
- **Given** the popup is open **then** it shows the best few results per main [[DT-034-content-tag|content tag]] and a link "Show all results", which opens the results page ([[FR-003-show-all-results-on-a-results-page|FR-003]]).
- **Given** the popup is open **when** I press Esc or click outside it **then** it closes and my input stays in the field.

## Hierarchy

- **Parent:** see `parent:`.
- **Children:** none.
