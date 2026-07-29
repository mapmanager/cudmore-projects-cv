# Project Handoff

## Purpose

This document provides the current state and startup instructions for continuing
the career narrative and CV project in a new ChatGPT chat or Cursor session.

## Authority

The current project directory, or the latest ZIP explicitly identified by
Robert, is the source of truth. Chat history is background only. Stop if the
source of truth is unavailable or ambiguous.

`rules.md` governs all editing and collaboration.

## Current State

- `narrative.md` is the canonical editable long-form career narrative.
- Its current sections are Introduction, Mission, Scientific Domains, Research
  Software Engineering, Software Philosophy, Research Infrastructure,
  Research Software Funding Strategy, Scientific Software Platforms,
  Leadership and Mentorship, Teaching and Scientific Training, and Future
  Directions.
- The platforms section covers CloudScope, AcqStore, AcqStore Server,
  NiceWidgets, SanPy, MapManager, PiE, and Brightest Path. Each project
  identifies the problem it addresses.
- `cv.md` is the first working draft of a shorter, narrative-led Research
  Software Engineer CV derived from `narrative.md`. Its active audience is
  defined in `audiences.md`.
- `cover-letter.md` is a general cold-outreach letter for the active audience.
- `profile.md` is inactive legacy material and is not part of the active
  document architecture.
- A future mapmanager.net website will publish the long-form narrative but will
  not replace `narrative.md` as the editable source.

## Professional Positioning

The central identity is:

> I build scientific software that transforms biological data into
> reproducible quantitative measurements.

Robert is positioned as a **Research Software Engineer & Scientist** with
scientific domain expertise and a record of building reusable research
software.

Core themes include:

- Biology and software engineering
- Domain expertise in neuroscience, vascular biology, and cardiac physiology
- Shared experimental technologies and analysis problems across biological
  disciplines
- Reusable scientific software and research infrastructure
- Reproducible quantitative analysis
- Open-source development and long-term maintenance
- Software supporting the lifecycle from acquisition through publication and
  reuse
- Publication and data sharing designed into the analysis architecture rather
  than added at the end of a project

Cross-domain positioning must distinguish direct expertise from software
applicability. Robert's direct domain expertise is in neuroscience, vascular
biology, and cardiac physiology. His direct experimental work has centered on
microscopy and electrophysiology, including vascular work in the brain and
heart. Do not claim direct experience in every organ system. Explain broader
applicability through the shared needs of imaging-core users: reliable data
management, quantitative analysis, reproducible workflows, and practical
support. Explain that software can be extended with domain experts to support
new systems and questions.

## Document Architecture

```text
idea.md
    ↓
outline.md
    ↓
narrative.md
    ↓
audiences.md
    ├── cv.md
    └── cover-letter.md
```

The current application round targets academic imaging facilities and biology
researchers. Future audiences will use separate derived CVs and cover letters.

## Active Audience

The current `cv.md` and `cover-letter.md` support cold outreach where no
position has been advertised. The intended readers are:

- Academic imaging/core-facility directors
- Biology researchers, initially in neuroscience and cardiac physiology

These readers understand experimental biology, microscopy, and
electrophysiology but may not need low-level software-engineering detail in the
opening summary. The documents should demonstrate that Robert combines
scientific domain experience with a proven open-source software portfolio.

The central opportunity is the analysis gap after data acquisition. Imaging
facilities commonly provide instruments and acquisition expertise, while
researchers may still depend on isolated, project-specific analysis scripts.
Robert brings the ability to develop reusable software pipelines that connect
acquisition, analysis, and scientific communication.

For the active outreach, Robert is seeking a staff role within an existing
imaging facility, academic department, or research organization. The analysis
core is a capability he would develop within the institution's current
scientific and technical structure. It does not require a separate
administrative unit at the outset. The capability can begin with direct
researcher support, training, and reusable analysis software, then grow
according to institutional needs.

Robert values day-to-day service work with researchers. Relevant activities
include troubleshooting datasets and analysis pipelines, improving
documentation, providing practical training, and turning recurring support
problems into reusable software improvements.

The phrase **analysis core** describes the complementary institutional
capability Robert proposes: shared expertise and reusable analysis software
alongside the instruments and acquisition support of an imaging core. It is not
another name for AcqStore. AcqStore is the reusable imaging-data engine used by
CloudScope's desktop, web, and scripting interfaces. AcqStore has no
user-facing GUI of its own. Imaging analyses are implemented in AcqStore and
exposed through CloudScope. New AcqStore file loaders, analyses, and
visualization tools can therefore become available through CloudScope without
duplicating their implementation. AcqStore also exports analysis results as
structured tabular data through an extensible export system. SanPy follows the
same backend/frontend separation, but its computational backend is not a
separately named project.

The lifecycle model is one continuous software environment, not three separate
tools. The same computational backend, data model, graphical interfaces, and
scripting interfaces support acquisition, offline analysis, and publication.
Publication is designed into the architecture rather than added after analysis.
This makes data sharing part of the analysis workflow rather than a separate
task created at the end of a project.

The planning documents record active development toward community standards
and repository preparation. NWB is a data standard for raw and processed
neurophysiology data, including electrophysiology and optical physiology
imaging data; it is not a repository. DANDI, the Brain Image Library, and SPARC
are possible destinations or platforms selected according to the scientific
domain and data type. They are a concrete roadmap, not an exclusive workflow.
Do not describe every dataset as going to all of them. Keep these claims
future-facing until a specific export or deposition workflow is confirmed as
implemented.

NiceWidgets is a separate open-source Python library of reusable NiceGUI
components for scientific visualization and interaction. CloudScope uses
NiceWidgets for modular graphical components and AcqStore for imaging data and
analysis. The same NiceGUI interface code supports CloudScope's desktop and web
deployments. Keep NiceWidgets in the long-form narrative and future technical
CV variants, but omit it as a separate entry from the active imaging-facility
and biology CV.

AcqStore Server is an implemented private project that exposes AcqStore
metadata, physical units, and image planes through a versioned local FastAPI
HTTP API. It supports thin browser, JavaScript, and Python clients through an
OpenAPI contract and short-lived binary-data sessions. Keep it in the
long-form narrative, technical inventory, and future technical CV variants.
Do not add it to the active imaging-facility CV or cover letter.

`technical-skills.md` is the factual inventory and the authority for the
generated-CV baseline. Generate a broad skills section without applying the
narrative audience filter, omit items marked as too granular, and allow Robert
to shorten or tailor the result manually. Python should appear first in
programming-language lists, followed by C/C++ and Igor Pro when relevant.

## CV Status and Structure

`cv.md` currently contains:

- Professional Summary
- Scientific Domains
- Research Software Engineering
- Research Infrastructure
- Research Software Platforms
- Technical Skills
- Leadership and Mentorship
- Teaching and Scientific Training
- Placeholders for user-owned factual sections

The intended narrative progression is:

1. Who is Robert professionally?
2. Where has he applied this work?
3. What kind of software does he build?
4. Why does reusable research infrastructure matter?
5. What software demonstrates this work?

The CV must introduce no new career claims. It should use `narrative.md` as its
primary prose source and `outline.md` to verify factual support.

Each software-platform entry should concisely identify:

- The scientific or software problem
- The software response
- The reusable contribution or impact

## User-Owned Sections

Robert owns these factual sections and will complete them later:

- Employment
- Education
- Awards
- Publications
- Contact
- Funding & Professional Service

Do not draft or revise them unless Robert explicitly requests assistance.

## Startup Instructions

### New ChatGPT chat

1. Ask Robert to identify or upload the latest source-of-truth ZIP.
2. Verify that it can be opened.
3. Read `rules.md`, `handoff.md`, `README.md`, `audiences.md`, `outline.md`,
   `section-guide.md`, `narrative.md`, `cv.md`, and `cover-letter.md`.
4. Stop if the source is unavailable or ambiguous.
5. Confirm the current task before editing.

### Cursor

1. Read the files directly from the current project directory; no ZIP is
   required.
2. Read `rules.md`, `handoff.md`, `README.md`, and `audiences.md` first.
3. Read `outline.md`, `section-guide.md`, and `narrative.md` before changing
   narrative claims.
4. Read `cv.md` and `cover-letter.md` before continuing application work.
5. Confirm the current task before editing.

## Next Task

Review the revised cross-domain positioning in `cv.md` and the corresponding
domain-expertise sentence in `cover-letter.md`.

- Keep direct domain expertise focused on neuroscience, vascular biology, and
  cardiac physiology.
- Explain broader applicability through shared experimental technologies and
  collaboration with domain experts.
- Do not claim direct experimental work in every organ system.
- Preserve the current service-role, lifecycle, publication, and Data
  Management and Sharing language.
- Keep detailed funding strategy out of the active CV and cover letter.
