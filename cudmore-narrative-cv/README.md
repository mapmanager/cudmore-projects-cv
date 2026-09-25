# Career Narrative and CV

This directory is the source of truth for the career narrative and related
application materials.

## Project Contents

```text
cudmore-narrative-cv/
├── AGENTS.md
├── README.md
├── rules.md
├── handoff.md
├── idea.md
├── outline.md
├── section-guide.md
├── narrative.md
├── project-links.md
├── technical-skills.md
├── profile.md
├── cv-extras/
│   ├── cudmore-cv-extras-full.md
│   └── cv-extras-publications.md
├── old-cv-extras/
│   └── cudmore-cv-full.md
├── scripts/
│   └── readme-pandoc.md
└── outputs/
    ├── imaging-core/
    │   ├── audience.md
    │   ├── cv.md
    │   └── cover-letter.md
    ├── research-labs-department-heads/
    │   ├── audience.md
    │   ├── cv.md
    │   └── cover-letter.md
    └── research-software-engineer/
        ├── audience.md
        ├── cv.md
        ├── cover-letter.md
        ├── research-software-platforms.md
        ├── technical-skills.md
        └── project-resources.md
```

### Active files

- `README.md` — project architecture and file inventory.
- `AGENTS.md` — durable operating instructions for AI collaborators.
- `rules.md` — governing editorial and collaboration rules.
- `handoff.md` — current project state and startup instructions for a new
  ChatGPT chat or Cursor session.
- `idea.md` — scratchpad for ideas not yet incorporated.
- `outline.md` — factual planning outline for the long-form narrative and
  downstream documents.
- `section-guide.md` — section-level guidance for `narrative.md`.
- `narrative.md` — canonical editable long-form career narrative.
- `outputs/imaging-core/` — existing audience specification, narrative CV, and
  cold-outreach letter for academic imaging facilities and related biology
  researchers.
- `outputs/research-labs-department-heads/` — audience specification and
  narrative CV and cover letter for research laboratories and academic
  leaders.
- `outputs/research-software-engineer/`: audience specification, narrative CV,
  exploratory letter, and separate assembly sections for senior hands-on
  engineering leadership. See its `audience.md` for shared-section selections.
- `project-links.md` — verified or candidate links for software repositories,
  documentation, and live applications.
- `outreach-context.md`: reusable factual context for personalized outreach
  emails; not a narrative CV or general cover-letter source unless explicitly
  requested.
- `technical-skills.md` — factual inventory of technical skills and the
  authoritative baseline for generated CV Technical Skills sections.
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
outputs/
    ├── imaging-core/
    │       ├── audience.md
    │       ├── cv.md
    │       └── cover-letter.md
    ├── research-labs-department-heads/
    │       ├── audience.md
    │       ├── cv.md
    │       └── cover-letter.md
    └── research-software-engineer/
            ├── audience.md
            ├── cv.md
            ├── cover-letter.md
            ├── research-software-platforms.md
            ├── technical-skills.md
            └── project-resources.md
```

`narrative.md` is the canonical editable long-form career narrative. A future
version on mapmanager.net will be its canonical public presentation, not a
separate editorial source.

Each output folder's `audience.md` defines what its derived documents should
emphasize. Audience-specific CVs and cover letters remain together in their
output folder so one document is not changed to serve incompatible purposes.

Robert's direct factual updates are incorporated into the canonical Markdown
before deriving outputs. Public documentation and repository branches provide
supporting evidence; an older default branch or unavailable documentation does
not invalidate his updates. Ask about material contradictions.

Shared CV sections remain in `shared-cv-sections/`. The RSE package supplies
its own Research Software Platforms, Technical Skills, and Project Resources
files, each replacing the corresponding shared default during assembly. It
reuses the shared Teaching and Scientific Training section unchanged. These
sections remain separate from `cv.md`, and user-owned factual sections are
supplied separately. Existing conversion scripts do not assemble these pieces
automatically. No shared default is rewritten to serve the RSE audience.

Cover letters are tailored to specific opportunities. Specialized strategies,
including outreach to imaging cores, belong in cover letters or emails rather
than the core CV.

## Rules for Deriving Audience-Specific CVs

- Introduce no career claims that are not supported by `narrative.md` or
  `outline.md`.
- Use `outline.md` to verify factual topics and `narrative.md` as the primary
  prose source.
- Compress narrative prose without changing its underlying claims.
- Give each narrative section a distinct purpose and remove repetition between
  sections.
- Follow the target definition in the output package's `audience.md`.
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
