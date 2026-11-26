---
id: DT-035
type: domain-term
title: "curriculum page"
status: draft
created: 2026-11-25
updated: 2026-11-26
sources: ["[[SRC-019-curriculum-pages]]"]
related: ["[[DT-012-curriculum]]", "[[DT-032-module-page]]", "[[DT-034-content-tag]]", "[[FR-009-offer-a-page-per-curriculum-version]]", "[[FR-001-site-search]]"]
tags: ["domain-term", "atrium"]
aliases: []
german: "Lehrplanseite"
bounded-context: atrium
agreed: false
stereotype:
parent: []
source-of-truth:
attributes: []
relationships: []
---

# curriculum page

**Definition.** The public [[DT-027-atrium|atrium]] page for exactly one version of a [[DT-012-curriculum|curriculum]]: title, version, release date, languages, download, and what changed since the previous version.

**In context.** Only the upcoming (if announced), the current and the previous version have a page. The previous version's page says it is superseded and links to the current one; trainers use both to update their material. Older versions are downloads in the version history on the current page. Links to its [[DT-032-module-page|module page]]. Main [[DT-034-content-tag|content tag]]: "Curriculum".

**Distinguish from.** [[DT-032-module-page|Module page]]: independent of a curriculum version, links to the latest and upcoming curriculum page. [[DT-012-curriculum|Curriculum]]: the document itself, offered on this page as a download.
