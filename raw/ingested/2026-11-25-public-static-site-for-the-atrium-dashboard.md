# Public static site for the atrium dashboard

Discussion note, 2026-11-25, between the maintainer of the Systems42 dashboard and Claude Code, held in the `systems42-dashboard` repository. Status: approach agreed, design not yet written, one question open.

## Request

A Systems42 wiki such as iSAQB atrium should publish its own dashboard as a public, read-only static website, built with its own `make site`.

**Readers:** iSAQB members and others interested in how iSAQB approaches (AI-supported) engineering. The site is a showcase, not a review channel for stakeholders.

## State today (in systems42-dashboard)

- `make site` builds only `dashboard.systems42.org`. Its `/demo/` part is a static export of one wiki: `site/build.py` imports the dashboard's `app.py`, crawls every page and rewrites the links under the fixed prefix `/demo`. The export is tied to the product website (demo bar, links back to dashboard.systems42.org).
- A wiki made from the dashboard repository holds only `Makefile` and `dashboard.sh`. The dashboard itself comes as a container image, pinned by `dashboard_version:` in `_system/wiki.yaml`. atrium pins `0.14.3`. Such a wiki has no `site/` and no `_system/apps/`, so it cannot run the exporter.
- FR-058 of the dashboard wiki puts "publishing any other wiki as a static site" out of scope. It notes that an export makes the whole wiki public.
- AGENTS.md says exports must filter on `status`.

## Content of the public site

The whole wiki is published as it stands, drafts and open issues included. The dashboard already shows each page's status. This needs an exception to the AGENTS.md rule that exports filter on `status`.

## Approaches considered

1. **Exporter in the dashboard release (chosen).** The crawl-and-rewrite code moves from `site/build.py` into the dashboard and runs as `./dashboard.sh site` in the image the wiki already names. The product website calls the same command for its `/demo/`. Cost: dashboard work and a release, and more weight on `app.py` (dashboard issue ISS-009). Gain: the export always matches the wiki's release and needs no local Python.
2. **The wiki's CI runs the website builder from the dashboard repository.** Little new code, but the export comes from the dashboard's `main` instead of the pinned release, and the product website's assumptions (demo bar, `/demo`) end up in every wiki's site.
3. **Mirror a running dashboard with `wget`.** Dropped: it breaks `search.json`, links in Mermaid diagrams and the live scripts.

## Keeping the dashboard updateable

Ownership is split so that nothing an instance changes is ever overwritten:

| Part | Where it lives | Updated by |
|---|---|---|
| Exporter (crawl, link rewrite, read-only bar, checks) | dashboard image | `./dashboard.sh update`, which bumps `dashboard_version:` |
| `make site`, `./dashboard.sh site`, `.github/workflows/site.yml` | wiki repository, product files | `sync` from systems42-dashboard |
| Base path, domain, imprint link, brand, about page | `_system/wiki.yaml`, `brand/`, `docs/` | the instance owner; sync and update never touch them |

Proposed `site:` block, next to the keys atrium already has:

```yaml
# _system/wiki.yaml
brand: brand/                       # exists
about: docs/atrium-brand/README.md  # exists
site:
  base_path: /atrium/               # "/" when served from its own domain
  domain: ""                        # optional, writes CNAME
  imprint: https://example.org/imprint   # linked from the read-only bar
```

Flow (`<release>` is the version tag of the image):

```
make site → ./dashboard.sh site → docker run dashboard:<release> export --base-path … → _site/
push to main → site.yml runs make site → GitHub Pages
./dashboard.sh update → commit → site rebuilds with the new release
```

Consequences:

- `site.yml` must work without edits. `sync` does not carry `.github/workflows/` today and overwrites what it does carry, so the workflow reads every instance setting from `wiki.yaml`, and the sync allow-list gains this one file.
- A wiki pinned to a release without the exporter gets a clear message from `./dashboard.sh site` ("needs 0.15 or later, run `./dashboard.sh update`") instead of a broken build. atrium (0.14.3) has to update to the release that ships the exporter.
- Served from GitHub Pages as `isaqb-org.github.io/atrium/`, the site needs a configurable base path instead of the fixed `/demo`.

Rule that keeps updates painless (proposal): an instance customizes through configuration, brand and about page only, never through its own templates or extra pages.

## Open question

Are `tagline`, the about page and the brand enough for the atrium showcase? Or does atrium need pages the dashboard does not have, such as a landing page with its own story? The answer decides whether the config-only rule holds.
