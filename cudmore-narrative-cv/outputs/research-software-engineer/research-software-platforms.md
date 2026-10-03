## Research Software Platforms

### CloudScope: Imaging Analysis, Curation, and Publication

I developed [CloudScope](https://mapmanager.github.io/cloudscope-app/) to connect image analysis, scientific curation, and publication in one workflow. Its thin NiceGUI interface uses AcqStore for image access and computation. The same interface code supports macOS and Windows desktop applications and, alternatively, a remotely accessible web application hosted on a server. Researchers can use the software during experiments and continue with offline analysis through the same backend.

Researchers inspect images, run analyses, and review detections against the raw data. Blinding conceals experimental conditions and other identifying information, while randomized and sub-sampled presentation supports systematic review across large datasets. These tools make curation practical while helping limit experimenter bias. Applications include blood-flow measurements, diameter changes, and fluorescent reporter signals, with new methods added through the Python backend in AcqStore.

Completed analyses are saved with raw images, metadata, and detection parameters in self-contained and schema defined Zarr datasets. [CloudScope-Web](https://mapmanager.github.io/cloudscope-web/docs/) provides a read-only browser interface to these Zarr datasets, using lazy access to images and results. It presents interactive published figures and dashboards without a dedicated application server, allowing users to examine findings alongside the underlying raw data.

### AcqStore: Scientific Algorithms, Python APIs, and Data Interoperability

[AcqStore](https://mapmanager.github.io/acqstore/) is a general-purpose Python backend for loading, managing, and analyzing imaging data. AcqStore provides the computational backend used by CloudScope while exposing the same methods to other applications, scripts, and notebooks. File-loader plugins accommodate new image formats while preserving critical metadata. Analysis plugins let developers add specialized methods through the public API.

Its numerical methods include Radon-based blood-flow velocity, threshold and gradient-based diameter measurements, spectral heart-rate estimation, and detection of events in intensity traces followed by feature extraction from each event. Numerical computation operates on raw data independently of graphical interfaces. Python multiprocessing handles independent Radon windows, and thread pools handle diameter profiles. The software preserves successful results when individual fits or feature measurements fail and identifies those failures for review.

Lazy loading of images and analysis tables supports rapid, efficient browsing across collections containing hundreds of raw-data files and scales to datasets too large to load in full. The published AcqStore Zarr collection specification and machine-readable JSON Schema define how images, metadata, regions of interest, and results remain connected. Images follow OME-NGFF conventions, allowing other software to interpret them independently of AcqStore's internal classes. OME-Zarr and Neurodata Without Borders (NWB) exports support sharing through community repositories such as DANDI archive and the Brain Image Library, using formats appropriate to each repository and data type.

### SanPy: Electrophysiology Analysis and Feature Extraction

[SanPy](https://cudmore.github.io/SanPy/) provides event detection and feature extraction for whole-cell current-clamp recordings from excitable cells including neurons and cardiac myocytes. It supports action potentials and subthreshold events, measuring properties such as threshold, peak, width, timing, and shape. The PyQt desktop application overlays measurements on raw recordings and provides linked views and error summaries for curation. Individual feature-calculation failures are recorded without stopping the complete analysis.

The desktop application, scripts, and notebooks use the same internal Python backend. Extensible file loaders, measurements, and graphical plugins allow new research needs to be incorporated without a separate analysis implementation. This supports both interactive work during experiments and automated offline analysis.

SanPy uses HDF5 for native storage and exports self-contained Zarr collections. Documented schemas preserve recordings, metadata, detection parameters, feature definitions, and completed results for interpretation outside the application. [SanPy-Web](https://mapmanager.github.io/sanpy-web/docs/) uses lazy access of SanPy Zarr files to present saved recordings and results as interactive web dashboards. Readers can inspect the raw data and analysis without installing the desktop application.

### Reusable Scientific Interface Libraries

I develop [mapmanager-web-components](https://mapmanager.github.io/mapmanager-web-components/) and [NiceWidgets](https://mapmanager.github.io/nicewidgets/) to share visualization and interaction capabilities across scientific applications. Their public component APIs expose methods, configuration, and events or callbacks. Applications supply data and coordinate interactions through these interfaces without depending on widget internals.

mapmanager-web-components provides an image viewer, nicepool, and a signal viewer, each with a live static demo. The TypeScript, JavaScript, and Vue components are used across CloudScope-Web, SanPy-Web, PyQt SanPy, and NiceGUI CloudScope. NiceWidgets provides Python components for NiceGUI, including image interaction, tables, and linked plots, and supports CloudScope's desktop and server-backed web interfaces.

This separation lets applications remain thin while keeping scientific interpretation in their backends. A component can gain new visualization or interaction capabilities without rebuilding that functionality separately in every application that uses it.

### AcqStore Server: Scientific Data Through a Local API

[AcqStore Server](https://acqstore-server.pages.dev/) makes AcqStore image access available to clients that do not embed its Python backend. A local FastAPI service exposes image planes, normalized metadata, and physical units through a versioned API defined with Pydantic schemas and OpenAPI. Browser, JavaScript, and Python clients use this interface, which also provides a route for future integrations (including potential MATLAB and Igor Pro clients).

Automated tests cover API schemas, client behavior, errors, session lifecycle, and representative image formats. PyInstaller packaging and GitHub Actions deliver the service as a desktop application, so researchers can run it without configuring a Python environment. Developers can build thin clients around a documented contract while reusing AcqStore's scientific file handling.

### Brightest Path: Reusable Image-Tracing Algorithms

[Brightest Path](https://mapmanager.github.io/brightest-path-lib/) traces axons, dendrites, and other filament-like structures using A* and bidirectional A* search in n-dimensional images. It accounts for image-axis scale and uses Numba for acceleration. Progress reporting allows an application to display a search as it runs.

The documented Python library returns paths for measurement and further analysis. A separate napari plugin provides interactive tracing through the same implementation. This separation makes the algorithm usable both within other software and directly by researchers.

### MapManager: Longitudinal Analysis Across Desktop and Browser

[MapManager](https://mapmanager.github.io/) supports alignment, annotation, curation, and measurement of neuronal structures across longitudinal microscopy sessions. The established Igor Pro application has supported at least five peer-reviewed publications. Reviewing and correcting annotations across sessions is central to maintaining useful measurements as structures change over time.

I am developing the modern ecosystem around MapManagerCore, a shared Python backend. [PyMapManager](https://mapmanager.github.io/PyMapManager/) and WebMapManager provide desktop and browser GUIs. WebMapManager uses Pyodide to run MapManagerCore in the browser, so both interfaces use the same Python API, algorithms, and loading and saving code. Scripts and notebooks can also use the backend. A live [WebMapManager](https://mapmanager.github.io/WebMapManager/) application is publicly available, extending access to these methods beyond the desktop.

### AcqView: Microscopy Files Opened Locally in the Browser

[AcqView](https://mapmanager.github.io/acqview/) makes community-developed Python readers for proprietary microscopy formats accessible to researchers without programming experience. Users open supported files locally, inspect metadata and images, and export TIFFs. For sensitive data, files remain on their device.

The static TypeScript, JavaScript, and Vue application uses WebAssembly and Pyodide to run the Python image readers in the browser, with no requirement for a backend server. It reuses the image viewer from mapmanager-web-components. My contribution is the application architecture and integration of these capabilities, while the Python reader packages remain the work of their community authors.

### PiE: Distributed Acquisition and Behavioral Review

[PiE](https://cudmore.github.io/pie-doc) is a distributed system for acquiring data, controlling equipment, and coordinating analysis in behavioral experiments. It is comprised of any number of behavioral boxes where each box runs an autonomous Linux server (using Raspberry Pi hardware) that coordinates video, lighting and ventilation, temperature and humidity monitoring, external triggers, and structured event logging. Its HTTP and JSON API supports browser interfaces, notebooks, and other laboratory software. The centralized "Commander" software provides a browser interface for remote monitoring and control of any number of boxes, viewing live streaming video, and transferring completed video and trial records over SSH/SFTP to central storage.

PiE separates timing-sensitive acquisition from networking, video, and storage. An Arduino-compatible microcontroller handles interrupt-driven triggers, motor and encoder state, and sub-millisecond event logging while communicating with the Linux server over USB serial. This architecture synchronizes behavioral video with two-photon microscope trial triggers and frame signals via TTL pulses. Camera timestamps and event records preserve the alignment, while a circular video buffer can retain behavior immediately before an externally initiated trial.

PiE has been used for continuous 24/7 recording across eight behavior boxes in parallel. Services start automatically and support remote recovery, while coordinated transfer avoids copying files that are still being written. The related VideoAnnotate application supports frame-based event annotation and blinded scoring of randomized video segments. Together, these components connect distributed acquisition and synchronized scientific instrumentation with centralized data management and systematic behavioral experiment curation.
