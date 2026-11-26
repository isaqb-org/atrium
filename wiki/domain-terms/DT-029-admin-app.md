---
id: DT-029
type: domain-term
title: "admin app"
status: draft
created: 2026-11-25
updated: 2026-11-26
sources: ["[[SRC-001-domain-terms]]", "[[SRC-022-provider-profile]]"]
related: ["[[DT-027-atrium]]", "[[DT-016-training-provider]]", "[[DT-006-reviewer]]", "[[DT-030-provider-page]]", "[[DT-026-diwan]]", "[[ISS-004-provider-profiles-in-atrium-or-diwan]]", "[[FR-011-provider-profile-maintenance]]", "[[FR-012-edit-the-own-provider-profile]]"]
tags: ["domain-term", "atrium"]
aliases: ["provider app", "maintenance app"]
german: 
bounded-context: atrium
agreed: false
stereotype:
parent: []
source-of-truth:
attributes: []
relationships: []
---

# admin app

**Definition.** The non-public part of [[DT-027-atrium|atrium]], behind a login, where [[DT-016-training-provider|training providers]] maintain their profiles before a [[DT-006-reviewer|reviewer]] checks them for publication.

**In context.** Where reviewers check changes (in the admin app or, for example, as pull requests) is an architecture decision. [[DT-020-training-date|Training dates]] are maintained in [[DT-026-diwan|DIWAN]], not here. Whether provider profiles stay in atrium is open. If they move to DIWAN, the admin app goes away.

**Distinguish from.** [[DT-028-training-finder|Training finder]] and the public website: no login, published content only. [[DT-026-diwan|DIWAN]]: iSAQB's app where providers maintain their training dates.
