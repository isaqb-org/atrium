---
id: FR-004
type: functional-requirement
title: "Rank and group results"
status: draft
created: 2026-11-25
updated: 2026-11-25
sources: ["[[SRC-014-categorised-results]]"]
related: ["[[DT-034-content-tag]]", "[[DT-020-training-date]]", "[[DT-028-training-finder]]", "[[FR-005-tolerate-typos-and-spellings]]"]
tags: [functional-requirement, site-search]
notation: agile
level: story
parent: ["[[FR-001-site-search]]"]
building-blocks: []
priority: Must
release: unscheduled
lane: backbone
order: 4
goal: ["[[GOAL-002-excellent-usability]]"]
delivery:
delivery-checked:
---

# Rank and group results

## Story

As a **visitor** I want **the best results on top and grouped by kind**, so that **I see at a glance whether I found a module, a curriculum, a training date, an article or something else**.

**Acceptance criteria.** > follows [[acceptance-criteria]]

- **Given** results of several [[DT-034-content-tag|content tags]] **when** the popup or the results page shows them **then** each page appears once, grouped by its main tag, and each group shows its tag name and hit count.
- **Given** a query hits titles and text **then** title hits come before text hits, and exact hits before fuzzy ones, within each group.
- **Given** the fixed query list of the site search **then** the expected result is in first place in at least 80 % of the cases.
- **Given** a tag has no results **then** its group is not shown.
- **Given** a query matches [[DT-020-training-date|training dates]] **then** the group "Training date" shows only the next 3 matching dates and the link "Show all in the training finder". The link opens the [[DT-028-training-finder|training finder]] with filters preset where the query names a module, city or language ("Foundation Berlin").
- **Given** the results page **then** the group "Training date" shows the same 3 dates and link, not the complete list: the training finder stays the one place for all dates, their filters and their order.

## Hierarchy

- **Parent:** see `parent:`.
- **Children:** none.

> [!note] Open points
> The tags are defined in [[DT-034-content-tag|content tag]].
