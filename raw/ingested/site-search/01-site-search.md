# Epic: site search

Objective: excellent usability. Priority: must.

Visitors look for something concrete: a training date, a module, a term, a
provider, a news item. They often misspell it. One search over all public
content, which answers while they type and forgives mistakes, is the
fastest way there.

The search has two views:
- a **popup** under the search field that shows results while typing, and
- a **results page** with the complete result list and its own address.

Both show each page once, grouped by its main content tag.

**Language.** The search looks only through the content in the visitor's
current site language, including fields that fall back to English. Every
result opens in that language. Synonyms in the public glossary bridge
words from other languages.

**Success metric.** Share of a fixed list of typical queries, including
misspelt ones, whose wanted page is among the first 5 results.
The editorial team and the atrium product owner keep the query list. It
runs as an automated test, so every change is checked against it.

**Scope.** In: all public pages and content of atrium, see the categories
in "categorised results". Out: full text of curriculum PDFs. Modules and
curricula are found by the title, short description and keywords of their
module page or curriculum page; the PDF is only a download.

Origin: short version of FR-003 from the earlier isaqb-atrium wiki, with
the popup, the results page and the categories added by the human,
2026-11-25.
