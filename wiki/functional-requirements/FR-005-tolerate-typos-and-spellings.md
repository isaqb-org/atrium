---
id: FR-005
type: functional-requirement
title: "Tolerate typos and spellings"
status: draft
created: 2026-11-25
updated: 2026-11-25
sources: ["[[SRC-015-tolerate-typos]]"]
related: ["[[FR-004-rank-and-group-results]]"]
tags: [functional-requirement, site-search]
notation: agile
level: story
parent: ["[[FR-001-site-search]]"]
building-blocks: []
priority: Must
release: unscheduled
lane: backbone
order: 5
goal: ["[[GOAL-002-excellent-usability]]"]
delivery:
delivery-checked:
---

# Tolerate typos and spellings

## Story

As a **visitor** I want **to find what I look for even with a typo or a different spelling**, so that **I do not fail at the spelling of a technical term**.

**Acceptance criteria.** > follows [[acceptance-criteria]]

- The search is fuzzy, and the typos it allows grow with the word length:

  | Word length | Typos allowed |
  |---|---|
  | up to 3 characters | none |
  | 4 to 7 characters | one |
  | 8 or more characters | two |

- **Given** a query word with no more typos than allowed for its length ("Foundaton", "Fundaton", "Architekture") **when** I search **then** the intended content is among the first 5 results.
- **Given** a word of up to 3 characters such as "SPA" or "API" **when** I search **then** only exact hits for it appear.
- **Given** a different spelling (umlaut written as "ae", upper or lower case, "E-Learning" or "eLearning") **when** I search **then** the results are the same as for the original spelling.

## Hierarchy

- **Parent:** see `parent:`.
- **Children:** none.

## History

> Typo allowance scaled by word length by the human, 2026-11-25.
