# Target Audiences

This file defines the intended readers and emphasis for CVs, cover letters, and
other application materials derived from `narrative.md`.

## Active Audience: Academic Imaging Facilities and Biology Researchers

### Application context

- Cold outreach where no position has been advertised.
- Academic biology departments, initially neuroscience and cardiac physiology.
- Academic imaging and related scientific core facilities.

### Intended readers

- Imaging/core-facility directors who oversee commercial instruments and
  support researchers during data acquisition.
- Experimental biology researchers who understand microscopy,
  electrophysiology, and quantitative analysis.

### Problem context

Imaging facilities provide essential instrumentation, maintenance, training,
and acquisition expertise. The analysis that follows acquisition may still
depend on isolated scripts created for individual projects. Facilities may have
limited resources for sustained software development even though reusable
analysis infrastructure is important to their scientific mission.

### Proposed analysis core

An imaging core provides shared instrumentation, maintenance, training, and
expertise so researchers can acquire data efficiently and correctly. Robert
proposes a complementary **analysis core**: shared expertise and reusable
software for turning acquired data into reproducible quantitative results.

For the current outreach, Robert is proposing to join an existing imaging
facility, academic department, or research organization in a staff role. The
analysis core describes a capability he would develop within the institution's
existing scientific and technical structure. It does not require the
institution to create a separate administrative core at the outset. The
capability could begin with direct researcher support, training, and reusable
analysis software, then grow according to institutional needs.

Together, an imaging core and an analysis core can support the lifecycle of
scientific research from experimental design and data collection through
analysis and publication.

The analysis core would help laboratories use one continuous software
environment during acquisition, offline analysis, and publication. Publication
and data sharing would be designed into the analysis architecture rather than
added after the scientific work is complete. This makes data sharing part of
the analysis workflow rather than a separate task created at the end of a
project.

### Robert's value proposition

- Scientific domain expertise in neuroscience, vascular biology, and cardiac
  physiology.
- Hands-on experience with microscopy and electrophysiology systems.
- Experience building acquisition systems and real-time software.
- Reusable analysis pipelines that replace one-off scripts.
- A proven open-source scientific software portfolio.
- Software designed to support acquisition, offline analysis, publication, and
  reuse.
- Practical support for planning and implementing NIH Data Management and
  Sharing Plans, including repository preparation, without presenting software
  as a substitute for policy or institutional oversight.
- Experience teaching the physical foundations and measurement limits of
  microscopy and signal detection.
- Ability to train researchers and interdisciplinary engineering teams to
  connect experimental design, acquisition, analysis, and interpretation.
- Interest in day-to-day researcher support, including troubleshooting
  datasets and pipelines, improving documentation, and turning recurring
  support problems into reusable solutions.
- Experience recognizing shared experimental technologies and analysis
  problems across biological disciplines.
- Ability to support common imaging-core needs across biological disciplines,
  including reliable data management, quantitative analysis, reproducible
  workflows, and practical researcher support.
- Software designed to be extended with domain experts for new experimental
  systems without claiming subject-matter expertise in every biological field.
- AcqStore and CloudScope as evidence of a shared imaging engine supporting
  desktop, web, and scripting workflows.
- SanPy as evidence that the same backend/frontend pattern can support
  real-time and offline electrophysiology analysis and published analyzed
  datasets without requiring a separately named backend project.

### Writing emphasis

- Lead with scientific problems and research workflows.
- Distinguish Robert's direct domain expertise from the broader applicability
  of his software. Use neuroscience, vascular biology, and cardiac physiology
  for domain expertise. Explain broader applicability through shared
  experimental methods and collaboration with domain experts.
- Use language accessible to experimental scientists.
- Demonstrate software-engineering depth through concrete platforms and
  outcomes.
- Keep individual project names in the CV as evidence. In the general cover
  letter, explain the architecture and its value without listing projects.
- Reserve detailed technologies and engineering practices for technical
  sections.
- Define "analysis core" as the proposed institutional capability; do not use
  it as another name for AcqStore.
- State that Robert seeks a staff role within an existing organization and
  would develop the analysis-core capability within that structure.
- Do not imply that cold outreach requires the institution to establish a
  separate administrative core.
- Present researcher support as part of the software-development process.
  Support reveals shared requirements that can guide documentation, training,
  and reusable software improvements.
- AcqStore is an imaging-data engine, not "the analysis core."
- AcqStore has no user-facing GUI. Its API supports CloudScope's desktop and
  web interfaces and scripting workflows.
- Imaging analyses are implemented in AcqStore and exposed through CloudScope.
  New AcqStore file loaders, analyses, and visualization tools can therefore
  become available through CloudScope without duplicating their implementation.
- AcqStore exports analysis results as structured tabular data through an
  extensible export system.
- NiceWidgets is a reusable Python library of NiceGUI components used by
  CloudScope for scientific visualization and interaction. It demonstrates
  modular user-interface engineering and supports the same CloudScope
  interface code in desktop and web deployments.
- Keep NiceWidgets in the long-form narrative and future technical CV. Omit it
  as a separate project from the active imaging-facility and biology CV because
  its implementation detail is less important to this audience.
- AcqStore Server is a separate local FastAPI service that exposes AcqStore
  metadata and image planes through a versioned HTTP API for thin browser,
  JavaScript, and Python clients.
- Keep AcqStore Server in supporting documents and future technical CV
  variants. Omit it from the active imaging-facility CV and cover letter.
- Generate Technical Skills from the broad baseline in `technical-skills.md`.
  Do not apply the narrative audience filter to this section. Robert will
  manually shorten or tailor it after generation.
- Do not claim that a particular institution lacks software expertise or
  funding without direct evidence.
- Candidate CV inclusion: one concise statement on specification-first,
  human-directed AI-assisted development. It should emphasize scientific
  judgment and validation, not generic AI use.
- Keep the funding strategy and NIH/NSF study-section service out of `cv.md`
  and `cover-letter.md` for now. Retain this material in the planning documents
  and long-form narrative until Robert explicitly decides to use it.
- Describe NWB as a data standard for electrophysiology and optical physiology
  imaging data, not as a repository.
- Treat DANDI, the Brain Image Library, and SPARC as examples selected
  according to the scientific domain and data type, not as destinations for
  every dataset.
- Describe standards and repository integration as active development until
  implementation is confirmed for a specific workflow.
- Keep project evidence easy to verify. In a CV, prefer compact links attached
  to each project entry: Documentation, Source Code when public, and Live Web
  App when available. Omit a source-code link for a private repository.

### Active documents

- `cv.md`
- `cover-letter.md`

## Future Audience: Research Software Engineering

This audience will use a separate CV and cover letter. It may place greater
emphasis on software architecture, APIs, testing, data systems, deployment, and
technical leadership while compressing biological detail.

Do not modify the active imaging/biology CV to serve this audience.
