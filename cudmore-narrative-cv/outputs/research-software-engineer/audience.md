# Target Audience: Research Software Engineering Leadership

## Application context

The initial package supports exploratory outreach to RSE and scientific
software group leaders, with later adaptation to advertised positions.
Relevant settings include university RSE groups, research institutes,
scientific computing groups, and teams developing shared scientific software.

Robert seeks senior hands-on engineering leadership: writing code, guiding
architecture, coordinating development, and mentoring engineers. Consider
senior RSE, scientific software technical-lead, and engineering-management
opportunities according to their actual technical responsibilities. Positions
dominated by people or program administration are not the target.
Research-faculty roles do not receive equal emphasis.

## Intended readers

- RSE group heads and scientific software leaders hiring experienced technical
  contributors who can guide development and support other engineers.
- Scientific computing and research-institute directors responsible for
  sustaining software capabilities across projects.
- Engineers and scientific collaborators evaluating architecture, scientific
  judgment, implementation experience, maintainability, and collaboration.

## Positioning

Retain the identity of Research Software Engineer and experimental scientist.
Experimental knowledge informs requirements, measurement constraints, and
software decisions. Direct expertise is in neuroscience, vascular biology,
and cardiac physiology, with microscopy and electrophysiology as primary
experimental methods. Broader scientific applicability comes through
collaboration with domain experts.

Present leadership through architectural decisions, continued implementation,
funded project execution, coordination, mentorship, and researcher support.
Do not infer management titles, team sizes, hiring responsibilities, or
performance-management experience.

## Principal evidence

- AcqStore: a general-purpose Python backend with public APIs, extensible
  analysis, scalable data access, and published data contracts.
- CloudScope and SanPy: parallel implementations of a continuous workflow
  from acquisition through analysis, curation, publication, and sharing.
- AcqStore OME-Zarr collections and SanPy Zarr: self-contained data and
  completed analyses with documented formats for independent interpretation.
- CloudScope-Web and SanPy-Web: interactive published figures connected to
  the underlying data and completed results.
- mapmanager-web-components: three reusable components used across the two
  web viewers and the PyQt SanPy and NiceGUI CloudScope applications.
- AcqStore Server: a versioned local API, schemas, contract tests, and desktop
  delivery for clients that do not embed the scientific Python backend.
- Brightest Path: reusable algorithms, Numba acceleration, a documented Python
  package, and a separate napari interface.
- MapManager and PiE: complementary evidence of software evolution and
  distributed experimental systems.

## Editorial and factual boundaries

- Derive facts from `../../outline.md` and prose from `../../narrative.md`.
  Use `../../technical-skills.md` and `../../project-links.md` for inventories.
- Robert's direct factual updates can establish canonical facts. Public
  documentation supports writing but is not a prerequisite. Ask about material
  contradictions rather than assuming default branches are current.
- All project repositories are currently public, as confirmed by Robert.
- SanPy Zarr documentation is on `codex/sanpy-zarr`. Do not imply inclusion in
  a particular release or default branch.
- AcqStore's collection specification is published as an initial normative
  draft. It preserves OME-NGFF image semantics. SanPy Zarr is an
  application-specific format; do not claim SanPy NWB export.
- Describe implemented component integrations without asserting complete
  migration or use of every component in every application.
- Distinguish MapManager's established Igor Pro implementation from its modern
  ecosystem under active development.
- Describe CloudScope-Web as a viewer of saved data and results. Do not imply
  that publication viewers provide every analysis capability of desktop tools.
- Connect technical capabilities to scientific or organizational benefits.
  Preserve the complementary roles of commercial and open-source software.
- Use documented testing, curation, and reproducibility practices. A separate
  measurement-validation example is deferred and is not a drafting dependency.
- Keep grant leadership as evidence of delivery and mentorship. Omit funding
  mechanism strategy and unconfirmed study-section details.
- Use first-person prose, concrete examples, and no em dashes.

## CV strategy

Keep the narrative focused on six sections: Professional Summary;
Experimental Science and Collaborative Requirements Discovery; Research
Software Architecture; Scientific Data, Reproducibility, and Publication;
Engineering Quality and Software Delivery; and Technical Leadership,
Mentorship, and Sustainable Research Software.

Begin with Professional Summary, without a name heading or subtitle. Reserve
detailed project descriptions for the separate platform section. Each project
should connect its scientific problem, engineering contribution, and benefit.
Keep the Technical Skills baseline broad but organize it by engineering
responsibility, with concise context and explicit prototype status where needed.

CV length is governed by substance and readability, not a fixed target or the
length of the first draft. Explain important engineering choices and support
them with portfolio evidence. Use short, purposeful technical lists with
narrative explanations of their scientific or organizational value. Avoid
repetition and exhaustive technology inventories. Cover-letter length remains
a separate constraint.

## Assembly plan

`cv.md` contains only the tailored narrative. The following selections are
supplied separately during final document assembly:

| Section | File to use | Treatment |
|---|---|---|
| Teaching and Scientific Training | `../../shared-cv-sections/teaching-and-scientific-training.md` | Reuse unchanged. |
| Research Software Platforms | `research-software-platforms.md` | Use instead of the shared platform section. |
| Project Resources | `project-resources.md` | Use instead of the shared resource table. |
| Technical Skills | `technical-skills.md` | Use instead of the shared skills section. |

Keep the shared defaults unchanged. Never append both a default and its RSE
replacement. Employment, Education, Awards, Publications, Contact, and Funding
& Professional Service remain user-owned and are supplied separately without
new placeholders or edits. Existing conversion scripts render the individual
Markdown inputs; this plan does not introduce automatic full-CV assembly.

## Cover-letter strategy

Write a collegial exploratory letter to an RSE or scientific software group
leader. State the interest in hands-on technical leadership and continued
implementation. Connect experimental experience to requirements discovery,
then provide selected evidence of reusable architecture, data interoperability,
and shared interfaces. Close with a conversation about the group's scientific
software needs. Do not assume a vacancy, funding, or an institutional deficit.

## Package files

- `audience.md`
- `cv.md`
- `cover-letter.md`
- `research-software-platforms.md`
- `technical-skills.md`
- `project-resources.md`

## Targeted revision plan and status

Robert has supplied further evidence on AcqView, his computer science
background, modular GUI architecture, and daily LLM-assisted development.
The canonical sources record these facts. Robert authorized a substantial
rewrite of `cv.md` following a review of those sources and the supporting RSE
files. That rewrite is complete and ready for review. The cover letter and
platform descriptions remain deferred; their proposed changes below require
a separate request to implement.

- Strengthen the opening with the computer science foundation while retaining
  the experimental-scientist identity. Connect algorithm design and planning
  with earlier C++ scientific backends, statistical analysis, and cross-platform
  GUIs. Retain "graduate work in computer science" where relevant; never imply
  a completed master's degree. Do not alter user-owned Education or Employment.
- Make architecture concrete: backend computation is modular from the start;
  scripts and notebooks use it independently; GUIs are thin interfaces.
- Add a concise account of model-view-controller and event-driven design:
  views emit intent, controllers own model mutations within the GUI, and
  resulting state events update subscribed views. Explain the benefit for
  coordinated interfaces as applications grow.
- Add a short AcqView entry near the browser and interface evidence. Lead with
  accessibility of microscopy readers, then explain Python in the browser via
  WebAssembly/Pyodide and reuse of the shared image viewer. Credit the community
  reader authors. Keep the main platforms more prominent than this small tool.
- Add a short account of LLM-assisted engineering under Engineering Quality
  and Software Delivery. Emphasize planning, specifications, implementation
  direction, and unit tests. AcqView is an agreed concrete example of the
  process. Describe files as opened locally rather than uploaded.
- Agreed public emphasis: responsibility, design judgment, and how LLMs are
  used. Omit AI-generated-code and generic coverage percentages. Do not
  describe AcqView as fully LLM-generated or retain project authorship estimates
  in supporting sources.
- Keep the cover letter focused. At most one brief sentence on directed LLM
  use is recommended; project percentages and controller mechanics belong
  outside the letter.

The two factual and editorial questions are resolved. PiE, Brightest Path,
SanPy, and MapManager were originally developed without AI; subsequent
maintenance, particularly of SanPy, uses LLMs. Robert agrees with a concise
account of LLM-assisted planning, implementation, and testing without
percentages. The revised CV now incorporates the computer science foundation,
modular architecture, AcqView, and the agreed account of LLM use. It preserves
the six-section narrative structure and uses project evidence to explain
engineering choices. The cover letter and platform descriptions remain
unchanged. No new scientific measurement-validation example is requested.
