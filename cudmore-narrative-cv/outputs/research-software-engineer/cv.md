## Professional Summary

I design and develop scientific software, from numerical algorithms and computational backends to desktop and web applications. My work turns biological data into reproducible quantitative results while making the underlying methods available for reuse.

My initial training is in computer science and full-time scientific software development, followed by PhD training in Neuroscience and more than 20 years of experimental biology research in microscopy and electrophysiology. I contribute both scientific and engineering judgment, translating biological questions into software requirements and carrying development through algorithm design, architecture, implementation, testing, and delivery.

Python is my primary language for current scientific software. I use PyQt and NiceGUI for graphical applications and develop browser interfaces with JavaScript and TypeScript. I seek senior hands-on engineering leadership that combines continued coding with architectural direction, development coordination, and mentorship.

## Experimental Science and Collaborative Requirements Discovery

I bring substantial domain expertise in neuroscience, vascular biology, and cardiac physiology, grounded in decades of experimental work. I have designed and conducted experiments, analyzed and interpreted the results, and published the findings. I have also built custom microscopy and electrophysiology acquisition systems and developed real-time acquisition and visualization software. This experience guides how I define scientifically valid measurements, evaluate analytical assumptions and the effects of noise and sampling, select numerical methods, and establish requirements for scientific software.

Within multidisciplinary teams, I connect biological questions with engineering decisions. I work with research biologists to define what an analysis must measure and with engineers to express those requirements in algorithms, data models, interfaces, expected outputs, and testable behavior. I am comfortable entering new scientific domains and enjoy working closely with specialists whose expertise complements my own. I involve researchers with different scientific and programming backgrounds throughout development so their feedback shapes interactive tools and scripted workflows.

## Technical Leadership and Mentorship

My record of successful grant writing and funded research includes NIH BRAIN Initiative and NHLBI R01 awards and Chan Zuckerberg Initiative software support. This funding enabled me to build teams of software developers and manage multidisciplinary work with research biologists. I combine direct technical contributions with architectural guidance, development coordination, and mentorship to turn scientific requirements into usable software.

I have mentored trainees and colleagues across computer science, engineering, and biology. Drawing on my experimental work, I help engineers understand the biological questions and measurement constraints their software must address. My engineering experience also helps research biologists understand and extend quantitative methods, allowing colleagues on both sides of the collaboration to work more independently.

## Reusable Software as Scientific Infrastructure

Many research software problems first appear within one project but recur across laboratories. I identify these recurring needs and design solutions that can serve beyond the collaboration that first motivated them. Software becomes scientific infrastructure when other researchers can understand it, adopt it, and rely on it as their data, methods, and questions evolve.

My research software practices align with the FAIR principles: Findable, Accessible, Interoperable, and Reusable. Saved analyses preserve the data, parameters, results, and tagged software version used to produce each result. I archive tagged source-code versions as GitHub releases and register selected public releases with Zenodo for persistent DOIs, making them findable and citable. I publish my software as open source and use documented formats, stable APIs and schemas, community standards, and adaptable deployment models to support long-term accessibility, interoperability, and reuse.

## Research Software Design Principles

### Modular Architecture and Extensibility

I place scientific computation in independently usable Python backends with object-oriented data models and documented APIs. I organize scientific algorithms, data loading and storage, and user-interface code as separate responsibilities so each can evolve without requiring the others to be rewritten.

Desktop and browser applications remain thin because they delegate scientific computation to backend APIs and focus on presentation and workflow coordination. Scripts, notebooks, and services use those same APIs, ensuring that every interface uses the same scientific implementation.

The backend APIs also define plugin interfaces for adding file formats, analyses, visualizations, and export methods without changing the surrounding applications. Data schemas define how data and results are structured. Versioned service contracts define how clients request and receive them. Together, these interfaces allow applications and services to evolve without breaking their integrations.

New computational methods, including fully automated AI/ML pipelines, can be integrated through the backend and plugin APIs. They can use existing data schemas, user interfaces, curation workflows, and export tools. This allows analytical methods to evolve without rebuilding the broader scientific workflow.

I build reusable interface components with documented APIs. Applications use these APIs to provide data, configure views, and respond to user actions without relying on internal component code. This allows visualization tools to be shared across projects and improved without requiring changes to every application.

Within graphical applications, I use model-view-controller and event-driven patterns to control state changes. Views report user actions to controllers, controllers update backend models, and state events tell subscribed views when to update. This predictable flow keeps images, tables, and plots synchronized while making complex interfaces easier to test, maintain, and extend.

### Scientific Workflow, Curation, and Reproducibility

I design scientific software so automated results remain inspectable and trustworthy. Raw data and metadata stay connected to the analysis methods and parameters used to generate each result. The software preserves completed results and records calculation failures. Researchers can compare each measurement with the original data and understand how it was produced. These relationships are saved in documented data structures, so other software can interpret and reuse the results without depending on the original application.

Human-in-the-loop curation is a core design principle across my software. Biological data are noisy, and automated analysis can produce false positives, false negatives, failed fits, and individual feature errors. I build graphical interfaces that allow researchers to compare automated results with the original data and accept, reject, or correct individual results. When review reveals a recurring error pattern, I encode the correction as a rule so future analyses can apply it consistently across datasets.

Where appropriate, I design blinded review workflows that conceal experimental conditions and identifying information. I randomize presentation order so review does not follow experimental groups. For collections too large to review exhaustively, APIs can select defined random subsets for targeted curation. Together, these capabilities make human review practical at scale while supporting objective, reproducible analysis.

### Performance and Scalable Processing

I design scientific software to remain responsive as computational workloads grow. When calculations can run independently, I distribute them with multiprocessing or thread pools. I use Numba to accelerate computationally intensive algorithms and batch processing to apply analyses across collections.

Large collections and networked workflows require applications to load data selectively. Lazy loading reads collection metadata first and loads raw data or results only when requested. Chunked storage allows applications to retrieve only the portions of large image and data arrays needed for the current view, while multiscale image pyramids provide that view at the appropriate resolution. Together, these approaches reduce startup time, memory use, and network transfer, keeping desktop and browser interfaces responsive and allowing them to work with datasets much larger than available memory.

### Engineering Quality and Maintainability

I keep scientific software dependable, understandable, and maintainable as methods, data formats, and interfaces evolve. Automated tests with pytest and continuous integration through GitHub Actions check numerical behavior, APIs, schemas, file compatibility, and client contracts. Contract testing protects applications that depend on a backend, service, or saved-data format.

Documentation is part of the implementation. I provide end-user workflow documentation and documented Python APIs through MkDocs, and distribute Jupyter notebooks that connect explanations to executable examples. Stable interfaces, explicit error behavior, and documentation allow researchers and developers to understand, validate, and extend the software.

### Delivery, Deployment, and Sharing

I move scientific methods into practical use through repeatable distribution and multiple deployment models. Automated workflows build documentation and desktop applications, while PyInstaller packages macOS and Windows applications for researchers who do not use development environments. With NiceGUI, I can deliver the same scientific application as either a packaged desktop program or a server-backed browser application from one Python codebase.

I also develop static browser applications using JavaScript, TypeScript, WebAssembly, and Pyodide. These applications can run Python code locally in the browser or provide interactive access to published analyses without requiring desktop installation or a dedicated application server. This makes scientific software and results easier to distribute, access, and share.

Sharing also requires data and results to remain usable outside the software that created them. I use documented formats and community standards—including HDF5, Zarr, OME-Zarr/OME-NGFF, and Neurodata Without Borders—to support publication, repository deposition, and reuse. These formats preserve the connections among raw data, metadata, and completed analyses.