---
id: FR-003
type: functional-requirement
title: "Show all results on a results page"
status: draft
created: 2026-11-25
updated: 2026-11-25
sources: ["[[SRC-013-complete-results-page]]"]
related: ["[[DT-034-content-tag]]", "[[FR-002-show-results-while-typing]]"]
tags: [functional-requirement, site-search]
notation: agile
level: story
parent: ["[[FR-001-site-search]]"]
building-blocks: []
priority: Must
release: unscheduled
lane: backbone
order: 3
goal: ["[[GOAL-002-excellent-usability]]"]
delivery:
delivery-checked:
---

# Show all results on a results page

## Story

As a **visitor** I want **to see all results on a page of their own and pass on its address**, so that **I can browse them, open the search again later or share it**.

**Acceptance criteria.** > follows [[acceptance-criteria]]

- **Given** the popup is open and no result is selected **when** I press Enter or choose "Show all results" **then** the results page opens with all results.
- **Given** the results page **then** it groups the results by main [[DT-034-content-tag|content tag]] and lets me narrow them to one or more tags.
- **Given** I narrow to a tag **then** the list also holds pages that carry it as a further tag, not only as their main tag.
- **Given** the address of the results page **when** someone opens it **then** they see the same query and tag choice, with the results as of now.
- **Given** no result matches **then** the page says so, repeats the query, and offers the closest terms and the main entry points.

## Hierarchy

- **Parent:** see `parent:`.
- **Children:** none.

## History

> Priority raised from Should to Must and tag narrowing added by the human, 2026-11-25.
