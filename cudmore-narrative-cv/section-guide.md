# Section Guide

## Introduction

Primary question

- Who am I, and what is this document?

Focus

- Introduce my professional identity.
- State the central theme of the narrative.
- Explain what the reader should expect.
- Do not explain my mission or software philosophy in detail.

## Mission

Primary question

- Why do I do this work?

Focus

- Motivation for building scientific software.
- Scientific problems I want to solve.
- Reproducibility and quantitative analysis.
- Do not repeat the Introduction.

## Scientific Domains

Primary question

- Where have I applied this work?

Focus

- Biological disciplines and experimental systems.
- Show that similar computational problems appear across disciplines.
- State domain expertise in neuroscience, vascular biology, and cardiac
  physiology.
- Explain the trajectory from studying neurons to brain vasculature and then
  cardiac physiology.
- Use broad descriptions such as microscopy and electrophysiology in the
  targeted CV.
- Distinguish direct biological expertise from the broader applicability of
  shared experimental and analysis methods.
- Explain the shared practical needs of imaging-core users in accessible
  language: organizing and visualizing data, making quantitative measurements,
  producing reproducible results, and receiving practical support.
- Explain that software can be extended with domain experts to support new
  experimental systems.
- Do not claim direct experimental experience in organ systems where the
  experience came through interaction with other laboratories.
- Do not discuss individual software projects.

## Research Software Engineering

Primary question

- How do I build scientific software?

Focus

- Python.
- Scientific software architecture.
- APIs and data models.
- Testing and continuous integration.
- Scientific visualization.
- Plugin architectures.
- Performance optimization.
- Cross-platform desktop applications.
- NiceGUI for a single codebase targeting macOS, Windows, and the web.
- Serverless web interfaces using WebAssembly/Pyodide.
- One continuous software environment spanning acquisition, offline analysis,
  and publication.
- The same computational backend, data model, graphical interfaces, and
  scripting interfaces remain available across all three stages.
- Publication and data sharing designed into the architecture rather than
  added at the end of a project.
- Specification-first, human-directed use of language models for software
  planning and implementation.
- Explain that scientific questions, measurement constraints, analysis
  requirements, architecture, and validation remain human responsibilities.
- Do not present generic AI use or "prompt engineer" as the differentiator.
- Do not discuss research infrastructure or software philosophy.

## Research Infrastructure

Primary question

- Why do I build reusable scientific platforms?

Focus

- Reusable platforms.
- Open source.
- Documentation.
- Workflow automation.
- Sustainability.
- Long-term maintenance.
- Community-oriented software.
- Data organization, metadata, analysis provenance, export, and repository
  preparation as parts of the analysis workflow.
- Practical support for NIH Data Management and Sharing Plans without claiming
  that software alone satisfies policy, privacy, access, retention, or
  institutional requirements.
- Repository selection based on the scientific domain, data type, applicable
  policy, and repository capabilities.

## Software Philosophy

Primary question

- What principles guide my software decisions?

Focus

- Principles that apply across every project.
- Reproducibility.
- Maintainability.
- Longevity.
- Accessibility for scientists.
- Do not discuss individual software platforms.

## Research Software Funding Strategy

Primary question

- How can institutions sustain research software engineering as scientific
  infrastructure?

Focus

- Agency recognition of sustainable research software and RSE career paths.
- Distinguish direct RSE salary support from project and ecosystem funding.
- Connect the active outreach strategy to institutional funding opportunities.
- Explain how NIH and NSF review experience can support proposal development
  without naming unconfirmed study sections or mechanisms.
- Include interest in pursuing appropriate funding and helping others develop
  competitive proposals.
- Date and link all funding-mechanism status and eligibility claims.
- Keep chronological grants, awards, and service in the user-owned Funding &
  Professional Service section.

## Scientific Software Platforms

Primary question

- What have I built?

Focus

- CloudScope.
- AcqStore.
- AcqStore Server.
- NiceWidgets.
- SanPy.
- PiE.
- MapManager.
- Brightest Path.
- Distinguish computational backends from user-facing applications.
- Explain when new backend file loaders, analyses, or visualization tools
  become available through graphical and scripting interfaces.
- Explain that NiceWidgets provides reusable scientific user-interface
  components used by CloudScope, while AcqStore provides the scientific data
  and analysis backend.
- Explain that AcqStore Server exposes AcqStore data and metadata through a
  versioned local HTTP API so thin clients can use the same scientific backend
  without embedding or reimplementing it.
- Distinguish AcqStore Server's native status interface from the scientific
  graphical applications built on its API.
- Keep AcqStore Server in the long-form narrative and future technical CV
  variants; omit it from the active imaging-facility CV and cover letter.
- Keep NiceWidgets in the long-form narrative and technical CV variants; omit
  it from the active imaging-facility and biology CV unless its architectural
  value becomes necessary.
- Each project stands on its own; no introductory prose is required.

## Technical Skills

Primary question

- Which documented technologies support the claims made for a target role?

Focus

- Use `technical-skills.md` as the factual inventory.
- Follow the generated-CV baseline defined in `technical-skills.md`.
- Begin with a broad representation of documented skills rather than applying
  an audience-specific filter during generation.
- Omit only items explicitly marked as too granular in the baseline policy.
- Robert will manually shorten or tailor the generated section.
- Place Python first, followed by C/C++ and Igor Pro when programming
  languages are listed.
- Connect less familiar technologies to project evidence when useful.
- Distinguish current production systems from prototypes.
- Avoid turning the long-form narrative into an exhaustive technology list.
- Do not add a technology unless it is documented in the factual inventory.

## Leadership and Mentorship

Primary question

- How do I support researchers and sustain useful shared software?

Focus

- Direct, day-to-day work with researchers.
- Troubleshooting datasets and analysis pipelines.
- Documentation, training, and responsive user support.
- Using recurring support problems to guide reusable software improvements.
- Involving researchers throughout design, implementation, testing, and
  feedback.
- Helping researchers become confident and self-sufficient.
- Present service work as part of sustainable research software engineering,
  not as separate from software development.
- For the active audience, state interest in joining an existing organization
  in a staff role and developing its analysis capability over time.

## Teaching and Scientific Training

Primary question

- How do I teach scientists and engineers to connect instruments,
  measurements, analysis, and interpretation?

Focus

- Individual lectures, laboratory instruction, and research training.
- Optical physics, laser-scanning microscopy, image formation, and the
  physical limits of light microscopy.
- Signal-detection principles relevant to imaging and electrophysiology.
- Design and instruction of an undergraduate Internet of Things course.
- Wearable technology, hands-on circuit construction, and real-time and remote
  data acquisition.
- Mentoring engineers who bring mathematics, physics, and software expertise
  but initially lack biological research experience.
- Explain why this teaching supports imaging-core and analysis-core users.
- Do not turn this section into a chronological course list.

## Future Directions

Primary question

- How should this architecture extend scientific analysis and communication?

Focus

- Publication as a designed stage of the analysis architecture.
- Data sharing as part of the analysis workflow rather than a separate task
  created at the end of a project.
- Community data standards and repository preparation.
- Neurodata Without Borders as a standard for electrophysiology and optical
  physiology imaging data; do not describe NWB as a repository.
- DANDI, the Brain Image Library, and SPARC as repository or platform options
  selected according to scientific domain and data type.
- Modular support for other standards and repositories.
- Clearly distinguish implemented capabilities from active development and
  future plans.
- Keep dated policy and repository references in `outline.md`.
