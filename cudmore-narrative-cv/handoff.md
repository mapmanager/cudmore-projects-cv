# Project Handoff

## Purpose

This document orients a new ChatGPT or Codex session to the narrative CV
project and defines the next task. It records project state and workflow only.
It is not a factual source for career claims or a substitute for the selected
audience package.

## Authority and Startup Order

The current project directory, or the latest replacement ZIP explicitly
identified by Robert, is the source of truth.

Before making recommendations or edits:

1. Read `AGENTS.md` completely.
2. Read `rules.md`, `README.md`, and this handoff completely.
3. Read `outline.md`, `narrative.md`, `technical-skills.md`,
   `section-guide.md`, and `project-links.md` as needed for the task.
4. Read the selected output package's `audience.md` before evaluating its CV,
   cover letter, or supporting documents.
5. Treat Robert's direct factual corrections as valid source material and add
   them to the canonical Markdown before deriving new prose.
6. Ask rather than guess when a material ambiguity could change facts,
   positioning, audience, scope, or document structure. Every question should
   include a senior editorial recommendation.

## Canonical Document Architecture

- `outline.md` is the factual source for narrative claims.
- `narrative.md` is the canonical long-form prose source.
- `technical-skills.md` is the factual technical-skills inventory.
- `section-guide.md` defines section purpose, claim boundaries, and platform
  presentation.
- `rules.md` governs editing, collaboration, editorial logic, and the
  distinction between comprehensive and tailored documents.
- Each `outputs/<audience>/audience.md` governs that package's readers,
  positioning, emphasis, and assembly choices.

Do not edit Robert's user-owned Employment, Education, Awards, Publications,
Contact, or Funding & Professional Service sections unless he explicitly asks.

## Editorial System Now in Force

- Give each paragraph one purpose and each sentence one primary idea.
- Prefer the progression: problem or purpose, workflow or method, then
  scientific or engineering benefit.
- Use concrete, consistent vocabulary and explicit antecedents.
- Explain what a system accomplishes before describing its implementation.
- Connect every named technology to a capability; do not use stack lists as a
  substitute for substance.
- Avoid long inventories in prose. Use representative examples or summarize
  the high-level value.
- Remove repeated architecture and setup across adjacent sections.
- Centralize recurring software-design principles in the narrative CV.
- Use project descriptions for scientific purpose, researcher workflow, and
  distinctive implementation. Mention shared architecture only when it makes
  a project easier to understand.
- Use compact categorized lists for Technical Skills.
- Make cover letters explain fit through selected evidence rather than repeat
  the CV and project descriptions.
- Preserve full facts in canonical sources even when a derived document omits
  them.
- Treat page and word limits as planning budgets. Establish correct content
  first, then remove repetition and secondary detail.
- Before finalizing an application packet, review the CV, project descriptions,
  technical skills, and cover letter together for consistency and duplication.
- Use Robert's preferred forms: `inter-spike`, `cardiac myocyte`, and
  `sub-micron`.

## Completed RSE Work

The comprehensive RSE package has undergone a detailed rewrite:

- `outputs/research-software-engineer/cv.md` now centralizes Robert's recurring
  research-software design principles under an organized architecture,
  scientific-workflow, performance, quality, and delivery framework.
- `outputs/research-software-engineer/research-software-platforms.md` now
  emphasizes each project's scientific value and distinctive implementation
  without repeating the complete architecture narrative.
- The platform descriptions for CloudScope, AcqStore and AcqStore-Server,
  SanPy, MapManager, `mapmanager-web-components`, Brightest Path, AcqView, and
  PiE have been reviewed point by point.
- The root sources record FAIR-aligned practices: open-source publication,
  analysis provenance, tagged GitHub releases, selected Zenodo DOI releases,
  and committed release environment records.
- Object-oriented Python data models, GeoPandas and Shapely use, OME-Zarr
  multiscale pyramids, PyTorch and Cellpose prototypes, and current project
  relationships are recorded in the canonical sources.

The VivoSense job-specific variant is also complete:

- `outputs/research-software-engineer/vivosense-cv/cv.md`: 809 words.
- `outputs/research-software-engineer/vivosense-cv/research-software-platforms.md`:
  744 words including Technical Skills.
- `outputs/research-software-engineer/cover-letter-vivosense.md`: 511 words.
- The combined CV, selected platforms, and Technical Skills render to
  approximately 3.5 pages in Robert's current assembly.
- PiE receives expanded device-integration and synchronization detail because
  it is especially relevant to VivoSense.

These RSE files are useful editorial references for clarity and organization,
but they must not be copied wholesale into another audience package.

## Next Task: Refresh `outputs/imaging-core/`

The next session will update the imaging-core package to use the new editorial
system and current canonical facts. Do not edit imaging-core files until Robert
confirms the plan and blast radius in the new chat.

Current Markdown files in scope for review are:

- `outputs/imaging-core/audience.md`
- `outputs/imaging-core/cv.md`
- `outputs/imaging-core/cover-letter.md`
- `outputs/imaging-core/outreach-list.md`
- `outputs/imaging-core/email-drafts/nida-confocal-electron-microscopy-shiliang-zhang.md`

The `output_word/` files and `.DS_Store` files are not source documents. Do not
edit or regenerate them until the Markdown is approved and Robert explicitly
requests document generation.

Current approximate lengths:

- `audience.md`: 1,796 words.
- `cv.md`: 997 words.
- `cover-letter.md`: 337 words.
- `outreach-list.md`: 1,005 words.

### Imaging-core positioning to preserve

- The audience is academic imaging facilities and experimental biology
  researchers, initially through cold outreach rather than an advertised job.
- Robert seeks a staff role within an existing institution. The proposed
  analysis-core capability can begin within the institution's current
  structure and does not require a separate administrative core.
- The analysis-core concept complements imaging instrumentation, commercial
  software, acquisition expertise, existing analysis services, and training.
  It must not imply that a target facility lacks these capabilities.
- Commercial platforms remain appropriate when they meet the scientific need.
  Robert's open-source software adds specialized analysis, automation,
  reproducible downstream workflows, repository preparation, and interactive
  publication when needed.
- Robert's direct domain expertise is neuroscience, vascular biology, and
  cardiac physiology. Broader applicability comes through shared experimental
  methods and collaboration with domain experts.
- Researcher support, training, documentation, troubleshooting, and turning
  recurring needs into reusable software are central to the value proposition.
- CloudScope and AcqStore are the strongest imaging-platform evidence. SanPy
  demonstrates that the same research-software principles also apply to
  electrophysiology.
- Repository and data-sharing claims must distinguish standards such as
  OME-Zarr and NWB from repositories such as DANDI and the Brain Image Library.
- Proposed adapters for results exported by commercial analysis systems remain
  future institutional work, not implemented current functionality.
- The imaging-core `cv.md` embeds its tailored Teaching and Scientific
  Training section. Do not also assemble the shared teaching section for this
  package.

### Recommended workflow for the new chat

1. Confirm that the source-of-truth directory is
   `cudmore-narrative-cv/` and that Markdown is the initial editing scope.
2. Confirm whether "all imaging-core documents" includes the outreach list and
   personalized email draft. Recommended answer: yes, review them after the
   audience, CV, and general cover letter are stable.
3. Review and update `outputs/imaging-core/audience.md` first because it governs
   all derived imaging-core prose. Remove obsolete planning language, including
   the old future-RSE section, while preserving factual and strategic
   boundaries.
4. Compare the current imaging-core CV with the updated canonical narrative and
   comprehensive RSE CV. Propose a section structure and content budget before
   editing.
5. Rewrite the imaging-core CV point by point. Lead with scientific and
   researcher value; include only enough architecture to demonstrate how the
   software supports the workflow.
6. Review the general imaging-core cover letter against the revised CV. Keep it
   suitable for cold outreach and avoid repeating project detail already in
   the CV.
7. Review `outreach-list.md` and personalized email drafts last. Treat names,
   roles, services, URLs, and outreach status as time-sensitive. Verify current
   external facts from authoritative institutional sources before revising
   them.
8. Perform a complete packet consistency review and check rendered length only
   after the Markdown content is approved.

### Initial editorial observations for the next session

- The imaging-core CV predates the new sentence-level editorial standard and
  repeats several ideas across Professional Summary, Scientific Domains,
  Research Software Engineering, and Analysis Core.
- The current CV should retain its experimental-scientist orientation rather
  than adopting the full technical RSE architecture section.
- The continuous path from acquisition through analysis, curation, publication,
  and sharing remains central, but it should be expressed once clearly rather
  than repeated in several sections.
- The Analysis Core section should focus on institutional and researcher value,
  while the software section provides concrete evidence.
- Current canonical updates on FAIR practices, open-source distribution,
  analysis provenance, OME-Zarr pyramids, AcqStore, CloudScope-Web, and
  reusable browser interfaces should be considered selectively according to
  the imaging-core audience.
- The existing cover letter remains concise and structurally sound. Revise it
  only after the CV so it can select the strongest updated evidence.

## Scope Discipline

- Preserve unrelated files and user edits.
- Do not modify the comprehensive RSE or VivoSense documents to serve the
  imaging-core audience.
- Do not update Word or PDF artifacts during Markdown review.
- Do not remove canonical facts merely because a derived imaging-core document
  omits them.
- Discuss and approve the plan before editing, then proceed section by section
  when Robert wants detailed control.
