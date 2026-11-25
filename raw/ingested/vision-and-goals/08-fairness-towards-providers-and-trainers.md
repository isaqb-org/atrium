# Objective: fairness towards providers and trainers

Parent: vision. Set by the iSAQB board.

- **Purpose.** atrium treats all accredited training providers and all
  trainers alike. None is preferred in presentation, order or visibility.
- **Advantage.** Providers and trainers are partners, not advertising
  customers. A fixed order silently prefers whoever comes first, without
  anyone having decided that. The neutral association rules this out.
- **Metric.** Share of top-k positions per provider, compared with k/n,
  measured by simulation in tests.
- **Baseline.** Today's fixed order on isaqb.org: the first k providers get
  100 % of the top positions, all others 0 %.
- **Target.** No provider deviates by more than ±10 % from k/n.
- **Horizon.** From launch.

## Principles

1. **Equal chance of visibility.** Where many providers or trainers appear
   side by side and not all fit, each has the same chance of a prominent
   position.
2. **Equal presentation.** Same area, same design, same display time.
3. **No ordering by attributes in the marquee**, not even alphabetical.
   Alphabetical provider lists, e.g. filter lists, are allowed.
4. **No highlighting.** No paid placements, no "featured" partners.
5. **No personalisation.** No order or highlighting by visitor attributes the
   visitor did not choose (page language, location, behaviour, role).
   Filters and sorting the visitor sets are allowed.

## Scope

Displays without search intent: first the start-page logo marquee, and
trainers once atrium shows them on its own (e.g. a trainer directory). Not
the training finder: its results stay sorted deterministically by start date.

## Open questions

- Finder tie-break: by provider ID today, which favours low IDs on equal
  dates. A random but stable tie-break (e.g. per day) would avoid that.
- How several companies of one provider count towards n.
- Target and tolerance are provisional; the board may tighten them.

Origin: short version of GOAL-009 from the earlier isaqb-atrium wiki, agreed
2026-11-23.
