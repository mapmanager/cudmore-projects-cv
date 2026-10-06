## Research Software Platforms

## CloudScope: Cross-Platform Imaging Analysis and Curation

[CloudScope](https://mapmanager.github.io/cloudscope-app/) is a graphical application for managing quantitative image analysis during experiments and offline. It streamlines loading complete dataset folders that may contain hundreds of raw-data files and their analyses. Researchers can visualize images, run analyses, inspect measurements against the raw data, and efficiently curate individual results. They can also pool measurements across a collection to prepare final figures and publish the completed analysis for interactive viewing in CloudScope-Web.

CloudScope is designed as a general-purpose, extensible imaging application. Its current scientific workflows focus on kymograph line-scan images and include blood-flow velocity, vessel-diameter changes, heart rate derived from blood-flow velocity, and event detection in signals from fluorescent reporters.

The same NiceGUI application runs as a packaged macOS or Windows desktop program or as a web server for browser clients. CloudScope uses AcqStore for file loading, metadata management, numerical analysis, and saving results. [CloudScope-Web](https://mapmanager.github.io/cloudscope-web/docs/) presents published AcqStore Zarr datasets as interactive figures, allowing readers to examine pooled results alongside the underlying images.

### AcqStore: Imaging Algorithms and Scientific Data Interoperability

[AcqStore](https://mapmanager.github.io/acqstore/) is a general-purpose Python backend for loading, managing, analyzing, and exporting imaging data. Its documented public API gives graphical applications, scripts, and notebooks a consistent interface to these capabilities. AcqStore reads widely used scientific formats and proprietary vendor formats while preserving the metadata required for quantitative analysis. Plugin interfaces allow developers to add file loaders, analysis methods, and export formats without modifying the applications that use the backend. Current analyses include Radon-based blood-flow velocity, threshold- and gradient-based diameter measurements, spectral heart-rate estimation, and intensity-event detection followed by feature extraction.

AcqStore supports responsive work with collections containing hundreds of raw-data files and individual datasets too large to load in full. It exports a documented, self-contained AcqStore Zarr collection that preserves raw images, acquisition metadata, regions of interest, analysis parameters, and results. Images within each collection are stored as OME-Zarr-compatible multiscale pyramids, preserving OME-NGFF image semantics while connecting the images to their analyses. AcqStore also supports Neurodata Without Borders export when that standard is appropriate for data sharing and repository deposition.

[AcqStore-Server](https://acqstore-server.pages.dev/) makes AcqStore available to browser applications and other lightweight clients through a versioned web API. JavaScript, Python, and independently developed clients can open supported proprietary microscopy formats and retrieve normalized metadata and image data without embedding the AcqStore Python backend or its reader dependencies. Built with FastAPI, the service uses Pydantic schemas to define request and response data and publishes a machine-readable OpenAPI contract for reliable client integration. The service can run locally, be hosted remotely, or be distributed as a desktop application, extending the same AcqStore capabilities across local and networked workflows.

### SanPy: Electrophysiology Analysis and Feature Extraction

[SanPy](https://cudmore.github.io/SanPy/) detects action potentials and subthreshold events in whole-cell current-clamp recordings from neurons, cardiac myocytes, and other excitable cells. For each event, it extracts physiological features including threshold, peak, amplitude, timing, half-width, and rise and fall kinetics. It also measures spike-train properties such as interspike intervals, firing frequency, and spike-frequency adaptation.

The cross-platform PyQt desktop application supports interactive analysis during experiments and systematic offline review. Researchers can efficiently browse collections containing hundreds of recordings and their analyses. SanPy overlays detections and measurements on the raw signals, while linked views and error summaries help researchers inspect individual events and identify failed feature calculations. Preset detection configurations provide practical starting points for common neuronal and cardiac-myocyte recordings. Researchers can also pool measurements across recordings to create summary plots and final figures.

A documented Python API supports automated analysis through scripts and notebooks. SanPy opens Molecular Devices ABF recordings, while plugin interfaces allow developers to add file formats, analysis methods, visualizations, and export formats. SanPy uses HDF5 for native storage and exports complete analyses as self-contained SanPy Zarr datasets. [SanPy-Web](https://mapmanager.github.io/sanpy-web/docs/) presents these datasets as interactive browser-based figures without requiring the desktop application.

### MapManager: Longitudinal Annotation and Curation Across Time

[MapManager](https://mapmanager.github.io/) supports longitudinal annotation, measurement, and curation of neuronal structures in n-dimensional microscopy datasets collected across hours, days, and months. Its established scientific workflow focuses on dendritic spines, and axonal-bouton tracking is also supported. MapManager provides graphical tools for managing longitudinal datasets containing tens of thousands of annotations across many imaging sessions. Its curation workflow helps researchers identify false-positive and false-negative annotations and correct relationships between time points. This is critical because even modest error rates can obscure small changes in structural turnover.

Dendritic spines and axonal boutons are sub-micron, diffraction-limited structures that can be difficult to identify reliably with fully automated segmentation. Researchers therefore mark candidate structures, after which MapManager creates regions of interest and uses measurement heuristics to propose whether each annotation should be accepted or rejected. It also proposes connections between corresponding structures at adjacent time points. Researchers review and correct these proposals to create a curated reference annotation set. MapManager then classifies structures as persistent, transient, added, or eliminated.

Researchers select corresponding landmarks to guide rigid alignment between time points when noisy images do not provide reliable features for fully automatic registration. MapManager uses Brightest Path to trace parent dendritic segments and axons, associates annotations with those traces, and measures properties including position, morphology, fluorescence, and distance along the parent structure.

The original Igor Pro desktop application established this workflow in research use. A modern open-source ecosystem is carrying it forward and remains under active development. MapManagerCore provides the shared Python API, using GeoPandas and Shapely to store and manipulate annotation geometry. PyMapManager provides desktop, scripting, and notebook access. [WebMapManager](https://github.com/mapmanager/WebMapManager) runs MapManagerCore in the browser through Pyodide and supports browser-based visualization, annotation, and analysis of longitudinal image data. A [live WebMapManager application](https://mapmanager.github.io/WebMapManager/) is publicly available.

### mapmanager-web-components: Reusable Scientific Interface Components

[mapmanager-web-components](https://mapmanager.github.io/mapmanager-web-components/) provides reusable image, pooling, and signal-visualization components for scientific applications. These components allow desktop and browser applications to incorporate sophisticated visualization and interaction tools without rebuilding them for each project. Researchers receive consistent ways to explore images, compare pooled measurements, and inspect large signals across different applications.

Host applications provide data and display options through component APIs and register callbacks for user interactions. The components manage their internal rendering and interaction behavior, allowing thin graphical interfaces to focus on application-specific scientific workflows. Improvements to a component can then be reused across applications without requiring each interface to be rebuilt.

The TypeScript, JavaScript, and Vue library currently provides three principal components. The image viewer uses Viv and deck.gl for WebGL-accelerated streaming and display of multiscale image pyramids. The pooling component uses Plotly to present pooled measurements as plots and tabular output. The signal viewer combines uPlot’s fast, memory-efficient Canvas 2D rendering with data pyramids to stream large one-dimensional signals. Components from the library are used across CloudScope, CloudScope-Web, SanPy, and SanPy-Web.

### Brightest Path: Reusable Image-Tracing Algorithms

Tracing bright filament-like structures is a recurring problem in scientific image analysis. [Brightest Path](https://mapmanager.github.io/brightest-path-lib/) provides a documented, installable Python package for point-to-point tracing in n-dimensional images rather than requiring each project to implement and optimize the algorithm independently. It is designed for filament-like structures such as neuronal dendrites and axons. Researchers provide start and end points, and the library returns image coordinates forming the brightest path. The resulting path can be visualized, measured, or incorporated into subsequent analyses.

The library implements A* and bidirectional A* graph-search algorithms and uses Numba to accelerate the computation. Progress reporting allows applications to display the search as it runs. Brightest Path is distributed through [PyPI](https://pypi.org/project/brightest-path-lib/), while a separate napari plugin provides interactive tracing through the same implementation.

### AcqView: Microscopy Files Opened Locally in the Browser

Proprietary microscopy files can be difficult to inspect without the corresponding commercial software. AcqView is a static browser application that allows researchers to drag and drop supported microscopy files into a webpage, inspect their metadata, visualize the images, and export them as TIFF files.

AcqView uses WebAssembly and Pyodide to run community-developed Python file readers directly in the browser. Its TypeScript and Vue interface provides interactive image viewing while the source files remain on the user’s device.

### PiE: Distributed Acquisition and Behavioral Review

Experimenter presence can disrupt sensitive animal behavior and confound experimental measurements. [PiE](https://cudmore.github.io/pie-doc) is a distributed acquisition and control system that allows behavioral experiments to be operated and monitored remotely. Individual behavior boxes are modular, use commercially available components, and include detailed construction documentation. Researchers can configure each box with the sensors, actuators, and experimental hardware required for a particular study.

Each behavior box uses a Raspberry Pi Linux server to coordinate video acquisition and live viewing, lighting and ventilation, environmental monitoring, and structured event logging. An Arduino-compatible microcontroller handles timing-sensitive measurements and hardware control. An HTTP and JSON API supports browser interfaces, notebooks, and other laboratory software. The Commander interface provides centralized status, control, live video, and collection of completed records across an expandable array of boxes.

PiE has supported continuous recording across eight behavior boxes in parallel. Data transfer resumes automatically after network interruptions, supporting reliable unattended operation. The related VideoAnnotate application supports frame-based event annotation and blinded scoring of randomized video segments.

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
