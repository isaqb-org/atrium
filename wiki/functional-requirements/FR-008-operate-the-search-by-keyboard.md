---
id: FR-008
type: functional-requirement
title: "Operate the search by keyboard"
status: draft
created: 2026-11-25
updated: 2026-11-26
sources: ["[[SRC-018-search-by-keyboard]]"]
related: []
tags: [functional-requirement, site-search]
notation: agile
level: story
parent: ["[[FR-001-site-search]]"]
building-blocks: []
priority: Must
release: unscheduled
lane: backbone
order: 8
goal: ["[[GOAL-002-excellent-usability]]"]
delivery:
delivery-checked:
---

# Operate the search by keyboard

## Story

As a **visitor** I want **to open and use the search without a mouse**, so that **I am fast and can search without a pointing device**.

**Acceptance criteria.** > follows [[acceptance-criteria]]

- **Given** any page **when** I press `/` or `Ctrl+K` (`Cmd+K` on a Mac) **then** the focus is in the search field.
- **Given** the focus is in a text field **when** I type `/` **then** the character is typed, and the search does not open.
- **Given** the popup is open **when** I press ↑/↓, Enter or Esc **then** I select a result, open it, or close the popup.
- **Given** the results page **when** I use only the keyboard **then** I can reach every result and every tag choice.

## Hierarchy

- **Parent:** see `parent:`.
- **Children:** none.

## History

> Shortcuts `/` and `Ctrl+K`/`Cmd+K` set by the human, 2026-11-26.
