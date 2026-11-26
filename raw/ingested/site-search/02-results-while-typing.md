# Story: results while typing, in a popup

Parent: site search. Priority: must.

**As** a visitor **I want** to see results while I type, **so that** I know
whether it fits without sending a search first.

**Acceptance criteria.**
- Given I type into the search field, when I enter the second character,
  then a popup with results opens below the field, without a page change.
- Given the popup is open, when I keep typing, then it is updated at most
  300 ms after each keystroke.
- Given the popup is open, then it shows the best few results per category
  (see "categorised results") and a link "Show all results", which opens
  the results page.
- Given the popup is open, when I press Esc or click outside it, then it
  closes and my input stays in the field.

Origin: short version of FR-004 from the earlier isaqb-atrium wiki, with
the popup added by the human, 2026-11-25.
