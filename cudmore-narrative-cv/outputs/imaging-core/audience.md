# Academic Imaging Facilities and Biology Researchers

This file defines the audience, positioning, emphasis, and boundaries for the
imaging-core CV, cover letter, and outreach materials derived from the
canonical narrative sources.

## Application Context

- Cold outreach where no position has been advertised.
- Academic imaging and related scientific core facilities.
- Academic biology departments and research organizations, initially in
  neuroscience and cardiac physiology.
- Scientific staff, research-faculty, and related roles within an existing
  imaging facility, department, or research organization.

## Intended Readers

- Imaging and core-facility directors who oversee instruments, analysis
  services, training, and researcher support.
- Experimental biologists who understand microscopy, electrophysiology, and
  quantitative analysis.
- Scientific and institutional leaders who could benefit from reusable
  analysis software and shared quantitative expertise.

## Positioning

Imaging facilities provide essential instrumentation, maintenance, training,
acquisition expertise, commercial software, and established analysis
services. This package must recognize those capabilities and must not imply
that a target facility lacks analysis expertise, software, or training.

Robert proposes a complementary analysis-core capability: shared expertise,
researcher support, and reusable software for turning acquired data into
reproducible quantitative results. In a scientific staff, research-faculty, or
related role, he would develop this capability within an institution's
existing scientific and technical structure. It could begin with direct
support, training, and reusable analysis workflows, then grow according to
institutional needs. It does not require the institution to create a separate
administrative core at the outset.

Commercial software should remain in the workflow when it meets the
scientific need. Robert's open-source software complements established tools
when a project requires specialized analysis, automation across datasets,
transparent or extensible methods, reproducible downstream processing,
repository preparation, or interactive publication.

An institution could develop adapters that carry results exported by
commercial analysis systems into specialized open workflows. This is proposed
future institutional work, not functionality currently implemented in
Robert's software. Do not claim that Robert has personally used named
commercial image-analysis platforms.

## Value Proposition

Robert combines experimental science, quantitative analysis, and research
software engineering.

- His direct domain expertise is in neuroscience, vascular biology, and
  cardiac physiology.
- He has decades of bench experience in microscopy and electrophysiology,
  including experimental design, acquisition, analysis, interpretation, and
  publication.
- He has built custom microscopy and electrophysiology acquisition systems
  and software for real-time data acquisition and visualization.
- He works with domain experts to identify scientifically valid measurements
  and extend software to experimental systems beyond his direct biological
  expertise.
- He supports researchers through training, documentation, troubleshooting,
  and practical help with datasets and analysis pipelines.
- He uses recurring support needs to guide reusable software improvements that
  can benefit multiple laboratories.
- He can connect experimental design and acquisition with quantitative
  analysis, curation, publication, and data sharing.
- His experience teaching microscopy, image formation, measurement limits,
  and signal detection supports effective training in an imaging-core
  environment.

## Primary Software Evidence

CloudScope and AcqStore provide the strongest evidence for this audience.
Together with CloudScope-Web, they support a continuous imaging workflow from
raw data through quantitative analysis, scientific review, saved results, and
interactive publication.

- CloudScope gives researchers graphical tools to visualize images, run
  analyses, inspect results against raw data, and curate false-positive and
  false-negative detections.
- AcqStore provides the imaging-data and analysis backend used by CloudScope
  and by scripts. It has no user-facing graphical interface.
- AcqStore saves self-contained OME-Zarr datasets containing raw images,
  metadata, analysis parameters, and completed results. It also implements NWB
  export.
- CloudScope-Web opens saved OME-Zarr datasets as interactive published
  figures that connect results with their underlying data.
- AcqStore's extensible interfaces allow new file loaders, analyses, and
  export methods to become available to applications without duplicating the
  scientific implementation.

SanPy provides concise supporting evidence that the same principles apply to
electrophysiology. It connects analysis during experiments with offline review,
curation, self-contained SanPy Zarr exports, and interactive publication
through SanPy-Web.

Other imaging projects may be selected when they clarify relevant scientific
experience or capabilities. Use the canonical sources and vetted RSE platform
descriptions to verify claims, but do not import the RSE package's complete
technical emphasis into this package.

## Writing Emphasis

- Lead with scientific problems, researcher workflows, and institutional
  value.
- Use accessible scientist-to-scientist language.
- Present team science as the working method. Robert contributes experimental,
  quantitative, and software expertise while collaborating with specialists
  whose domain knowledge complements his own.
- Distinguish direct biological expertise from the broader applicability of
  shared imaging methods and analysis problems.
- Present researcher support as part of sustainable software development, not
  as a separate service activity.
- Explain the continuous path from acquisition through analysis, curation,
  publication, and sharing once clearly rather than repeating it across
  sections.
- Use software projects as concrete evidence. Include only enough technical
  detail to explain the scientific or institutional benefit.
- Keep recurring architecture in the CV concise. Detailed engineering belongs
  in platform descriptions and technical sections.
- Treat page and word counts as planning budgets. Remove repetition and
  secondary implementation detail before removing a critical qualification.

## Claim Boundaries

- Do not imply that a target institution lacks analysis software, expertise,
  services, training, or funding.
- Do not present open-source software as a replacement for general-purpose
  commercial platforms.
- Do not claim personal experience with Imaris, ZEN, Arivis, Dragonfly, or
  other named commercial image-analysis platforms.
- Do not claim that current software imports results exported by those
  platforms.
- Clearly distinguish implemented capabilities from active development and
  proposed institutional work.
- Describe OME-Zarr and NWB as data standards or formats. Describe DANDI and
  the Brain Image Library as repositories. Select standards and repositories
  according to the scientific domain and data type.
- Do not imply that software alone satisfies NIH Data Management and Sharing
  requirements involving policy, consent, privacy, access, retention, or
  institutional oversight.
- Keep the research-software funding strategy and unconfirmed study-section
  details out of the imaging-core CV and cover letter unless Robert explicitly
  decides to use them.
- Do not modify or duplicate Robert's user-owned Employment, Education,
  Awards, Publications, Contact, or Funding & Professional Service sections.

## Document Responsibilities

### `cv.md`

The CV contains the imaging-core-specific narrative. It should distinguish
Robert's scientific experience, selected software evidence, proposed
institutional contribution, and researcher support without repeating the same
workflow in every section. Use brief project references when they substantiate
Robert's general research-software approach, but leave detailed project
descriptions to the separately assembled Research Software Platforms document.

### `cover-letter.md`

The general letter supports cold outreach. It should explain motivation and
fit through selected evidence rather than summarize every CV section or list
individual projects.

### `outreach-list.md` and email drafts

These files contain recipient-specific facts, relationship notes,
personalization points, and outreach status. Review them after the general CV
and cover letter are stable. Robert will verify time-sensitive external facts
when needed.

## Assembly Boundary

The imaging-core `cv.md` contains its tailored narrative sections and an
embedded, audience-specific Teaching and Scientific Training section. Do not
assemble `shared-cv-sections/teaching-and-scientific-training.md` with this
package. Research Software Platforms, Project Resources, Technical Skills, and
user-maintained factual sections remain separate during final assembly.

Use `outputs/imaging-core/research-software-platforms.md` as the Research
Software Platforms component of the assembled imaging CV. It is derived from
the canonical sources and tailored to the scientific workflows and practical
value most relevant to research biologists and imaging-core leaders.

Use `outputs/research-software-engineer/research-software-platforms.md` as a
vetted, read-only editorial and factual reference for current project
descriptions. Use `outputs/research-software-engineer/cv.md` as an editorial
reference for organization and clarity. Both RSE files remain outside the
imaging-core editing scope and must not be changed to serve this audience.

Use `outputs/research-software-engineer/technical-skills.md` unchanged as the
Technical Skills component of the assembled imaging CV. Keep it separate from
`outputs/imaging-core/cv.md`; do not create a duplicate imaging-specific copy.
The RSE Technical Skills file remains read-only during imaging-core work.

Ignore `shared-cv-sections/research-software-platforms.md` during this work.
