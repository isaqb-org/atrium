---
id: FR-001
type: functional-requirement
title: "Site search"
status: draft
created: 2026-11-25
updated: 2026-11-26
sources: ["[[SRC-011-site-search]]"]
related: ["[[DT-036-site-search]]", "[[DT-034-content-tag]]", "[[DT-031-public-glossary]]", "[[DT-032-module-page]]", "[[DT-035-curriculum-page]]", "[[DT-028-training-finder]]", "[[GOAL-005-multilingual-platform]]", "[[STK-007-editorial-team]]", "[[STK-012-product-owner]]", "[[QR-002-every-javascript-feature-has-a-fallback]]"]
tags: [functional-requirement, site-search]
notation: agile
level: epic
parent: []
building-blocks: []
priority: Must
release: unscheduled
lane: backbone
order: 1
goal: ["[[GOAL-002-excellent-usability]]"]
delivery:
delivery-checked:
---

# Site search

## Story

As a **visitor** I want **one search over all public content that answers while I type**, so that **I get to a training date, a module, a term or a news item without knowing where it is**.

**PROBLEM / GOAL**

Visitors look for something concrete and often misspell it. The [[DT-036-site-search|site search]] has two views: a **popup** below the search field that shows results while typing, and a **results page** with the complete result list and its own address. Both show each page once, grouped by its main [[DT-034-content-tag|content tag]].

**Language.** The search looks only through the content in the visitor's current site language, including fields that fall back to English ([[GOAL-005-multilingual-platform|GOAL-005]]). Every result opens in that language. Synonyms in the [[DT-031-public-glossary|public glossary]] bridge words from other languages.

**Success metric(s).** Share of a fixed list of typical queries, misspelt ones included, whose wanted page is among the first 5 results. The [[STK-007-editorial-team|editorial team]] and the [[STK-012-product-owner|product owner]] keep the query list. It runs as an automated test, so every change is checked against it. The usability test of [[GOAL-002-excellent-usability|GOAL-002]] has a core task for the search.

**Scope.** in: every public atrium page, each with its [[DT-034-content-tag|content tags]] · out: the full text of curriculum PDFs. [[DT-032-module-page|Module pages]] and [[DT-035-curriculum-page|curriculum pages]] are found by their title, short description and keywords; the PDF is only a download.

## Hierarchy

- **Parent:** none (epic).
- **Children:** projected from the `parent:` backlinks.

## History

> Captured from SRC-011. Popup, results page and grouping added by the human, 2026-11-25. Categories relaxed to content tags with one main tag per page, by the human.
