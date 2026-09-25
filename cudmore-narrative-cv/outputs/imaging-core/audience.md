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

Imaging cores commonly provide commercial instrument software,
general-purpose image-analysis platforms, analysis workstations, and training
in established workflows. The proposed opportunity is not based on an absence
of analysis software or expertise. It arises when projects require specialized
analyses, extensions of established methods, automation across datasets,
reproducible downstream processing, repository preparation, or interactive
publication.

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

The analysis-core capability would use existing commercial platforms when they
meet the scientific need and develop specialized open-source workflows when an
experiment requires additional analysis or integration. As institutional needs
emerge, it could also develop adapters that carry results exported from
commercial software into custom downstream processing. These adapters are a
proposed capability, not functionality currently implemented in Robert's
software.

The analysis core would help laboratories use one continuous software
environment during acquisition, offline analysis, and publication. Publication
and data sharing would be designed into the analysis architecture rather than
added after the scientific work is complete. This makes data sharing part of
the analysis workflow rather than a separate task created at the end of a
project.

This approach would extend existing core services rather than replace or
criticize them. Commercial tools could remain central to acquisition,
visualization, and established analysis, while specialized software connects
raw data and completed analyses with open formats, repositories, and
interactive publication.

### Robert's value proposition

- Scientific domain expertise in neuroscience, vascular biology, and cardiac
  physiology.
- Thrive in multidisciplinary teams where each member contributes distinct
  scientific or technical expertise.
- Hands-on experience with microscopy and electrophysiology systems.
- Experience building acquisition systems and real-time software.
- Reusable analysis pipelines that replace one-off scripts.
- A proven open-source scientific software portfolio.
- Ability to work alongside commercial instrument and image-analysis platforms
  without attempting to reproduce their general-purpose capabilities.
- Ability to identify recurring specialized-analysis needs across laboratories
  and turn them into reusable software.
- Extensible software for scientific questions that require analyses beyond
  established commercial workflows.
- Reproducible pipelines that connect laboratory analysis with repository
  preparation, open dissemination, and interactive publication.
- Proposed future integration of results exported by commercial platforms when
  institutional needs make that useful.
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
- The CloudScope suite as evidence of a continuous workflow from raw imaging
  data through quantitative analysis, scientific curation, publication, and
  reuse.
- AcqStore saves self-contained OME-Zarr datasets containing raw data and
  completed analyses, and CloudScope-Web opens those datasets as interactive
  figures.
- AcqStore can export OME-Zarr and NWB datasets for sharing through public
  repositories selected according to scientific domain and data type.
- SanPy as evidence that the same continuous workflow supports electrophysiology
  analysis during experiments, offline analysis and curation, and interactive
  publication.
- SanPy saves raw recordings, metadata, detection parameters, and completed
  results as self-contained SanPy Zarr datasets, and SanPy-Web opens those
  datasets as interactive published figures on the web.

### Writing emphasis

- Lead with scientific problems and research workflows.
- Acknowledge that imaging cores commonly provide valuable commercial
  acquisition and image-analysis software, workstations, and training.
- Present Robert's software as complementary to commercial platforms, not as a
  general replacement for them.
- Explain that established commercial tools should remain in the workflow when
  they meet the scientific need.
- Emphasize specialized analysis, extensibility, reproducible downstream
  processing, repository preparation, and interactive publication.
- Do not claim that Robert has personally used Imaris, ZEN, Arivis, Dragonfly,
  or other named commercial image-analysis platforms.
- Do not claim that current software imports analysis results exported by those
  platforms.
- Describe adapters for commercial-analysis results as proposed work that could
  be developed in response to institutional needs.
- Clearly label examples such as detecting cell bodies in Imaris and continuing
  in an open analysis pipeline as hypothetical workflows.
- Avoid categorical claims about capabilities that commercial software lacks.
- Do not imply that a target core lacks analysis expertise, software, or
  training.
- In personalized outreach, acknowledge the commercial tools and analysis
  services that the target core already provides.
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
- Present team science as a central working method. Robert contributes a
  combination of experimental biology, quantitative analysis, and research
  software engineering while working with complementary domain experts.
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
- State that AcqStore implements OME-Zarr and NWB export. CloudScope-Web opens
  self-contained OME-Zarr datasets as interactive figures.
- Continue to distinguish implemented export from the policies and practical
  requirements of a specific repository submission.
- Keep project evidence easy to verify. In a CV, prefer compact links attached
  to each project entry: Documentation, Source Code when public, and Live Web
  App when available. Omit a source-code link for a private repository.

### Active documents

- `cv.md`
- `cover-letter.md`

### Current CV regeneration scope

- Regenerate only the imaging-core-specific narrative sections.
- Include an `Analysis Core and Institutional Contribution` section that
  defines the proposed capability and explains how it can develop within an
  existing organization.
- Defer project-link review until prose editing is complete.

### CV assembly boundary

The output `cv.md` contains only audience-specific narrative sections.
Standardized sections, including Teaching and Scientific Training, Research
Software Platforms, Project Resources, Technical Skills, and user-maintained
CV sections, are supplied separately during final document assembly.

## Future Audience: Research Software Engineering

This audience will use a separate CV and cover letter. It may place greater
emphasis on software architecture, APIs, testing, data systems, deployment, and
technical leadership while compressing biological detail.

Do not modify the active imaging/biology CV to serve this audience.
