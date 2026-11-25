# Story: add training dates to the calendar

Parent: find an accredited training, A4. Priority: could.

**As** a certification prospect **I want** to add one training date, or all
dates of a module, to my calendar, **so that** I can check them against my
schedule without keeping atrium open.

**Acceptance criteria.**
- Given I look at a training date, when I choose "Add to calendar", then I
  get an ICS file with title (module and provider), start and end with time
  zone, location or "online", and the booking link in the description.
- Given I look at a module page, or have filtered the finder by a module,
  when I choose the calendar feed, then I get a subscribable ICS address
  for all upcoming dates of that module.
- Given an eLearning date has only an availability period, when I add it,
  then it appears as an all-day span with the note "any time within this
  period".
- Given I open the ICS file in a common calendar (Apple, Google, Outlook),
  when it is imported, then title, time and location are correct,
  especially the time zone.

Origin: short version of FR-002 from the earlier isaqb-atrium wiki,
2026-11-25.
