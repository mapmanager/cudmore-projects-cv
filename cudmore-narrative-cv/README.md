# Career Narrative and CV

This directory is the source of truth for the career narrative and related
application materials.

## Project Contents

```text
narrative-website-cv/
├── README.md
├── rules.md
├── handoff.md
├── idea.md
├── outline.md
├── section-guide.md
├── narrative.md
├── audiences.md
├── cv.md
├── cover-letter.md
├── project-links.md
├── profile.md
├── cv-extras/
│   ├── cudmore-cv-extras-full.md
│   └── cv-extras-publications.md
├── old-cv-extras/
│   └── cudmore-cv-full.md
├── scripts/
│   └── readme-pandoc.md
```

### Active files

- `README.md` — project architecture and file inventory.
- `rules.md` — governing editorial and collaboration rules.
- `handoff.md` — current project state and startup instructions for a new
  ChatGPT chat or Cursor session.
- `idea.md` — scratchpad for ideas not yet incorporated.
- `outline.md` — factual planning outline for the long-form narrative and
  downstream documents.
- `section-guide.md` — section-level guidance for `narrative.md`.
- `narrative.md` — canonical editable long-form career narrative.
- `audiences.md` — target-audience definitions for derived CVs and application
  materials.
- `cv.md` — working CV for academic imaging facilities and biology
  researchers, derived from `narrative.md`.
- `cover-letter.md` — general cold-outreach letter for the active audience.
- `project-links.md` — verified or candidate links for software repositories,
  documentation, and live applications.
- `cv-extras/cudmore-cv-extras-full.md` — current user-owned factual CV
  sections.
- `cv-extras/cv-extras-publications.md` — current user-owned publication list
  with publication links.
- `scripts/readme-pandoc.md` — current Pandoc commands for generating Word
  documents from Markdown.

### Legacy and archival material

- `profile.md` — inactive earlier condensed profile; do not develop or use as
  an intermediate document unless Robert explicitly reactivates it.
- `old-cv-extras/cudmore-cv-full.md` — archived earlier factual CV material;
  do not use when current material exists in `cv-extras/`.

## Document Architecture

```text
idea.md
    ↓
outline.md
    ↓
narrative.md
    ↓
audiences.md
    ├── imaging facilities and biology researchers
    │       ├── cv.md
    │       └── cover-letter.md
    └── future audiences
            ├── targeted CV
            └── targeted cover letter
```

`narrative.md` is the canonical editable long-form career narrative. A future
version on mapmanager.net will be its canonical public presentation, not a
separate editorial source.

`audiences.md` defines what each derived document should emphasize. The active
`cv.md` is a shorter Research Software Engineer CV for academic imaging
facilities and biology researchers. Future audiences should receive separate
derived CVs rather than making one document serve incompatible purposes.

Cover letters are tailored to specific opportunities. Specialized strategies,
including outreach to imaging cores, belong in cover letters or emails rather
than the core CV.

## Rules for Deriving `cv.md`

- Introduce no career claims that are not supported by `narrative.md` or
  `outline.md`.
- Use `outline.md` to verify factual topics and `narrative.md` as the primary
  prose source.
- Compress narrative prose without changing its underlying claims.
- Give each narrative section a distinct purpose and remove repetition between
  sections.
- Follow the active target definition in `audiences.md`.
- Preserve a dedicated software-platform section.
- For each project, state the problem solved, the supported scientific
  workflow, and the reusable software contribution.
- Keep factual list sections separate from narrative sections.

## User-Owned Factual Sections

Robert will write these sections unless he explicitly requests assistance:

- Employment
- Education
- Awards
- Publications
- Contact
- Funding & Professional Service

AI collaborators must not draft, revise, or fill these sections without an
explicit request.

The current factual sources are:

- `cv-extras/cudmore-cv-extras-full.md`
- `cv-extras/cv-extras-publications.md`

Treat material under `old-cv-extras/` as archival.

## Starting a Work Session

- In ChatGPT, Robert must identify the latest ZIP as the source of truth. Stop
  if it is unavailable or ambiguous.
- In Cursor, read the current repository files directly; no ZIP is required.
- In either environment, read `rules.md`, then `handoff.md`, before proposing
  or making changes.
- Discuss and agree on a plan before editing.
