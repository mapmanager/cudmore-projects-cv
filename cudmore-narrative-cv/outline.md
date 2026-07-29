

Robert H. Cudmore, PhD

Research Software Engineer & Scientist

I build scientific software that transforms biological data into reproducible quantitative measurements.

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

Collaborative software development

* Work closely with experimentalists to understand scientific questions and workflows.
* Build software with scientists, not only for scientists.
* Use iterative development informed by user feedback.
* Support users with different technical backgrounds and career stages.

Transparent scientific software

* Many experimental systems rely on proprietary acquisition software, proprietary analysis software, and closed file formats.
* Commercial software can be excellent, but scientific analysis benefits when researchers can inspect and extend analytical methods.
* Software should make it possible to understand how data are loaded, how measurements are calculated, how algorithms work, how analyses can be extended, and how results can be reproduced.
* Open-source file readers provide access to data from closed scientific file formats.
* Example acquisition systems and file formats include Axon Instruments, Zeiss, Olympus, Nikon, and Bruker.

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

Application frameworks

* PyQt
* NiceGUI

Web technologies

* WebAssembly
* Pyodide

Scientific data

* HDF5
* Zarr
* OME-Zarr
* NGFF

Engineering

* pytest
* GitHub Actions
* MkDocs
* PyInstaller

Maybe add

* Short examples showing how the same backend supports GUI workflows, scripting, and published interactive datasets.
* Keep the emphasis on reusable scientific software, not technology lists.

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

* Quantitative analysis of line-scan microscopy remains fragmented and often relies on custom scripts.
* Researchers need reproducible, extensible tools for analyzing blood flow velocity, vessel diameter, heart rate, and related measurements.

Scientific motivation

* Transform microscope data into robust quantitative measurements.
* Enable reproducible workflows across experiments.
* Reduce repetitive manual analysis.

Software

* CloudScope is the desktop and web graphical application.
* AcqStore is the general-purpose Python engine for loading, managing,
  visualizing, and analyzing imaging data.
* AcqStore provides the documented API used by CloudScope and scripting
  workflows.
* Quantitative analyses, including blood-flow velocity, vessel diameter, and
  heart rate, are implemented in AcqStore and made accessible through
  CloudScope.
* New AcqStore file loaders, analyses, and visualization tools can become
  available through CloudScope without duplicating their implementation.
* NiceWidgets provides reusable NiceGUI widgets for scientific data
  visualization.
* Open source

Technical highlights

* Scientific visualization
* Interactive analysis
* Batch processing
* Analysis pools
* One AcqStore implementation shared by desktop, web, and scripting workflows.
* Lazy loading and scalable imaging-data access.

Scientific impact

* Supports reproducible microscopy analysis.
* General-purpose platform rather than software for a single publication.
* Connects real-time use at the microscope with offline analysis and future
  publication of data with the same analysis interface.

Documentation

* CloudScope: https://mapmanager.github.io/cloudscope-app/
* CloudScope live application: https://cloudscope.mapmanager.net
* AcqStore: https://mapmanager.github.io/acqstore/
* NiceWidgets: https://mapmanager.github.io/nicewidgets/

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

NiceWidgets

Problem

* Scientific web applications need reusable components for image
  visualization, regions of interest, tabular data, and linked plots.
* Reimplementing these components in each application duplicates engineering
  work and makes user interfaces harder to maintain and extend.

Software

* Open-source Python library of reusable NiceGUI widgets for interactive
  scientific applications.
* Provides modular components including an image viewer with zoom, pan, and
  region-of-interest drawing; configurable data tables; and linked plotting
  tools.
* Can be used as a standalone library or incorporated into larger applications.
* Supplies reusable visualization and interaction components to CloudScope.
* Allows CloudScope to use the same Python user-interface code in its desktop
  and web deployments.

Scientific and engineering impact

* Separates reusable user-interface components from application-specific
  scientific analysis.
* Allows new and improved widgets to be incorporated into CloudScope without
  rebuilding them within the application.
* Provides another layer of modularity alongside AcqStore: AcqStore supplies
  the imaging-data and analysis backend, while NiceWidgets supplies reusable
  graphical components.
* Strong evidence for technical Research Software Engineering applications;
  optional for the current imaging-facility and biology CV.

Documentation and application

* GitHub: https://github.com/mapmanager/nicewidgets
* Documentation: https://mapmanager.github.io/nicewidgets/
* Live application: https://nicewidgets.mapmanager.net/

⸻

SanPy

Problem

* Electrophysiology analysis often depends on laboratory-specific scripts.

Scientific motivation

* Standardize action potential analysis.
* Improve reproducibility.
* Support extension by other laboratories.

Software

* Desktop application
* Plugin architecture
* Python API
* Open source
* Follows the same backend/frontend separation as CloudScope.
* Uses an internal computational backend shared by the desktop GUI and
  scripting workflows; the backend is not a separately named project.
* Designed for real-time use during electrophysiology experiments.
* Supports offline analysis using the same application and analysis methods.
* Can accompany published analyzed datasets as a freely available desktop
  application for inspecting and reproducing results.

Technical highlights

* Action potential detection
* Automated and standardized quantitative measurements.
* Interactive visualization
* Plugin ecosystem
* The GUI and scripting workflows use the same internal computational backend.
* Shared implementation ensures that interactive and automated analyses
  calculate measurements using the same methods.

Scientific impact

* Reusable electrophysiology analysis platform.
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

* Behavioral experiments frequently require custom acquisition systems.
* Experimenter presence can alter behavior and confound measurements.

Scientific motivation

* Lower the barrier to automated behavioral experiments.
* Build inexpensive, reproducible acquisition systems.

Software

* Raspberry Pi
* Distributed acquisition
* Web interface
* Video streaming
* Open source

Technical highlights

* Multi-device architecture
* Remote monitoring
* Fully remote experiment control
* Automated acquisition

Scientific impact

* Reusable behavioral acquisition platform.
* Reduces experimenter interference through remote control and monitoring.

Documentation and source

* GitHub: https://github.com/cudmore/pie
* Documentation: https://cudmore.github.io/pie-doc

⸻

MapManager

Problem

* Longitudinal neuronal morphology is difficult to organize, visualize, and quantify over time.
* Imaging sessions can span weeks to months.
* Annotation collections may contain tens of thousands of items.
* Large annotation collections require efficient review and correction of
  false-positive and false-negative annotations.

Scientific motivation

* Support reproducible analysis of neuronal structure.
* Connect morphology with quantitative measurements.

Software

* Desktop application
* Interactive visualization
* GUI for managing and curating large annotation collections.
* Open source

Technical highlights

* Morphology visualization
* Annotation
* Optimized for collections containing tens of thousands of annotations.
* Interactive identification and correction of false-positive and
  false-negative annotations.
* Longitudinal analysis

Scientific impact

* Research platform for structural neuroscience.

Documentation and application

* Documentation: https://mapmanager.github.io/
* Live application: https://mapmanager.github.io/WebMapManager/

⸻

Brightest Path

Problem

* Python lacked a reusable, documented, installable package for tracing brightest paths through n-dimensional scientific images.
* Existing solutions were not available as a general-purpose Python package that other scientific software could easily build upon.

Scientific motivation

* Improve reproducibility of image tracing.
* Provide reusable path-tracing functionality for scientific imaging workflows.
* Avoid reimplementing the same algorithm inside separate project-specific codebases.

Software

* Pure Python package.
* PyPI distribution.
* Installable with `pip install`.
* Documented public API.
* Open source.

Technical highlights

* Brightest-path tracing in n-dimensional images.
* Reusable algorithmic component for other scientific software.
* Python scientific software ecosystem integration.

Scientific impact

* Reusable image-analysis package for path tracing.
* Provides infrastructure that other platforms and workflows can incorporate.

Documentation and source

* GitHub: https://github.com/mapmanager/brightest-path-lib
* Documentation: https://mapmanager.github.io/brightest-path-lib/

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

Teaching and Scientific Training

Formal course design and instruction

* Designed and taught an undergraduate Internet of Things course as instructor
  of record for three years.
* Combined understanding of IoT technologies with hands-on circuit building.
* Used lectures and final student projects to examine current medical
  applications of IoT.
* Covered wearable technologies for real-time and remote data acquisition.
* Examined how large longitudinal datasets from wearable monitoring can support
  new scientific hypotheses.
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
