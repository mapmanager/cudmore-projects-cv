# Technical Skills

This file is the factual inventory for technical skills used in derived CVs.
Select skills according to the target audience rather than copying the complete
inventory into every CV.

## Programming and Scripting

- **Python** — primary language for current research software, scientific
  analysis, desktop and web applications, APIs, testing, and documentation.
- **C/C++** — more than ten years of experience. Used extensively in the first
  research position at Roswell Park.
- **Igor Pro** — more than ten years of experience. The original MapManager
  application was implemented entirely in Igor Pro.
- **Bash and zsh** — development, testing, packaging, release, and automation
  scripts.

## Scientific Computing

- NumPy
- SciPy
- pandas
- PyTorch — image-segmentation prototypes developed for MapManager.
- scikit-image
- Pillow
- Multiprocessing and multithreading

## User Interfaces and Visualization

- PyQt
- pyqtgraph
- NiceGUI
- NiceWidgets
- napari
- pywebview
- Plotly
- Matplotlib

NiceGUI supports a shared Python user-interface codebase for desktop and web
applications. NiceWidgets packages reusable NiceGUI components for scientific
visualization and interaction.

## Scientific Data and Formats

- HDF5
- Zarr
- OME-Zarr
- NGFF
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
- Lazy loading and image pyramids
- Metadata and physical-unit preservation

AcqStore uses these technologies to support scalable image access, metadata,
analysis, and sharing workflows.

## Web Applications and APIs

- HTML
- JavaScript
- WebAssembly
- Pyodide
- FastAPI
- uvicorn
- HTTP and JSON APIs
- OpenAPI
- Pydantic
- httpx
- HTML and JavaScript thin clients

MapManager uses WebAssembly and Pyodide to run Python analysis in the browser.
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

## Deployment and Infrastructure

- PyInstaller
- Cross-platform desktop application development
- Linux-based development and continuous-integration environments
- Docker and Docker Compose

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
- Whole-cell current-clamp electrophysiology
- Real-time data acquisition and visualization
- Arduino microcontrollers
- Remote experiment control and video monitoring

## Generated CV Baseline

The Technical Skills section generated for a CV should begin as a broad,
complete representation of Robert's documented skills. It is not restricted
to the active target audience. Robert will manually shorten or tailor it after
generation.

Keep the following evidence in this inventory, but omit it from the generated
CV baseline because it is too granular:

- Individual microscopy formats and their loader packages: TIFF, CZI, ND2,
  OIR, BioIO, tifffile, czifile, nd2, and oirfile.
- Metadata and physical-unit preservation.
- Individual analysis examples: blood-flow velocity, vessel diameter,
  heart-rate detection, peak detection, and event detection.
- MkDocs Material and mkdocstrings.
- Pillow.
- NiceWidgets, because it is Robert's own package rather than a general-purpose
  external toolkit.
