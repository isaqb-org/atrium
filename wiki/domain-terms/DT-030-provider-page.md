---
id: DT-030
type: domain-term
title: "provider page"
status: draft
created: 2026-11-25
updated: 2026-11-26
sources: ["[[SRC-001-domain-terms]]", "[[SRC-022-provider-profile]]"]
related: ["[[DT-027-atrium]]", "[[DT-016-training-provider]]", "[[DT-020-training-date]]", "[[DT-029-admin-app]]", "[[DT-006-reviewer]]", "[[DT-028-training-finder]]", "[[ISS-004-provider-profiles-in-atrium-or-diwan]]", "[[STK-001-training-provider]]", "[[DT-034-content-tag]]", "[[FR-010-show-the-partner-logo-marquee]]", "[[DT-037-partner-logo-marquee]]", "[[FR-011-provider-profile-maintenance]]", "[[FR-012-edit-the-own-provider-profile]]", "[[FR-013-review-a-profile-change-before-publication]]", "[[FR-014-manage-provider-accounts]]"]
tags: ["domain-term", "atrium"]
aliases: ["provider profile"]
german: "Anbieterseite"
bounded-context: atrium
agreed: false
stereotype:
parent: []
source-of-truth:
attributes: []
relationships: []
---

# provider page

**Definition.** The public [[DT-027-atrium|atrium]] page of an accredited [[DT-016-training-provider|training provider]]: its profile (name, website, contact email, address, description, logo) plus its upcoming [[DT-020-training-date|training dates]].

**In context.** Every provider page states visibly that it is not the provider's official website, and links to it. All provider pages have the same structure. Profile data appears only after review by a [[DT-006-reviewer|reviewer]] ([[FR-011-provider-profile-maintenance|FR-011]]). A hidden profile has no provider page.

**Distinguish from.** [[DT-029-admin-app|Admin app]]: not public, where the provider maintains its profile. The provider's own website: outside atrium, with its booking pages.
