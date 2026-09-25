

Robert H. Cudmore, PhD

Research Software Engineer & Scientist

I build scientific software that transforms biological data into reproducible quantitative results.

Short introduction.

⸻

Document ownership note

* Narrative sections feed `narrative.md`.
* Factual CV sections are user-owned and should not be drafted by ChatGPT unless explicitly requested.
* User-owned factual sections include Employment, Education, Awards, Publications, Contact, and Funding & Professional Service.

⸻

Mission

Core ideas

* Modern biology generates increasingly complex datasets.
* Advances in microscope instrumentation and genetically encoded fluorescent reporters have dramatically increased both the volume and complexity of biological imaging data.
* Data acquisition has advanced faster than quantitative analysis.
* Scientific software should be reusable, reproducible, and maintainable.
* My career has focused on building software that transforms biological measurements into quantitative science.
* I enjoy working at the intersection of biology, computation, and software engineering.

Maybe add

* NIH recognition of Research Software Engineering.
* Brief statement about why sustainable scientific software matters.

⸻

Scientific Domains

Core ideas

* Laser scanning microscopy
* Electrophysiology
* Cardiovascular physiology
* Neuroscience
* Vascular biology
* Cardiac physiology
* Quantitative imaging
* Time-series analysis
* Signal processing
* Experimental design
* Image acquisition systems
* Hands-on expertise in microscopy and electrophysiology.
* Extensive experience in whole-cell current- and voltage-clamp
  electrophysiology. SanPy remains focused on current-clamp analysis.
* Decades of bench experience designing experiments to test hypotheses,
  performing experiments with precision, interpreting results, and publishing
  the findings.
* Built custom microscopy and electrophysiology acquisition systems.
* Developed software for real-time data acquisition and visualization.
* Supported researchers using these experimental systems.
* Domain expertise includes neuroscience, vascular biology, and cardiac
  physiology.
* Career trajectory moved from studying neurons to imaging brain vasculature
  and later working in cardiac physiology.
* Studying brain vasculature led to interactions with researchers examining
  vasculature across tissues and physiological systems.
* Direct experimental vascular work should be described as centered on the
  brain and heart. Do not claim direct work in every organ system.
* Shared experimental technologies provided continuity across these domains.
* Direct experimental work has centered on microscopy and electrophysiology.
* Biological fields organized around different organs and questions often
  share experimental technologies and analysis problems.
* Regardless of specimen or scientific question, imaging experiments create
  similar practical needs for organizing and visualizing data, making
  quantitative measurements, and producing reproducible results.
* Design software so it can be extended with domain experts to support new
  experimental systems and scientific questions.
* Use experimental experience as a practical foundation for collaborating in
  scientific domains beyond direct personal expertise.
* Work with domain experts to understand the experiment, identify
  scientifically valid measurements, and develop analysis software that
  addresses their questions.

Maybe add

* Explain that many computational problems are shared across biological
  disciplines without claiming subject-matter expertise in every discipline.

⸻

Research Software Engineering

Core ideas

* Collaborative software development with experimental scientists.
* Understand scientific questions before proposing software solutions.
* Understand experimental workflows and analysis practices.
* Iterative software development with continuous user feedback.
* Work with users at multiple career stages, including undergraduate researchers, technicians, graduate students, postdoctoral fellows, and faculty.
* Software should be transparent, reproducible, and extensible.
* Researchers should understand how data are loaded, measurements are calculated, algorithms are implemented, analyses are extended, and results are reproduced.
* Open-source software complements commercial software by providing transparent analytical methods and open access to scientific data.
* Develop reusable computational backends with documented Python APIs.
* The same analytical methods should be available through graphical applications and Python scripting.
* Desktop, web, scripting, and future interfaces should share the same backend implementation.
* Scientific software should support both real-time visualization during experiments and offline quantitative analysis.
* Design one continuous software environment for use at the instrument, for
  reproducible offline analysis, and for publication.
* Use one standalone computational backend across desktop applications, web
  applications, and scripting interfaces at every stage of the research
  lifecycle.
* Keep the same data model and analytical methods available through graphical
  and scripting workflows during acquisition, offline analysis, and
  publication.
* Design publication into the software architecture rather than adding it
  after analysis.
* Make data sharing part of the analysis workflow rather than a separate task
  created at the end of a project.
* Allow a published dataset to use the same graphical analysis interface used in the laboratory.
* Package the raw data, performed analyses, and interactive interface so readers can inspect how published figures were produced.
* Extend static publications into living scientific resources that can be interrogated, reproduced, and extended.
* Analyze datasets much larger than system memory through scalable storage and lazy loading.
* The analysis should travel with the data.
* CloudScope and SanPy implement this strategy in imaging and
  electrophysiology, respectively.
* Their desktop applications support analysis and curation in the laboratory,
  save raw data and completed analyses as self-contained datasets, and use
  CloudScope-Web and SanPy-Web to present those datasets as interactive
  published figures on the web.

Collaborative software development

* Work closely with experimentalists to understand scientific questions and workflows.
* Build software with scientists, not only for scientists.
* Use iterative development informed by user feedback.
* Support users with different technical backgrounds and career stages.

Transparent scientific software

* Many experimental systems rely on proprietary acquisition software, proprietary analysis software, and closed file formats.
* Commercial instrument and image-analysis software is an important part of
  imaging-core workflows.
* Commercial software can provide instrument control, visualization, and
  established general-purpose analyses, including segmentation, tracking, and
  filament tracing.
* My open-source software is not intended to replace general-purpose commercial
  platforms.
* Use commercial software when its established workflows meet the scientific
  need.
* Complement commercial software with open-source tools when a project requires
  specialized analysis, extensibility, transparent methods, automation, or a
  longer reproducible workflow.
* Software should make it possible to understand how data are loaded, how measurements are calculated, how algorithms work, how analyses can be extended, and how results can be reproduced.
* Open-source file readers provide access to data from closed scientific file formats.
* Example acquisition systems and file formats include Axon Instruments, Zeiss, Olympus, Nikon, and Bruker.
* Do not claim personal use of Imaris, ZEN, Arivis, Dragonfly, or other named
  commercial image-analysis platforms.
* Current software does not import analysis results exported by Imaris, ZEN,
  Arivis, Dragonfly, or similar commercial platforms.
* Treat commercial-result integration as a proposed analysis-core capability,
  not as currently implemented functionality.
* A hypothetical workflow may use Imaris to detect cell bodies and then use a
  custom adapter to carry the exported results into an open, specialized
  analysis pipeline.
* Label this example as a possible workflow rather than an existing software
  integration.
* Avoid categorical claims that commercial software cannot support
  reproducibility, automation, export, or sharing. Capabilities vary among
  products and versions.

Reusable computational backends

* Build backend Python packages that expose documented public APIs.
* Use reusable data models and modular architecture.
* Graphical interfaces should use the same backend API as scripting workflows.
* Users should be able to reproduce GUI analyses with scripts.
* Backend APIs allow technical scientists to automate analyses and incorporate them into larger workflows.
* Plugin architectures can extend software without rewriting core systems.

Multiple interfaces

* Desktop scientific applications.
* Web applications.
* Python scripting.
* PyQt for desktop scientific applications.
* NiceGUI for one Python codebase that can run on Windows, macOS, and the web.
* WebAssembly and Pyodide for serverless web applications.
* Serverless applications reduce the operational cost and maintenance associated with hosting backend services.

Scalable scientific data

* Lazy loading of raw data and analysis results.
* Support reliable browsing and analysis of large datasets.
* Analyze datasets much larger than system memory.
* Technologies include HDF5, Zarr, OME-Zarr, and NGFF.
* Relevant data types include imaging and electrophysiology data.

Scientific communication

* The analysis should travel with the data.
* The same software, including its graphical and scripting interfaces, should
  support real-time work at the instrument, offline analysis, and publication.
* The software used in the laboratory should accompany published datasets as
  interactive scientific software.
* Published datasets should remain explorable, reproducible, extensible, and useful for future computational modeling.
* Readers should be able to inspect data, repeat analyses, perform additional analyses, and build computational models using the same software used to generate published results.

Data management and sharing

* NIH requires a Data Management and Sharing Plan for research subject to its
  Data Management and Sharing Policy.
* NIH expects scientific data underlying publications to be shared no later
  than the time of publication, subject to approved limitations.
* Design data organization, metadata, analysis provenance, export, and
  repository preparation into the research workflow rather than treating
  sharing as an end-of-project task.
* An analysis core can help laboratories plan and implement this workflow from
  experimental design and acquisition through analysis, repository
  preparation, and publication.
* This software architecture can support important parts of an NIH Data
  Management and Sharing Plan. Do not imply that software alone satisfies
  requirements involving consent, privacy, access controls, retention,
  repository policy, or institutional oversight.
* Repository selection must depend on the scientific domain, data type,
  applicable policies, and repository capabilities.

Current standards and repository roadmap

* Active development in AcqStore, CloudScope, and SanPy includes preparing
  data and analyses for community standards and appropriate repositories.
* Neurodata Without Borders (NWB) is a data standard for raw and processed
  neurophysiology data, including electrophysiology and optical physiology
  imaging data. It is not a repository.
* DANDI is a repository for neurophysiology data and uses NWB as a primary
  standard.
* The Brain Image Library (BIL) supports large brain-imaging datasets.
* SPARC provides a FAIR data, modeling, analysis, and publishing platform with
  an emphasis on the autonomic and peripheral nervous systems and their
  interactions with organs and the central nervous system.
* NWB, DANDI, BIL, and SPARC form a concrete implementation roadmap, not an
  exclusive workflow. The modular architecture should support other standards
  and repositories when required by the scientific domain or data type.

Sources and status checked July 28, 2026

* NIH Data Management and Sharing Plan:
  https://www.grants.nih.gov/policy-and-compliance/policy-topics/sharing-policies/dms/writing-dms-plan
* NIH data-sharing approaches:
  https://www.grants.nih.gov/policy-and-compliance/policy-topics/sharing-policies/dms/data-sharing-approaches
* NIH repository selection:
  https://www.grants.nih.gov/policy-and-compliance/policy-topics/sharing-policies/dms/selecting-a-data-repository
* NIH budgeting for data management and sharing:
  https://www.grants.nih.gov/policy-and-compliance/policy-topics/sharing-policies/dms/budgeting-for-data-management-sharing
* NWB: https://nwb.org/about-nwb/
* DANDI: https://dandiarchive.org/
* BIL: https://www.brainimagelibrary.org/about.html
* SPARC: https://sparc.science/about

Engineering practices

* Testing.
* Continuous integration.
* Documentation.
* Google-style docstrings.
* End-user documentation with MkDocs.
* Scripting documentation.
* Automated desktop application builds.
* Cross-platform deployment.
* PyInstaller builds for macOS and Windows desktop applications.
* GitHub workflows for pytest, documentation, and desktop application builds.

AI-assisted software development

* Use language models first during high-level planning, before writing code.
* Define the scientific question, measurement constraints, analysis
  requirements, and expected software behavior.
* Develop a design specification and compare possible implementation routes
  before committing to an architecture.
* Use language models to accelerate implementation only after the design has
  tractable goals.
* Remain responsible for scientific assumptions, architecture, validation, and
  final technical decisions.
* Present this as specification-first, human-directed software engineering,
  not as generic use of AI or a standalone "prompt engineer" identity.
* The distinctive value is the combination of computer science training,
  biological domain expertise, and experience mentoring computer science
  students in research settings.

Representative technologies

Programming

* Python
* C/C++
* Igor Pro
* Bash and zsh scripting

Scientific computing

* NumPy
* SciPy
* pandas
* Numba, used extensively in Brightest Path tracing
* PyTorch for MapManager image-segmentation prototypes
* scikit-image
* Pillow
* Parallel and concurrent programming

Scientific analysis

* Quantitative microscopy
* Electrophysiology analysis
* Time-series analysis
* Image segmentation
* ROI-based image analysis
* Blood-flow velocity and vessel-diameter analysis
* Heart-rate, peak, and event detection
* Longitudinal annotation analysis and curation
* Brightest-path tracing

Application frameworks

* PyQt
* pyqtgraph
* NiceGUI
* NiceWidgets
* napari
* pywebview
* Plotly
* Matplotlib

Web applications and APIs

* HTML
* JavaScript
* WebAssembly
* Pyodide
* FastAPI and uvicorn
* Pydantic
* Versioned HTTP and JSON APIs
* OpenAPI
* httpx
* HTML and JavaScript thin clients

Scientific data and formats

* HDF5
* Zarr
* OME-Zarr
* NGFF
* TIFF
* CZI
* ND2
* OIR
* BioIO
* tifffile
* czifile
* nd2
* oirfile
* s3fs
* Lazy and chunked array access
* Multiscale image pyramids
* Metadata and physical-unit preservation

Software engineering, testing, and documentation

* pytest
* GitHub Actions
* uv
* Git and GitHub
* MkDocs
* Documented Python APIs
* Google-style docstrings
* End-user and developer documentation

Deployment and infrastructure

* Docker
* Docker Compose
* nginx, used by PiE
* PyInstaller
* macOS and Windows desktop applications
* Linux-based development and continuous-integration environments

Maybe add

* Short examples showing how the same backend supports GUI workflows, scripting, and published interactive datasets.
* Keep the emphasis on reusable scientific software, not technology lists.
* Use the generated-CV baseline defined in `technical-skills.md`.
* Begin with a broad representation of documented skills, then allow Robert to
  shorten or tailor the list manually.

⸻

Research Infrastructure

Core ideas

* Reusable scientific software platforms
* Sustainable software development
* Scientific workflow automation
* Reproducible computational methods
* Open-source software
* Documentation
* Long-term software maintenance
* Community-oriented software design
* Complement commercial acquisition and analysis tools with specialized,
  extensible, open-source workflows.
* Build proposed adapters around commercial exports when a laboratory needs to
  carry established analysis results into custom downstream processing.
* Connect raw data and completed analyses with repository-ready OME-Zarr or NWB
  datasets when appropriate to the scientific domain and data type.
* Support dissemination through repositories such as the DANDI Archive and the
  Brain Image Library and through interactive CloudScope-Web figures.
* The distinctive contribution is the connected lifecycle from acquisition and
  analysis through specialized processing, reproducible sharing, and
  interactive publication.

Maybe add

* Explain why infrastructure has longer scientific impact than one-off analysis scripts.

⸻

Software Philosophy

Core ideas

* Scientific software should outlive the publication that motivated it.
* Reproducibility begins with software design.
* Scientists should spend their time interpreting data rather than manually processing it.
* Good software makes quantitative methods accessible to a broader community.
* Open-source software accelerates scientific discovery.
* Documentation, testing, and maintainability are scientific contributions.
* Software should evolve alongside scientific questions.
* General-purpose tools often have greater long-term impact than project-specific scripts.

Maybe add

* Short discussion of the transition from “analysis scripts” to “research infrastructure.”
* One or two design principles illustrated with CloudScope or SanPy.

⸻

Scientific Software Platforms

CloudScope

Problem

* Imaging workflows often separate raw data, automated analysis, manual review,
  saved results, and publication.
* Imaging analysis often depends on one-off scripts whose code, assumptions,
  algorithms, and detection parameters may be difficult to preserve or reuse.
* Automated analysis can process many files efficiently, but researchers must
  still inspect results and correct false-positive and false-negative
  detections.
* Most published figures are static and do not allow readers to interact with
  the results or inspect the raw data underlying the analysis.
* Researchers need a practical path from raw imaging data through quantitative
  analysis and scientific review to an interactive published figure.

Scientific motivation

* Formalize and preserve analysis algorithms and detection parameters rather
  than leaving them in project-specific scripts.
* Combine scalable automated analysis with human scientific judgment.
* Preserve the connection among raw data, analysis methods, curated results,
  and publication.
* Make published results inspectable and interactive.
* Allow readers to examine both quantitative results and the raw data that
  produced them.

Suite architecture

* CloudScope is a modular and extensible suite comprising CloudScope, AcqStore,
  and CloudScope-Web.
* Together, these components form one analysis pipeline from raw imaging data
  through quantitative analysis, scientific curation, and interactive
  publication.
* The same raw data, analytical methods, and results remain connected
  throughout the workflow.

CloudScope

* CloudScope is the interactive application for image visualization,
  quantitative analysis, result inspection, and human-in-the-loop curation.
* It runs as a desktop application on macOS and Windows.
* The complete application can also run as a server-backed web application.
* Researchers use CloudScope to load and visualize images, run analyses
  implemented by AcqStore, inspect results, and correct false-positive and
  false-negative detections.
* Semi-automated workflows allow many files to be analyzed efficiently while
  preserving human review and scientific judgment.
* CloudScope supports blinded and randomized analysis and curation.
* Blinded workflows can conceal file names, experimental groups or conditions,
  and other identifying metadata.
* Randomized workflows can present datasets for analysis and curation in a
  randomized order.
* These features allow large datasets to be reviewed systematically while
  helping reduce experimenter bias.
* Curated analyses are saved with the raw image data in a portable dataset.

Current scientific applications

* The current version focuses on kymograph line-scan image analysis.
* Implemented applications include:
  * In vivo micrometer-scale capillary blood-flow analysis.
  * Heartbeat analysis derived from blood-flow velocity.
  * Diameter changes in cardiac myocytes and smooth muscle.
  * Peak detection from real-time fluorescent reporters, including calcium
    signals measured with GCaMP and signals from ATP reporters.
* CloudScope is designed as a general-purpose and extensible platform rather
  than an application limited to these analyses.
* New analysis methods can be implemented in AcqStore and made available
  through CloudScope.

AcqStore

* AcqStore is the pure-Python backend used by CloudScope.
* It loads imaging data, runs quantitative analyses, manages results, and saves
  complete datasets.
* It can be extended with new file loaders, analysis methods, and visualization
  capabilities.
* Scripting workflows and graphical applications use the same analytical
  implementation.
* AcqStore saves the analysis methods, detection parameters, and results with
  the dataset, preserving a record of how the analysis was performed even as
  the software evolves.
* Earlier work remains reconstructable when an analytical method or its
  implementation changes.
* Saved Open Microscopy Environment Zarr (OME-Zarr) datasets are self-contained
  and include the raw image data, analysis information, curated results, and
  the information required to reconstruct the analysis performed in
  CloudScope.
* The exported OME-Zarr dataset does not depend on references to raw data stored
  elsewhere.

Open formats and repositories

* AcqStore can export both Open Microscopy Environment Zarr (OME-Zarr) and
  Neurodata Without Borders (NWB).
* OME-Zarr is currently better suited to CloudScope's workflow for publishing
  interactive figures containing multiple acquisitions or files.
* NWB provides an additional implemented open-format export and should be
  mentioned briefly for audiences familiar with neurophysiology standards.
* The resulting OME-Zarr and NWB datasets can be directly uploaded to public
  repositories, including the DANDI Archive and the Brain Image Library (BIL).
* These repositories make scientific datasets publicly searchable and
  accessible, support data sharing and reuse, and provide archival stewardship
  beyond an individual laboratory or publication.

CloudScope-Web

* CloudScope-Web is a publication-focused web-based viewer for OME-Zarr
  datasets saved by AcqStore.
* It provides an interactive figure rather than a static image.
* It allows readers to view analysis results and inspect the raw data that
  contributed to those results.
* It is a viewer, not an analysis application.
* CloudScope-Web uses reusable graphical components from
  `mapmanager-web-components`.
* CloudScope is being migrated to use the same components, providing a shared
  interface layer across the analysis application and publication viewer.
* CloudScope-Web provides the read-only subset needed to visualize and inspect
  saved results.
* Researchers perform and curate analyses in CloudScope using AcqStore, then
  save a self-contained OME-Zarr dataset containing the raw data and analysis.
* A publication-specific CloudScope-Web page loads that dataset and presents it
  as an interactive figure.
* The viewer and dataset can each be published at stable web endpoints.
* This provides a path from laboratory analysis to an interactive published
  figure with little additional processing.
* Readers can inspect the reported results and underlying raw data, then use
  the accessible data for new analyses, hypotheses, models, and
  collaborations.
* CloudScope-Web is a self-contained web application and does not require
  dedicated or complex server infrastructure.
* This lowers the infrastructure required to publish and distribute
  interactive scientific figures.

Extensibility

* New file formats and analytical methods can be added through AcqStore.
* New analyses can become available to CloudScope without duplicating their
  implementation.
* Reusable interface components allow CloudScope and CloudScope-Web to present
  consistent visualization tools.
* The modular design allows the same data, analysis implementation, and
  graphical components to support analysis, interactive curation, and
  publication.

Scientific impact

* CloudScope combines scalable automated analysis with human scientific
  judgment.
* Researchers can process many files and then inspect and curate the results
  using graphical tools.
* AcqStore preserves the information needed to reconstruct how an analysis was
  performed, even as analytical methods evolve.
* Raw data, analytical methods, detection parameters, and curated results
  remain together in a portable, self-contained dataset.
* The same analysis can move from the laboratory workflow into an interactive
  published figure.
* Published figures can expose both results and the raw data underlying them.
* Readers can inspect published findings, explore the data in new ways, and
  extend the work toward new hypotheses, discovery, modeling, and
  collaboration.
* The suite supports a continuous scientific workflow from raw data through
  analysis, curation, publication, and reuse.

Documentation

* CloudScope: https://mapmanager.github.io/cloudscope-app/
* CloudScope live application: https://cloudscope.mapmanager.net
* AcqStore: https://mapmanager.github.io/acqstore/
* CloudScope-Web: https://mapmanager.github.io/cloudscope-web
* DANDI Archive: https://about.dandiarchive.org/
* Brain Image Library: https://www.brainimagelibrary.org/

⸻

AcqStore

Problem

* Scientific imaging workflows must load data from open and proprietary
  microscope file formats.
* Quantitative analysis depends on preserving image metadata, physical units,
  experimental context, regions of interest, and analysis results.
* Graphical applications and scripts should not reimplement file access, data
  management, visualization primitives, or analysis methods.

Software

* General-purpose Python toolbox for imaging data.
* Loads, manages, visualizes, and analyzes imaging data.
* Provides a documented public API rather than a user-facing GUI.
* Supplies data and visualization primitives to graphical applications and
  scripting workflows.
* Supports lazy loading for large and multi-file datasets.
* Stores metadata, regions of interest, parameters, and analysis results with
  the acquisition.
* Exports analysis results as structured tabular data through an extensible
  export system.
* Designed to browse collections containing hundreds or thousands of files
  without loading all raw images or analysis results into memory.
* Implements scalable and web-oriented data standards, including OME-Zarr and
  NGFF, to support data access and sharing workflows.

Extensibility

* Plugin systems for file loading.
* Plugin systems for quantitative analysis.
* Extensible export system for structured tabular analysis results.
* Plugin systems for cloud sharing.
* New formats and methods can be added without rewriting applications.

Scientific impact

* Desktop, web, and scripted workflows use the same data model and analysis
  implementation.
* Shared implementation improves reproducibility and allows analyses to be
  extended without duplicating calculations.

Documentation

* GitHub: https://github.com/mapmanager/acqstore
* Documentation: https://mapmanager.github.io/acqstore/

⸻

AcqStore Server

Problem

* Lightweight browser, JavaScript, and Python clients need access to AcqStore
  image data and metadata without embedding the AcqStore Python backend.
* Each client should not have to reimplement file loading, metadata
  normalization, image-plane access, or scientific-data conventions.

Software

* Local FastAPI and uvicorn service built around AcqStore.
* Versioned API v2 with an OpenAPI contract and structured error responses.
* Opens scientific image acquisitions and exposes normalized metadata,
  physical units, source and reference image planes, and line-scan paths.
* Uses short-lived sessions for binary image-plane access.
* Supports thin browser, JavaScript, and Python clients.
* Includes a reference HTML and JavaScript client and a native status
  interface.
* Distributed as a desktop application so researchers can run the local
  service without installing or embedding its Python dependencies.
* Local-only networking is the default.

Engineering

* Pydantic schemas define the JSON-facing API.
* Automated tests cover the API, schemas, OpenAPI contract, errors, session
  lifecycle, client contract, and representative image formats.
* Documentation includes end-user instructions, API references, and a
  client-building guide.
* PyInstaller packaging and GitHub Actions support application delivery.

Importance

* Separates the scientific backend from the user interface and client
  language.
* Allows new thin clients to use the same AcqStore implementation for image
  loading and metadata rather than duplicating scientific logic.
* Provides a path for desktop software to support browser-based interfaces
  through a stable local API.
* Strong evidence for technical Research Software Engineering applications.
  Keep it in supporting documents and future technical CV variants; omit it
  from the current imaging-facility CV and cover letter.

Status and documentation

* Implemented and tested.
* Repository is currently private.
* Documentation: https://acqstore-server.pages.dev/

⸻

Reusable User-Interface Components

Problem

* Scientific web applications need reusable components for image
  visualization, regions of interest, tabular data, and linked plots.
* Reimplementing these components in each application duplicates engineering
  work and makes user interfaces harder to maintain and extend.

NiceWidgets

* Open-source Python library of reusable NiceGUI widgets for interactive
  scientific applications.
* Provides modular components including an image viewer with zoom, pan, and
  region-of-interest drawing; configurable data tables; and linked plotting
  tools.
* Can be used as a standalone library or incorporated into larger applications.
* Supplies reusable visualization and interaction components to CloudScope.
* Allows CloudScope to use the same Python user-interface code in its desktop
  and web deployments.

`mapmanager-web-components`

* Reusable web-component library built with Node.js, TypeScript, JavaScript,
  Vue, and Vite.
* Provides reusable scientific visualization and interaction components.
* Used extensively by CloudScope-Web.
* CloudScope is being migrated to use the same components.
* Provides a shared interface layer across the CloudScope analysis application
  and CloudScope-Web publication viewer.
* Allows improvements to shared components to become available across both
  applications without reimplementing them.

Scientific and engineering impact

* Separates reusable user-interface components from application-specific
  scientific analysis.
* Allows new and improved widgets to be incorporated into CloudScope without
  rebuilding them within the application.
* Provides another layer of modularity alongside AcqStore: AcqStore supplies
  the imaging-data and analysis backend, while NiceWidgets and
  `mapmanager-web-components` supply reusable graphical components.
* Strong evidence for technical Research Software Engineering applications;
  optional for the current imaging-facility and biology CV.

Documentation and application

* GitHub: https://github.com/mapmanager/nicewidgets
* Documentation: https://mapmanager.github.io/nicewidgets/
* Live application: https://nicewidgets.mapmanager.net/
* `mapmanager-web-components` GitHub:
  https://github.com/mapmanager/mapmanager-web-components
* `mapmanager-web-components` documentation:
  https://mapmanager.github.io/mapmanager-web-components/

⸻

SanPy

Problem

* Electrophysiology analysis often depends on manual measurements or
  laboratory-specific scripts.

Scientific motivation

* Standardize detection and analysis of electrophysiological events.
* SanPy's primary use is action-potential analysis, but it also detects and
  analyzes subthreshold events.
* Once a peak is detected, the same downstream analysis applies whether the
  event is an action potential or a subthreshold event.
* Extract more than 20 quantitative features for each detected event.
* Improve reproducibility.
* Support extension by other laboratories.

Software

* Desktop application for whole-cell current-clamp recordings from neurons and
  cardiac myocytes.
* Open individual recordings or folders containing multiple recordings.
* File loaders for ABF, ATF, and CSV data, with an extensible loader
  architecture for additional formats.
* Preset detection parameters for fast neurons, slow neurons, cardiac
  myocytes, and subthreshold events.
* Detect events using configurable membrane-voltage or derivative thresholds.
* Overlay detected events and their measurements on the raw recording.
* Review detection errors, curate results, and reject individual events when
  appropriate.
* Save completed analyses and export tabular reports and figures.
* Save raw electrophysiology recordings, metadata, detection parameters, and
  completed analysis results as self-contained SanPy Zarr datasets using the
  `*.sanpy.zarr` naming convention.
* Plugin architecture for visualization, reports, curation, and new analyses.
* Documented Python API for scripts and computational notebooks.
* Open source.
* Follows the same backend/frontend separation as CloudScope.
* Uses an internal computational backend shared by the desktop GUI and
  scripting workflows; the backend is not a separately named project.
* Designed for real-time use during electrophysiology experiments.
* Supports offline analysis using the same application and analysis methods.
* SanPy-Web opens self-contained SanPy Zarr datasets as interactive published
  figures on the web.
* Published recordings and analysis results can be explored in a browser
  without requiring the SanPy desktop application.
* Keep published results connected to the raw recordings, metadata, detection
  parameters, and completed analysis results that produced them.

Technical highlights

* General-purpose event detection for action potentials and subthreshold
  events.
* More than 20 quantitative features for each detected event, including event
  timing, threshold, peak, half-width, interval, frequency, and shape
  measurements.
* Automated and standardized quantitative measurements.
* Interactive visualization and curation.
* Extensible file loaders, analysis measurements, and graphical plugins.
* The GUI and scripting workflows use the same internal computational backend.
* Shared implementation ensures that interactive and automated analyses
  calculate measurements using the same methods.

Scientific impact

* Reusable, general-purpose electrophysiological event-detection and analysis
  platform.
* Reduces dependence on manual measurements that are difficult to standardize
  and reproduce across researchers and experiments.

Maybe add

* Screenshots
* Publications
* GitHub

Documentation and source

* GitHub: https://github.com/cudmore/SanPy
* Documentation: https://cudmore.github.io/SanPy

⸻

PiE

Problem

* Behavioral experiments frequently require coordinated hardware control,
  video acquisition, environmental monitoring, event logging, and behavioral
  scoring.
* Experimenter presence can alter behavior and confound measurements.
* Individually constructed systems can be difficult to reproduce and scale.

Scientific motivation

* Lower the barrier to automated behavioral experiments.
* Build inexpensive, reproducible acquisition systems.
* Allow multiple behavioral experiments to run in parallel.

Software

* Open-source, Raspberry Pi-based system for constructing home-cage behavioral
  experiments.
* Detailed build instructions, wiring diagrams, and component lists for an
  individual behavior box.
* Modular, commercially available components allow the design to be replicated
  across an array of behavior boxes.
* Each behavior box can include a camera, white and infrared lighting, a fan,
  relays, and a temperature and humidity sensor.
* A web interface controls each box remotely.
* Record and stream video.
* Support repeated and externally triggered recordings.
* Control white and infrared lighting and ventilation.
* Monitor temperature and humidity.
* Log experimental events and environmental measurements alongside recorded
  video.
* Each behavior box runs an independent PiE server.
* Commander controls and monitors any number of PiE servers from one web
  interface.
* Commander provides centralized system status, a video wall, remote control,
  and file synchronization.
* VideoAnnotate is a related application in a separate repository for
  graphical behavioral scoring.
* VideoAnnotate supports blinded scoring of randomized video segments, records
  event frames and durations, and exports results for downstream analysis.

Technical highlights

* Distributed multi-device architecture.
* Remote monitoring and experiment control.
* Automated and parallel acquisition across multiple behavior boxes.
* Video recording, live streaming, environmental monitoring, and event
  logging.
* Centralized monitoring and file collection through Commander.
* Blinded and randomized behavioral scoring through VideoAnnotate.
* nginx deployment.

Scientific impact

* Reusable behavioral acquisition platform.
* Reduces experimenter interference through remote control and monitoring.
* Supports reproducible construction and operation of parallel experiments at
  scale.
* Connects hardware control and video acquisition with behavioral scoring.

Documentation and source

* GitHub: https://github.com/cudmore/pie
* Documentation: https://cudmore.github.io/pie-doc

⸻

MapManager

Problem

* Longitudinal three-dimensional microscopy is difficult to organize,
  visualize, and quantify over time.
* Imaging sessions can span weeks to months.
* Annotation collections may contain tens of thousands of items.
* Images must be aligned between time points, and corresponding biological
  structures must be identified across imaging sessions.
* Large annotation collections require efficient review and correction of
  false-positive and false-negative annotations.

Scientific motivation

* Support reproducible analysis of neuronal structure.
* Connect morphology with quantitative measurements.
* Measure the persistence, addition, elimination, movement, and fluorescence
  intensity of structures such as dendritic spines and cell bodies over time.
* Support longitudinal analysis of submicron, diffraction-limited dendritic
  spines in awake, behaving mice.

Established Igor Pro implementation

* MapManager was originally developed as an Igor Pro desktop application.
* Automatically aligns images between time points.
* Semi-automatically identifies corresponding annotations across time.
* Allows neuronal dendritic segments to be traced and automatically connects
  each annotated spine to its parent dendritic segment.
* Automatically creates a region of interest for each neuronal spine,
  including spine and dendritic-segment regions of interest and associated
  ground-truth background regions of interest.
* Uses region-of-interest intensity measurements to analyze submicron,
  diffraction-limited dendritic spines across time.
* Supports interactive visualization, annotation, measurement, and curation
  of three-dimensional image-volume time series.
* Supports longitudinal analysis of in vivo, ex vivo, and fixed-tissue image
  volumes.
* Routinely used with longitudinal datasets acquired from awake, behaving
  mice.
* Used in at least five peer-reviewed publications.

Modern MapManager architecture

* The established MapManager workflow is being rebuilt as an open-source,
  extensible, reproducible platform.
* The modern MapManager ecosystem is under active development.
* MapManagerCore is the shared Python API that provides the core functionality
  used by the applications.
* PyMapManager is the desktop application and provides access through Python
  scripts and computational notebooks.
* WebMapManager is the browser application for visualizing, annotating, and
  analyzing time-series annotations and three-dimensional image volumes.
* WebMapManager provides image views, editable annotations, tables, plots, and
  an extensible plugin system.
* A working WebMapManager application is publicly available.
* The shared implementation allows the same scientific methods to support
  desktop, browser, scripting, and notebook workflows.

Scientific impact

* Proven research platform for longitudinal structural neuroscience.
* Preserves established longitudinal-analysis methods while making them easier
  to reuse and extend.
* Reduces dependence on proprietary software.
* Supports interactive and programmatic analysis, collaborative use, and
  reproducible sharing.

Documentation and application

* Documentation: https://mapmanager.github.io/
* Live application: https://mapmanager.github.io/WebMapManager/
* Igor Pro source: https://github.com/mapmanager/mapmanager
* MapManagerCore source: https://github.com/mapmanager/MapManagerCore
* PyMapManager source: https://github.com/mapmanager/PyMapManager
* WebMapManager source: https://github.com/mapmanager/WebMapManager

⸻

Brightest Path

Problem

* Python lacked a reusable, documented, installable package for tracing brightest paths through n-dimensional scientific images.
* Existing solutions were not available as a general-purpose Python package that other scientific software could easily build upon.
* Tracing filament-like structures is a recurring scientific image-analysis
  problem.
* Axons and dendritic segments are important biological examples of
  filament-like structures that must be traced through microscopy images.

Scientific motivation

* Improve reproducibility of image tracing.
* Provide reusable path-tracing functionality for scientific imaging workflows.
* Avoid reimplementing the same algorithm inside separate project-specific codebases.
* Convert a filament-like image structure into a path that can be visualized,
  measured, and incorporated into subsequent analyses.

Software

* Pure Python package.
* PyPI distribution.
* Installable with `pip install`.
* Documented public API.
* Open source.
* A separate napari tracing plugin provides an interactive graphical interface
  built on the library.

Technical highlights

* Brightest-path tracing in n-dimensional images.
* The user supplies start and end points, and the algorithm returns the image
  coordinates forming the brightest path between them.
* Implements A* and bidirectional A* search algorithms.
* Accounts for image-axis scale.
* Reports search progress so calling applications can visualize the path search
  interactively.
* Extensive use of Numba for performance.
* Reusable algorithmic component for other scientific software.
* Python scientific software ecosystem integration.

Scientific impact

* Reusable image-analysis package for path tracing.
* Provides infrastructure that other platforms and workflows can incorporate.
* Supports graphical and programmatic tracing of axons, dendritic segments,
  and other bright filament-like structures.

Documentation and source

* GitHub: https://github.com/mapmanager/brightest-path-lib
* Documentation: https://mapmanager.github.io/brightest-path-lib/
* napari tracing plugin: https://github.com/mapmanager/napari-tracing

⸻

Leadership, Mentorship, and Researcher Support

Core ideas

* Enjoy working directly with researchers on day-to-day analysis problems.
* Troubleshoot datasets and analysis pipelines.
* Improve documentation and training in response to recurring user questions.
* Turn recurring support problems into reusable software improvements.
* Help researchers become more independent without treating support as a
  one-time software handoff.
* Involve researchers in design, implementation, testing, and critical
  feedback.
* Treat user support as an important source of requirements for sustainable
  research software.

Institutional role

* Seek a staff role within an existing imaging facility, academic department,
  or research organization.
* Develop an analysis-core capability within the institution's existing
  scientific and technical structure.
* Do not imply that the institution must immediately create a separate
  administrative core.
* Allow the capability to grow from direct support, training, and reusable
  analysis software according to institutional needs.

Why this matters

* Shared software becomes useful infrastructure only when researchers receive
  responsive support, clear documentation, and practical training.
* Day-to-day support reveals common problems that can be solved once and
  shared across laboratories.

⸻

Grant Writing and Funded Research

Core ideas

* Demonstrated record of securing competitive scientific and
  research-software funding as a principal investigator.
* Representative successes include an NIH BRAIN Initiative R01, an NHLBI R01,
  and a Chan Zuckerberg Initiative software award.
* Led the scientific and technical design and writing of the NIH BRAIN
  Initiative R01 and the Chan Zuckerberg Initiative proposal.
* Led and managed the research for the five-year NIH BRAIN Initiative R01 and
  the Chan Zuckerberg Initiative grant.
* Trained and mentored personnel working on the funded research, including
  full-time image analysts and graduate and undergraduate students in
  engineering.
* Served as one of three equal principal investigators on the NHLBI R01.
* Made primary contributions to the design, implementation, and execution of
  the electrophysiology and imaging experiments and analyses for the NHLBI R01.
* Can lead proposals within areas of direct expertise and contribute to
  multidisciplinary proposals that require complementary scientific and
  technical expertise.
* Present these awards as representative funding successes. Do not impose a
  chronological storyline that Robert has not identified.
* Do not include funding amounts in narrative prose.
* Keep grant numbers, dates, award amounts when needed, and the complete
  chronological record in the user-owned Funding & Professional Service
  section.

Why this matters

* Grant leadership demonstrates the ability to connect scientific questions,
  experimental design, quantitative analysis, software development, personnel,
  and multi-year project execution.
* This experience allows Robert to contribute both to the scientific work of a
  research team and to the proposals that support collaborative research.

⸻

Teaching and Scientific Training

Formal course design and instruction

* Designed and taught an undergraduate Internet of Things course as instructor
  of record for three years.
* Combined lectures with hands-on circuit-building laboratories.
* In the laboratories, students wired simple circuits and sensors and connected
  them into distributed systems using internet dashboards.
* Lectures examined biometric Internet of Things devices for monitoring human
  health and disease progression.
* Examined how longitudinal data collected across large populations can enable
  new scientific questions and discoveries.
* The course did not diagnose medical conditions.

Scientific instruction and research training

* Delivered individual lectures, laboratory instruction, and research training.
* Taught foundations of image-acquisition systems.
* Taught optical physics of laser-scanning microscopy and image formation.
* Taught the physical limits of light microscopy.
* Taught signal-detection principles relevant to imaging and
  electrophysiology.
* Connected instrument operation with valid measurement, analysis, and
  interpretation.

Interdisciplinary mentorship

* Mentored, trained, and employed engineers who initially lacked biological
  research experience.
* Included computer science and biophysical engineering graduate students.
* Included full-time employees with computer science backgrounds.
* Helped engineers apply mathematics, physics, and software engineering to
  biological research questions and experimental workflows.
* Combined their technical expertise with the biological context needed to
  build useful scientific software.

Why this matters

* Imaging-core and analysis-core users need to understand how instruments form
  data and how physical limits affect interpretation.
* Effective core support connects experimental design, acquisition,
  quantitative analysis, and scientific interpretation.
* Interdisciplinary teams need a shared language across biology, mathematics,
  physics, and software engineering.
* Teaching and training help researchers use instruments and analysis software
  correctly, independently, and reproducibly.

⸻

Research Software Funding Strategy

Narrative section. This is distinct from the user-owned factual Funding &
Professional Service section.

Core ideas

* Funding agencies increasingly recognize sustainable research software and
  the people who build it as essential scientific infrastructure.
* NIH describes Research Software Engineers as a bridge between individual
  projects and the broader research software ecosystem.
* NIH RFA-OD-24-011, the Research Software Engineer Award (R50), provides
  salary support and career continuity for eligible RSEs. As of July 27, 2026,
  the announcement lists a final application date of December 4, 2026 and an
  expiration date of December 5, 2026.
* NIH RFA-OD-24-010, Building Sustainable Software Tools for Open Science
  (R03), was a project-focused companion mechanism and is expired. Do not
  describe it as a second current RSE salary award.
* NSF CSSI supports scientific software and data infrastructure through
  Elements, Framework Implementations, and Transition to Sustainability
  projects.
* NSF PESOSE supports secure and sustainable open-source ecosystems; it is not
  an individual RSE salary mechanism.
* CZI Essential Open Source Software for Science supports maintenance, growth,
  development, and community engagement for scientific open-source software;
  the referenced cycle is closed.
* My NIH and NSF study-section service provides experience evaluating
  research-software and infrastructure proposals. Confirm the specific panels
  and mechanisms before naming them in public documents.
* I am interested in pursuing appropriate funding with an eligible host
  institution and in helping other researchers and software engineers develop
  competitive proposals.

Why this matters

* The active outreach strategy aligns an institutional need for sustainable
  analysis software with funding agencies' recognition of the same gap.
* The value is not limited to obtaining support for one position. It includes
  building an institutional funding strategy and helping others sustain
  reusable scientific software.

Sources and status checked July 27, 2026

* NIH RSE Award (R50):
  https://grants.nih.gov/grants/guide/rfa-files/RFA-OD-24-011.html
* NIH eligibility and resubmission clarification:
  https://grants.nih.gov/grants/guide/notice-files/NOT-OD-25-147.html
* NIH Building Sustainable Software Tools for Open Science (expired R03):
  https://grants.nih.gov/grants/guide/rfa-files/RFA-OD-24-010.html
* NSF CSSI:
  https://www.nsf.gov/funding/opportunities/cssi-cyberinfrastructure-sustained-scientific-innovation
* NSF PESOSE:
  https://www.nsf.gov/funding/opportunities/pesose-pathways-enable-secure-open-source-ecosystems
* CZI Essential Open Source Software for Science:
  https://chanzuckerberg.com/rfa/essential-open-source-software-for-science/

⸻

Funding & Professional Service

User-owned factual CV section. Do not draft unless explicitly requested.

Core ideas

* NIH-funded software development
* NIH BRAIN Initiative
* Chan Zuckerberg Initiative software development
* NIH study sections
* Collaborative software development
* Open-source scientific software

Maybe add

* Exact study sections, grants, dates, and awards supplied by Robert.

⸻

Publications

User-owned factual CV section. Do not draft unless explicitly requested.

Core ideas

* Selected publications
* Software papers
* Methods papers

Maybe add

* Organize by software platform rather than chronology.

⸻

Current Interests

Core ideas

* Research Software Engineering
* Scientific software platforms
* Quantitative microscopy
* Imaging cores
* AI-assisted scientific analysis
* Open science
* Research infrastructure
* Cross-disciplinary collaborations
* Grant-supported software development

Maybe add

* State that you’re interested in institutional software development, collaborative grants, and Research Software Engineer positions.

⸻

Contact

User-owned factual CV section. Do not draft unless explicitly requested.

* Email
* GitHub
* LinkedIn
* Narrative CV (PDF)
* Academic CV (PDF)
