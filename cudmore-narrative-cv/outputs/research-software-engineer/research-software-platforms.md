## Research Software Platforms

### CloudScope: Cross-Platform GUI for Imaging Analysis, Curation, and Publication

[CloudScope](https://mapmanager.github.io/cloudscope-app/) is a graphical application that connects image analysis, scientific curation, and publication in one workflow. The same NiceGUI codebase runs as macOS and Windows desktop applications or as a cloud-hosted server application accessed through a web browser. Its thin interface relies on AcqStore for microscopy-file loading, metadata handling, lazy data access, and numerical analysis. Researchers can use CloudScope during experiments and continue with offline analysis through the same interface and AcqStore backend.

Researchers inspect images, run AcqStore analyses, and review analysis against the raw data. Blinding conceals experimental conditions and other identifying information, while randomized and sub-sampled presentation supports systematic review across large datasets. These tools make curation practical while helping limit experimenter bias. Applications include blood-flow measurements, diameter changes, and fluorescent reporter signals. New methods are added to the reusable AcqStore backend and then made available through CloudScope workflows.

CloudScope uses AcqStore to export complete datasets as self-contained Zarr collections containing raw images, metadata, detection parameters, and results. [CloudScope-Web](https://mapmanager.github.io/cloudscope-web/docs/) is an online viewer for published AcqStore Zarr datasets. It uses lazy access to present images and results as interactive figures and dashboards without a dedicated application server, allowing users to examine findings alongside the underlying raw data.

### AcqStore: Scientific Algorithms, Python APIs, and Data Interoperability

[AcqStore](https://mapmanager.github.io/acqstore/) is a general-purpose Python backend for loading, managing, and analyzing imaging data. It loads microscopy data from widely used scientific formats and proprietary vendor formats while preserving metadata needed for quantitative analysis. Its documented public API provides file loading, metadata handling, lazy data access, numerical analysis, and structured export. Plugin interfaces support additional file loaders, analysis methods, and output formats. Keeping these capabilities in a reusable backend allows desktop applications such as CloudScope, scripts, notebooks, services, and future thin clients to use the same implementation.

Current numerical methods include Radon-based blood-flow velocity, threshold and gradient-based diameter measurements, spectral heart-rate estimation, and detection of events in intensity traces followed by feature extraction from each event. AcqStore uses multiprocessing and thread pools when independent calculations can benefit from parallel execution. Successful results remain available when an individual fit or feature measurement fails, and the failure is identified for review.

Lazy loading of images and analysis tables supports rapid, efficient browsing across collections containing hundreds of raw-data files and scales to datasets too large to load in full. AcqStore exports complete datasets as self-contained Zarr collections containing images, metadata, analysis parameters, regions of interest, and results. The published AcqStore Zarr collection specification and machine-readable JSON Schema define how these elements remain connected. Images follow OME-NGFF conventions, allowing other software to interpret them independently of AcqStore's internal classes. OME-Zarr and Neurodata Without Borders (NWB) exports support sharing through community repositories such as DANDI archive and the Brain Image Library, using formats appropriate to each repository and data type.

[AcqStore-Server](https://acqstore-server.pages.dev/) is a separately delivered access layer that uses the AcqStore API to expose its file loaders, metadata, and image data through a FastAPI service. It can run locally or be deployed remotely, allowing browser, JavaScript, and Python clients to open supported proprietary formats without embedding the AcqStore Python backend. The documented contract uses Pydantic schemas and OpenAPI, and it provides a path for future integrations such as MATLAB and Igor Pro clients.

Automated tests cover API schemas, client behavior, errors, session lifecycle, and representative image formats. PyInstaller packaging and GitHub Actions deliver AcqStore-Server as a desktop application, giving researchers a ready-to-run local service. Thin clients can use the same AcqStore implementation for scientific file handling instead of recreating that logic in each application.

### MapManager: Large-Scale Annotation and Curation Across Time

[MapManager](https://mapmanager.github.io/) supports large-scale annotation and curation of neuronal structures across longitudinal microscopy sessions spanning days to months. A longitudinal experiment can produce tens of thousands of annotations whose identities, measurements, and relationships must remain accurate across repeated imaging sessions. Small changes in spine turnover can be obscured by even modest rates of false-positive and false-negative annotations. MapManager therefore combines automated analysis with rapid expert curation so detection errors do not become biological conclusions.

Researchers identify candidate dendritic spines or axonal boutons, after which MapManager automatically creates regions of interest and uses measurement heuristics to propose whether each annotation should be accepted or rejected. It also proposes connections between corresponding structures at adjacent time points. Researchers review and correct these proposals through the graphical interface, producing a curated reference annotation set. MapManager then classifies structures as persistent, transient, added, or eliminated across any number of time points. Its API and graphical interface allow users to inspect and correct those classifications while preserving the identity of structures that persist across multiple imaging sessions.

MapManager uses corresponding landmarks selected by the researcher to calculate rigid alignment between time points. Constraining registration with scientifically meaningful landmarks reduces computational complexity and improves robustness when noisy longitudinal images do not provide reliable features for fully automatic alignment. MapManager uses the Brightest Path library to trace dendritic segments and axons. It associates spine annotations with their parent segments, performs region-of-interest image analysis, and calculates features that can include position, area, length, distance along the parent segment, fluorescence intensity, intensity ratios, and structural classifications.

The established Igor Pro application made this workflow practical for longitudinal structural neuroscience and demonstrated its value in research use. I am carrying that proven scientific workflow forward in modernized, extensible ecosystem built around MapManagerCore, a shared Python backend. [PyMapManager](https://mapmanager.github.io/PyMapManager/) and WebMapManager provide desktop and browser GUIs. WebMapManager uses Pyodide to run MapManagerCore in the browser, so both interfaces use the same Python API, algorithms, and loading and saving code. Scripts and notebooks can also use the backend. A live [WebMapManager](https://mapmanager.github.io/WebMapManager/) application is publicly available, extending access to these methods beyond the desktop.

### SanPy: Electrophysiology Analysis and Feature Extraction

[SanPy](https://cudmore.github.io/SanPy/) provides event detection and feature extraction for whole-cell current-clamp recordings from excitable cells including neurons and cardiac myocytes. It supports action potentials and subthreshold events, measuring properties such as threshold, peak, width, timing, and shape. The PyQt desktop application overlays measurements on raw recordings and provides linked views and error summaries for curation. Individual feature-calculation failures are recorded without stopping the complete analysis.

The desktop application, scripts, and notebooks use the same internal Python backend. Extensible file loaders, measurements, and graphical plugins allow new research needs to be incorporated without a separate analysis implementation. This supports both interactive work during experiments and automated offline analysis.

SanPy uses HDF5 for native storage and exports self-contained Zarr collections. Documented schemas preserve recordings, metadata, detection parameters, feature definitions, and completed results for interpretation outside the application. [SanPy-Web](https://mapmanager.github.io/sanpy-web/docs/) uses lazy access of SanPy Zarr files to present saved recordings and results as interactive web dashboards. Readers can inspect the raw data and analysis without installing the desktop application.

### Reusable Scientific Interface Libraries

I develop [mapmanager-web-components](https://mapmanager.github.io/mapmanager-web-components/) and [NiceWidgets](https://mapmanager.github.io/nicewidgets/) to share visualization and interaction capabilities across scientific applications. Their public component APIs expose methods, configuration, and interaction events. Applications supply data and coordinate interactions through these interfaces without depending on widget internals.

mapmanager-web-components provides an image viewer, nicepool, and a signal viewer, each with a live static demo. The image viewer uses Viv and deck.gl to stream and display multiscale image pyramids, while the signal viewer uses [uPlot](https://github.com/leeoniya/uPlot) and data pyramids to stream large one-dimensional signals. The TypeScript, JavaScript, and Vue components are used across CloudScope-Web, SanPy-Web, PyQt SanPy, and NiceGUI CloudScope. NiceWidgets provides Python components for NiceGUI, including image interaction, tables, and linked plots, and supports CloudScope's desktop and server-backed web interfaces.

This separation lets applications remain thin while keeping scientific interpretation in their backends. A component can gain new visualization or interaction capabilities without rebuilding that functionality separately in every application that uses it.

### Brightest Path: Reusable Image-Tracing Algorithms

[Brightest Path](https://mapmanager.github.io/brightest-path-lib/) traces axons, dendrites, and other filament-like structures using A* and bidirectional A* search in n-dimensional images. It uses Numba for acceleration, and progress reporting allows an application to display a search as it runs.

The documented Python library is distributed through PyPI and returns paths for measurement and further analysis. A separate napari plugin provides interactive tracing through the same implementation. This separation makes the algorithm usable both within other software and directly by researchers.

### AcqView: Microscopy Files Opened Locally in the Browser

[AcqView](https://mapmanager.github.io/acqview/) makes community-developed Python readers for proprietary microscopy formats accessible to researchers without programming experience. Users open supported files locally, inspect metadata and images, and export TIFFs. For sensitive data, files remain on their device.

The static TypeScript, JavaScript, and Vue application uses WebAssembly and Pyodide to run the Python image readers in the browser, with no requirement for a backend server. It reuses the image viewer from mapmanager-web-components.

### PiE: Distributed Acquisition and Behavioral Review

[PiE](https://cudmore.github.io/pie-doc) is a distributed system for acquiring data, controlling equipment, and coordinating analysis in behavioral experiments. It is comprised of any number of behavioral boxes where each box runs an autonomous Linux server (using Raspberry Pi hardware) that coordinates video, lighting and ventilation, temperature and humidity monitoring, external triggers, and structured event logging. Its HTTP and JSON API supports browser interfaces, notebooks, and other laboratory software. The centralized "Commander" software provides a browser interface for remote monitoring and control of any number of boxes, viewing live streaming video, and transferring completed video and trial records over SSH/SFTP to central storage.

PiE separates timing-sensitive acquisition from networking, video, and storage. An Arduino-compatible microcontroller handles interrupt-driven triggers, motor and encoder state, and sub-millisecond event logging while communicating with the Linux server over USB serial. This architecture synchronizes behavioral video with two-photon microscope trial triggers and frame signals via TTL pulses. Camera timestamps and event records preserve the alignment, while a circular video buffer can retain behavior immediately before an externally initiated trial.

PiE has been used for continuous 24/7 recording across eight behavior boxes in parallel. Services start automatically and support remote recovery. File-transfer services monitor network errors and resume interrupted copies after connectivity is restored. The related VideoAnnotate application supports frame-based event annotation and blinded scoring of randomized video segments. Together, these components connect distributed acquisition and synchronized scientific instrumentation with centralized data management and systematic behavioral experiment curation.

## Project Resources

| Project | Description | Source | Documentation | Live application or demo |
|---|---|---|---|---|
| CloudScope | Desktop and web-based application for image visualization, analysis, and curation | [GitHub](https://github.com/mapmanager/cloudscope-app) | [Documentation](https://mapmanager.github.io/cloudscope-app/) | [Application](https://cloudscope.mapmanager.net) |
| CloudScope-Web | Web viewer for published AcqStore Zarr datasets | [GitHub](https://github.com/mapmanager/cloudscope-web) | [Documentation](https://mapmanager.github.io/cloudscope-web/docs/) | [Application](https://mapmanager.github.io/cloudscope-web) |
| AcqStore | Python backend for loading, analyzing, and exporting microscopy data | [GitHub](https://github.com/mapmanager/acqstore) | [Documentation](https://mapmanager.github.io/acqstore/) | |
| AcqStore-Server | Local or remote service for accessing AcqStore microscopy loaders, metadata, and image data | [GitHub](https://github.com/mapmanager/acqstore-server) | [Documentation](https://acqstore-server.pages.dev/) | |
| mapmanager-web-components | Reusable image, pooled plots, and signal-visualization components for scientific applications | [GitHub](https://github.com/mapmanager/mapmanager-web-components) | [Documentation](https://mapmanager.github.io/mapmanager-web-components/) | [Image viewer](https://mapmanager.github.io/mapmanager-web-components/demos/image-viewer/) · [Nicepool](https://mapmanager.github.io/mapmanager-web-components/demos/nicepool/) · [Signal viewer](https://mapmanager.github.io/mapmanager-web-components/demos/signal-viewer/) |
| SanPy | Desktop application for electrophysiology event detection, feature extraction, visualization, and curation | [GitHub](https://github.com/cudmore/SanPy) | [Documentation](https://cudmore.github.io/SanPy/) | |
| SanPy-Web | Web viewer for published SanPy Zarr datasets | [GitHub](https://github.com/mapmanager/sanpy-web) | [Documentation](https://mapmanager.github.io/sanpy-web/docs/) | [Application](https://mapmanager.github.io/sanpy-web) |
| MapManager | Longitudinal annotation, measurement, and curation of neuronal structures through desktop and web GUIs | [MapManagerCore](https://github.com/mapmanager/MapManagerCore) · [PyMapManager](https://github.com/mapmanager/PyMapManager) · [WebMapManager](https://github.com/mapmanager/WebMapManager) | [Documentation](https://mapmanager.github.io/) | [WebMapManager](https://mapmanager.github.io/WebMapManager/) |
| Brightest Path | A* and bidirectional A* tracing of filament-like structures in n-dimensional images | [Library](https://github.com/mapmanager/brightest-path-lib) · [napari plugin](https://github.com/mapmanager/napari-tracing) · [PyPI](https://pypi.org/project/brightest-path-lib/) | [Documentation](https://mapmanager.github.io/brightest-path-lib/) | |
| AcqView | Browser application for opening proprietary microscopy files locally and exporting TIFF images | [GitHub](https://github.com/mapmanager/acqview) | Available in App | [Application](https://mapmanager.github.io/acqview/) |
| PiE | Distributed behavioral acquisition and remote experiment control | [GitHub](https://github.com/cudmore/pie) | [Documentation](https://cudmore.github.io/pie-doc) | |

## Technical Skills

- **Programming:** Python, C/C++, MATLAB, Igor Pro, Bash
- **Scientific computing:** NumPy, SciPy, pandas, GeoPandas, Shapely, Numba, scikit-image, Jupyter notebooks, parallel and concurrent programming
- **AI/ML prototypes:** PyTorch and Cellpose for MapManager image-segmentation prototypes
- **Algorithms and scientific analysis:** quantitative microscopy, image segmentation, ROI analysis, blood-flow velocity and vessel-diameter analysis, electrophysiology and time-series analysis, event detection and feature extraction, spectral estimation, longitudinal annotation and curation, A* and bidirectional A* tracing
- **Scientific data and interoperability:** HDF5, Zarr, OME-Zarr/OME-NGFF, multiscale image pyramids, Neurodata Without Borders, JSON Schema, JSON, CSV, Parquet, s3fs, lazy and chunked array access
- **APIs and backend systems:** documented Python APIs, defined plugin APIs for extensible file loading, analysis, and export, FastAPI, Flask, Flask-SocketIO, uvicorn, Pydantic, RESTful HTTP/JSON APIs, OpenAPI, httpx, device integration
- **Interfaces and visualization:** PyQt, pyqtgraph, NiceGUI, napari, pywebview, Plotly, Matplotlib, model-view-controller architecture, event-driven interfaces
- **Web and browser applications:** HTML, JavaScript, TypeScript, Node.js, Vue, Vite, WebAssembly, Pyodide, static web applications, server-backed browser applications
- **Testing and documentation:** pytest, Git, GitHub, GitHub Actions, continuous integration, uv, MkDocs, documented Python APIs, Python docstrings, end-user and developer documentation
- **Deployment and infrastructure:** Linux, Docker, Docker Compose, nginx, systemd, PyInstaller, macOS and Windows application packaging, object-storage access, SSH/SFTP synchronization, server-backed applications, distributed acquisition nodes, remote experimental systems
- **Scientific instrumentation and acquisition:** laser-scanning microscopy, confocal microscopy, two-photon microscopy, light-sheet microscopy, whole-cell current- and voltage-clamp electrophysiology, real-time acquisition and visualization, custom microscopy and electrophysiology systems
- **Embedded and distributed acquisition:** Raspberry Pi, Arduino-compatible microcontrollers, PlatformIO, GPIO, hardware interrupts, USB serial communication, cross-device trigger and frame synchronization, distributed acquisition nodes, remote experiment monitoring
- **Instructional sensor laboratories:** electrocardiography, pulse oximetry, accelerometer-based activity measurement, Arduino microcontrollers, distributed sensors, internet dashboards
