## Selected Research Software Platforms

### SanPy: Physiological Event Detection and Feature Extraction

[SanPy](https://cudmore.github.io/SanPy/) detects events and extracts quantitative features from whole-cell current-clamp recordings of excitable cells, including neurons and cardiac myocytes. It analyzes action potentials and subthreshold events and measures properties including threshold, peak, width, timing, and shape. The desktop application overlays measurements on raw recordings and provides linked plots, tables, quality information, and error summaries for review. Individual feature-calculation failures are recorded without stopping the complete analysis.

The same Python backend supports the desktop application, scripts, and Jupyter notebooks. Extensible loaders, measurements, and graphical plugins allow new requirements to be incorporated without creating separate analysis implementations. SanPy uses HDF5 for native storage and exports self-contained Zarr collections that preserve recordings, metadata, detection parameters, feature definitions, and completed results. [SanPy-Web](https://mapmanager.github.io/sanpy-web/docs/) uses lazy access to present saved recordings and analyses as interactive browser-based figures without requiring the desktop application.

### PiE: Distributed Acquisition and Device Coordination

[PiE](https://cudmore.github.io/pie-doc) is a distributed system for acquiring data, controlling equipment, and coordinating behavioral experiments. Each autonomous Raspberry Pi and Linux node coordinates live-video cameras, lighting and ventilation, temperature and humidity sensors, structured event logging, and hardware control. An HTTP and JSON API supports browser interfaces, notebooks, and other laboratory software, while a centralized application provides remote monitoring and control across multiple experimental boxes.

PiE separates timing-sensitive acquisition from networking, video, and storage. An Arduino-compatible microcontroller handles interrupt-driven triggers, motor and encoder state, and sub-millisecond event logging while communicating with the Linux server over USB serial. This architecture synchronizes behavioral video with two-photon microscope trial and frame signals. Camera timestamps and structured event records preserve alignment across devices.

The system has supported continuous recording across eight behavioral boxes in parallel. Services start automatically and support remote recovery. File-transfer services detect network errors and resume interrupted SSH/SFTP transfers after connectivity returns. These capabilities connect distributed sensors and synchronized instrumentation with centralized data management and reliable long-running operation.

### AcqStore: Scientific Analysis and Integration APIs

[AcqStore](https://mapmanager.github.io/acqstore/) is a Python backend for loading, managing, and analyzing scientific imaging and time-series data. It reads standard and proprietary vendor formats while preserving metadata required for quantitative analysis. Because commercial formats can change without notice, loaders and automated tests identify incompatibilities when new versions appear. Its public API provides file loading, metadata access, lazy data access, numerical analysis, and structured export. Defined plugin interfaces support additional loaders, analytical methods, and output formats.

Implemented methods include spectral heart-rate estimation, intensity-event detection and feature extraction, blood-flow velocity measurement, and vessel-diameter analysis. Multiprocessing and thread pools accelerate independent calculations. Successful results remain available when an individual fit or feature calculation fails, and each failure is recorded for review.

Lazy and chunked access supports datasets too large to load in full. Schema-defined Zarr collections preserve raw data, metadata, analysis parameters, regions of interest, and results. [AcqStore-Server](https://acqstore-server.pages.dev/) exposes AcqStore file loaders, metadata, and image data through a FastAPI service for browser, JavaScript, and Python clients. Pydantic schemas and OpenAPI define the service contract, while automated tests cover schemas, client behavior, errors, sessions, and representative file formats.

### CloudScope: Analysis, Review, and Web Delivery

[CloudScope](https://mapmanager.github.io/cloudscope-app/) uses AcqStore for interactive analysis and review against raw data. The same NiceGUI codebase runs as a packaged macOS or Windows application or as a web server for browser clients. [CloudScope-Web](https://mapmanager.github.io/cloudscope-web/docs/) is a static web application that uses lazy access to present completed datasets as interactive figures and dashboards. Together with SanPy-Web, it demonstrates deployment of scientific results from reusable Python backends into accessible browser applications.

**Project links:** [SanPy](https://cudmore.github.io/SanPy/) · [SanPy-Web](https://mapmanager.github.io/sanpy-web/docs/) · [PiE](https://cudmore.github.io/pie-doc) · [AcqStore](https://mapmanager.github.io/acqstore/) · [AcqStore-Server](https://acqstore-server.pages.dev/) · [CloudScope](https://mapmanager.github.io/cloudscope-app/) · [CloudScope-Web](https://mapmanager.github.io/cloudscope-web/docs/)

## Technical Skills

- **Programming and scientific computing:** Python, C/C++, Jupyter, NumPy, SciPy, pandas, Numba, parallel and concurrent programming
- **Physiological and quantitative analysis:** electrophysiology and time-series analysis, event detection and feature extraction, spectral estimation, heart-rate estimation, blood-flow and vessel-diameter analysis
- **Data and interoperability:** HDF5, Zarr, JSON Schema, JSON, CSV, Parquet, lazy and chunked access, metadata preservation, proprietary scientific formats
- **APIs and production integration:** documented Python APIs, plugin interfaces, FastAPI, Pydantic, RESTful HTTP/JSON APIs, OpenAPI, device integration
- **Testing and documentation:** pytest, Git, GitHub Actions, continuous integration, MkDocs, documented APIs, end-user and developer documentation
- **Deployment and infrastructure:** Linux, Docker, systemd, PyInstaller, application packaging, SSH/SFTP synchronization, server-backed applications, distributed acquisition nodes
- **Web and browser applications:** HTML, JavaScript, TypeScript, Vue, NiceGUI, static and server-backed browser applications
- **Instrumentation and distributed acquisition:** custom microscopy and electrophysiology systems, real-time acquisition and visualization, Raspberry Pi, Arduino-compatible microcontrollers, hardware interrupts, USB serial communication, device synchronization, remote monitoring
- **Sensor laboratories:** ECG/EKG, pulse oximetry, accelerometer-based activity measurement, distributed sensors, internet dashboards
