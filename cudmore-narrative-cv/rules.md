# Editing Rules

## Source of Truth

* The current project directory, or the latest ZIP explicitly identified by
  Robert, is the overall source of truth.
* If the source of truth is unavailable or ambiguous, stop before making
  recommendations or edits.
* Treat `outline.md` as the factual source for narrative claims.
* Every paragraph in `narrative.md` should trace to one or more bullets in
  `outline.md`.
* `narrative.md` is the canonical editable long-form narrative.
* The future website is the canonical public presentation of `narrative.md`;
  it is not a separate editorial source.
* Maintain consistency among `narrative.md`, `cv.md`, the future website, and
  cover letters.
* Use `audiences.md` as the source of truth for the intended reader and emphasis
  of each derived CV and cover letter.
* Every section in `narrative.md` must answer the primary question defined in
  `section-guide.md`.
* Avoid introducing ideas whose primary home is a later section.

## Editing

* Never reorganize or reorder sections unless explicitly asked.
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
* Prefer one primary idea per sentence.
* Split long compound sentences unless the relationship between ideas would
  otherwise be lost.
* Prefer removing words over adding them.
* Remove adjectives and adverbs that do not contribute meaning.
* Every sentence should justify every word it contains.
* Let publications, funding, and software demonstrate impact rather than
  making broad claims.

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
