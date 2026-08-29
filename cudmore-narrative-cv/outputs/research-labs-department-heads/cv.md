# Robert H. Cudmore, PhD

**Research Software Engineer & Scientist**

## Professional Summary

I build scientific software that transforms biological data into reproducible quantitative results.

My career combines experimental biology, quantitative analysis, and research software engineering. I work with scientists to connect biological questions and experimental workflows with reusable analysis software. My goal is to contribute directly to research while building software and analytical infrastructure that can support multiple projects, laboratories, and future scientific questions.

## Scientific Domains and Experimental Research

My scientific domain expertise includes neuroscience, vascular biology, and cardiac physiology. I have decades of bench experience in experimental design, performing microscopy and electrophysiology experiments, interpreting results, and publishing the findings. I have also built custom acquisition systems and developed software for real-time data collection and visualization. This experience allows me to connect experimental design and measurement with the quantitative analysis needed to interpret results.

My research trajectory moved from studying neurons to imaging brain vasculature and later working in cardiac physiology. Although these fields address different biological questions, they often rely on shared experimental technologies and face common analytical problems. Researchers must organize and visualize data, extract reliable measurements, distinguish biological signals from measurement limitations, and produce analyses that others can understand and reproduce.

My direct experimental work has centered on microscopy and electrophysiology. I use that experience to collaborate with domain experts and develop software that can be extended to new experimental systems without assuming subject-matter expertise in every biological field.

## Collaborative Research Software Engineering

My software engineering approach begins with the scientific question. I work with experimental scientists to understand how data are produced, what must be measured, and where existing workflows limit interpretation. Software development then proceeds iteratively through design, implementation, testing, and critical feedback from the researchers who use it.

I thrive in multidisciplinary teams where each member contributes distinct scientific or technical expertise. My contribution to team science is a unique combination of experimental biology, quantitative analysis, and research software engineering. This allows me to translate between biological questions, measurement constraints, analytical requirements, and software design while working with domain experts whose knowledge complements my own.

I build analysis software that research biologists can use through graphical applications while making the same methods available through documented Python APIs and scripts. I design these systems so analyses are reusable, repeatable, and verifiable across interactive and automated workflows. Because each interface uses the same underlying data and analytical methods, researchers obtain consistent results, and new analyses can be added without duplicating their implementation.

I design software to support the complete scientific workflow. The same visualization and analysis tools can remain with a project during acquisition, offline analysis, and publication. Publication and data sharing are designed into the architecture rather than added after analysis, allowing data, metadata, and completed analyses to remain connected.

Long-term scientific software requires more than an algorithm or application. My projects incorporate software-engineering best practices, including automated testing, continuous integration, documented interfaces, end-user and developer documentation, and cross-platform deployment. These practices create software that can be understood, validated, maintained, and extended as laboratory personnel and scientific questions change.

## Research Infrastructure and Institutional Contribution

Recurring research needs are opportunities to build shared infrastructure. A problem first encountered within one project may reveal a requirement shared across laboratories, such as loading proprietary data, preserving physical units, managing large image collections, automating analysis, or preparing results for publication. Solving that problem in a reusable platform reduces duplicated effort while giving future projects a stable foundation.

I value the day-to-day collaboration that makes this infrastructure useful. This includes troubleshooting datasets and analysis pipelines, improving documentation, training researchers, and translating recurring support questions into software improvements. These activities support immediate scientific work while increasing the independence and productivity of the researchers who use the software.

I am interested in contributing within an existing laboratory, department, center, or research organization in a staff-scientist, research-faculty, or related scientific role. Such a role can combine direct participation in research with shared analytical methods, mentorship, and software infrastructure that provides continuity beyond a single grant, publication, or laboratory member.

## Scientific Leadership, Grant Development, and Mentorship

As a principal investigator, I have led the scientific and technical design and writing of an NIH BRAIN Initiative R01 proposal and a Chan Zuckerberg Initiative software proposal. I am also one of three principal investigators on an NHLBI R01, where I make primary contributions to the design, implementation, and execution of electrophysiology and imaging experiments and analyses.

These representative awards demonstrate my ability to lead proposals within my areas of expertise while contributing to multidisciplinary proposals requiring complementary scientific and technical perspectives. I led and managed the research for the five-year BRAIN Initiative R01 and the CZI grant, including training and mentoring full-time image analysts and graduate and undergraduate students in engineering. This work required connecting scientific aims, experimental design, quantitative analysis, software development, personnel, and multi-year project execution.

I enjoy working directly with researchers at all stages, from undergraduates to faculty, to troubleshoot issues with raw data and analysis pipelines, improve documentation, and provide practical training in quantitative analysis, programming, and reproducible computational methods. My goal is to support immediate scientific work while helping researchers understand the analytical methods they use, interpret results confidently, and develop greater independence in extending their analyses.

## Teaching and Scientific Training

My teaching connects scientific instrumentation with quantitative analysis and interpretation. Through lectures, laboratory instruction, and research training, I have taught the optical physics of laser-scanning microscopy, image formation, the physical limits of light microscopy, and signal-detection principles relevant to both imaging and electrophysiology.

I also designed and taught an undergraduate Internet of Things course as instructor of record for three years. The course combined lectures with hands-on laboratories in which students wired simple circuits and sensors and connected them into distributed systems using internet dashboards. Lectures examined biometric Internet of Things devices for monitoring human health and disease progression. They also considered how longitudinal data collected across large populations can enable new scientific questions and discoveries.

## Research Software Platforms

### CloudScope Suite

Imaging workflows often divide raw data, automated analysis, manual review, saved results, and publication among disconnected tools and processes. They may also depend on one-off scripts whose precise code, assumptions, algorithms, and detection parameters are difficult to preserve or reuse. The CloudScope suite addresses these problems through a continuous pipeline from raw imaging data through quantitative analysis, scientific curation, publication, and reuse.

[CloudScope](https://mapmanager.github.io/cloudscope-app/) is a desktop application for macOS and Windows. Researchers use its graphical interface to load and visualize images, run analyses, inspect results, and curate the resulting data. Its semi-automated workflows allow potentially hundreds of raw image files to be analyzed efficiently while retaining human scientific judgment. Current analysis domains focus on kymograph line-scan images and include capillary blood-flow velocity, heartbeat derived from velocity, diameter changes in cardiac myocytes and smooth muscle, and peak detection from fluorescent reporters such as GCaMP calcium and ATP reporters.

CloudScope uses [AcqStore](https://mapmanager.github.io/acqstore/) as its Python analysis backend. Analysis algorithms are implemented in AcqStore and made accessible to researchers through CloudScope's graphical interface. AcqStore also loads raw images, including proprietary microscope file formats. After analysis and curation, it saves the raw images, analysis methods, detection parameters, and results together in a self-contained dataset. This preserves the information needed to reconstruct how an analysis was performed even as analytical methods evolve. AcqStore can export Open Microscopy Environment Zarr (OME-Zarr) and Neurodata Without Borders (NWB) datasets for direct upload to public repositories such as the DANDI Archive and the Brain Image Library.

To publish and share results, [CloudScope-Web](https://mapmanager.github.io/cloudscope-web) opens the same self-contained OME-Zarr datasets as interactive figures. It allows the raw data and analysis performed and curated in CloudScope to be presented with an interactive graphical interface on the web. A manuscript figure can therefore become a live, publicly accessible figure that remains connected to its analysis and underlying raw data. Readers can inspect reported results and use the accessible data for new analyses, hypotheses, model-building, and collaborations. CloudScope-Web does not require dedicated or complex server infrastructure, making these interactive figures easier to distribute with publications.

### SanPy

Electrophysiology analysis frequently depends on manual measurements or laboratory-specific scripts. SanPy provides automated action-potential detection, quantitative measurements, interactive visualization, plugins, and a documented Python API. Its graphical and scripting workflows use the same computational implementation for real-time experiments, offline analysis, and inspection of published analyzed datasets.

### MapManager

Longitudinal microscopy studies require researchers to connect measurements across imaging sessions that may span weeks or months. MapManager provides an open-source platform for annotation, visualization, and quantitative analysis of neuronal structure over time. It supports interactive review and curation of collections containing tens of thousands of annotations.

### PiE

Behavioral experiments often require custom hardware control, data acquisition, monitoring, and analysis. PiE integrates these functions through a web interface that supports remote experiment control and video monitoring. It reduces experimenter interference while providing a reusable framework for behavioral research.

### Brightest Path

Brightest Path provides a tested, documented Python package for tracing brightest paths through n-dimensional scientific images. It makes a reusable image-analysis method available to other scientific projects without requiring each project to reimplement the algorithm.

### Project Resources

| Project | Purpose | GitHub | Documentation | Demo App |
|---|---|---|---|---|
| CloudScope | Graphical analysis and curation of microscopy data | [GitHub](https://github.com/mapmanager/cloudscope-app) | [Documentation](https://mapmanager.github.io/cloudscope-app/) | [Demo](https://cloudscope.mapmanager.net) |
| AcqStore | Reproducible image loading, analysis, and data export | [GitHub](https://github.com/mapmanager/acqstore) | [Documentation](https://mapmanager.github.io/acqstore/) | |
| CloudScope-Web | Interactive publication of imaging data and results | [GitHub](https://github.com/mapmanager/cloudscope-web) | [Documentation](https://mapmanager.github.io/cloudscope-web/docs/) | [Demo](https://mapmanager.github.io/cloudscope-web) |
| SanPy | Electrophysiology analysis and visualization | [GitHub](https://github.com/cudmore/SanPy) | [Documentation](https://cudmore.github.io/SanPy) | |
| MapManager | Longitudinal analysis of neuronal structure | [GitHub](https://github.com/mapmanager/WebMapManager) | [Documentation](https://mapmanager.github.io/) | [Demo](https://mapmanager.github.io/WebMapManager/) |
| PiE | Remote control and monitoring of behavioral experiments | [GitHub](https://github.com/cudmore/pie) | [Documentation](https://cudmore.github.io/pie-doc) | |
| Brightest Path | Reusable path tracing for n-dimensional images | [GitHub](https://github.com/mapmanager/brightest-path-lib) | [Documentation](https://mapmanager.github.io/brightest-path-lib/) | |

## Technical Skills

**Programming languages:** Python, C, C++, Igor Pro, Bash

**Scientific computing:** NumPy, SciPy, pandas, Numba, scikit-image, parallel and concurrent programming

**Scientific visualization and user interfaces:** PyQt, pyqtgraph, napari, NiceGUI, Plotly, Matplotlib, pywebview

**Scientific data and scalable storage:** HDF5, Zarr, OME-Zarr/OME-NGFF, s3fs, lazy and chunked array access, multiscale image pyramids

**Web applications and APIs:** HTML, JavaScript, TypeScript, Node.js, Vue, Vite, Pyodide/WebAssembly, FastAPI, Uvicorn, Pydantic, RESTful HTTP/JSON APIs, OpenAPI, httpx

**Software engineering and documentation:** Git, GitHub, pytest, GitHub Actions, uv, MkDocs, Python API documentation, end-user and developer documentation

**Packaging and deployment:** Docker, Docker Compose, nginx, PyInstaller, cross-platform desktop application packaging for macOS and Windows, Linux-based development and CI environments

**Scientific and image analysis:** quantitative microscopy, electrophysiology and time-series analysis, image segmentation, ROI-based quantification, longitudinal image annotation analysis, brightest-path tracing

**Scientific instrumentation and data acquisition:** laser-scanning microscopy, custom microscopy and electrophysiology acquisition systems, whole-cell current- and voltage-clamp electrophysiology, real-time data acquisition and visualization, Arduino-based instrumentation, remote experiment control and video monitoring

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
