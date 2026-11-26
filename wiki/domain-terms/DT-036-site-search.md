---
id: DT-036
type: domain-term
title: "site search"
status: draft
created: 2026-11-25
updated: 2026-11-25
sources: ["[[SRC-011-site-search]]"]
related: ["[[FR-001-site-search]]", "[[DT-034-content-tag]]", "[[DT-028-training-finder]]", "[[DT-031-public-glossary]]"]
tags: ["domain-term", "atrium"]
aliases: ["search"]
german: "Seitensuche"
bounded-context: atrium
agreed: false
stereotype:
parent: []
source-of-truth:
attributes: []
relationships: []
---

# site search

**Definition.** The one search over all public [[DT-027-atrium|atrium]] content. It shows results while typing in a **popup** below the search field, and the complete result list on a **results page** with its own address.

**In context.** Fuzzy, in the visitor's current site language, each page once, grouped by its main [[DT-034-content-tag|content tag]]. Synonyms come from the [[DT-031-public-glossary|public glossary]]. For training dates it shows only the next 3 matches and hands over to the [[DT-028-training-finder|training finder]]. Requirements: [[FR-001-site-search|FR-001]].

**Distinguish from.** [[DT-028-training-finder|Training finder]]: the filtered search over training dates only, with its own order rules.
