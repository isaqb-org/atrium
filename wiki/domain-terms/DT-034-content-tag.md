---
id: DT-034
type: domain-term
title: "content tag"
status: draft
created: 2026-11-25
updated: 2026-11-26
sources: ["[[SRC-014-categorised-results]]"]
related: ["[[DT-036-site-search]]", "[[DT-032-module-page]]", "[[DT-035-curriculum-page]]", "[[DT-020-training-date]]", "[[DT-028-training-finder]]", "[[DT-030-provider-page]]", "[[STK-014-academic-partner]]", "[[DT-031-public-glossary]]", "[[DT-002-isaqb-association]]", "[[DT-004-member]]", "[[FR-001-site-search]]", "[[FR-002-show-results-while-typing]]", "[[FR-003-show-all-results-on-a-results-page]]", "[[FR-004-rank-and-group-results]]", "[[FR-007-search-all-public-content]]", "[[FR-009-offer-a-page-per-curriculum-version]]", "[[DT-010-expert-level]]"]
tags: ["domain-term", "atrium"]
aliases: []
german: "Inhalts-Tag"
bounded-context: atrium
agreed: false
stereotype:
parent: []
source-of-truth:
attributes: []
relationships: []
---

# content tag

**Definition.** A kind of public [[DT-027-atrium|atrium]] page. Every public page carries one or more content tags; exactly one of them is its **main tag**.

**In context.** The [[DT-036-site-search|site search]] shows each page once, grouped by its main tag; narrowing to a tag on the results page also includes pages that carry it as a further tag. Navigation, feeds or filters may use the tags later. The tags:

| Content tag | Holds |
|---|---|
| Module | [[DT-032-module-page|Module pages]] of the Foundation Level and the Advanced Level modules, and the [[DT-010-expert-level|Expert Level]] page |
| Curriculum | [[DT-035-curriculum-page|Curriculum pages]]: one curriculum version each |
| Training date | Upcoming [[DT-020-training-date|training dates]]. In the search: the next 3 matching dates and a link into the [[DT-028-training-finder|training finder]] |
| Training provider | [[DT-030-provider-page|Provider pages]] |
| Academic partner | Pages of [[STK-014-academic-partner|academic partners]] |
| Glossary | Terms of the [[DT-031-public-glossary|public glossary]] |
| News and articles | News items and blog articles |
| Conference | Conferences and events |
| Organisation | The [[DT-002-isaqb-association|association]]: board, working groups, statutes. No list of [[DT-004-member|members]] |

Pages that fit no other tag get one of these as their main tag: the start page and the legal pages (legal notice, privacy policy, contact) get Organisation, and the [[DT-028-training-finder|training finder]] page itself gets Training date.

**Distinguish from.** Topic tags of blog articles: finer topics within "News and articles". Member types: kinds of membership, not kinds of page. Never say bare "tag" or "category".
