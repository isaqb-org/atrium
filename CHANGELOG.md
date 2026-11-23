# Changelog

What changed in the Systems42 **product** — the method files a project ships
with: `AGENTS.md`, templates, anchors, workflows, skills, dashboard, docs. One
entry per user-visible change, newest first. Decisions behind the changes are
decision records in the Systems42 meta repository's `wiki/decisions/` (cited
here as DR-NNN; they do not ship); day-to-day operations on *this* wiki's content are in
`_system/log.md`, not here.

Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
Unreleased changes sit at the top until the next Starter Kit release.

## [Unreleased]

### Added
- **Recover**, the fifth loop (alias archeology): `_system/workflows/recover.md`
  and the `recover` skill. It reads existing code at a fixed revision, top-down
  to level 1 (one level deeper only for a named feature or building block),
  and writes a report of abstractions, evidence labels, checks, resolved
  requirement IDs and gaps to the `raw/` inbox. The run ends with a closing
  round that asks one gap at a time (open questions for intent, options only
  for choices), and the answers go into the report; Capture then asks the open gaps.
  Recover writes no wiki pages. `capture.md` step 6 says how a recovery
  report's open gaps are handled.
- README and Getting Started name Obsidian's role with Karpathy's words from
  the [LLM Wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) gist: "Obsidian is the IDE; the LLM is the programmer;
  the wiki is the codebase". Obsidian stays recommended, not required.
- Four arc42 content types complete the architecture cabinet (meta issue #57,
  DR-040): `solution-strategy` (SOL, section 4), `runtime-scenario` (RS,
  section 6), `deployment-node` (DN, section 7) and `crosscutting-concept`
  (CC, section 8), with templates and wiki folders, following the field
  structure of isaqb-atrium's DR-010 that systems42-dashboard already renders.
  Every architecture page, building blocks included, gains optional
  `state: outdated | current | planned | target` and `superseded-by:`. New
  relations `steps`, `realizes`, `hosts`, `connects`, `applies-to`; new
  projections deployment diagram, sequence diagram and governed-by; new rule
  runtime-matches-uses; "addressed by" also lists solution strategies,
  deployment nodes and crosscutting concepts.
- `new-project.sh sync` creates the wiki folder of every content type that is
  missing in the project, so a sync that brings new types keeps lint passing.
- `AGENTS.md` convention: agents link every reference in what they write to
  the human (chat, reports, GitHub issues, PRs and comments). Wiki pages and
  repo files link to the file (a full GitHub URL in GitHub-rendered text);
  GitHub issues and PRs link to their URL, never a bare `#55` or `meta#55`.
  Wikilinks inside wiki pages are unchanged.
- Issues carry two optional fields (meta issue #53): `category:` (the part of
  the work an issue touches: `requirements`, `architecture`, `commons`,
  `content`, `orga` or `method`) and `owner:` (the stakeholder the question is
  addressed to, a `[[STK-...]]` link only; a new relation `rel-owner`). Both
  are optional, so existing issues stay valid. No due dates: the wiki is not a
  project management tool. Projects that already used `category: systems42`
  rename it to `method`.
- `docs/patterns/`: working patterns that describe how a source comes about
  before it is captured — issue discussion, workshop, interview or transcript,
  dictation, code archaeology, conversation. They describe, they do not
  prescribe; `GETTING-STARTED.md` links them.
- Implement loop v1: the harness-neutral `implement` skill and
  `_system/workflows/implement.md`, Git-based delivery drift checker, delivery
  fields, and warnings in Capture/Clarify (FR-029–FR-033). The delivery status
  badge and filter belong to systems42-dashboard (its FR-048).

### Removed
- The dashboard's requirements left this wiki; they live in
  [systems42-dashboard](https://github.com/systems42-org/systems42-dashboard)
  (meta issue #49). Retired IDs, never reused: FR-011, FR-012, FR-013, FR-034,
  QR-004, DR-022, DR-023, DR-025, DR-032, DR-033. FR-010 stays as the
  product-level statement and the driver of BB-001. DR-024 stays: it is a
  method decision, not a dashboard one.


### Changed
- Dashboard release 0.13.0 (`dashboard_version:` in `_system/wiki.yaml`; was
  0.11.3, skipping 0.11.4 and 0.12.0). The dashboard reads the sections from the
  wiki's own metamodel and checks its version; the vision is on the first page,
  section tiles show counts, `/method` explains the method, every page fits a
  320 px phone screen, and the View dialog lives in the running dashboard. It
  starts with uv, without Docker, too. The views for the arc42 types of DR-040
  come with the next release.
- Dashboard release 0.11.3 (`dashboard_version:` in `_system/wiki.yaml`;
  0.11.2 only changed how the dashboard repository makes releases). The
  systems42 brand has a new intro: the systems42 logo builds itself, then the
  letters of the wordmark "systems42" fly in, spinning, and land; about 2 s.
  The earlier Peaks intro is kept in the dashboard as
  `brands/systems42/intro-peaks.html`.
- Dashboard release 0.11.1 (`dashboard_version:` in `_system/wiki.yaml`). It
  hardens the dashboard (systems42-dashboard issue #34): a brand's
  `intro.html` runs in a sandboxed frame, pages carry a Content Security
  Policy and load nothing from outside, and wiki content keeps an image only
  when its `src` is a path of the dashboard. `dashboard.sh` starts the
  container as the calling user, not as root.
- The dashboard code left this repository. `dashboard.sh` is now the launcher
  of systems42-dashboard: it starts the published image
  `ghcr.io/systems42-org/dashboard:<version>` that `dashboard_version:` in
  `_system/wiki.yaml` names, here `0.11.0`. `./dashboard.sh update` names the
  newest release. `_system/apps/` is deleted and no longer ships to projects;
  `new-project.sh new` writes this repository's `dashboard_version:` into the
  new project. The method tests that lived beside the dashboard (skill
  contract, metamodel lint, domain-term migration) moved to
  `_system/scripts/tests/`. `metamodel-lint.py` no longer compares the
  framework blocks with the dashboard's catalog (#40).

### Security
- Dashboard dependencies updated past published advisories: Markdown 3.7 →
  3.11.2 (CVE-2025-69534, parser crash on malformed HTML-like input), Flask
  3.0.3 → 3.1.3 (CVE-2026-27205; the dashboard does not use `session`, so not
  exploitable here), vendored mermaid 11.15.0 → 11.17.2 (five advisories fixed
  in 11.16.1: CSS injection, prototype pollution, XY/radar DoS; bundled
  DOMPurify 3.4.0 → 3.4.12). Also PyYAML 6.0.2 → 6.0.3 and gunicorn 23.0.0 →
  26.2.0 (no advisories; the container now passes `--no-control-socket`).
- Dashboard: wiki content can no longer run script in a viewer's browser.
  Rendered markdown and snippets go through an allow-list sanitizer (new
  dependency `nh3`), wikilink labels and plain-text frontmatter values are
  escaped. Tables, footnotes, `<kbd>` and mermaid blocks render as before;
  HTML comments and unknown tags (e.g. a bare `<open>` placeholder, which the
  browser already hid) are dropped. `id` and `class` keep only the values the
  dashboard's own markup emits (footnote anchors, wikilinks, code blocks), so a
  page cannot take over the settings dialog or filter buttons. A new test
  renders every route against a vault whose every text field is hostile.
- Dashboard: `/page/<folder>/<stem>` only serves the wiki's own content
  folders; `..` or `.` as folder used to reach a markdown file beside wiki/.

### Changed
- Domain-term routes now use "/domain-terms", "/graph/domain-terms" and
  "/entity-diagram". The previous URLs redirect with HTTP 301 and preserve
  query parameters. This brings the route rename forward from the later
  dashboard work proposed in meta #36, as requested during implementation.
- Domain terms replace glossary terms and data-model pages (DR-039, #36).
  New terms use `DT-`. C5 shows the terminology graph and R4 shows the entity
  diagram. Use `make migrate-domain-terms TARGET=<dir>` before syncing a
  project that still uses the former types.
- The Makefile that ships to project wikis has four targets: `help`, `dev`,
  `down`, `clean`. `new`, `sync`, `harvest` and the two `migrate-` targets
  moved to `meta.mk`, which only the meta repository has, so a project no
  longer offers commands that only make sense in the meta repository.
  `rebuild`, `logs` and `local` lost their make targets; call
  `./dashboard.sh rebuild|logs|local`.
- `sync` refuses when a file it would overwrite or delete has uncommitted
  changes or is ignored by git (inside a submodule too), or when it would
  change any file in a project that is not a git repository, and stops when
  one of these checks cannot be completed; it names the files and points to `harvest`. Files sync keeps (a
  project's own docs and skills, `docs/superpowers/`) never block it. `--force`
  (`make sync FORCE=1`) overwrites anyway. `harvest` checks the `--out` directory up front, no
  longer mistakes a failed write for "differences found", and removes its
  scratch copy when it stops early.
- An Agile feature or story may name a use case (level `sea` or `fish`) as
  `parent:`. The Functional Requirements page shows such use cases as roots
  beside the epics, a use case's page lists what realizes it, and the children
  are no longer reported as orphans. Epics never name a use case; kite-level
  use cases take no Agile children. (DR-038 amendment, from isaqb-atrium's
  DR-011.)
- `aliases` is an optional universal field: any page may carry it, and the
  stricter FR lint no longer rejects it. Projects that list alternative names on
  every page (e.g. a former English title) stay lint-clean; templates need not
  carry it.
- Functional requirements now use one `notation:` + `level:` model; use cases
  are FRs written in Cockburn notation. The Agile story map remains a projection
  over Agile FRs. Delivery tracking is optional and applies only to levels a
  notation marks as directly implementable (`implementable_levels`), with the
  values it allows (`delivery_states`; `partial` only for use cases).
  A use case refined by Agile features or stories is `implemented` only when
  all refining stories are; an `outdated` refining story flags the use case
  for a recheck.
  (`delivery`, `delivery-checked` with time and timezone; DR-038.)
- Each requirement notation is one file, definition and page template at once:
  `_system/metamodel/notations/` ships Agile, Cockburn use case, EARS and prose;
  a project adds its own in `_system/notations/`, which `make sync` never
  overwrites and `make harvest` never carries back. `default_notation` in
  `wiki.yaml` sets the notation for new requirements (default `agile`).
- New FR field `building-blocks` (the `concerns` relation, FR-005); use cases
  carry `primary-actor` and exactly one `scope-building-block`: either a
  building block or the context for a whole-system use case (DR-038).
- New-project indexes include a **Building blocks** heading.
- `make migrate-requirements TARGET=<dir>` upgrades an older project's FRs and
  use cases to `notation:` + `level:`; `make sync` refuses until it has run.
- req42 block 04 is now named **Functional Requirements** everywhere (the 2026
  edition of req42 renamed it from "Product Backlog"; "backlog" is reserved for
  a ranked projection over the hierarchy, never stored). Touches `CLAUDE.md`,
  the FR template (`release:` default `unscheduled`), anchors, workflows, the
  `requirements-wiki` skill, docs and the dashboard: nav label "Functional
  Reqs", route `/req42/functional-requirements` with a 301 from `/req42/backlog`,
  page and breadcrumb titles, Python and CSS identifiers, tests. Stale type
  lists in `capture.md` and the skill (user story / feature as separate types)
  corrected to the one-type model. (Harvested from isaqb-atrium.)

### Added
- `make clean` (`./dashboard.sh clean`) removes what can be rebuilt: this wiki's
  dashboard container and image, `.venv`, `__pycache__` and `.DS_Store`. It never
  touches `wiki/`, `raw/`, `docs/`, `sandbox/`, settings or harvest patches.
  (Harvested from isaqb-atrium.)
- Dashboard browser test `tests/test_mermaid_browser.py`: checks in headless
  Chromium that the vendored mermaid draws the context diagram and fenced
  blocks, re-renders on a theme switch without JavaScript errors, and matches
  the version in `static/vendor/README.md`. Its Playwright dependency is in the
  new development-only `requirements-dev.txt`; without it the test skips.
- arc42 Building Block View (A2): content type **building block** (`BB`,
  `wiki/building-blocks/`, `_templates/building-block.md`) — one page per block,
  levels via `parent:`, dependencies via `uses:`, `decisions:`, `location`;
  `/arc42/building-blocks` with the level tree and the level-1 white box; block
  pages with their projected white box. New `arc42` anchor. (DR-036; from isaqb-atrium)
- `drivers:` on decision records and building blocks: the goals, use cases, FRs,
  QRs and constraints they rest on; requirement pages show the inverse as
  **Addressed by**. Metamodel relations `drivers`, `uses`, `shaped-by`;
  projections `bb-tree`, `whitebox`, `addressed-by`. Building blocks are a
  layer in the glossary term network.
- `_system/metamodel/`: the wiki's metamodel made explicit (DR-035). A
  framework-agnostic meta-meta language (`meta-metamodel.md`: type, relation,
  framework, projection, anchor, notation, rule) and its instances as one
  markdown page each with machine-readable frontmatter: 14 types, 12 relations,
  3 frameworks (req42 / arc42 / commons, 18 sections), 6 projections, an
  altitude scale that records the open use-case ↔ epic question, 3 rules.
  `_system/scripts/metamodel-lint.py` diffs it against `_templates/`, the wiki
  folders, the anchors and the dashboard catalog; shipped as a product path.
  (Harvested from isaqb-atrium.)
- Dashboard `/metamodel` (menu, footer, `/help`): the metamodel explained — the
  types as a cytoscape network grouped by section with the relations as
  labelled arrows, and tables for types (definition, fields, a live example page
  from the vault), relations, projections, the granularity scale with its open
  use-case ↔ epic question, rules and the meta-meta language. Read live from
  `_system/metamodel/` (`metamodel.py`); mounted into the container. Colour
  tokens for the types the term network has none for. (Harvested from
  isaqb-atrium.)
- `new-project.sh migrate-decisions` / `make migrate-decisions TARGET=<dir>`:
  moves an older project's own ADRs from `_system/adr/` to
  `wiki/decisions/DR-NNN` (same number, `aliases: [ADR-NNNN]`, MADR sections),
  drops the inherited ADR-0001 to 0003, rewrites links and the index, and
  removes `_system/adr/`, uncommitted for review. `sync` refuses a project
  that still has `_system/adr/` and names the command. (DR-034)
- Decision records as a content type: `wiki/decisions/`, IDs `DR-NNN`,
  template `_templates/decision-record.md`, shape per the new `[[MADR]]` anchor
  (`_system/anchors/madr.md`). Fields `kind` (architecture | business |
  undefined), `decided`, optional `decision-makers` / `consulted` / `informed`,
  `amends`, `superseded-by`. (FR-009, DR-034)
- `CLAUDE.md` convention **Decisions**: a record qualifies only if it is
  cross-cutting, expensive to reverse and a real choice among named
  alternatives; standing rules are requirements, field additions and renames
  are changelog entries. Replaces "never invent fields without an ADR". (DR-034)
- Dashboard: section C7 *Decisions* in Commons at `/decisions`, filterable by
  kind and searchable by former ADR number. (FR-009)
- Dashboard: an optional `/about` page. `about:` in `_system/wiki.yaml` names a
  markdown page under `docs/` (e.g. a brand guide); the hero mark and a text
  link under the tagline lead there, and the files it links to under `docs/`
  (`../` included) are served with it. `about_label:` sets the link text.
  `docs/` is mounted read-only; paths leading out of it, by `..` or by symlink,
  are refused. Harvested from isaqb-atrium.
- `new-project.sh harvest` / `make harvest TARGET=<dir>`: the way back from a
  spawned project. Diffs the product paths into a git-applicable patch here,
  lists the project's new `wiki/` folders and its own ADRs with the next free
  number; writes nothing else. Documented in the skill, the guide and the
  READMEs (DR-031 amendment).
- `_system/scripts/new-project.sh` and the `new-project` skill: create a fresh
  wiki from this one (`new`) carrying the method files and none of the content,
  or refresh those method files in a wiki created that way (`sync`). ADRs are
  inherited on creation and never synced. Tested by
  `_system/scripts/test-new-project.sh`. (DR-031, resolves ISS-006)
- `make new TARGET=<dir> NAME="<System>" [TAGLINE="..."]` and
  `make sync TARGET=<dir>`, wrapping the script.
- `CHANGELOG.md` (this file), shipped with every project.
- Dashboard: Configure dialog (facilitator only) writes a hide list to
  `_system/dashboard.yaml`, which is hand-editable; hidden sections keep their
  routes and search hits. `make new` creates the file, `make sync` leaves it
  alone. The dashboard is no longer strictly read-only: this is the one file it
  writes. (DR-033)

### Changed
- Domain terms replace glossary terms and data-model pages (DR-039, #36).
  New terms use `DT-`. C5 shows the terminology graph and R4 shows the entity
  diagram. Use `make migrate-domain-terms TARGET=<dir>` before syncing a
  project that still uses the former types.
- The schema is `AGENTS.md`, read by OpenCode, Codex and GitHub Copilot;
  `CLAUDE.md` is now the one line `@AGENTS.md`, so Claude Code reads the same
  file. References to the schema across workflows, skills, templates and docs
  name `AGENTS.md`. (DR-037)
- Skills live once, in `.agents/skills/<name>/`; `.claude/skills/<name>` is a
  symlink to each, for Claude Code. `new-project.sh` ships both, and `sync`
  turns a project's old real skill folders in `.claude/skills/` into the links.
  `harvest` now diffs staged copies with `git diff --no-index`, so a link stays
  a link in the patch: a skill edit appears once, through `.agents/skills/`, and
  a new skill's `.claude/skills` link comes through as a symlink. Before, the
  patch carried every skill edit twice and `git apply` refused it. (DR-037)
- Skill and workflow wording is harness-neutral: no Claude Code tool names
  ("call the Skill tool"); `$ARGUMENTS` named as Claude Code's form of
  the user's argument; sub-agent lookups fall back to a direct lookup. (DR-037)
- Capture: the closing round that asks the human before any Issue is filed is
  written into `capture.md` step 6 (numbered questions, each with a recommended
  answer; dependent questions wait for the next round), instead of delegating
  to the vendored `grilling` skill. (DR-037)
- The skill contract test checks discoverability, not mere presence: every
  skill in `.agents/skills/` with a resolving `.claude/skills` link, valid
  lowercase-hyphen names matching the directory, a description, skill-to-skill
  references, and the `CLAUDE.md` import. (DR-037)
- Dashboard: each vault runs its own Compose project,
  `systems42-<folder>-<hash>` (before: the fixed `tsu-demo`, shared by every
  spawned project, so bringing one vault's dashboard up recreated another's
  container). No fixed `container_name` any more; `DASH_PROJECT` overrides the
  project name, `DASH_PORT` the host port (default 8080), so two dashboards can
  run side by side. A container left over under the old name has to be removed
  once: `docker compose -p tsu-demo down`.
- Dashboard: the remaining `etsu` names are now `systems42`: browser keys
  `systems42-theme` and `systems42-client-id` (the saved theme choice resets
  once), class `systems42-disconnected`, hook `SYSTEMS42_RERENDER_MERMAID`.
- A spawned project inherits no decision records (before: ADR-0001 to 0003);
  `wiki/decisions/` starts empty, `make sync` and `make harvest` no longer
  handle `_system/adr/`, and harvest lists the project's decision records
  instead. Shipped Markdown no longer cites decisions by number and states its
  rules in place; `test-new-project.sh` checks that. (DR-034, amends DR-031)
- Dashboard: A6 *Architecture Decisions* leaves the Architecture area (now
  A1-A5); `/adrs` and `/page/adr/<stem>` redirect to `/decisions` and to the
  record that kept the ADR's number.
- Recorded here instead of as decisions (former ADRs re-filed under DR-034):
  the stakeholder template's optional `aliases:` field (ADR-0010); the
  functional-requirement `lane:` field, backbone | platform | display
  (ADR-0017); the rename of the ingest loop to **capture** and of the audit
  loop to **inspect**, storage names such as `raw/ingested/` unchanged
  (ADR-0029, ADR-0030).
- Dashboard term network (DR-023 amendment): nodes are card-coloured boxes
  with a thick type-coloured frame, styled from the theme tokens in both
  themes; neighbour labels show ID plus a clipped title with the full title on
  hover; no overlapping boxes after expanding a layer.

### Fixed
- `dashboard.sh local` installs the requirements again whenever
  `requirements.txt` changed, not only when it creates `.venv/` — an existing
  venv would otherwise start the dashboard without a new dependency (`nh3`).
- `dashboard.sh local`: Ctrl+C now stops the server too (it kept running in the
  background, kept alive by any open tab), and a port already in use is
  reported as an error instead of "✓ Dashboard … on http://localhost:8000"
  for a server that never started.
- Dashboard: one broken page no longer takes every page down with a 500.
  Frontmatter that is not a mapping counts as empty, a blank `title:` falls
  back to the file name, a single value where a list belongs (`tags: x`,
  `parent: 7`, `beneficiary: "[[STK-001]]"`) is a one-item list, and bytes that are not UTF-8 render as
  U+FFFD.
- Dashboard tests: `test_presence.py` no longer sends a real SIGTERM to its
  parent process (under pytest or CI, the runner). `tests/conftest.py` stops
  pytest from running several test scripts in one process, which only ever
  tested the first script's vault.
- Dashboard: the data-model class diagram drew a title with an umlaut as a
  broken identifier (`Durchführungsart` → `DurchfHrungsart`). Identifiers are
  now transliterated (ä→ae, ö→oe, ü→ue, ß→ss, other diacritics stripped) and
  every class whose identifier differs from its title carries the title as a
  mermaid class label, so multi-word titles read as written too. Harvested
  from isaqb-atrium.
- The Obsidian vault settings (`.obsidian/`, excluded files and themes) now
  ship with a spawned project; the guide had relied on them without the
  allow-list carrying them.

### Changed
- Domain terms replace glossary terms and data-model pages (DR-039, #36).
  New terms use `DT-`. C5 shows the terminology graph and R4 shows the entity
  diagram. Use `make migrate-domain-terms TARGET=<dir>` before syncing a
  project that still uses the former types.
- Dashboard follows the Systems42 sections diagram: one section catalog with
  three areas (Requirements, Architecture, Commons) and eighteen sections
  replaces the eleven req42-ordered home tiles. (DR-033)
- Dashboard: two-level navigation. Home shows Requirements and Architecture as
  two peaks, a valley with vault status, latest changes, open issues and ADRs,
  and Commons underneath; `/req42`, `/arc42` and `/commons` are area pages and
  breadcrumbs gain the area level. Section routes are unchanged; `/req42` is now
  the Requirements area page, not the reading-order overview. (DR-033)
- Dashboard: Architecture ships visible and empty ("not captured yet"). (DR-033)
- Dashboard: the hamburger menu (Configure, Theme, Who's here, Help, Reload,
  Disconnect all) replaces the footer buttons; new `/help` page explains the
  dashboard and the sections model. (DR-033)
- Dashboard: area colours (green Requirements, blue Architecture, red
  organisation) on tile eyebrows, area headings and a thin bar under the topbar.
  (DR-033)
- Dashboard: the Systems42 mark replaces the placeholder eye artwork in the
  hero, the topbar and the favicon (`static/systems42-logo.svg`,
  `static/systems42-favicon.png`).
- Dashboard: the topbar brand is omitted on the home page, where the hero
  already shows mark and name. (DR-032)
- Dashboard: the nav drops from nine entries to five — Goals · Stakeholders ·
  Backlog · Quality · Issues. Scope, Glossary, ADRs and the req42 reading-order
  page stay on the home tiles and gain a footer link row. (DR-032;
  superseded by DR-033)
- Dashboard: ⌘K (Ctrl K on Windows/Linux) focuses search; `/` no longer does.
  (DR-032)
- `docs/GETTING-STARTED.md`: "Starting over" now describes spawning a fresh
  project instead of the removed `reset.sh`; file tree updated.

### Removed
- The vendored mattpocock/skills skills `grilling`, `grill-me` and
  `grill-with-docs`. `grilling` sat where Claude Code never looked, so every
  capture closed in plain chat anyway; its round format now lives in
  `capture.md`. `grill-with-docs` called a `domain-modeling` skill that was
  never vendored, and `grill-requirements` replaces it. Anyone who wants them
  can install them in their personal skills folder. (DR-037)
- `_system/adr/` and its Nygard template: the records moved to
  `wiki/decisions/` with their numbers (ADR-NNNN → DR-NNN, `aliases:
  [ADR-NNNN]`). (DR-034)
- Dashboard placeholder artwork `etsu-logo.png` and `etsu-favicon.png`.
