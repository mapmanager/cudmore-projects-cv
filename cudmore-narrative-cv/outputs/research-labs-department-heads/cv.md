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

I thrive in multidisciplinary teams where each member contributes distinct scientific or technical expertise. My contribution is a unique combination of experimental biology, quantitative analysis, and research software engineering. This allows me to translate between biological questions, measurement constraints, analytical requirements, and software design while working with domain experts whose knowledge complements my own.

I build reusable computational backends with documented Python APIs, graphical applications, and scripting interfaces. Interactive and automated workflows use the same underlying data and analytical methods, so results do not depend on whether a researcher works through a graphical interface or a script. This architecture allows new analyses to be incorporated without duplicating their implementation across applications.

I design software to support the complete scientific workflow. The same computational foundation can remain with a project during acquisition, offline analysis, and publication. Publication and data sharing are designed into the architecture rather than added after analysis, allowing data, metadata, and completed analyses to remain connected.

Long-term scientific software requires more than an algorithm or application. My projects incorporate automated testing, continuous integration, documented interfaces, end-user and developer documentation, and cross-platform deployment. These practices create software that can be understood, validated, maintained, and extended as laboratory personnel and scientific questions change.

## Research Infrastructure and Institutional Contribution

Recurring research needs are opportunities to build shared infrastructure. A problem first encountered within one project may reveal a requirement shared across laboratories, such as loading proprietary data, preserving physical units, managing large image collections, automating analysis, or preparing results for publication. Solving that problem in a reusable platform reduces duplicated effort while giving future projects a stable foundation.

I value the day-to-day collaboration that makes this infrastructure useful. This includes troubleshooting datasets and analysis pipelines, improving documentation, training researchers, and translating recurring support questions into software improvements. These activities support immediate scientific work while increasing the independence and productivity of the researchers who use the software.

I am interested in contributing within an existing laboratory, department, center, or research organization in a staff-scientist, research-software, or related scientific role. Such a role can combine direct participation in research with shared analytical methods, mentorship, and software infrastructure that provides continuity beyond a single grant, publication, or laboratory member.

## Grant Writing and Funded Research

As principal investigator, I led the scientific and technical design and writing of an NIH BRAIN Initiative R01 and a Chan Zuckerberg Initiative software proposal. I then managed the five-year BRAIN Initiative R01 and its personnel, including full-time image analysts and graduate students in engineering and computer science. I am also one of three principal investigators on an NHLBI R01, where I make primary contributions to the design, implementation, and execution of electrophysiology and imaging experiments and analyses.

These representative awards demonstrate my ability to lead proposals within my areas of expertise and contribute to multidisciplinary proposals requiring complementary scientific and technical perspectives. I connect scientific aims, experimental design, quantitative analysis, software development, personnel, and project execution in coherent proposals and carry the resulting work through multi-year execution.

## Research Software Platforms

### CloudScope Suite

[CloudScope Web App](https://cloudscope.mapmanager.net) · [CloudScope Documentation](https://mapmanager.github.io/cloudscope-app/) · [CloudScope-Web](https://mapmanager.github.io/cloudscope-web) · [AcqStore Documentation](https://mapmanager.github.io/acqstore/) · [AcqStore Source Code](https://github.com/mapmanager/acqstore)

Imaging workflows often separate raw data, automated analysis, manual review, saved results, and publication. They may also depend on one-off scripts whose precise code, assumptions, algorithms, and detection parameters are difficult to preserve or reuse. CloudScope addresses these problems through a modular suite comprising CloudScope, the AcqStore Python backend, and CloudScope-Web. Together, they provide a continuous pipeline from raw imaging data through quantitative analysis, scientific curation, publication, and reuse.

CloudScope is a macOS, Windows, and server-backed web application for loading and visualizing images, running analyses, inspecting results, and correcting false-positive and false-negative detections. Its semi-automated workflows allow researchers to analyze potentially hundreds of raw image files efficiently while retaining human scientific judgment during curation. Current applications focus on kymograph line-scan images and include capillary blood-flow velocity, heartbeat derived from velocity, diameter changes in cardiac myocytes and smooth muscle, and peak detection from fluorescent reporters such as GCaMP calcium and ATP reporters.

AcqStore loads raw images, including proprietary microscope file formats, and supplies the analyses used by CloudScope. After analysis and curation, it saves the raw images, analysis methods, detection parameters, and results together in a self-contained dataset. This preserves the information needed to reconstruct how an analysis was performed even as analytical methods evolve. AcqStore can export Open Microscopy Environment Zarr (OME-Zarr) and Neurodata Without Borders (NWB) datasets for direct upload to public repositories such as the DANDI Archive and the Brain Image Library.

CloudScope-Web opens the same self-contained OME-Zarr datasets as interactive published figures. Readers can inspect reported results and the raw data that produced them, then use the accessible data for new analyses, hypotheses, models, and collaborations. The viewer does not require dedicated or complex server infrastructure. CloudScope-Web uses reusable graphical components from `mapmanager-web-components`, and CloudScope is being migrated to use the same components. Together with NiceWidgets, these libraries support a modular interface architecture while AcqStore remains the shared scientific data and analysis backend.

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

**Web applications and APIs:** HTML, JavaScript, TypeScript, Node.js, Vue, Vite, WebAssembly, Pyodide, FastAPI, uvicorn, Pydantic, HTTP and JSON APIs, OpenAPI, httpx, thin-client architecture

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
