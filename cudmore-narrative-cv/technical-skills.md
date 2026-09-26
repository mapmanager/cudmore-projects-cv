# Technical Skills

This file is the factual inventory for technical skills used in derived CVs.
Select skills according to the target audience rather than copying the complete
inventory into every CV.

## Programming and Scripting

Robert holds a bachelor's degree in computer science and later undertook
graduate work in computer science without completing a master's degree.
Full-time scientific software development included C++ backends, statistical
analysis, and cross-platform GUIs. Algorithm design and planning precede
implementation; experience across languages informs reusable software design.
The C++ work is historical, more than 30 years ago. Lead current CV prose with
current projects; do not use the older work to justify present architectural
expertise. A narrative CV may omit it or mention it once.

- **Python**: primary language for current research software, scientific
  analysis, desktop and web applications, APIs, testing, and documentation.
- **C/C++**: more than ten years of experience. Used extensively in the first
  research position at Roswell Park.
- **Igor Pro**: more than ten years of experience. The original MapManager
  application was implemented entirely in Igor Pro.
- **Bash and zsh**: development, testing, packaging, release, and automation
  scripts.

## Scientific Computing

- NumPy
- SciPy
- pandas
- Numba: used extensively to accelerate Brightest Path tracing.
- PyTorch: image-segmentation prototypes developed for MapManager.
- scikit-image
- Pillow
- Parallel and concurrent programming

Selected implemented methods include Radon-based velocity estimation,
Lomb–Scargle and Welch spectral estimation, threshold and gradient-based
diameter measurements, and one-dimensional peak detection and event kinetics.
See `algorithm-design.md` for measurement context and limits. These examples
support algorithm-design expertise without implying invention of the
underlying established mathematical methods.

AcqStore uses process pools for independent Radon windows and thread pools for
independent diameter profiles. Its backend batch runner can also schedule
files, reuse the single-file API, preserve result ordering, and handle
cancellation and per-file outcomes. CloudScope's described batch workflows run
files serially while enabling parallel work inside each file. Worker counts
are runtime options distinct from scientific detection parameters; do not
claim measured speedups or parallel execution for every estimator.

## User Interfaces and Visualization

- PyQt
- pyqtgraph
- NiceGUI
- NiceWidgets
- mapmanager-web-components
- napari
- pywebview
- Plotly
- Matplotlib

NiceGUI supports a shared Python user-interface codebase for desktop and web
applications. NiceWidgets packages reusable NiceGUI components for scientific
visualization and interaction. mapmanager-web-components packages reusable web
components used by CloudScope-Web, SanPy-Web, the PyQt SanPy application, and
the NiceGUI CloudScope application. Its image viewer, nicepool, and signal
viewer each have a live static single-page application demo.

NiceWidgets and mapmanager-web-components expose public component APIs for
data, configuration, and interaction. Applications use methods and events or
callbacks to coordinate widgets without depending on their internals.

Desktop GUI design uses model-view-controller architecture and events. Views
emit intent; controllers own model mutations within the GUI and publish state
events for subscribing views. Thin PyQt and NiceGUI interfaces keep scientific
computation in independently usable Python backends.

## Scientific Data and Formats

- HDF5
- Zarr
- OME-Zarr
- NGFF
- Neurodata Without Borders (NWB): implemented AcqStore export.
- SanPy Zarr: self-contained electrophysiology collections with published
  format and schema documentation on `codex/sanpy-zarr`.
- JSON Schema: AcqStore OME-Zarr Collection v1's published machine-readable
  schema uses Draft 2020-12; the specification is an initial normative draft.
- JSON, CSV, and Parquet: metadata, definitions, and tabular results in SanPy
  Zarr exports.
- TIFF
- CZI
- ND2
- OIR
- BioIO
- tifffile
- czifile
- nd2
- oirfile
- s3fs
- Lazy and chunked array access
- Multiscale image pyramids
- Metadata and physical-unit preservation

AcqStore uses imaging formats, scalable storage, and published data contracts
to support image access, metadata, analysis, and sharing. SanPy Zarr preserves
recordings, parameter and result definitions, and completed analyses for
electrophysiology. Do not infer SanPy NWB export from AcqStore's capabilities.
Lazy loading extends from the Python APIs used by CloudScope and SanPy to
Zarr-based access in CloudScope-Web and SanPy-Web.

## Web Applications and APIs

- HTML
- JavaScript
- TypeScript
- Node.js
- Vue
- Vite
- WebAssembly
- Pyodide
- FastAPI
- uvicorn
- RESTful HTTP and JSON APIs
- OpenAPI
- Pydantic
- httpx
- HTML and JavaScript thin clients

WebMapManager uses WebAssembly and Pyodide to run MapManagerCore in the browser.
Its thin GUI and the PyMapManager desktop GUI share the same Python API,
algorithms, and loading and saving functionality.
AcqView uses WebAssembly and Pyodide to run community-developed microscopy
readers in a static TypeScript/JavaScript/Vue application. It provides local
file opening, metadata inspection, image display, and TIFF export without a
dedicated application backend server. LLM-assisted development helped Robert
extend his work into JavaScript and TypeScript; do not infer an unsupported
level of independent language fluency.
mapmanager-web-components uses Node.js, TypeScript, JavaScript, Vue, and Vite
to provide reusable interface components for CloudScope-Web, SanPy-Web,
CloudScope, and SanPy.
AcqStore Server uses FastAPI and uvicorn to expose AcqStore image data and
metadata through a versioned local HTTP API. Its OpenAPI contract supports
lightweight browser, JavaScript, and Python clients without embedding the
AcqStore Python backend in each client.

## Software Engineering, Testing, and Documentation

- pytest
- Git and GitHub
- GitHub Actions
- uv
- MkDocs and MkDocs Material
- mkdocstrings
- Documented Python APIs
- Google-style docstrings
- End-user and developer documentation
- Codecov and GitHub workflows for measured test coverage.

LLMs support daily planning, architecture, specification-driven implementation,
and unit-test writing. Robert retains responsibility for scientific assumptions
and technical decisions. This is an engineering practice, not a claim of AI
model development or training expertise. Describe how these tools are used,
without code-authorship or generic coverage percentages. The original
development of older projects predates Robert's AI-assisted workflow; later
maintenance, particularly of SanPy, uses LLMs.

## Deployment and Infrastructure

- PyInstaller
- Cross-platform desktop application development
- Linux-based development and continuous-integration environments
- Docker and Docker Compose
- nginx: used by PiE.

## Scientific Analysis

- Quantitative microscopy and electrophysiology analysis
- Time-series analysis
- Image segmentation
- ROI-based image analysis
- Blood-flow velocity and vessel-diameter analysis
- Heart-rate, peak, and event detection
- Longitudinal annotation analysis and curation
- Brightest-path tracing

## Scientific Instrumentation and Acquisition

- Laser-scanning microscopy
- Custom microscopy and electrophysiology acquisition systems
- Whole-cell current- and voltage-clamp electrophysiology
- Real-time data acquisition and visualization
- Arduino microcontrollers
- Remote experiment control and video monitoring

## Generated CV Baseline

The Technical Skills section generated for a CV should begin as a broad,
complete representation of Robert's documented skills. It is not restricted
to the active target audience. Robert will manually shorten or tailor it after
generation.

Audience-specific variants may reorganize this baseline and add concise
project or scientific context while retaining its breadth and exclusions.
Describe Robert's reusable interface libraries in the platform section rather
than listing them as external toolkits. SanPy Zarr belongs in data architecture
as a documented format. Identify PyTorch work as prototypes.

Keep the following evidence in this inventory, but omit it from the generated
CV baseline because it is too granular:

- Individual microscopy formats and their loader packages: TIFF, CZI, ND2,
  OIR, BioIO, tifffile, czifile, nd2, and oirfile.
- Metadata and physical-unit preservation.
- Individual analysis examples: blood-flow velocity, vessel diameter,
  heart-rate detection, peak detection, and event detection.
- MkDocs Material and mkdocstrings.
- Pillow.
- NiceWidgets and mapmanager-web-components, because they are Robert's own
  packages rather than general-purpose external toolkits.
