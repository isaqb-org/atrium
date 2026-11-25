# Story: share the search as a link

Parent: find an accredited training, A4. Priority: should.

**As** a certification prospect **I want** to pass on my filtered result
list as a link, **so that** I can show it to my manager or colleagues and
open it again later.

**Acceptance criteria.**
- Given I have set filters, when I look at the address bar, then the URL
  holds every set filter as a readable parameter.
- Given someone opens such a URL, when the finder loads, then the same
  filters are set and visible, and the list shows the current dates for
  them.
- Given I change a filter, when the list updates, then the URL updates
  without a page reload.
- Given I changed filters, when I use the browser's back button, then I
  return to the previous filters.
- Given the URL holds an unknown filter value (for example a module that no
  longer exists), when the finder loads, then that filter is ignored and
  reported as unknown; the others apply.

Providers and the editorial team can use such links to point to a
preselection, for example "all Foundation trainings in Austria".

Origin: short version of FR-001 from the earlier isaqb-atrium wiki,
2026-11-25.
