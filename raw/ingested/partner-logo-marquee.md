# Requirements: partner logo marquee

Authors: the atrium team, partly reverse-engineered from the current
isaqb.org start page. Date: 2026-10-26. Status: draft.
Serves the objective: fairness towards providers and trainers.

## Occasion

Today's start page shows the logos of about 66 accredited training
providers under "Accredited iSAQB Partners", each linked to the provider's
profile. The order is fixed and follows no visible rule: whoever is in
front is always seen, whoever is at the back rarely. Some providers appear
twice, under several companies.

## Goal

The marquee treats all accredited training providers alike: on every visit
to the start page, each provider has the same chance to appear early in the
visible area.

## Functional requirements

| No. | Requirement |
|---|---|
| L-1 | The start page shows a marquee with the logos of the training providers. Trainers do not appear in it. |
| L-2 | The marquee holds all active accredited training providers. Suspended or departed providers do not appear. |
| L-3 | Each provider appears exactly once. A provider with several companies or locations gets one logo. The fairness metric counts providers the same way (decided by the human, 2026-11-26). |
| L-4 | The order is drawn at random anew on every opening and reload of the start page. There is no sorting, not even alphabetical. |
| L-5 | Without JavaScript in the browser, an order applies that is drawn at random anew on every deploy. |
| L-6 | Each logo links to the provider page in atrium. The link text or alternative text names the provider. |
| L-7 | The marquee stops while the mouse pointer is on it or a logo has the keyboard focus. |

## Quality requirements

| No. | Requirement |
|---|---|
| Q-1 | **Statistical fairness.** Every order is equally likely. Over many visits, each provider is about equally often among the first visible logos. |
| Q-2 | **Equal presentation.** All logos get the same area and the same time in the visible area. |
| Q-3 | **Accessibility.** The marquee has a visible control to stop it (WCAG 2.2.2) and does not move when the visitor has set reduced motion (`prefers-reduced-motion`). Then the logos are shown static, in the random order. |
| Q-4 | **Load time.** With the marquee, the start page still reaches Lighthouse performance ≥ 95 (objective: technical excellence of the running site). Logos outside the visible area load only when needed. |

## Constraints

- Where the random order is drawn (browser or server) is an architecture
  decision, not part of this requirement (decided by the human,
  2026-11-26).
- Some atrium features may need JavaScript. Each of them has a fallback
  without JavaScript; for the marquee that is L-5.
- No cookies, no tracking, no storing of the order shown.

## Out of scope

- No paid placements, no featured partners, no personalisation.
- Trainers are not part of the marquee. The fairness objective applies to
  them once there is a trainer directory.

## Open points

- How can Q-1 be checked (measure, number of visits, tolerance)?
- Who decides which logo a provider with several companies shows (L-3)?
- Does the random principle also apply to the provider list and the default
  order of the training finder? (see the fairness objective)

Origin: English short version of a German note by the atrium team,
2026-10-26, partly reverse-engineered from the current isaqb.org start page.
Provider names left out.
