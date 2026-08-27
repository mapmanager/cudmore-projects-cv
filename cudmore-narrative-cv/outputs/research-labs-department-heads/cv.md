# Robert H. Cudmore, PhD

**Research Software Engineer & Scientist**

## Professional Summary

I build scientific software that transforms biological data into reproducible quantitative results.

My career combines experimental biology, quantitative analysis, and research software engineering. I work with scientists to connect biological questions and experimental workflows with reusable computational methods. My goal is to contribute directly to research while building software and analytical infrastructure that can support multiple projects, laboratories, and future scientific questions.

## Scientific Domains and Experimental Research

My scientific domain expertise includes neuroscience, vascular biology, and cardiac physiology. I have decades of bench experience designing experiments, performing microscopy and electrophysiology, interpreting results, and publishing the findings. I have also built custom acquisition systems and developed software for real-time data collection and visualization. This experience allows me to consider experimental design, measurement, and quantitative analysis as parts of one scientific process.

My research trajectory moved from studying neurons to imaging brain vasculature and later working in cardiac physiology. Although these fields address different biological questions, they often rely on shared experimental technologies and face common analytical problems. Researchers must organize and visualize data, extract reliable measurements, distinguish biological signals from measurement limitations, and produce analyses that others can understand and reproduce.

My direct experimental work has centered on microscopy and electrophysiology. I use that experience to collaborate with domain experts and develop software that can be extended to new experimental systems without assuming subject-matter expertise in every biological field.

## Collaborative Research Software Engineering

My approach begins with the scientific question. I work with experimental scientists to understand how data are produced, what must be measured, and where existing workflows limit interpretation. Software development then proceeds iteratively through design, implementation, testing, and feedback from the researchers who use it.

I build reusable computational backends with documented Python APIs, graphical applications, and scripting interfaces. Interactive and automated workflows use the same data models and analytical methods, so results do not depend on whether a researcher works through a graphical interface or a script. This architecture allows new analyses to be incorporated without duplicating their implementation across applications.

I design software to support the complete scientific workflow. The same computational foundation can remain with a project during acquisition, offline analysis, and publication. Publication and data sharing are designed into the architecture rather than added after analysis, allowing data, metadata, and completed analyses to remain connected.

Long-term scientific software requires more than an algorithm or application. My projects incorporate automated testing, continuous integration, documented interfaces, end-user and developer documentation, and cross-platform deployment. These practices create software that can be understood, validated, maintained, and extended as laboratory personnel and scientific questions change.

## Research Infrastructure and Institutional Contribution

Recurring research needs are opportunities to build shared infrastructure. A problem first encountered within one project may reveal a requirement shared across laboratories, such as loading proprietary data, preserving physical units, managing large image collections, automating analysis, or preparing results for publication. Solving that problem in a reusable platform reduces duplicated effort while giving future projects a stable foundation.

I value the day-to-day collaboration that makes this infrastructure useful. This includes troubleshooting datasets and analysis pipelines, improving documentation, training researchers, and translating recurring support questions into software improvements. These activities support immediate scientific work while increasing the independence and productivity of the researchers who use the software.

I am interested in contributing within an existing laboratory, department, center, or research organization in a staff-scientist, research-software, or related scientific role. Such a role can combine direct participation in research with shared analytical methods, mentorship, and software infrastructure that provides continuity beyond a single grant, publication, or laboratory member.

## Research Software Platforms

### CloudScope and AcqStore

[CloudScope Web App](https://cloudscope.mapmanager.net) · [CloudScope Documentation](https://mapmanager.github.io/cloudscope-app/) · [AcqStore Documentation](https://mapmanager.github.io/acqstore/) · [AcqStore Source Code](https://github.com/mapmanager/acqstore)

Microscopy workflows often depend on disconnected tools and project-specific scripts. CloudScope provides desktop and web interfaces for managing, visualizing, and analyzing imaging data. AcqStore is its general-purpose Python backend for loading, organizing, and analyzing images while preserving the metadata and physical units required for quantitative measurements.

Analyses for blood-flow velocity, vessel diameter, heart rate, and related signals are implemented in AcqStore and exposed through CloudScope and scripting workflows. Its extensible loaders, analyses, and structured exports allow new research requirements to be added without rewriting the applications that use them. Lazy loading and OME-Zarr support provide a path from laboratory datasets to scalable access and sharing.

### SanPy

[Documentation](https://cudmore.github.io/SanPy) · [Source Code](https://github.com/cudmore/SanPy)

Electrophysiology analysis frequently depends on manual measurements or laboratory-specific scripts. SanPy provides automated action-potential detection, quantitative measurements, interactive visualization, plugins, and a documented Python API. Its graphical and scripting workflows use the same computational implementation for real-time experiments, offline analysis, and inspection of published analyzed datasets.

### MapManager

[Live Web App](https://mapmanager.github.io/WebMapManager/) · [Documentation](https://mapmanager.github.io/)

Longitudinal microscopy studies require researchers to connect measurements across imaging sessions that may span weeks or months. MapManager provides an open-source platform for annotation, visualization, and quantitative analysis of neuronal structure over time. It supports interactive review and curation of collections containing tens of thousands of annotations.

### PiE

[Documentation](https://cudmore.github.io/pie-doc) · [Source Code](https://github.com/cudmore/pie)

Behavioral experiments often require custom hardware control, data acquisition, monitoring, and analysis. PiE integrates these functions through a web interface that supports remote experiment control and video monitoring. It reduces experimenter interference while providing a reusable framework for behavioral research.

### Brightest Path

[Documentation](https://mapmanager.github.io/brightest-path-lib/) · [Source Code](https://github.com/mapmanager/brightest-path-lib)

Brightest Path provides a tested, documented Python package for tracing brightest paths through n-dimensional scientific images. It makes a reusable image-analysis method available to other scientific projects without requiring each project to reimplement the algorithm.

## Technical Skills

**Programming and scripting:** Python, C/C++, Igor Pro, Bash, zsh

**Scientific computing:** NumPy, SciPy, pandas, PyTorch, scikit-image, multiprocessing, multithreading

**User interfaces and visualization:** PyQt, pyqtgraph, NiceGUI, napari, pywebview, Plotly, Matplotlib

**Scientific data and formats:** HDF5, Zarr, OME-Zarr, NGFF, s3fs, lazy loading, image pyramids

**Web applications and APIs:** HTML, JavaScript, WebAssembly, Pyodide, FastAPI, uvicorn, Pydantic, HTTP and JSON APIs, OpenAPI, httpx, thin-client architecture

**Software engineering, testing, and documentation:** Git, GitHub, pytest, GitHub Actions, uv, MkDocs, documented Python APIs, Google-style docstrings, end-user and developer documentation

**Deployment and infrastructure:** Docker, Docker Compose, PyInstaller, macOS and Windows desktop applications, Linux-based development and continuous integration

**Scientific analysis:** quantitative microscopy, electrophysiology analysis, time-series analysis, image segmentation, ROI-based analysis, longitudinal annotation analysis, brightest-path tracing

**Scientific instrumentation and acquisition:** laser-scanning microscopy, custom microscopy and electrophysiology acquisition systems, whole-cell current-clamp electrophysiology, real-time data acquisition and visualization, Arduino microcontrollers, remote experiment control and video monitoring

## Leadership, Mentorship, and Researcher Support

My software projects have supported collaborations involving faculty, postdoctoral scholars, graduate students, undergraduate researchers, technicians, and scientific core facilities. I involve researchers throughout development so that software responds to real experimental needs and remains useful as scientific questions evolve.

I have mentored computer science and biophysical engineering graduate students and managed full-time employees with computer science backgrounds. I helped them connect expertise in mathematics, physics, and software engineering with biological questions, experimental workflows, and measurement constraints. I also mentor scientists in quantitative analysis, programming, and reproducible computational methods.

## Teaching and Scientific Training

My teaching connects scientific instrumentation with quantitative analysis and interpretation. Through lectures, laboratory instruction, and research training, I have taught the optical physics of laser-scanning microscopy, image formation, the physical limits of light microscopy, and signal-detection principles relevant to imaging and electrophysiology.

I also designed and taught an undergraduate Internet of Things course as instructor of record for three years. The course combined hands-on circuit building with wearable technologies, real-time and remote data acquisition, and consideration of the scientific questions enabled by large longitudinal datasets.

## Employment

*User-maintained section.*

## Education

*User-maintained section.*

## Selected Publications

*User-maintained section.*

## Awards

*User-maintained section.*

## Funding & Professional Service

*User-maintained section.*

## Contact

*User-maintained section.*
