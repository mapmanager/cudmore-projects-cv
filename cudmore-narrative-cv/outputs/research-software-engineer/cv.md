## Professional Summary

I design and develop scientific software, from numerical algorithms and computational backends to desktop and web applications. My work turns biological data into reproducible quantitative results while making the underlying methods available for reuse.

My initial training is in computer science and full-time scientific software development, followed by PhD training in Neuroscience and decades of experimental research in microscopy and electrophysiology. I contribute both scientific and engineering judgment, translating biological questions into software requirements and carrying development through algorithm design, architecture, implementation, testing, and delivery.

Python is my primary language for current scientific software. I use PyQt and NiceGUI for graphical applications and develop browser interfaces with JavaScript and TypeScript. Across this stack, I separate computation, storage, and presentation so each can be extended without duplicating scientific methods. I seek senior hands-on engineering leadership that combines continued coding with architectural direction, development coordination, and mentorship.

## Experimental Science and Collaborative Requirements Discovery

I bring substantial domain expertise in neuroscience, vascular biology, and cardiac physiology, grounded in decades of experimental work. I have designed and performed experiments, interpreted results, and published the findings. I have also built custom microscopy and electrophysiology acquisition systems and developed real-time acquisition and visualization software. This experience guides the analysis I choose, the assumptions I examine, and the requirements I set for scientific software.

Within multidisciplinary teams, I connect biological questions with engineering decisions. I work with research biologists to define what an analysis must measure and with engineers to express those requirements in algorithms, data models, and interfaces. In fields beyond my direct expertise, I collaborate with domain experts. I involve researchers with different scientific and programming backgrounds throughout development so their feedback shapes both interactive tools and scripted workflows.

Biological data are noisy, so automated analysis needs efficient ways to identify false positives and false negatives against the original data. I design heuristics, backend APIs, and graphical interfaces for rapid curation of results. Recurring error patterns inform additional curation rules in code, making corrections repeatable across experiments.

I design these workflows to limit experimenter bias as well as reduce review time. Blinding conceals scientific conditions, while randomized presentation changes the order in which results are reviewed. For collections containing potentially hundreds of files, APIs select defined random subsets for review when exhaustive manual curation is impractical. These capabilities combine automated processing with targeted human review while supporting objectivity and reproducibility.

## Scientific Algorithms and Parallel Computing

My experimental background guides algorithm design: I define the measurement, the assumptions needed to interpret it, and the effects of noise and sampling. I then select and implement numerical methods, define analysis parameters, and retain results that researchers can inspect. My work spans image analysis, event detection, spectral estimation, and graph search.

- **Blood flow velocity and vessel diameter.** In [AcqStore](https://mapmanager.github.io/acqstore/), I estimate flow velocity from line-scan images using a coarse-to-fine Radon transform search, converting streak angles into speed through spatial and temporal calibration. Vessel-diameter analysis locates edges using intensity thresholds or gradients, with optional motion gating and filtering. Retaining edge positions and measurements over time allows researchers to inspect how image features become quantitative results.

- **Event detection and feature extraction.** I turn image regions into normalized intensity traces, then detect events through threshold crossings and refractory intervals. Once an event is detected, I extract features such as peak width and rise and decay kinetics. The same one-dimensional detection and event-measurement algorithms are also implemented in [SanPy](https://cudmore.github.io/SanPy/) for electrophysiology recordings. My analysis code records failed fits and individual feature-calculation errors without stopping the entire analysis, preserving usable results and identifying measurements that need review.

- **Complementary estimates and quality assessment.** AcqStore's heart-rate analysis estimates cardiac frequency from pulsatile flow velocity using Lomb–Scargle and Welch methods. It retains both estimates, their agreement, and quality indicators. Researchers can inspect differences between the methods when interpreting the reported heart rate.

When possible, I parallelize independent calculations using Python multiprocessing for Radon windows and thread pools for diameter profiles in AcqStore. I build batch file processing on the same API used for single-file analysis, with cancellation support and a recorded outcome for each file.

Graph search provides a complementary example. [Brightest Path](https://mapmanager.github.io/brightest-path-lib/) implements A* and bidirectional A* search for tracing filament-like structures in n-dimensional images. It accounts for image-axis scale and uses Numba for acceleration. A documented Python package and separate napari plugin make the method available to both developers and interactive users.

## Research Software Architecture

I design modular software from the start, with computation in independently usable backends and clear interfaces for scripts, notebooks, and graphical applications. Public APIs and plugin interfaces let other developers add specialized analyses as research needs change. My current projects demonstrate three practices that make this architecture extensible:

- **Reusable computation through public APIs.** I expose computational methods through Python APIs so scripts, notebooks, and GUIs use the same implementation. Plugin interfaces allow new file formats and analyses to be added without duplicating backend logic. AcqStore supplies this foundation for [CloudScope](https://mapmanager.github.io/cloudscope-app/), providing image loading, metadata, analysis, and export. [SanPy](https://cudmore.github.io/SanPy/) applies the same separation to electrophysiology. Researchers can automate the methods they use interactively, and developers can extend them independently of the interface. CloudScope's NiceGUI interface runs both as a desktop application and as a remotely accessible web application hosted on a server.

- **Controlled state changes in modular GUIs.** My PyQt and NiceGUI applications use model-view-controller architecture. Views emit intent events representing user actions. Within the GUI, the controller alone changes backend models, then emits state events that subscribing views use to update. Centralizing model changes keeps image views, tables, and plots coordinated. New components can use the same intent and state events, making larger applications easier to extend.

- **Shared visualization through component APIs.** I build reusable interface components with public methods and events for supplying data and coordinating interactions. Applications remain thin because they use these APIs without depending on component internals. [mapmanager-web-components](https://mapmanager.github.io/mapmanager-web-components/) provides an image viewer, nicepool, and a signal viewer, with components used across [CloudScope-Web](https://mapmanager.github.io/cloudscope-web/docs/), [SanPy-Web](https://mapmanager.github.io/sanpy-web/docs/), PyQt SanPy, and NiceGUI CloudScope. [NiceWidgets](https://mapmanager.github.io/nicewidgets/) provides complementary Python components for NiceGUI. Improvements to shared components can benefit multiple applications.

I also design service APIs for interoperability across programming environments. [AcqStore Server](https://acqstore-server.pages.dev/) uses FastAPI, Pydantic schemas, and a versioned OpenAPI contract to provide image data and normalized metadata to JavaScript and Python clients. The HTTP interface also provides a route for future clients in other environments (including potential MATLAB and Igor Pro integrations). Clients can reuse the backend without embedding its Python dependencies or reimplementing file access.

I use large language models (LLMs) daily within a development process that begins with planning and specifications. I define the scientific question, measurement constraints, required behavior, and architectural boundaries, then use LLMs to examine design options and develop detailed specifications. Planning often occupies more time than code generation. I use these tools for implementation and unit tests while retaining responsibility for scientific assumptions, architecture, validation, and final technical decisions. AcqView is one example of this approach, which has also helped me extend my development work into JavaScript and TypeScript.

## Scientific Data, Reproducibility, and Publication

I design data models that preserve the relationship between raw data and derived results. Storage must support efficient access, retain the information needed to interpret an analysis, and remain usable outside the application that created it. Three practices connect these requirements:

- **Scalable, selective data access.** I use chunked storage and lazy loading so applications can retrieve image regions or portions of large analysis results without loading a complete dataset into memory. CloudScope and SanPy export Zarr datasets with defined schemas. CloudScope saves images using the OME-Zarr standard. SanPy uses HDF5 for native storage and Zarr for export. Lazy access extends from the Python analysis APIs to CloudScope-Web and SanPy-Web, carrying the same storage strategy through to published results.

- **Documented schemas for interoperability.** I define schemas for saved Zarr datasets so other developers can interpret them independently of application code. AcqStore's OME-Zarr collection specification links standard OME-Zarr images with metadata and analyses and includes a machine-readable JSON Schema. SanPy Zarr documents its recording layout, detection parameters, and result definitions. These specifications allow Python tools and browser viewers to consume the same datasets and provide an interface for future analysis software.

- **Results that retain their analytical context.** I keep raw data, experimental metadata, detection parameters, and completed analyses together so researchers can inspect how results were obtained. CloudScope and SanPy export self-contained collections that support this connection through analysis, curation, and sharing. CloudScope-Web and SanPy-Web present saved datasets as interactive published figures, letting readers explore results alongside the underlying raw images or recordings.

Standards-based export also supports depositing raw data and analysis in community repositories. AcqStore exports OME-Zarr images using OME-NGFF conventions and also supports Neurodata Without Borders (NWB) export. These formats help prepare datasets for depositing them into online sharing platforms such as the DANDI Archive and Brain Image Library, using formats appropriate to each repository and data type. Data sharing is part of the workflow from the beginning.

## Engineering Quality and Software Delivery

I treat testing, documentation, and delivery as part of software development. An analysis method needs a dependable implementation, an interface other developers can understand, and a practical route into researchers' workflows. Documented, reusable components also preserve analytical methods as personnel and research questions change.

- **Automated tests and continuous integration.** I use pytest and GitHub Actions to check software behavior as methods and interfaces change. AcqStore Server illustrates testing at the boundary between systems: its tests cover API schemas, the OpenAPI contract, errors, session lifecycle, image formats, and client behavior. Testing these contracts helps protect downstream applications from unintended changes to the backend.

- **Documentation and repeatable distribution.** I provide API documentation for developers and full GUI documentation for end users through MkDocs. These explain how to extend the software and use its analysis workflows. For distribution, GitHub Actions automates documentation and desktop application builds. PyInstaller packages macOS and Windows applications so researchers can run them without setting up a Python development environment.

- **Browser execution of Python backends.** I use WebAssembly and Pyodide to bring Python capabilities into browser applications. WebMapManager and [PyMapManager](https://mapmanager.github.io/PyMapManager/) are browser and desktop GUIs for the same Python backend, MapManagerCore. Pyodide runs that backend in the browser, so both GUIs use the same code for analysis, loading, and saving.

  [AcqView](https://mapmanager.github.io/acqview/) uses Pyodide to run community-developed Python microscopy readers within a TypeScript, JavaScript, and Vue application. This makes the readers accessible to researchers without programming experience. Users open supported files locally, inspect metadata and images, and export TIFFs. Files remain on their device, with no dedicated application server required. My contribution is the application architecture and integration of the community reader packages and shared image viewer.

## Technical Leadership and Mentorship

My record of successful grant writing and funded research includes NIH BRAIN Initiative and NHLBI R01 awards and Chan Zuckerberg Initiative software support. This funding enabled me to build teams of software developers and manage multidisciplinary work with research biologists. I combine direct technical contributions with architectural guidance, development coordination, and mentorship to turn scientific requirements into usable software.

I have mentored trainees in computer science, biophysical engineering, and biomedical engineering, along with employees with computer science backgrounds. Drawing on my own experimental work, I help engineers understand the biological questions, experimental methods, and measurement constraints their software must address. My engineering experience also helps research biologists understand and extend quantitative methods. I contribute to decisions on both sides of that collaboration while helping colleagues develop the knowledge to work more independently.
