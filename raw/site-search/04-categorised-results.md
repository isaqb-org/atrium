# Story: ranked and categorised results

Parent: site search. Priority: must.

**As** a visitor **I want** the best results on top and sorted by category,
**so that** I see at a glance whether I found a curriculum, a training
date, a news item or something else.

**Categories** (proposal, to be confirmed):

| Category | Holds |
|---|---|
| Curriculum | Curricula and their modules, Foundation and Advanced Level |
| Training date | Upcoming training dates |
| Training provider | Provider pages |
| Academic partner | Universities that teach a CPSA curriculum or hold CPSA exams |
| Glossary | Terms of the public glossary |
| News | News items |
| Blog | Blog articles |
| Conference | Conferences and events |
| Organisation | The association: board, working groups, members, statutes |

**Acceptance criteria.**
- Given results of several categories, when the popup or the results page
  shows them, then they are grouped by category, and each group shows its
  category name and hit count.
- Given a query hits titles and text, then title hits come before text
  hits, and exact hits before fuzzy ones, within each category.
- Given the fixed query list of the site search, then the expected result
  is in first place in at least 80 % of the cases.
- Given a category has no results, then it is not shown.

Origin: short version of FR-008 from the earlier isaqb-atrium wiki, with
the categories set by the human, 2026-11-25.
