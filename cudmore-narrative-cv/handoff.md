# Project Handoff

## Purpose

This document provides orientation and current project status for continuing
the narrative CV project in a new work session. It records the architecture,
completed outputs, active work, and next task.

`handoff.md` is not a source for factual claims, narrative prose, audience
strategy, project selection, or CV structure. Use the canonical sources and the
selected output package for those decisions.

## Authority

The current project directory, or the latest ZIP explicitly identified by
Robert, is the source of truth. Chat history is background only. Stop if the
source of truth is unavailable or ambiguous.

- `AGENTS.md` defines the operating role and autonomy of AI collaborators.
- `rules.md` governs editing, factual boundaries, and collaboration.
- `outline.md` is the factual source for narrative claims.
- `narrative.md` is the canonical long-form prose source.
- Each `outputs/<audience>/audience.md` governs the positioning and emphasis of
  its CV and cover letter.

## Current State

- The canonical source and planning files remain in the project root.
- `outputs/imaging-core/` contains a completed audience specification,
  narrative CV, and cold-outreach cover letter.
- `outputs/research-labs-department-heads/` contains a completed audience
  specification and first drafts of its narrative CV and friendly exploratory
  cover letter.
- The research-labs and department-heads package is the current review target.

## Professional Positioning

The central identity is:

> I build scientific software that transforms biological data into
> reproducible quantitative results.

Robert is positioned as a **Research Software Engineer & Scientist** who
combines experimental biology, quantitative analysis, and reusable research
software.

Robert's direct domain expertise is in neuroscience, vascular biology, and
cardiac physiology. His direct experimental methods include microscopy and
electrophysiology. Broader applicability must be explained through shared
methods and collaboration with domain experts without claiming unsupported
subject-matter expertise.

## Document Architecture

```text
idea.md
    ↓
outline.md
    ↓
narrative.md
    ↓
outputs/<audience>/
    ├── audience.md
    ├── cv.md
    └── cover-letter.md
```

Each audience uses a separate output package. Do not change one package to
serve another audience.

## Factual and Editorial Boundaries

- Introduce no career claim unsupported by `outline.md` or `narrative.md`.
- Preserve the distinction between implemented work, active development, and
  future plans.
- Select projects and emphasis according to the chosen package's `audience.md`.
- Use `technical-skills.md` and `project-links.md` for their respective factual
  inventories.
- Do not draft or revise Robert's user-owned factual sections unless he
  explicitly requests it; see `AGENTS.md` and `rules.md`.

## Starting a Work Session

1. Confirm the source-of-truth project directory or ZIP.
2. Read `AGENTS.md`, `rules.md`, `README.md`, and this handoff.
3. Identify the selected output package and read its `audience.md`.
4. Read `outline.md` and `narrative.md` before evaluating or changing claims.
5. Read the selected package's `cv.md` and `cover-letter.md` when present.
6. Confirm the current task before editing.

After orientation, use the selected output package and canonical source files
for the work. Return to `handoff.md` only when project status, architecture, or
the next task changes.

## Next Task

Review `outputs/research-labs-department-heads/cv.md` and
`outputs/research-labs-department-heads/cover-letter.md` for audience fit,
length, emphasis, and voice. Preserve their scientist-to-scientist framing and
do not add unsupported career claims.
