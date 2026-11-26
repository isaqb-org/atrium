---
id: DR-001
type: decision-record
title: "Publish the whole wiki as a public static site"
status: accepted
created: 2026-11-26
updated: 2026-11-26
sources: ["[[SRC-020-public-static-site-for-the-atrium-dashboard]]"]
related: ["[[GOAL-007-openness-of-code-and-architecture]]", "[[STK-012-product-owner]]", "[[STK-013-technical-owner]]", "[[STK-011-executive-board]]", "[[STK-003-member]]", "[[ISS-012-does-the-showcase-need-pages-of-its-own]]"]
tags: [decision-record, wiki-site]
aliases: []
kind: business
decided: 2026-11-25
decision-makers: ["product owner", "technical owner"]
consulted: ["maintainer of the Systems42 dashboard"]
informed: ["executive board"]
drivers: ["[[GOAL-007-openness-of-code-and-architecture]]"]
amends: []
superseded-by: []
---

# Publish the whole wiki as a public static site

> follows [[MADR]]

## Context and Problem Statement

This requirements wiki can be published as a public, read-only static website, built from its own repository. Its readers are [[STK-003-member|iSAQB members]] and others interested in how iSAQB approaches (AI-supported) engineering. The site is a showcase, not a review channel for stakeholders. What should it show?

## Decision Drivers

- Openness of how atrium is specified and built ([[GOAL-007-openness-of-code-and-architecture|GOAL-007]]).
- The repository is public already: nothing on the site is new to the public.
- The dashboard shows each page's status, so readers can tell drafts from agreed content.

## Considered Options

1. The whole wiki as it stands, drafts and open issues included.
2. Only agreed pages, filtered by `status`.
3. No site: readers use the GitHub repository.

## Decision Outcome

Chosen option: **1, the whole wiki**, because it shows the way of working, drafts and open questions included, which is the point of the showcase, and costs nothing in confidentiality.

### Consequences

- Good: the site always matches `main`; no second, filtered view to maintain.
- Good: readers see open issues and drafts, so the site shows the method, not only results.
- Bad: needs an exception to the AGENTS.md rule that exports filter on `status`.
- Bad: atrium depends on the dashboard release that ships the static export, and must update `dashboard_version:` to it.
- Rule: atrium customizes the public site only through configuration, brand and about page, never through templates or pages of its own. The about page tells the showcase story. This keeps dashboard updates painless.
- Neutral: how the export is built is the dashboard's decision, recorded there, not here.

### Confirmation

The published site lists the same pages as `_system/index.md`, each with its status visible.

## More Information

- Whether tagline, about page and brand are enough for the showcase: yes, settled in [[ISS-012-does-the-showcase-need-pages-of-its-own|ISS-012]].
- Follow-up PR, once the dashboard release with the export exists: a `site:` block in `_system/wiki.yaml` (base path, optional domain, imprint link), the AGENTS.md exception, and the dashboard update.
