# Requirements Wiki — Starter

You bring the raw material; the AI agent files it.

## The pattern

This vault follows the Karpathy three-layer LLM-wiki pattern. `raw/` holds your
immutable sources — interview notes, transcripts, specs — which you drop in and
never edit. `wiki/` holds the structured, interlinked requirements knowledge
(domain terms, stakeholders, use cases, stories, and more) that the AI agent reads
sources into and keeps current. A schema layer — `AGENTS.md`, `_templates/`,
`_system/anchors/` — defines the content types and conventions both layers share,
and evolves with you over time.

"Obsidian is the IDE; the LLM is the programmer; the wiki is the codebase"
([Karpathy, *LLM Wiki*](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)). The agent writes the wiki; you read, navigate
and graph it in Obsidian. Obsidian is recommended, not required: the wiki stays
plain Markdown, and `./dashboard.sh` shows it to readers without Obsidian.

## Quick start

1. Run `./dashboard.sh` to start the live dashboard (Docker) at
   `http://localhost:8080` — a browsable view of the wiki, useful even while it's
   still empty. It runs the release that `dashboard_version:` in
   `_system/wiki.yaml` names. `./dashboard.sh update` names the newest.
2. Open this folder in Obsidian (**Open folder as vault**) to navigate and
   graph-view the wiki directly.
3. Point your agentic harness at this same folder. It reads `AGENTS.md` and
   finds the bundled skills in `.agents/skills/` (OpenCode, Codex, Copilot);
   Claude Code reads them through `CLAUDE.md` and the links in `.claude/skills/`.
4. Need a second wiki for another system? `make new TARGET=../foo NAME="Foo"`,
   run in the Systems42 meta repository, creates one beside that folder with the method files and none of the content
   (or ask the agent: "start a new project"). It starts with an empty
   `wiki/decisions/`: decisions are content, not method. `make sync
   TARGET=../foo` later pushes method fixes made here into it, never content.
   Method work done *in* the project — new content types, templates, dashboard
   changes, kept in `method:` commits — comes back with `make harvest
   TARGET=../foo`: a patch to review and apply here, plus the list of new
   `wiki/` folders to bring over. See `docs/GETTING-STARTED.md`.

What changed recently: [`CHANGELOG.md`](CHANGELOG.md).

For a full walkthrough, see [`docs/GETTING-STARTED.md`](docs/GETTING-STARTED.md).
