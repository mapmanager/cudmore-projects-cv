# Editing Rules

## Source of Truth

* The current project directory, or the latest ZIP explicitly identified by
  Robert, is the overall source of truth.
* If the source of truth is unavailable or ambiguous, stop before making
  recommendations or edits.
* Treat `outline.md` as the factual source for narrative claims.
* Robert's direct factual updates are valid source material. Incorporate them
  into the canonical Markdown before deriving outputs. Repository code and
  documentation supplement those updates; missing documentation or an older
  default branch does not block writing. Ask about material contradictions.
* Every paragraph in `narrative.md` should trace to one or more bullets in
  `outline.md`.
* `narrative.md` is the canonical editable long-form narrative.
* The future website is the canonical public presentation of `narrative.md`;
  it is not a separate editorial source.
* Maintain consistency among `narrative.md`, audience-specific CVs, the future
  website, and cover letters.
* Use each `outputs/<audience>/audience.md` as the source of truth for the
  intended reader and emphasis of its derived CV and cover letter.
* Every section in `narrative.md` must answer the primary question defined in
  `section-guide.md`.
* Avoid introducing ideas whose primary home is a later section.

## Editing

* Never reorganize or reorder sections unless explicitly asked.
* Do not add a name heading or professional subtitle to the top of an
  audience-specific `outputs/<audience>/cv.md`. Begin with the first
  substantive CV section.
* Preserve the logical flow of existing bullets.
* Insert new material at the requested location.
* Modify only the requested sections.
* Do not delete or rewrite existing material unless explicitly requested.
* Prefer the smallest edit that improves existing prose.
* Prefer extending over refactoring.
* Preserve the author's voice.
* When in doubt, ask rather than infer.
* Use the keyword `plan` for agreed work: discuss and agree on a plan, then
  implement it.
* When asking a planning or design question, provide a recommended answer and
  concise rationale before asking Robert to decide.

## Output CV Assembly

* Each audience-specific `outputs/<audience>/cv.md` contains only its tailored
  narrative sections.
* By default, do not append `Teaching and Scientific Training`, `Research
  Software Platforms`, `Project Resources`, or `Technical Skills` to an output
  `cv.md`. An audience-specific `audience.md` may explicitly authorize an
  embedded tailored section. When it does, derive that section from the
  canonical sources and do not also assemble the corresponding shared default.
* Do not append placeholders for Robert's user-maintained Employment,
  Education, Selected Publications, Awards, Funding & Professional Service, or
  Contact sections to an output `cv.md`.
* Standardized and user-maintained sections are supplied separately during
  final document assembly.
* Keep the canonical standardized Markdown in `shared-cv-sections/`; do not
  modify those files while editing an audience-specific output CV.
* An agreed audience plan may supply separate section variants within its
  output folder or explicitly embed a tailored section in `cv.md`. Record the
  exact replacement in that package's `audience.md`. During assembly, use
  either the shared default or the audience-specific version for each section,
  never both. Derive all variants from the root sources.

## Claims

* Never invent metrics.
* Never exaggerate impact.
* Never infer collaborations.
* Never add technologies that are not documented elsewhere.
* Avoid unsupported claims.
* Avoid unnecessary metrics unless they are documented.

## Style

* Professional.
* Scientist-to-scientist.
* Avoid marketing language and buzzwords.
* Prefer concrete examples over adjectives.
* Do not use em dashes.
* Prefer one primary idea per sentence.
* Split long compound sentences unless the relationship between ideas would
  otherwise be lost.
* Prefer removing words over adding them.
* Remove adjectives and adverbs that do not contribute meaning.
* Every sentence should justify every word it contains.
* Let publications, funding, and software demonstrate impact rather than
  making broad claims.
* Use Robert's preferred scientific forms: `inter-spike`, `cardiac myocyte`,
  and `sub-micron`.

## Editorial Logic

* Give each paragraph one principal purpose and each sentence one primary
  idea. Split sentences when several ideas obscure their relationship.
* Prefer a clear progression from purpose or problem, to method or workflow,
  to scientific or engineering benefit.
* State what a system accomplishes before describing how it is implemented.
* Use concrete and consistent vocabulary. Make pronoun references and the
  subjects of actions explicit when ambiguity is possible.
* Connect technical details to their purpose. Do not name technologies only to
  demonstrate breadth.
* Avoid long lists disguised as prose. Use representative examples or replace
  a field inventory with a concise statement of the value it provides.
* Explain cause and effect directly. Do not introduce defensive qualifications
  unless they protect an important factual boundary.
* Review adjacent paragraphs together. Remove repeated setup, capabilities,
  and conclusions even when each sentence is accurate in isolation.

## Comprehensive and Tailored Documents

* Canonical root files retain the complete factual and narrative record.
  Removing detail from a derived document does not remove it from the source
  of truth.
* Audience documents select, reorganize, and compress canonical material for a
  defined reader. They are not required to represent every documented project,
  skill, or design principle.
* Use the comprehensive audience package as the source for a job-specific
  variant, then verify every selection against the root sources and the job
  description.
* Centralize recurring software-design principles in the narrative CV. Use
  project descriptions for scientific purpose, researcher workflow, and
  distinctive implementation. Repeat architecture only when it makes a
  particular project easier to understand.
* Cover letters explain fit and motivation through selected evidence. They
  should complement rather than summarize the CV and project descriptions.
* Technical-skills sections use compact categorized lists. Keep scientific
  purpose and architectural explanation in narrative sections.
* Treat page counts and word ranges as planning budgets, not reasons to omit a
  critical qualification. Establish correct content first, then compress by
  removing repetition and low-value detail.
* Keep job-specific variants in a clearly named output subfolder and limit
  edits to that variant unless new facts or durable guidance must also be
  recorded in the canonical files.
* Before finalizing a tailored packet, review its CV, project descriptions,
  technical skills, and cover letter together for factual consistency,
  unnecessary repetition, requirement coverage, and rendered length.

## AI Collaboration

* Keep chat responses brief, focused on Robert's questions, decisions, changed
  material, and next actions.
* Do not narrate internal reasoning or provide unnecessary praise.
* Ask only necessary questions; never guess.
* Every question must include a grounded recommended answer.
* Keep lists limited to facts that materially support the target audience.
  More items are not inherently stronger.
* Do not use "complex biological data." Use "biological data" or name the
  supported data types when specificity is useful.
* Keep summaries accessible to their intended scientific audience. Reserve
  detailed engineering practices for later technical sections.
* Prefer short, direct sentence structures.
* Robert owns Employment, Education, Awards, Publications, Contact, and
  Funding & Professional Service. Do not draft or revise them unless explicitly
  requested.
* Treat `profile.md` as inactive unless Robert explicitly reactivates it.

## Shell Scripts

* Every shell script must begin with a comment header stating its purpose,
  inputs or assumptions, outputs, and important exclusions.

## Replacement ZIPs

* Full-file replacement ZIPs contain only added or edited files.
* Include complete files, never stubs or patch fragments.
* Preserve every file's path relative to the project root.
