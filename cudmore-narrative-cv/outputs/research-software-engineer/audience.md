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
