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

Make the depth of this expertise explicit. Robert contributes scientific and
engineering judgment as an integral member of multidisciplinary teams. Explain
how his experimental knowledge guides measurement selection, analysis
assumptions, and software requirements, and how it supports collaboration and
mentorship across engineering and biology. Do not present his role as merely
collecting requirements or relaying information between specialists. Give the
summary, requirements section, and mentorship section distinct purposes so
this emphasis does not become repetitive.

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
- SanPy saves natively to HDF5 and also exports to Zarr. CloudScope and SanPy
  both save Zarr datasets with defined schemas; CloudScope uses OME-Zarr for
  images. Explain their shared storage approach without implying SanPy's
  native HDF5 storage has been replaced.
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
- Present successful grant writing and funding as support for building teams
  of software developers and leading multidisciplinary engineering and biology
  work. Keep the BRAIN R01, CZI, and NHLBI R01 as evidence, with less detail on
  proposal design. Omit funding mechanism strategy and unconfirmed
  study-section details.
- Use first-person prose, concrete examples, and no em dashes.

## CV strategy

Keep the narrative focused on seven sections: Professional Summary;
Experimental Science and Collaborative Requirements Discovery; Scientific
Algorithms and Parallel Computing; Research Software Architecture; Scientific
Data, Reproducibility, and Publication; Engineering Quality and Software
Delivery; and Technical Leadership and Mentorship.

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

Lead technical passages with the engineering capability and why it matters,
then use named projects as evidence. Use vocabulary familiar to software
teams and introduce the general technology stack before project-specific
details. Selective bold-led bullets in architecture, data design, and software
delivery should make the key skills easy to find without turning the CV into
a technology inventory. Keep requirements discovery and leadership primarily
in connected prose.

In requirements discovery, explain curation without introducing project
names: rapid review of noisy data, identification of false positives and false
negatives, and translation of recurring errors into repeatable rules in code.
Describe backend APIs and GUIs as complementary parts of this capability.
Distinguish blinding, randomized presentation, and random subset selection;
connect them to limiting bias and making review feasible across hundreds of
files. Do not claim that random selection alone establishes statistical
validity. Retain project examples in the canonical sources for later technical
passages and platform descriptions, without attributing every safeguard to
every application.

Use documentation-site links for projects in the narrative CV, normally on
first substantive mention. Link SanPy, CloudScope, NiceWidgets, and both web
viewers consistently with AcqStore and the other documented projects. Ask
about an exception when no dedicated documentation site is available; do not
silently substitute a repository or live application. AcqView has no dedicated
documentation site; Robert approved its live-app link as an exception.
WebMapManager and MapManagerCore should remain unlinked until suitable
documentation URLs are available, as Robert confirmed.

## Implemented revision plan

Robert approved the integrated rewrite, including the algorithm section and
all prior editorial recommendations. The core sources were reviewed before
rewriting `cv.md`. The revision is complete and ready for review. The following
criteria govern the current draft: lead architecture with present work, retain
the computer science foundation, and omit the historical C++ motivation.

- Explain MVC through its benefit for controlled state changes and coordinated
  views; remove the repeated statement about GUI-independent computation.
  Robert deferred MVC claims about JavaScript/TypeScript/Vue apps. Keep the
  confirmed PyQt and NiceGUI claim; do not imply their web counterparts use
  the same pattern.
- Describe reusable libraries as exposing public component APIs. Explain how
  methods and events keep clients thin and separate application coordination
  from widget internals. Use "extensible" and "interoperability" selectively,
  supported by backend APIs, plugins, components, and data schemas.
- Distinguish implemented AcqStore Server clients from proposed MATLAB or
  Igor Pro interoperability. Robert confirmed these are potential integrations;
  describe them parenthetically as possibilities, not working clients.
- Describe lazy access from Python analysis APIs through Zarr-based publication
  viewers. Use "raw data" and "raw images or recordings."
- Move NWB from the schema bullet to a short data-sharing paragraph alongside
  Zarr and OME-Zarr/OME-NGFF. Explain deposition in community repositories,
  using formats appropriate to the repository and scientific data.
- Keep AcqView and add WebMapManager as complementary Pyodide examples.
  Emphasize the same MapManagerCore Python API, algorithms, and load/save code
  serving both WebMapManager and PyMapManager. Do not imply the modern
  MapManager ecosystem is complete.
- Place directed LLM use under Research Software Architecture, where its
  emphasis on planning, specifications, and architectural responsibility fits
  the current narrative. This supersedes the earlier placement under delivery.
- Rename the final section "Technical Leadership and Mentorship." Remove its
  repetitive requirements-discovery opening. Group BRAIN and NHLBI R01 support
  with CZI as funding that enabled multidisciplinary RSE and biology teams;
  omit the separate NHLBI co-PI sentence from the narrative CV. Retain the
  factual role in the canonical sources.
- Include biomedical engineering alongside computer science and biophysical
  engineering in mentorship. Move maintenance and knowledge-transfer points
  into architecture and delivery instead of retaining a broad closing
  sustainability paragraph. Commercial-tool interoperability can be addressed
  with the service API using the confirmed potential-integration wording.

All four questions about web MVC, MATLAB/Igor Pro clients, and link exceptions
are resolved and implemented. Algorithm details are drawn from the retained
core summaries. No additional algorithm source review was needed for this
rewrite.

### Algorithm section

The approved "Scientific Algorithms and Parallel Computing" section now follows
requirements discovery and precedes architecture, expanding the narrative to
seven sections. The reader encounters scientific requirements, numerical
methods, reusable architecture, data design, delivery, and leadership in that
order. Algorithm design explains how measurements are obtained; architecture
explains how those methods become reusable software.

Lead with how Robert formulates a measurement, chooses and implements an
estimator, exposes parameters, and preserves interpretable results. Select
three short examples rather than importing an algorithm catalogue:

- Image-derived measurements: Radon-based flow velocity and threshold or
  gradient-based diameter analysis illustrate calibrated measurement from
  line-scan images and handling of noise and motion.
- One-dimensional events: AcqStore intensity traces and SanPy recordings
  connect threshold detection, refractory intervals, and event kinetics across
  imaging and electrophysiology. Do not claim shared code or identical
  preprocessing across the applications.
- Complementary estimators: Lomb–Scargle and Welch heart-rate estimates
  illustrate method selection and reporting of quality and agreement. Do not
  turn this into a scientific-validation claim.

Follow with a short paragraph using "Python multiprocessing" for Radon
windows and "thread pools" for diameter profiles. Describe the general batch
processing approach through reuse of the single-file API, cancellation, and
recorded per-file outcomes. Keep temporal-dependency and worker-setting details
in the supporting sources rather than the CV. Do not imply CloudScope runs
multiple files concurrently or quote unmeasured speedups.

Use concrete labels: "Blood flow velocity and vessel diameter" and "Event
detection and feature extraction." Feature extraction follows detection. Both
AcqStore and SanPy record individual fit or feature failures while retaining
usable results; the CV can describe this as a general engineering practice.

Documentation prose must give full GUI documentation for end users equal
weight with developer API documentation, then explain automated distribution.
Keep CloudScope's desktop and remote server deployments in architecture. In the
browser-execution bullet, describe the two MapManager GUIs using the same
backend code through Pyodide, followed by a separate paragraph for AcqView.
Omit the development-status phrase from this CV passage without changing the
recorded project status. Prefer project documentation links; omit the inline
collection-specification link. The SanPy documentation link is also useful
where its backend architecture is discussed.

Move the existing Brightest Path example from architecture into this new
section as a brief complementary example of graph search and acceleration,
avoiding a fourth long method description. Keep schema details, GUI state,
and storage mechanics in their existing sections. Use `algorithm-design.md`
for the retained evidence; exact thresholds, equations, and implementation
maintenance notes do not belong in the CV.

## Platform-description revision

Robert authorized the rewrite of `research-software-platforms.md` after review
of the plan. The rewrite is complete and ready for review. It uses the current
core sources and retained algorithm summary without changing `cv.md`.

The critical planning adjustment was to separate each project's role from the
general engineering account already in the CV. Preserve the existing order,
with AcqView added after MapManager. Each entry connects a scientific problem,
its implementation, and the resulting engineering or research benefit:

- CloudScope: analysis and curation workflows, desktop and remote server
  deployment, and publication through the separate CloudScope-Web viewer.
- AcqStore: numerical methods, extensible Python APIs, parallel and batch
  processing, lazy loading, data schemas, and standards-based exports.
- SanPy: event detection followed by feature extraction, inspectable results,
  reusable backend, native HDF5 storage, and Zarr publication through SanPy-Web.
- Interface libraries: public component APIs and confirmed integrations that
  keep applications thin without depending on component internals.
- AcqStore Server: the local service contract, testing, desktop packaging, and
  potential MATLAB/Igor Pro integrations, clearly distinguished from clients
  already implemented.
- Brightest Path: reusable graph-search implementation and a separate napari
  interface, without repeating the complete algorithm discussion.
- MapManager: established longitudinal research use and the modern shared
  MapManagerCore backend used by PyMapManager and WebMapManager via Pyodide.
- AcqView: local microscopy-file access, community readers, Python in the
  browser, and reuse of the image viewer. Preserve upstream authorship credit.
- PiE: independent behavior-box servers, centralized coordination, continuous
  recording across eight boxes, and blinded review through VideoAnnotate.

Keep low-level schema layouts and branch details in the sources. The public
prose should explain what documented formats enable without implying release
status or interoperability beyond what is established. Use project documentation
links, the approved AcqView live-app exception, and unlinked names for
WebMapManager and MapManagerCore. The older MapManager documentation link
belongs with the established application. Shared defaults remain unchanged.

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

## Earlier revision context

Robert has supplied further evidence on AcqView, his computer science
background, modular GUI architecture, and daily LLM-assisted development.
The canonical sources record these facts. Robert authorized a substantial
rewrite of `cv.md` following a review of those sources and the supporting RSE
files. That earlier rewrite was completed before the platform-description revision
recorded above. The cover letter remains deferred.

- Strengthen the opening with the computer science foundation while retaining
  the experimental-scientist identity. Demonstrate architecture through current
  projects. Historical C++ work should appear at most once, if at all, and must
  not motivate the architecture section. Retain "graduate work in computer
  science" where relevant; never imply
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
modular architecture, AcqView, and the agreed account of LLM use. That earlier draft used six sections and project evidence to explain
engineering choices; the integrated revision above now uses seven sections. The cover letter remains unchanged; the subsequent platform rewrite is
recorded above. No new scientific measurement-validation example is requested.

A further CV revision applies Robert's software-engineering-first emphasis,
with selective bullets for data design and delivery. It explains the shared
Zarr strategy, preserves SanPy's native HDF5 distinction, and connects funding
to building multidisciplinary development teams. The factual updates are
recorded in `outline.md` and `narrative.md`.

Selected algorithm evidence is now retained in root-level `algorithm-design.md`,
with summaries in `outline.md`, `narrative.md`, and `technical-skills.md`.
The algorithm section and the integrated revisions above are now implemented
in `cv.md`. The platform rewrite is also complete. Review both Markdown drafts
with Robert before revising the cover letter. Do not infer algorithms from
product features.
