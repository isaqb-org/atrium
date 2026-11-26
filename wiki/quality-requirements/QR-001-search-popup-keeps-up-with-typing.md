---
id: QR-001
type: quality-requirement
title: "Search popup keeps up with typing"
status: draft
created: 2026-11-25
updated: 2026-11-25
sources: ["[[SRC-012-results-while-typing]]"]
related: ["[[FR-002-show-results-while-typing]]"]
tags: [quality-requirement, site-search]
attribute: performance
priority: must
testable: true
---

# Search popup keeps up with typing

**Quality attribute.** Performance efficiency (time behaviour)

**Scenario (ATAM style).**
- **Source.** A visitor.
- **Stimulus.** Types a character into the search field while the popup is open.
- **Environment.** Normal operation, the full public content searchable.
- **Response.** atrium updates the results in the popup.
- **Measure.** At most 300 ms from the keystroke to the updated popup.

**Applies to.** [[FR-002-show-results-while-typing|FR-002]]
**Tensions.** —

> [!note] Notes
> On which device and network this is measured is not set.
