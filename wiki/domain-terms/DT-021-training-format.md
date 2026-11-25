---
id: DT-021
type: domain-term
title: "training format"
status: draft
created: 2026-11-25
updated: 2026-11-25
sources: ["[[SRC-001-domain-terms]]"]
related: ["[[DT-020-training-date]]", "[[DT-022-classroom-training]]", "[[DT-023-online-training]]", "[[DT-024-elearning]]", "[[DT-025-hybrid-training]]", "[[DT-026-diwan]]", "[[ISS-002-training-format-and-diwan]]", "[[GOAL-003-fast-training-date-search]]"]
tags: ["domain-term", "training-market"]
aliases: ["delivery format", "delivery mode"]
german: "Durchführungsart"
bounded-context: atrium
agreed: false
stereotype:
parent: []
source-of-truth:
attributes: []
relationships: []
---

# training format

**Definition.** How a [[DT-020-training-date|training date]] is delivered: one of [[DT-022-classroom-training|classroom training]], [[DT-023-online-training|online training]], [[DT-024-elearning|eLearning]] or [[DT-025-hybrid-training|hybrid training]].

**In context.** iSAQB calls its three formats "training formats". atrium adds hybrid training. Each value carries its own extra data: a location, a time zone, an availability period, or location and time zone. Whether [[DT-026-diwan|DIWAN]] uses the same concept and name is open.

**Distinguish from.** Data format (JSON, ICS) of the feeds: unrelated. Never say bare "format". Module and level: the topic of a training date, not its format.
