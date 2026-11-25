# Story: tolerate typos and spellings

Parent: site search. Priority: must.

**As** a visitor **I want** to find what I look for even with a typo or a
different spelling, **so that** I do not fail at the spelling of a
technical term.

**Acceptance criteria.**
- The search is fuzzy. Given a query with one or two typos ("Foundaton",
  "Fundaton"), when I search, then the intended content is among the first
  5 results.
- Given a different spelling (umlaut written as "ae", upper or lower case,
  "E-Learning" or "eLearning"), when I search, then the results are the
  same as for the original spelling.

Origin: short version of FR-005 from the earlier isaqb-atrium wiki, raised
from one to two typos by the human, 2026-11-25.
