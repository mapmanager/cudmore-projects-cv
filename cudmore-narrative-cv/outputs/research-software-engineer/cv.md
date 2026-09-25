## Professional Summary

I build scientific software that transforms biological data into reproducible quantitative results.

My foundation is in computer science and scientific software development, followed by decades of experimental research in microscopy and electrophysiology. I combine those perspectives to define scientific requirements, design reusable computational systems, and implement the software researchers use to inspect, analyze, and share their data.

My work spans Python backends and public APIs, desktop and browser applications, scientific data models, and reusable graphical components. I am interested in senior hands-on engineering leadership that combines continued coding with architectural direction, development coordination, and mentorship. My goal is to build software that researchers and engineers can understand, maintain, and extend as scientific questions evolve.

## Experimental Science and Collaborative Requirements Discovery

My scientific expertise includes neuroscience, vascular biology, and cardiac physiology. I have designed and performed experiments, built custom microscopy and electrophysiology acquisition systems, developed real-time acquisition and visualization software, and interpreted and published research findings. This experience helps me connect software requirements with how measurements are produced and what they can support scientifically.

I work with domain experts, including in fields beyond my direct expertise, to understand the experiment, identify valid measurements, and define the required analysis. Development proceeds through planning, implementation, testing, and feedback from the researchers using the software. I involve users with different scientific and programming backgrounds so that interactive and scripted workflows address the same research needs.

Scientific review is part of those requirements. CloudScope combines automated imaging analysis with graphical inspection and correction of detections, including blinded and randomized curation. SanPy overlays detected events and measurements on electrophysiology recordings so researchers can evaluate results against the original signal. These workflows connect computational analysis with the scientific judgment needed to interpret it.

## Research Software Architecture

I design software modularly from the start. My earlier full-time scientific software work included C++ backends, statistical analysis, and cross-platform graphical interfaces. That experience continues to inform my Python applications: computation belongs in independently usable backends, with clear interfaces for scripts, notebooks, and graphical applications. Working out algorithms and system behavior before implementation remains central to my approach.

Three architectural practices recur across my projects:

- **Reusable computation through public APIs.** [AcqStore](https://mapmanager.github.io/acqstore/) is a general-purpose Python backend for image loading, metadata, quantitative analysis, and export. Its file-loader and analysis plugins allow new methods to become available through CloudScope and scripting without duplicating their implementation. SanPy applies the same separation within its electrophysiology backend. Researchers can automate an analysis using the same methods they use interactively.

- **Controlled state changes in modular GUIs.** My PyQt and NiceGUI applications use model-view-controller architecture. Views emit intent events representing user actions. Within the GUI, the controller alone changes backend models, then emits state events that subscribing views use to update. This gives state changes a defined path and keeps image views, tables, and plots coordinated as an application grows. Scientific computation remains accessible independently of the GUI.

- **Shared visualization and interaction components.** [mapmanager-web-components](https://mapmanager.github.io/mapmanager-web-components/) provides an image viewer, nicepool, and a signal viewer. Components are used in CloudScope-Web, SanPy-Web, the PyQt SanPy application, and the NiceGUI CloudScope application. NiceWidgets supplies reusable Python components for NiceGUI. Sharing these capabilities across applications reduces repeated development and allows interface improvements to benefit multiple scientific workflows.

I also expose scientific backends across language boundaries. [AcqStore Server](https://acqstore-server.pages.dev/) uses FastAPI, Pydantic schemas, and a versioned OpenAPI contract to provide image data and normalized metadata to browser, JavaScript, and Python clients. Clients can use the scientific backend without embedding its Python dependencies or reimplementing file access and metadata handling.

Algorithm design and performance are part of this work. [Brightest Path](https://mapmanager.github.io/brightest-path-lib/) implements A* and bidirectional A* search for tracing filament-like structures in n-dimensional images. It accounts for image-axis scale and uses Numba for acceleration. A documented Python package and a separate napari plugin make the same algorithm available to software developers and interactive users, supporting quantitative tracing of axons and dendrites without recreating the method in each application.

## Scientific Data, Reproducibility, and Publication

I design data models and storage around the relationship between an acquisition and its analysis. Raw measurements, experimental metadata, regions of interest, detection parameters, and completed results need to remain connected so that researchers can inspect how a result was obtained. This also makes saved work useful to other applications and future investigations.

Scalable access is part of that design. AcqStore lazily loads images and analysis tables, allowing researchers to browse large collections without loading every acquisition and result into memory. Zarr and OME-Zarr support chunked data access and sharing. Together, these choices support workflows whose complete datasets exceed available memory.

Published data specifications provide another interface for reuse. AcqStore's [OME-Zarr collection specification](https://mapmanager.github.io/acqstore/ome-zarr-export-format/), currently an initial normative draft, includes a machine-readable JSON Schema. It links independently valid OME-Zarr images with acquisition metadata and analyses while preserving OME-NGFF image semantics. SanPy Zarr has documented storage and parameter and result definitions for self-contained electrophysiology collections. These descriptions allow other developers to interpret saved datasets without depending on the application's internal classes. AcqStore also implements Neurodata Without Borders (NWB) export for sharing through repositories appropriate to the data and scientific domain.

CloudScope and SanPy put these principles into a continuous workflow from experimental acquisition through offline analysis, curation, publication, and sharing. CloudScope saves raw images and completed analyses through AcqStore as self-contained OME-Zarr datasets; SanPy saves recordings and analyses as self-contained SanPy Zarr datasets. [CloudScope-Web](https://mapmanager.github.io/cloudscope-web) and [SanPy-Web](https://mapmanager.github.io/sanpy-web) present the saved data and results as interactive published figures. Readers can examine findings alongside their underlying measurements and reuse the accessible datasets for further analysis. Publication and sharing are designed into the workflow from the beginning.

## Engineering Quality and Software Delivery

I use automated testing, continuous integration, documentation, and packaging to make research software maintainable and accessible. GitHub Actions workflows run pytest, build documentation, and produce desktop applications. These checks support repeatable development as analysis methods, data formats, and interfaces change.

Tests need to cover the behavior that users and other software depend on. AcqStore Server tests cover API schemas, the OpenAPI contract, errors, session lifecycle, representative image formats, and client behavior. This checks the interface through which clients obtain scientific data, helping preserve a usable boundary between applications and backend implementation.

Documentation supports both adoption and extension. My projects provide public Python APIs, API documentation, and end-user guidance through MkDocs. Brightest Path is distributed through PyPI so other developers can incorporate its algorithms. Automated PyInstaller builds deliver macOS and Windows applications to researchers without requiring them to assemble a Python development environment. CloudScope also uses NiceGUI to share a Python interface codebase across desktop and server-backed web deployments.

Browser execution provides another way to make scientific Python accessible. [AcqView](https://mapmanager.github.io/acqview/) is a static TypeScript, JavaScript, and Vue application that uses WebAssembly and Pyodide to run community-developed microscopy readers in the browser. Researchers open supported files locally, inspect metadata and images, and export TIFFs without writing Python code. Files remain on their device, and the application requires no dedicated backend server. My contribution is the architecture and integration, including reuse of the shared image viewer; the Python reader packages are the work of their community authors.

I use large language models (LLMs) daily within a development process that begins with planning and specifications. I define the scientific question, measurement constraints, required behavior, and architectural boundaries, then use LLMs to examine design options and develop detailed specifications. Planning often occupies more time than code generation. I then use these tools for implementation and unit tests while retaining responsibility for scientific assumptions, architecture, validation, and final technical decisions. AcqView is one example of this approach, which has also helped me extend my development work into JavaScript and TypeScript.

## Technical Leadership, Mentorship, and Sustainable Research Software

My approach to technical leadership combines direct implementation with scientific collaboration and project execution. I work with researchers to translate experimental needs into software requirements, identify capabilities that can be shared, and develop tools that remain useful as projects evolve. Troubleshooting datasets and analysis pipelines is part of that work: recurring support problems guide improvements in software, documentation, and training.

I have led the scientific and technical design and writing of successful NIH BRAIN Initiative R01 and Chan Zuckerberg Initiative software proposals. I also led and managed the resulting research, including the five-year BRAIN Initiative project, and trained full-time image analysts and engineering graduate and undergraduate students. As one of three principal investigators on an NHLBI R01, I make primary contributions to the design, implementation, and execution of electrophysiology and imaging experiments and analyses. These responsibilities connect scientific aims, software development, personnel, and sustained project delivery.

I have mentored computer science and biophysical engineering trainees, as well as employees with computer science backgrounds, as they applied technical expertise to biological research. I help engineers understand experiments and measurement constraints, and help experimental researchers understand and extend quantitative methods. This shared understanding supports collaboration between people with complementary expertise and helps researchers become more independent.

Sustainable software preserves analytical methods as personnel, grants, and research questions change. I turn recurring needs into documented, reusable components that others can inspect and extend. Commercial tools remain part of a workflow where they meet the scientific need; open-source development adds specialized methods, automation, and transparent analysis. My aim is to leave both useful software and the knowledge required to maintain it within the research community.
