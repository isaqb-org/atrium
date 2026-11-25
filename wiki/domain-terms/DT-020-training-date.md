---
id: DT-020
type: domain-term
title: "training date"
status: draft
created: 2026-11-25
updated: 2026-11-25
sources: ["[[SRC-001-domain-terms]]"]
related: ["[[DT-019-training]]", "[[DT-021-training-format]]", "[[DT-026-diwan]]", "[[DT-028-training-finder]]", "[[DT-017-trainer]]", "[[DT-030-provider-page]]", "[[ISS-002-training-format-and-diwan]]"]
tags: ["domain-term", "training-market"]
aliases: ["date", "session", "course date"]
german: "Termin"
bounded-context: iSAQB
agreed: false
stereotype:
parent: []
source-of-truth:
attributes: []
relationships: []
---

# training date

**Definition.** One scheduled run of a [[DT-019-training|training]], with date, [[DT-021-training-format|training format]], language, [[DT-017-trainer|trainers]] and booking link.

**In context.** [[DT-016-training-provider|Training providers]] maintain training dates in [[DT-026-diwan|DIWAN]]. atrium shows the released ones in the [[DT-028-training-finder|training finder]]. After its end date, a training date no longer appears there.

**Distinguish from.** [[DT-019-training|Training]]: the accredited course, which can have many training dates. The training is accredited, the training date is scheduled and booked.
