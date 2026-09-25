## Research Software Platforms

### CloudScope: Imaging Analysis, Curation, and Publication

Imaging workflows often separate raw data, analysis scripts, manual review, and publication. I developed the CloudScope suite to keep these stages connected. CloudScope provides graphical analysis and curation, AcqStore supplies the scientific backend, and CloudScope-Web presents saved datasets as interactive published figures.

The NiceGUI application runs on macOS and Windows and can also run as a server-backed web application. Researchers inspect raw images, apply AcqStore analyses, and correct false-positive and false-negative detections. Blinded and randomized review supports systematic curation while helping reduce experimenter bias. Current line-scan analyses address capillary blood flow, heartbeat, cellular diameter changes, and fluorescent reporter signals.

CloudScope saves raw data and completed analyses through AcqStore as self-contained OME-Zarr datasets. CloudScope-Web opens those datasets in a read-only interface that keeps published results connected to their underlying images. The viewer can be distributed without dedicated server infrastructure, lowering the operational requirements for interactive publication.

### AcqStore: Python Backend and Scientific Data Contracts

Scientific applications need reliable image access, metadata, and analysis without reimplementing those capabilities in each interface. AcqStore is a general-purpose Python backend, independent of CloudScope, with a documented public API. Extensible file loaders and analysis plugins allow applications, scripts, and notebooks to use the same scientific implementation.

Lazy loading of images and analysis tables allows researchers to browse large collections without loading all data into memory. The backend preserves acquisition context and physical units and supports structured result exports. It implements OME-Zarr and NWB export for sharing through domain-appropriate repositories.

The published AcqStore OME-Zarr Collection v1 specification defines how images, metadata, regions of interest, and analyses remain connected. It includes a machine-readable JSON Schema and is currently an initial normative draft. Each image remains independently valid OME-Zarr; AcqStore adds discovery and scientific metadata without replacing OME-NGFF image semantics. Relative paths and stable identifiers preserve relationships when a complete collection is moved.

A separate exporter consumes the public Python API, keeping format-specific behavior outside the acquisition classes. Documented software and data interfaces allow new applications to reuse scientific functionality and interpret saved collections independently of internal class representations.

### SanPy: Electrophysiology Backend, Applications, and Data Format

SanPy standardizes event detection and measurement in whole-cell current-clamp recordings from neurons and cardiac myocytes. Its primary use is action-potential analysis, with the same downstream analysis available for subthreshold events. It extracts more than 20 features per detected event and overlays measurements on raw recordings for inspection and curation.

The PyQt desktop application, Python scripts, and notebooks share an internal computational backend. Extensible file loaders, measurements, and graphical plugins allow new research requirements to be incorporated without duplicating the analysis implementation. SanPy supports work during experiments as well as offline analysis.

SanPy Zarr stores recordings, metadata, applied detection parameters, and completed analyses as self-contained collections. Its public export API and format documentation describe Zarr arrays, JSON metadata and definitions, and CSV or Parquet result tables. Parameter and result definitions are stored separately from their values, preserving native SanPy schema keys. The documentation is available on the `codex/sanpy-zarr` branch.

SanPy-Web opens these collections as interactive published figures. Readers can inspect recordings and results without installing the desktop application or obtaining the original source files. This connects the laboratory workflow with transparent publication and reuse.

### Reusable Scientific Interface Libraries

Scientific applications repeatedly need image and signal views, tables, and linked plots. I develop mapmanager-web-components and NiceWidgets to make interface capabilities reusable across applications.

mapmanager-web-components provides an image viewer, nicepool, and a signal viewer, each with a live static single-page application demo. Built with TypeScript, JavaScript, Vue, Vite, and Node.js, these components are used in CloudScope-Web and SanPy-Web, as well as the PyQt SanPy and NiceGUI CloudScope applications. This reuse connects imaging and electrophysiology interfaces across desktop analysis and web publication.

NiceWidgets provides reusable Python components for NiceGUI, including image interaction, configurable tables, and linked plots. CloudScope uses the library across desktop and server-backed web deployments. Together, the libraries allow interface improvements to be shared while scientific analysis remains in the computational backends.

### AcqStore Server: Scientific Data Through a Local API

AcqStore Server allows browser, JavaScript, and Python clients to access scientific image data without embedding the AcqStore backend. A local FastAPI and uvicorn service exposes normalized metadata, physical units, and image planes through a versioned API. Pydantic schemas and an OpenAPI contract define the client interface.

Automated tests cover schemas, API behavior, errors, session lifecycle, representative formats, and the client contract. PyInstaller packaging and GitHub Actions support desktop delivery. Researchers can run the service without installing its Python dependencies, while developers can build thin clients that reuse the same scientific data handling.

### Brightest Path: Reusable Image-Analysis Algorithms

Tracing axons, dendrites, and other filament-like structures requires reusable algorithms that respect image geometry. Brightest Path implements A* and bidirectional A* search for n-dimensional images, accounts for image-axis scale, and uses Numba for acceleration. Progress reporting allows applications to visualize an ongoing search.

The documented library is distributed through PyPI and returns paths that can be measured or incorporated into further analysis. A separate napari tracing plugin provides an interactive interface to the same implementation, allowing software developers and researchers to reuse the algorithm without recreating it.

### MapManager: Evolving a Longitudinal Research Platform

MapManager supports alignment, annotation, curation, and measurement of neuronal structures across longitudinal microscopy sessions. The established Igor Pro application has supported at least five peer-reviewed publications. Its modern open-source ecosystem is under active development, with MapManagerCore providing a shared Python API, PyMapManager a desktop interface, and WebMapManager a browser interface.

A working WebMapManager application is publicly available. The architecture brings established scientific workflows into reusable desktop, browser, scripting, and notebook interfaces while preserving a clear distinction between proven research use and ongoing redevelopment.

### PiE: Distributed Experimental Acquisition

PiE combines reproducible Raspberry Pi behavior-box designs with remote video acquisition, hardware control, environmental monitoring, and event logging. Each box runs an independent server; Commander provides centralized status, video monitoring, remote control, and file synchronization across boxes. This architecture supports parallel experiments while reducing experimenter interference.

The related VideoAnnotate application supports blinded scoring of randomized video segments. Together, the tools connect reproducible hardware construction, distributed acquisition, and systematic behavioral analysis.
