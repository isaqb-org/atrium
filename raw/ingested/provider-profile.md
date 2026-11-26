# Draft: training providers maintain their profile

Status: draft by the human with Claude, 2026-11-26.

**Precondition.** The provider has a contract with iSAQB e.V. or iSAQB GmbH
and got its login from the infrastructure or support role.

**Profile content.**
- Name, website link, contact email, address.
- Description: short, at most 230 words per language (hard limit, as
  today's longest profiles on isaqb.org). The admin app refuses longer
  texts.
- The description is required in German and English, more languages
  optional (see `raw/i18n.md`).
- One logo, used both in the partner logo marquee and on the provider page:
  - PNG (transparent background preferred) or JPG; SVG welcome.
  - Landscape, at least 600 px wide (raster), at most 500 KB.
  - Shown at about 160 × 64 px in the marquee and up to 300 px wide on
    the provider page; atrium scales it.

**Rules.**
1. The provider can create and update its own profile, and only its own.
2. Every create or update is a change for review (a PR). It is published
   only after a reviewer approves it.
3. Reviewers are notified of every new change for review.
4. Only infrastructure and support can delete a profile (for now).
5. A suspended or departed provider's profile is hidden by hand by
   infrastructure or support: no provider page, no logo in the marquee, no
   login. Rare case; no automation.

**Open.**
- How reviewers are notified (email, GitHub notification, both).
- Whether profiles move to DIWAN (ISS-004).
