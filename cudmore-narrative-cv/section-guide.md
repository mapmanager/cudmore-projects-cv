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
- State directly that experimental experience provides a practical foundation
  for collaborating in scientific domains beyond Robert's own direct
  expertise.
- Explain that domain experts contribute the subject-matter knowledge needed
  to identify scientifically valid measurements and ensure the analysis
  software addresses the scientific question.
- Do not claim direct experimental experience in organ systems where the
  experience came through interaction with other laboratories.
- Do not discuss individual software projects.

## Research Software Engineering

Primary question

- How do I build scientific software?

Focus

- Team science and collaboration with people who bring complementary
  scientific and technical expertise.
- Robert's unique combination of experimental biology, quantitative analysis,
  and research software engineering.
- Translate between biological questions, measurement constraints, analytical
  requirements, and software design.
- Do not imply that one person supplies every form of domain expertise.
- Python.
- Robert's computer science foundation: bachelor's degree, full-time
  scientific software development, and later graduate work in computer
  science. Do not imply a completed master's degree or modify user-owned
  Education or Employment sections.
- Algorithm design, including paper-and-pencil work, and architectural
  planning before implementation. Use current projects as evidence of modular
  design. Historical C++ work is background, not the motivation for current
  architecture; mention it at most once in the RSE narrative CV, or omit it.
- Scientific software architecture.
- APIs and data models.
- Modularity from the start: independently usable Python backends for scripts
  and notebooks, with thin graphical interfaces.
- PyQt and NiceGUI model-view-controller architecture. Views emit intent
  events, controllers alone mutate models within the GUI, and state events
  update subscribed views. Connect this discipline to coordinated interfaces
  and maintainability as applications grow.
- Testing and continuous integration.
- Scientific curation as a software-design requirement: heuristics, backend
  APIs, and GUIs support rapid review of automated results against raw data.
- Explain how identifying false positives and false negatives informs
  repeatable curation rules in code for noisy images, signals, and video.
- Distinguish blinding to scientific condition, randomized presentation, and
  random subset selection. Connect these practices to limiting experimenter
  bias and making semi-automatic review feasible across hundreds of files.
- Describe sampling as enabling defined subset review, without asserting
  statistical validity in the absence of a specified sampling design.
- Keep general curation practices separate from project-specific evidence;
  do not imply every project implements every safeguard.
- Scientific visualization.
- Plugin architectures.
- Public backend and component APIs as boundaries for extension and
  interoperability with analysis code developed by others. Do not imply
  integration requires no additional work.
- Performance optimization.
- Use `algorithm-design.md` as a compact supporting inventory for selected
  measurement methods and parallel execution. It supplements the outline and
  narrative and does not establish unrelated project or career claims.
- For RSE prose, connect measurement requirements to numerical methods and
  independent units of work. Keep exact parameter defaults and implementation
  maintenance notes outside the CV. Avoid claims of invented standard methods,
  measured speedups, or scientific validation not supported by the sources.
- Cross-platform desktop applications.
- NiceGUI for a single codebase targeting macOS, Windows, and the web.
- Serverless web interfaces using WebAssembly/Pyodide.
- WebMapManager and PyMapManager use the same MapManagerCore backend API,
  algorithms, and loading and saving code; WebMapManager runs Python through
  Pyodide. AcqView provides a complementary example using community readers.
- Lazy access extends from Python analysis APIs to Zarr-based publication
  viewers. Use "raw data" for original time-series recordings and images.
- Explain NWB export within standards-based data sharing and repository
  deposition, using formats appropriate to the repository and data type.
- One continuous software environment spanning acquisition, offline analysis,
  and publication.
- The same computational backend, data model, graphical interfaces, and
  scripting interfaces remain available across all three stages.
- Publication and data sharing designed into the architecture rather than
  added at the end of a project.
- Use CloudScope and SanPy as concrete evidence that this workflow has been
  implemented in imaging and electrophysiology.
- Explain that CloudScope-Web and SanPy-Web present saved, self-contained
  datasets as interactive published figures on the web.
- Present commercial instrument and image-analysis software as a valuable part
  of imaging-core workflows.
- State that Robert's open-source software complements rather than replaces
  general-purpose commercial platforms.
- Explain that commercial tools can support instrument control, visualization,
  and established analyses, while extensible open-source software supports
  specialized methods and longer reproducible workflows.
- Do not claim that Robert has personally used Imaris, ZEN, Arivis, Dragonfly,
  or other named commercial image-analysis platforms.
- Do not claim that current software imports analysis results exported by those
  platforms.
- Treat adapters for commercial-analysis results as a proposed analysis-core
  capability.
- Clearly label examples such as detecting cell bodies in Imaris and continuing
  in an open analysis pipeline as hypothetical workflows.
- Avoid categorical claims about capabilities that commercial software lacks.
- Specification-first, human-directed use of language models for software
  planning and implementation.
- Explain that scientific questions, measurement constraints, analysis
  requirements, architecture, and validation remain human responsibilities.
- Do not present generic AI use or "prompt engineer" as the differentiator.
- Describe daily LLM use for planning, architectural discussion, detailed
  specifications, implementation, and unit tests. Robert supplies direction
  and remains responsible for technical and scientific decisions.
- Emphasize how LLMs support planning, implementation, and testing, with
  AcqView as a concrete example. Do not retain code-generation estimates or
  disclose AcqView as fully LLM-generated. Omit generic coverage percentages.
- Older projects were originally developed without AI; later maintenance,
  particularly of SanPy, uses LLMs. Do not imply a project has never used AI.
- Do not infer scientific validity from coverage or independent expert
  fluency in JavaScript/TypeScript from assisted development.
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
- Explain how reusable infrastructure can extend workflows that begin with
  commercial acquisition or analysis software.
- Emphasize the connected lifecycle from acquisition and analysis through
  specialized processing, repository preparation, and interactive publication.
- When relevant, connect open OME-Zarr or Neurodata Without Borders datasets
  with the DANDI Archive, the Brain Image Library, and CloudScope-Web without
  presenting every repository as appropriate for every dataset.

## Software Philosophy

Primary question

- What principles guide my software decisions?

Focus

- Principles that apply across every project.
- Reproducibility.
- Maintainability.
- Longevity.
- Accessibility for scientists.
- Treat commercial and open-source software as complementary rather than
  competing systems.
- Avoid framing open-source development as an ideological rejection of
  commercial tools or an attempt to reproduce every general-purpose feature.
- Emphasize specialized scientific analysis, transparency, extensibility, and
  connection across the research lifecycle.
- Do not discuss individual software platforms.

## Grant Writing and Funded Research

Primary question

- What demonstrated experience do I bring to developing, securing, and leading
  funded scientific and research-software projects?

Focus

- Representative funding successes rather than a complete chronological list.
- Leadership of the scientific and technical design and writing of the NIH
  BRAIN Initiative R01 and Chan Zuckerberg Initiative software proposal.
- Leadership and management of the research for the five-year NIH BRAIN
  Initiative R01 and the Chan Zuckerberg Initiative grant.
- Training and mentorship of funded personnel, including full-time image
  analysts and graduate and undergraduate students in engineering.
- Role as one of three principal investigators on the NHLBI R01.
- Contributions to electrophysiology and imaging experimental design,
  implementation, execution, and analysis.
- Ability to lead proposals within areas of direct expertise and contribute to
  multidisciplinary proposals.
- Connect scientific aims, experimental design, quantitative analysis,
  software development, personnel, and project execution.
- Do not include funding amounts in narrative prose.
- Keep grant numbers, dates, and the complete chronological record in the
  user-owned Funding & Professional Service section.

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

- What scientific problems do my software platforms solve, and how do their
  components work together?

Focus

- AcqView makes community-developed microscopy readers accessible to
  researchers through a static TypeScript/JavaScript/Vue application using
  WebAssembly and Pyodide. Explain local file opening, metadata inspection,
  image display, and TIFF export. Credit the upstream Python reader authors.
- Use AcqView as a concrete example of browser-based Python execution and
  reuse of mapmanager-web-components. It has a GitHub README and live SPA,
  but no dedicated documentation site. Avoid blanket format-support claims.
- Do not characterize local file selection as a server upload or claim that
  no other nonprogrammer tools exist. Detailed reader limitations belong in
  project documentation.
- Present CloudScope as an integrated suite comprising CloudScope, AcqStore,
  and CloudScope-Web.
- CloudScope is the macOS, Windows, and server-backed web application for
  loading, visualizing, analyzing, curating, and saving potentially hundreds of
  raw image files.
- AcqStore is the reproducible Python backend for file loading, quantitative
  analysis, results, and self-contained saved datasets.
- CloudScope-Web opens self-contained OME-Zarr datasets saved by AcqStore and
  presents their raw data and results as interactive published figures.
- Explain the suite as one continuous pipeline from raw data through analysis,
  human-in-the-loop curation, saving, publication, and reuse.
- Include CloudScope's support for blinded and randomized analysis and
  curation.
- In detailed source material, specify that blinding can conceal file names,
  experimental groups or conditions, and other identifying metadata, and that
  datasets can be presented in a randomized order.
- Connect these features to systematic review of large datasets and reduced
  experimenter bias without claiming that software eliminates bias.
- Emphasize scientific benefits: scalable analysis with human judgment,
  reconstructable analyses, interactive figures, and access to underlying raw
  data.
- Explain that new AcqStore file loaders, analyses, and visualization
  capabilities can become available through CloudScope without duplicating
  their implementation.
- Present NiceWidgets and `mapmanager-web-components` together as reusable
  user-interface infrastructure.
- NiceWidgets supplies reusable NiceGUI components used by CloudScope.
- `mapmanager-web-components` supplies image viewer, nicepool, and signal
  viewer components, each with a live static single-page application demo.
- Describe their implemented use in CloudScope-Web, SanPy-Web, the PyQt SanPy
  application, and the NiceGUI CloudScope application. Do not infer that all
  components are used in every application or that every migration is complete.
- Explain reuse across imaging, electrophysiology, desktop analysis, and web
  publication while avoiding duplicated interface development.
- Give AcqStore a distinct identity as a general-purpose Python backend with
  public APIs and schema-based components for interoperability.
- For technical audiences, explain its published OME-Zarr collection
  specification and machine-readable schema. Distinguish the initial normative
  draft from OME-NGFF itself, whose image semantics remain authoritative.
- Keep AcqStore distinct from the user-interface libraries: AcqStore supplies
  scientific data and analysis, while NiceWidgets and
  `mapmanager-web-components` supply graphical components.
- Retain AcqStore Server in the long-form technical inventory as evidence of
  API and thin-client architecture. Include it in a tailored CV only when its
  technical relevance materially supports that audience.
- Present SanPy as a general-purpose event-detection and analysis platform for
  whole-cell current-clamp recordings from neurons and cardiac myocytes.
- Explain that its primary use is action-potential analysis while retaining
  support for detecting and analyzing subthreshold events.
- State that the same downstream analysis extracts more than 20 quantitative
  features from either type of detected event.
- Emphasize standardized detection, measurement, graphical review, and
  curation rather than listing every analysis feature.
- Include detection presets for fast neurons, slow neurons, cardiac myocytes,
  and subthreshold events in detailed source material.
- Explain that the desktop application, scripts, and computational notebooks
  use the same detection and analysis implementation.
- Describe extensibility through file loaders, analysis measurements, and
  graphical plugins.
- Connect use during experiments and offline analysis with saving raw
  recordings, metadata, detection parameters, and completed results as
  self-contained SanPy Zarr datasets.
- Present SanPy-Web as the web application that opens SanPy Zarr datasets as
  interactive published figures without requiring the desktop application.
- Explain that SanPy-Web keeps published electrophysiology results connected
  to the raw recordings and completed analyses that produced them.
- Describe SanPy Zarr's published format, parameter and result definitions,
  and export API as evidence of interoperable data design. Its documentation is
  on `codex/sanpy-zarr`; do not infer default-branch or release status.
- Keep SanPy Zarr distinct from AcqStore's implemented NWB export.
- Present PiE as a modular and scalable platform for reproducible home-cage
  behavioral experiments.
- Explain that detailed build instructions and commercially available
  components allow an individual behavior-box design to be replicated across
  an array.
- Distinguish each independently operated PiE behavior box from Commander, the
  coordination layer that controls and monitors any number of boxes.
- Emphasize parallel operation, centralized status and video monitoring, and
  file synchronization.
- Include remote video recording and streaming, hardware control,
  environmental monitoring, and experimental-event logging.
- Connect remote operation with reduced experimenter interference.
- In detailed source material, identify VideoAnnotate as a related application
  in a separate repository.
- For end-user descriptions, present its graphical behavioral scoring and
  blinded review of randomized video segments without repository details.
- Keep wiring details, network configuration, deployment commands, and
  trial-file schemas in technical documentation rather than audience-facing
  CV prose.
- Present MapManager as the continuation of a proven longitudinal-analysis
  workflow rather than as a single undifferentiated software package.
- Distinguish the established Igor Pro desktop application from the modern
  open-source MapManager ecosystem.
- Describe the Igor Pro version as a research platform used in at least five
  peer-reviewed publications.
- Emphasize its scientific capabilities: image alignment across time points,
  semi-automatic correspondence of annotations, interactive curation, and
  measurement of structural changes across longitudinal imaging sessions.
- Include dendritic-segment tracing, automatic connection of each spine to its
  parent segment, and region-of-interest intensity measurements when the
  audience benefits from scientific detail.
- Explain that spine, dendritic-segment, and ground-truth background regions of
  interest support longitudinal analysis of submicron, diffraction-limited
  dendritic spines.
- Note its routine use with longitudinal datasets from awake, behaving mice
  when relevant to the audience.
- Present the modern ecosystem as under active development while noting that a
  working WebMapManager application is publicly available.
- Explain the complementary roles of MapManagerCore as the shared Python API,
  PyMapManager as the desktop application with scripting and notebook access,
  and WebMapManager as the browser application.
- Emphasize that the shared implementation supports consistent scientific
  methods across desktop, browser, scripting, and notebook workflows.
- For end-user descriptions, lead with the scientific workflow and proven
  research use rather than implementation technologies.
- Do not imply that every capability of the Igor Pro application has already
  been reproduced in the modern ecosystem.
- Present Brightest Path as a reusable computational component for tracing
  bright filament-like structures in scientific images.
- Use axons and dendritic segments as concrete biological examples.
- Explain the user workflow: select start and end points, calculate the
  brightest path between them, and return image coordinates that can be
  visualized and measured.
- Retain n-dimensional image support in detailed and audience-facing material.
- Distinguish `brightest-path-lib`, the documented Python library, from the
  separate napari tracing plugin that provides the graphical interface.
- Explain that graphical applications, scripts, and computational notebooks
  can use the same tested implementation.
- Keep A*, bidirectional A*, image-axis scaling, search-progress reporting, and
  Numba acceleration in detailed source material unless they materially
  support a technical audience.
- Do not present Brightest Path as a complete research platform.
- Present SanPy, PiE, MapManager, and Brightest Path as independent software
  projects while preserving the distinction between complete platforms and
  reusable computational components.

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
- An audience-specific variant may reorganize the baseline and connect skills
  to project evidence while preserving its breadth and stated exclusions.
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
- For the RSE audience, emphasize senior hands-on technical leadership,
  continued coding, architecture, coordination, and engineering mentorship.
  Do not make predominantly administrative management or research-faculty roles
  the target. A separate scientific benchmark example is not required for
  drafting; retain documented testing and reproducibility without inventing
  measurement-validation evidence.

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
- Lectures on biometric Internet of Things devices for monitoring human health
  and disease progression.
- Hands-on laboratories in which students wired circuits and sensors and
  connected them into distributed systems using internet dashboards.
- Scientific opportunities created by longitudinal data collected across large
  populations.
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
