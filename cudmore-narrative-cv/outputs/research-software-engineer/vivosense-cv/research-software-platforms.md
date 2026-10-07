## Selected Research Software Platforms

### SanPy: Physiological Event Detection and Feature Extraction

[SanPy](https://cudmore.github.io/SanPy/) detects action potentials and subthreshold events in whole-cell current-clamp recordings from neurons, cardiac myocytes, and other excitable cells. It extracts physiological features including threshold, peak, amplitude, timing, event kinetics, inter-spike intervals, firing frequency, and spike-frequency adaptation.

The cross-platform desktop application overlays measurements on raw recordings and provides linked views and error summaries for inspecting detections and failed feature calculations. Preset configurations support common neuronal and cardiac myocyte recordings. SanPy opens Molecular Devices ABF recordings. A documented Python API supports scripts and Jupyter notebooks, while plugin interfaces allow additional file formats, analyses, visualizations, and exports. SanPy exports complete analyses as self-contained Zarr datasets that [SanPy-Web](https://mapmanager.github.io/sanpy-web/docs/) presents as interactive browser-based figures.

### PiE: Distributed Acquisition and Device Coordination

Experimenter presence can disrupt sensitive animal behavior and confound experimental measurements. [PiE](https://cudmore.github.io/pie-doc) allows behavioral experiments to be operated and monitored remotely across an expandable array of modular behavior boxes. Each box uses commercially available components and can be configured with the sensors, actuators, and experimental hardware required for a particular study.

A Raspberry Pi Linux server in each box coordinates video acquisition and live viewing, lighting and ventilation, temperature and humidity sensors, hardware control, and structured event logging. An HTTP and JSON API supports browser interfaces, notebooks, and laboratory software. The Commander application provides centralized status, control, live video, and collection of completed records across the distributed system.

PiE separates timing-sensitive measurements from networking, video, and storage. An Arduino-compatible microcontroller handles interrupt-driven triggers, motor and encoder state, and sub-millisecond event logging over USB serial. This design synchronizes behavioral video with two-photon microscope trial triggers and frame signals. Camera timestamps and structured event records preserve alignment across devices, while a circular buffer can retain video preceding an externally initiated trial.

PiE has supported continuous recording across eight behavior boxes in parallel. Services start automatically and support remote recovery, while file-transfer processes detect network failures and resume interrupted SSH/SFTP transfers after connectivity returns. The related VideoAnnotate application supports frame-based event annotation and blinded scoring of randomized video segments.

### AcqStore: Scientific Analysis and Integration APIs

[AcqStore](https://mapmanager.github.io/acqstore/) is a general-purpose Python backend for loading, managing, analyzing, and exporting scientific imaging and time-series data. Its documented API provides consistent access to data, metadata, and numerical methods from applications, scripts, and notebooks. It reads scientific and proprietary vendor formats while preserving metadata required for quantitative analysis. Compatibility tests identify unexpected format changes, and plugin interfaces support additional loaders, analyses, and exports.

Current methods include spectral heart-rate estimation, intensity-event detection and feature extraction, blood-flow velocity, and vessel-diameter measurement. AcqStore preserves usable results when an individual calculation fails and records the failure for investigation. Lazy and chunked access supports large collections and datasets that cannot be loaded in full, while self-contained Zarr exports keep raw data, metadata, parameters, and completed analyses together.

[AcqStore-Server](https://acqstore-server.pages.dev/) makes these capabilities available to browser, JavaScript, Python, and independently developed clients through a versioned web API. Built with FastAPI, it uses Pydantic schemas to define request and response data and publishes an OpenAPI contract for reliable client integration.

### CloudScope: Analysis, Review, and Web Delivery

[CloudScope](https://mapmanager.github.io/cloudscope-app/) uses AcqStore to load complete imaging datasets, run physiological analyses, and inspect measurements against raw data. Researchers can curate individual results and pool measurements for final figures. The same application runs as a packaged macOS or Windows program or as a web server for browser clients. [CloudScope-Web](https://mapmanager.github.io/cloudscope-web/docs/) presents completed AcqStore datasets as interactive published figures.

## Technical Skills

- **Programming and scientific computing:** Python, C/C++, Jupyter, NumPy, SciPy, pandas, Numba, parallel and concurrent programming
- **Physiological and quantitative analysis:** electrophysiology and time-series analysis, event detection and feature extraction, spectral and heart-rate estimation, blood-flow and vessel-diameter analysis
- **Data and interoperability:** HDF5, Zarr, JSON Schema, JSON, CSV, Parquet, lazy and chunked access, metadata preservation, proprietary scientific formats
- **APIs and production integration:** documented Python APIs, plugin interfaces, FastAPI, Pydantic, RESTful HTTP/JSON APIs, OpenAPI, device integration
- **Testing and documentation:** pytest, Git, GitHub Actions, continuous integration, MkDocs, documented APIs, end-user and developer documentation
- **Deployment and infrastructure:** Linux, Docker, systemd, PyInstaller, application packaging, SSH/SFTP synchronization, server-backed applications, distributed acquisition nodes
- **Web applications:** HTML, JavaScript, TypeScript, Vue, NiceGUI, static and server-backed browser applications
- **Instrumentation and distributed acquisition:** custom microscopy and electrophysiology systems, real-time acquisition and visualization, Raspberry Pi, Arduino-compatible microcontrollers, hardware interrupts, USB serial communication, device synchronization, remote monitoring
- **Sensor laboratories:** ECG/EKG, pulse oximetry, accelerometer-based activity measurements, distributed sensors, internet dashboards
