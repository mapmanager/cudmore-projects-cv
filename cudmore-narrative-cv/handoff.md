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
Robert, is the source of truth. Robert's direct factual updates can revise that
source and should be recorded in the canonical Markdown before deriving
outputs. Other chat history provides background. Stop if the source of truth
is unavailable or ambiguous.

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
  specification and near-final narrative CV and exploratory cover letter.
- `outputs/research-software-engineer/` contains the agreed audience plan and
  revised narrative CV and platform descriptions, an exploratory letter,
  skills section, and project resources. This package is the current review
  target. The editorial workflow changes Markdown files only.
- The core sources now record Robert's updates on public repositories,
  mapmanager-web-components integrations, AcqStore schemas, and SanPy Zarr.
- Existing shared sections and the two earlier audience packages are unchanged.
- Subsequent steering on AcqView, computer science background, modular GUI
  design, and daily LLM use is recorded in the core sources. RSE audience
  planning, skills, and resources reflect the permitted updates.
- Following the source review and discussion, Robert authorized a substantial
  rewrite of the RSE `cv.md`. The rewritten narrative is ready for review and
  pairs engineering strategies with factual portfolio evidence.
- The RSE `research-software-platforms.md` rewrite is complete and ready for
  review alongside `cv.md`. The cover letter remains unchanged and deferred.
  Shared sections and user-owned sections remain unchanged.
- Robert clarified his bachelor's degree in computer science, subsequent
  scientific software development, and later graduate work without a completed
  master's degree. These facts are in the narrative sources; user-owned factual
  CV sections remain unchanged.
- The AI emphasis is agreed: planning, specifications, implementation, and
  testing. Code-generation estimates and generic coverage figures have been
  removed from the supporting sources. Do not disclose AcqView as fully
  LLM-generated. Older projects began without AI; later SanPy maintenance uses
  LLMs.

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

The RSE package adds `research-software-platforms.md`, `technical-skills.md`,
and `project-resources.md` as replacements for those shared sections during
assembly. It reuses the shared teaching section. Its `audience.md` specifies
the exact selections; never assemble a variant together with its shared
default. `cv.md` remains narrative-only.

## Agreed RSE Plan

- Target senior hands-on engineering leadership with continued coding,
  architectural direction, development coordination, and mentorship.
- Do not emphasize predominantly administrative management or research-faculty
  positions. Begin with exploratory outreach to RSE and scientific software
  group leaders.
- Treat Robert's direct factual statements as valid source material.
  Documentation supplements them rather than blocking writing. Ask about
  material contradictions and distinguish branches from released versions.
- All project repositories are currently public, as confirmed by Robert.
- SanPy Zarr documentation is on `codex/sanpy-zarr`. AcqStore's published
  collection specification is an initial normative draft.
- The shared web components are used in CloudScope-Web, SanPy-Web, the PyQt
  SanPy application, and the NiceGUI CloudScope application. Do not infer that
  every interface migration is complete.
- A separate scientific measurement-validation example is deferred. Use
  documented engineering practices and do not request it as a prerequisite.

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

Review the integrated rewrite of `outputs/research-software-engineer/cv.md`
with Robert. He approved the algorithm section and all previously agreed
editorial revisions; the rewrite is complete. Its seven-section structure
distinguishes numerical measurement methods from reusable architecture.
`audience.md` records the implemented plan.

The latest CV review strengthens Robert's substantial experimental domain
expertise and his direct contributions to both biological reasoning and
software engineering. Core sources and audience guidance retain this emphasis.
The CV uses "public APIs and plugin interfaces," identifies Python
multiprocessing and thread pools, and explicitly names Pyodide in the AcqView
description. Detailed sequential-processing and worker-setting explanations
remain in source notes but are omitted from the CV. Feature extraction follows
event detection, and both AcqStore and SanPy preserve usable results when
individual fits or feature calculations fail. Continue reviewing the Markdown CV with
Robert. The platform-description rewrite is now complete, with nine entries
including AcqView. It separates application workflows from backend methods,
adds current interoperability and browser-execution evidence, and preserves
project-specific claim boundaries. The CV was not changed during that rewrite.
This editorial workflow changes Markdown files only, not Word documents.

All four open decisions are resolved:

- Defer MVC claims about JavaScript/TypeScript/Vue apps; retain confirmed PyQt
  and NiceGUI architecture.
- Describe MATLAB and Igor Pro parenthetically as potential AcqStore Server
  integrations, not implemented clients.
- Keep AcqView's live-app link as an approved exception to documentation links.
- Leave WebMapManager and MapManagerCore unlinked until suitable documentation
  URLs are available; PyMapManager has a documentation site.

Selected algorithm evidence is retained in `algorithm-design.md`, with shorter
summaries in `outline.md`, `narrative.md`, and `technical-skills.md`. Use these
retained summaries for continued CV work. They cover Radon velocity, spectral
heart-rate estimation, vessel diameter, intensity/peak analysis, and parallel
execution. The detailed implementation account is for AcqStore; Robert
confirms the same one-dimensional detection and event-measurement algorithms
are implemented in SanPy. Do not infer shared code or identical preprocessing.

The CV now includes "Scientific Algorithms and Parallel Computing" between
requirements discovery and architecture. It uses three concise groups of
measurement examples, a parallel-execution paragraph, and the Brightest Path
example moved from architecture. GUI, schema, and storage details remain in
their own sections.
The source note records the important limits: independent work versus temporal
dependencies, backend concurrency versus CloudScope's serial-across-files
configuration, and execution settings versus scientific parameters. No measured
speedups or scientific-validation claims have been established.

The rewrite leads with current work, omits historical C++ references, explains
public component APIs and extensibility, describes lazy access across analysis
and publication, and connects standards-based export with community repositories.
It includes WebMapManager's Pyodide execution of the same MapManagerCore API
used by PyMapManager. LLM use now sits under Research Software Architecture.
Documentation and distribution prose explicitly covers full GUI documentation
and developer APIs, followed by automated packaging. CloudScope's remote-server
deployment is described in architecture. AcqView has a separate paragraph within
the browser-execution bullet. The individual NHLBI co-PI sentence is omitted
from the CV while the award remains grouped with the other funding. The final section is now Technical Leadership and Mentorship, with
funding grouped around multidisciplinary teams and biomedical engineering
included in mentorship. The curation prose remains project-neutral early in
the CV, with project evidence retained in the core sources.

Review the CV and platform descriptions with Robert. The next unrevised
application document is the cover letter, to be changed when Robert requests
it. Preserve shared defaults, previous audience packages, and user-owned
sections. No Word editing or document conversion is part of the current work.
