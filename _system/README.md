# _system

Internal machinery for the wiki. Not requirements content — this is *about* the wiki.

- `workflows/` — the operating procedures the agent follows: **capture** (formerly ingest), **inspect**
  (formerly audit; content lint), **clarify**, **implement**, **recover** (alias archeology), **relations** (graph/link lint), **report**. `AGENTS.md` points here.
- `metamodel/` — the explicit metamodel: `meta-metamodel.md` is the
  framework-agnostic language (type, relation, framework, projection, anchor,
  notation, rule); `types/`, `relations/`, `frameworks/`, `projections/`,
  `notations/`, `rules/` are the req42 instances. `scripts/metamodel-lint.py`
  keeps templates, wiki folders and anchors in agreement with it.
- `anchors/` — reusable methodological standards (SMART, PAM, user-story-format,
  INVEST, MoSCoW) cited across content types. Method, not domain knowledge; see its
  own README.
- `writing-style.md`: the binding style guide for every text in the repository.
- `wiki.yaml` — project identity (system name, tagline). Filled in during
  bootstrap; the dashboard reads it live.
- `scripts/` — standalone maintenance scripts: `new-project.sh` (create a fresh
  wiki from this one, refresh its method files, or harvest method changes made
  there back here as a patch; `make new` / `make sync` / `make harvest`
  wrap it in the meta repository only, via `meta.mk`, `test-new-project.sh` tests it) and `concept-cluster-audit.py`
  (deterministic support for `workflows/relations.md`).
- The dashboard is not in this repository. `dashboard.sh` starts the published
  release that `dashboard_version:` in `wiki.yaml` names (read-only over the
  wiki; writes only `dashboard.yaml`). Its code lives in
  systems42-org/systems42-dashboard.
