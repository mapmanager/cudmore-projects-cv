## Research Software Platforms

### CloudScope: Imaging Analysis, Curation, and Publication

I developed [CloudScope](https://mapmanager.github.io/cloudscope-app/) to connect image analysis, scientific curation, and publication in one workflow. Its thin NiceGUI interface uses AcqStore for image access and computation. The same interface code supports macOS and Windows desktop applications and a remotely accessible web application hosted on a server. Researchers can use the software during experiments and continue with offline analysis through the same backend.

Researchers inspect images, run analyses, and review detections against the raw data. Blinding conceals experimental conditions and other identifying information, while randomized presentation supports systematic review across many files. These tools make curation practical while helping limit experimenter bias. Applications include blood-flow measurements, diameter changes, and fluorescent reporter signals, with new methods added through AcqStore.

Completed analyses are saved with raw images, metadata, and detection parameters in self-contained OME-Zarr datasets. [CloudScope-Web](https://mapmanager.github.io/cloudscope-web/docs/) provides a read-only browser interface to these saved datasets, using lazy access to images and results. It presents interactive published figures without a dedicated application server, allowing readers to examine findings alongside the underlying raw data.

### AcqStore: Scientific Algorithms, Python APIs, and Data Interoperability

[AcqStore](https://mapmanager.github.io/acqstore/) is a general-purpose Python backend for loading, managing, and analyzing imaging data. It is independent of CloudScope and exposes the same computational methods to applications, scripts, and notebooks. File-loader plugins accommodate new image formats while preserving metadata and physical units. Analysis plugins let developers add specialized methods through the public API.

Its numerical methods include Radon-based blood-flow velocity, threshold and gradient-based diameter measurements, spectral heart-rate estimation, and intensity-trace event detection and feature extraction. Numerical cores operate on arrays and parameters independently of graphical interfaces. Python multiprocessing handles independent Radon windows, and thread pools handle diameter profiles. Batch processing reuses the single-file API, with cancellation and recorded outcomes for each file. Failed fits or individual feature calculations are recorded while usable results remain available for review.

Lazy loading of images and analysis tables supports browsing collections without loading complete datasets into memory. The published draft OME-Zarr collection specification and machine-readable JSON Schema define how images, metadata, regions of interest, and results remain connected. Images follow OME-NGFF conventions, allowing other software to interpret them independently of AcqStore's internal classes. A separate exporter uses the public API, keeping storage-format logic outside acquisition classes. OME-Zarr and Neurodata Without Borders (NWB) exports support sharing through community repositories such as DANDI archive and the Brain Image Library, using formats appropriate to each repository and data type.

### SanPy: Electrophysiology Analysis and Feature Extraction

[SanPy](https://cudmore.github.io/SanPy/) provides event detection and feature extraction for whole-cell current-clamp recordings from neurons and cardiac myocytes. It supports action potentials and subthreshold events, measuring properties such as threshold, peak, width, timing, and shape after detection. The PyQt application overlays measurements on raw recordings and provides linked views and error summaries for curation. Individual feature-calculation failures are recorded without stopping the complete analysis.

The desktop application, scripts, and notebooks use the same internal Python backend. Extensible file loaders, measurements, and graphical plugins allow new research needs to be incorporated without a separate analysis implementation. This supports both interactive work during experiments and automated offline analysis.

SanPy uses HDF5 for native storage and exports self-contained SanPy Zarr collections. Documented schemas preserve recordings, metadata, detection parameters, feature definitions, and completed results for interpretation outside the application. [SanPy-Web](https://mapmanager.github.io/sanpy-web/docs/) uses lazy access to present saved recordings and results as interactive published figures. Readers can inspect the raw signals and analysis without installing the desktop application.

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

I am developing the modern ecosystem around MapManagerCore, a shared Python backend. [PyMapManager](https://mapmanager.github.io/PyMapManager/) and WebMapManager provide desktop and browser GUIs. WebMapManager uses Pyodide to run MapManagerCore in the browser, so both interfaces use the same Python API, algorithms, and loading and saving code. Scripts and notebooks can also use the backend. A working WebMapManager application is publicly available, extending access to these methods beyond the desktop.

### AcqView: Microscopy Files Opened Locally in the Browser

[AcqView](https://mapmanager.github.io/acqview/) makes community-developed Python readers for proprietary microscopy formats accessible to researchers without programming experience. Users open supported files locally, inspect metadata and images, and export TIFFs. Files remain on their device.

The static TypeScript, JavaScript, and Vue application uses WebAssembly and Pyodide to run the readers in the browser, with no dedicated backend server. It reuses the image viewer from mapmanager-web-components. My contribution is the application architecture and integration of these capabilities, while the Python reader packages remain the work of their community authors.

### PiE: Distributed Acquisition and Behavioral Review

[PiE](https://cudmore.github.io/pie-doc) combines reproducible Raspberry Pi behavior-box designs with video acquisition, hardware control, environmental monitoring, and event logging. Each box runs an independent server. Commander provides centralized status, video monitoring, remote control, and file synchronization across boxes, reducing the need for experimenters to remain beside the apparatus.

PiE has been used for continuous 24/7 recording across eight behavior boxes in parallel. The resulting volume of video makes efficient review essential. The related VideoAnnotate application supports frame-based event annotation and blinded scoring of randomized video segments. Together, these tools connect distributed experimental acquisition with systematic behavioral curation.
