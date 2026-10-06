## Professional Summary

I design and develop scientific software, from numerical algorithms and computational backends to desktop and web applications. My work turns biological data into reproducible quantitative results while making the underlying methods available for reuse.

My initial training is in computer science and full-time scientific software development, followed by PhD training in Neuroscience and 20+ years of experimental biology research in microscopy and electrophysiology. I contribute both scientific and engineering judgment, translating biological questions into software requirements and carrying development through algorithm design, architecture, implementation, testing, and delivery.

Python is my primary language for current scientific software. I use PyQt and NiceGUI for graphical applications and develop browser interfaces with JavaScript and TypeScript. Across this stack, I separate computation, storage, and presentation so each can be extended without duplicating scientific methods. I seek senior hands-on engineering leadership that combines continued coding with architectural direction, development coordination, and mentorship.

## Experimental Science and Collaborative Requirements Discovery

I bring substantial domain expertise in neuroscience, vascular biology, and cardiac physiology, grounded in decades of experimental work. I have designed and performed experiments, interpreted results, and published the findings. I have also built custom microscopy and electrophysiology acquisition systems and developed real-time acquisition and visualization software. This experience guides the analyses I choose, the assumptions I examine, and the requirements I set for scientific software.

Within multidisciplinary teams, I connect biological questions with engineering decisions. I work with research biologists to define what an analysis must measure and with engineers to express those requirements in algorithms, data models, and interfaces. I am comfortable entering new scientific domains and enjoy working closely with specialists whose expertise complements my own. Together, we identify scientifically valid measurements and translate the assumptions and constraints of the experiment into analysis software. I involve researchers with different scientific and programming backgrounds throughout development so their feedback shapes both interactive tools and scripted workflows.

Biological data are noisy, so automated analysis including AI/ML pipelines needs efficient ways to identify false positives and false negatives against the original data. I design heuristics, backend APIs, and graphical interfaces for rapid curation. Recurring error patterns inform additional rules in code, making corrections repeatable across experiments.

I design these workflows to limit experimenter bias as well as reduce review time. Blinding conceals scientific conditions, while randomized presentation helps prevent the review sequence from aligning with experimental groups or conditions. When exhaustive manual curation is impractical, APIs can select defined random subsets for review. These capabilities combine automated processing with targeted human-in-the-loop judgment while supporting objectivity and reproducibility.

## Scientific Algorithms and Parallel Computing

My experimental background guides algorithm design. I begin by defining the measurement, the assumptions needed to interpret it, and the effects of noise and sampling. I then select and implement numerical methods, define analysis parameters, and retain intermediate and final results that researchers can inspect.

My algorithms span image analysis, event detection and feature extraction, spectral estimation, and graph search. I preserve failed fits and individual feature-calculation errors without stopping an entire analysis, allowing usable results to remain available while identifying measurements that need review. When methods provide complementary estimates, I retain their quality indicators and agreement rather than hiding those differences behind a single value.

I improve performance by identifying calculations that can run independently. Depending on the workload, I use Python multiprocessing, thread pools, Numba acceleration, and batch processing built on the same APIs used for individual analyses. This keeps performance work connected to the scientific implementation instead of creating a separate analysis path.

## Research Software Architecture

I design modular software from the start, with computation in independently usable backends and clear interfaces for scripts, notebooks, desktop applications, and browser applications. Public APIs and plugin interfaces allow other developers to add file formats and specialized analyses as research needs change.

- **One computational implementation across interfaces.** Interactive and scripted workflows call the same backend methods and data models. Researchers can automate methods they use graphically, while new interfaces can reuse established scientific behavior rather than recreate it.

- **Extensible analysis workflows.** I separate analysis methods from the surrounding data, application, and publication workflows. New methods, including fully automated AI/ML analysis pipelines, can be integrated through defined APIs and plugin interfaces while reusing established data models, graphical applications, curation tools, and export formats. Automated results can then enter the same review and curation workflows used by existing analyses, allowing methods to evolve without sacrificing scientific oversight or reproducibility.

- **Controlled state changes in modular GUIs.** My PyQt and NiceGUI applications use model-view-controller architecture. Views emit intent events, the controller changes backend models, and state events update subscribed views. Centralizing model changes keeps images, tables, and plots coordinated. New components can use the same event flow, making larger applications easier to extend.

- **Reusable component and service boundaries.** I define public methods, events, schemas, and versioned contracts between backends, graphical components, and clients. These boundaries keep applications thin, support interoperability across programming environments, and allow shared capabilities to improve without coupling clients to internal implementations.

I also use WebAssembly and Pyodide to run Python capabilities in browser applications. This allows desktop and browser interfaces to share scientific code and makes community Python tools accessible without requiring researchers to configure a local development environment.

I use large language models (LLMs) daily within a development process that begins with planning and specifications. I define the scientific question, measurement constraints, required behavior, and architectural boundaries, then use LLMs to examine design options and develop detailed specifications. I use these tools for implementation and unit tests while retaining responsibility for scientific assumptions, architecture, validation, and final technical decisions.

## Scientific Data, Reproducibility, and Publication

I design data models around the relationship between raw data and derived results. Raw images or recordings, experimental metadata, detection parameters, and completed analyses remain connected so researchers can inspect how results were obtained and other software can reuse them.

Scalable access is part of that design. I use lazy loading and chunked storage so applications can retrieve the image regions, recordings, or analysis results they need without loading complete datasets into memory. The same approach supports interactive analysis and browser-based presentation of published results.

I publish schemas for saved datasets so developers can interpret them independently of the application classes that created them. Formats and standards including Zarr, OME-Zarr/OME-NGFF, and Neurodata Without Borders (NWB) provide additional routes for interoperability and deposition in appropriate community repositories. Publication and data sharing are designed into the workflow rather than added after analysis.

## Engineering Quality and Software Delivery

I treat testing, documentation, and delivery as part of software development. An analysis method needs a dependable implementation, an interface other developers can understand, and a practical route into researchers' workflows.

- **Automated testing and continuous integration.** I use pytest and GitHub Actions to check numerical behavior, APIs, schemas, errors, and client contracts as software changes. Contract testing helps protect applications that depend on a backend or saved-data format.

- **Documentation for users and developers.** I provide full GUI documentation for end users and API documentation for developers through MkDocs. Documentation explains both how to complete scientific workflows and how to extend the underlying software.

- **Repeatable distribution.** Automated workflows build documentation and desktop applications. PyInstaller packages macOS and Windows applications, making familiar desktop interfaces readily accessible to researchers. Static browser applications provide another route to scientific software without dedicated application servers.

## Reusable Software as Scientific Infrastructure

Many research software problems first appear within a single project but recur across laboratories. I identify these common requirements and turn project-specific solutions into documented computational backends, data models, schemas, components, and workflow patterns that future projects can adopt instead of rebuilding. This is how software developed for one collaboration becomes sustainable scientific infrastructure.

An institutional capability requires more than reusable code. Stable interfaces, automated testing, documentation, training, and continued engagement with researchers allow shared software to remain useful as projects evolve. Direct support also exposes recurring requirements and failure modes that can be addressed once in software and shared across projects.

These practices reduce duplicated effort, preserve analytical methods as personnel, grants, and research questions change, and make it easier for engineers to maintain and extend the software and for researchers to use it independently.

## Technical Leadership and Mentorship

My record of successful grant writing and funded research includes NIH BRAIN Initiative and NHLBI R01 awards and Chan Zuckerberg Initiative software support. This funding enabled me to build teams of software developers and manage multidisciplinary work with research biologists. I combine direct technical contributions with architectural guidance, development coordination, and mentorship to turn scientific requirements into usable software.

I have mentored trainees in computer science, biophysical engineering, and biomedical engineering, along with employees with computer science backgrounds. Drawing on my own experimental work, I help engineers understand the biological questions, experimental methods, and measurement constraints their software must address. My engineering experience also helps research biologists understand and extend quantitative methods. I contribute to decisions on both sides of that collaboration while helping colleagues develop the knowledge to work more independently.
