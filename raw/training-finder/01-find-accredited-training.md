# Use case: find an accredited training

Primary actor: certification prospect. Level: user goal. Priority: must.
Objective: fast training date search.

**Goal.** The prospect finds a fitting training date of an accredited
training and gets to the provider's booking page. atrium never books.

**Supporting actor.** Training provider: maintains its training dates in
DIWAN, which delivers them to atrium.

**Interests.**
- Prospect: a trustworthy training that fits the learning goal and the
  practical constraints.
- Provider: found with correct dates, on equal terms with all others.
- iSAQB: accredited trainings are recognisable as such, and atrium stays
  neutral towards all providers.

**Precondition.** The training finder shows every upcoming training date
that DIWAN delivered. Each one has passed review in DIWAN.

**Trigger.** The prospect wants to book a training, with or without a
module already chosen.

## Main flow

1. The prospect opens the training finder, without login.
2. atrium shows all upcoming dates of all accredited providers, the hit
   count and the filters.
3. The prospect sets one or more filters. atrium updates list and hit count
   at once.
4. atrium lists the matching dates by the rules below.
5. The prospect compares the dates and opens one.
6. atrium shows the date's details: zero to three trainers, the provider
   (logo, name, description, link to its provider page) and the booking
   link.
7. The prospect follows the booking link. The provider's booking page opens
   in a new tab, and the finder keeps its filters. Booking and payment
   happen at the provider, outside atrium.

## Filters

All filters are optional and combined with AND. Several values within one
filter combine with OR. Each set filter is visible and removable on its
own, and the others stay set.

| Filter | Values and rule | Priority |
|---|---|---|
| Level | Foundation, Advanced. Expert Level has no trainings and is no value. | Must |
| Module | Only modules with upcoming dates, each with its count. Depends on the level; choosing a module sets the level. Can be passed in preset (A2). | Must |
| Training format | Classroom, online, eLearning, hybrid. | Must |
| Language | The language the training is held in. | Must |
| Country, city | City lists only cities of the chosen country that have dates. Hybrid behaves like classroom. If online is also chosen, online dates stay visible: the location filter narrows only dates with a location. | Must |
| Period | The start lies in the period. eLearning with an availability period fits if it overlaps the period. | Must |
| Provider | Alphabetical, no highlighting, each with its count. Never preset. | Should |
| Trainer | Alphabetical. Finds every date that names the trainer, across providers. | Should |

## Rules

- **Order.** Grouped by month, within a month by start date. eLearning
  without a fixed start date forms its own group "eLearning, available any
  time" at the end of the list; an availability period shows in the entry.
- **Tie-break.** Dates with the same start date appear in random order, kept
  stable for the day (decided in the fairness objective).
- **No highlighting.** No date is shown larger, coloured or otherwise
  preferred. No paid placement.
- **List entry.** Module, level, start and end, training format, language,
  location (city and country, "online", or both for hybrid), provider.
  Online dates with time and time zone.
- **No prices, no availability.** atrium shows neither training prices nor
  booking status ("almost full", "waiting list") anywhere: not in the list,
  the details, the provider pages or the exports. The only prices shown are
  the exam fees iSAQB sets itself.
- **Visibility.** A date drops out after its end date. Dates of providers
  without a valid accreditation do not appear.
- **Booking.** The result is always a link to the provider's booking page.
  atrium asks for no personal data. The provider is responsible for the
  booking link; atrium does not check it.
- **Provider page.** Shows that provider's upcoming dates the same way as
  the finder, and states that it is not the provider's official website.

## Alternate flows

- **A1.** The published date list is out of date: atrium says so. Not
  worked out yet.
- **A2.** At step 3 no module is chosen yet: the prospect chooses one in
  "select suitable learning topics" and returns with the module preset.
- **A3.** At step 4 no date matches: atrium says "No training dates for …"
  and spells out every set filter; the prospect removes filters one by one.
  If the chosen module has no dates at all, the message points to the
  module page and the provider list.
- **A4.** At step 5 many dates match: the prospect narrows further, shares
  the search as a link, or adds dates to the calendar.
- **A5.** At step 5 the prospect wants to check how the training counts
  towards certification: "understand certification requirements".

## Postconditions

- **Success.** The prospect has found a fitting date of an accredited
  training and can book or ask at the provider.
- **Minimal.** The prospect sees whether any accredited training meets the
  criteria, and can change the search without losing the learning goal.

## Special requirements

- A filter change updates list and hit count within 300 ms, with 1,000
  published upcoming dates already loaded.
- The whole flow works by keyboard only, up to the booking link
  (WCAG 2.2 AA).
- Each field falls back to English when no translation exists.

Open: when an accreditation ends; whether companies are an actor of their
own.

Origin: short version of UC-003 and its constraints from the earlier
isaqb-atrium wiki, 2026-11-25.
