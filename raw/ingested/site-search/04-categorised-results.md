# Story: ranked and categorised results

Parent: site search. Priority: must.

**As** a visitor **I want** the best results on top and sorted by category,
**so that** I see at a glance whether I found a module, a curriculum, a training
date, a news item or something else.

**Content tags.** Every public page carries one or more of these tags.
Exactly one is its main tag. The popup and the results page show each page
once, under its main tag. Narrowing to a tag on the results page also
includes pages that carry it as a further tag.

| Content tag | Holds |
|---|---|
| Module | Module pages: the Foundation Level and the Advanced Level modules |
| Curriculum | Curriculum pages: one curriculum version each |
| Training date | The next 3 matching upcoming training dates, and a link into the training finder |
| Training provider | Provider pages |
| Academic partner | Universities that teach a CPSA curriculum or hold CPSA exams |
| Glossary | Terms of the public glossary |
| News and articles | News items and blog articles |
| Conference | Conferences and events |
| Organisation | The association: board, working groups, statutes. No list of members. |

**Acceptance criteria.**
- Given results of several tags, when the popup or the results page
  shows them, then each page appears once, grouped by its main tag, and
  each group shows its tag name and hit count.
- Given a query hits titles and text, then title hits come before text
  hits, and exact hits before fuzzy ones, within each group.
- Given the fixed query list of the site search, then the expected result
  is in first place in at least 80 % of the cases.
- Given a tag has no results, then its group is not shown.
- Given a query matches training dates, then the group "Training date"
  shows only the next 3 matching dates and the link "Show all in the
  training finder". The link opens the finder with filters preset where the
  query names a module, city or language ("Foundation Berlin").
- Given the results page, then the group "Training date" shows the same
  3 dates and link, not the complete list: the training finder stays the
  one place for all dates, its filters and its order.

Origin: short version of FR-008 from the earlier isaqb-atrium wiki, with
the categories set by the human; module and curriculum split;
categories relaxed to content tags with one main tag per page, 2026-11-25.
