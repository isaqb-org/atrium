---
id: QR-002
type: quality-requirement
title: "Every JavaScript feature has a fallback"
status: draft
created: 2026-11-26
updated: 2026-11-26
sources: ["[[SRC-021-partner-logo-marquee]]"]
related: ["[[FR-010-show-the-partner-logo-marquee]]", "[[FR-001-site-search]]", "[[FR-002-show-results-while-typing]]", "[[DT-028-training-finder]]", "[[GOAL-002-excellent-usability]]"]
tags: [quality-requirement]
attribute: usability
priority: must
testable: true
---

# Every JavaScript feature has a fallback

**Quality attribute.** Usability (accessibility, robustness of use)

**Scenario (ATAM style).**
- **Source.** A visitor.
- **Stimulus.** Opens any atrium page with JavaScript switched off or failing to load.
- **Environment.** Normal operation.
- **Response.** atrium shows the page's content. Features that need JavaScript fall back to a simpler form, for example a static logo order, a search form that opens the results page, or finder filters sent as a form.
- **Measure.** Every core task of [[GOAL-002-excellent-usability|GOAL-002]] can be completed with JavaScript off.

**Applies to.** [[FR-010-show-the-partner-logo-marquee|FR-010]], [[FR-001-site-search|FR-001]], [[FR-002-show-results-while-typing|FR-002]], [[DT-028-training-finder|training finder]]
**Tensions.** —

> [!note] Notes
> Some atrium features may need JavaScript; this requirement asks for a fallback, not for working without it. Set by the human, 2026-11-26.
