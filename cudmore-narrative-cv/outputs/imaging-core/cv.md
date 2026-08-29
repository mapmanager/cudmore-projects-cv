# Robert H. Cudmore, PhD

**Research Software Engineer & Scientist**

## Professional Summary

I build scientific software that transforms biological data into reproducible quantitative results.

Throughout my career, I have worked at the intersection of biology, quantitative analysis, and software engineering. Rather than developing one-off analysis scripts for individual publications, I design reusable software platforms that enable researchers to analyze imaging and electrophysiology data through reproducible computational workflows. My work combines extensive scientific domain expertise with modern software-engineering practices to make data analysis accessible to researchers, reproducible, and shareable.

## Scientific Domains

My scientific domain expertise includes neuroscience, vascular biology, and cardiac physiology. I have decades of bench experience in experimental design, performing microscopy and electrophysiology experiments, interpreting results, and publishing the findings. I have also built custom microscopy and electrophysiology acquisition systems, developed software for real-time data acquisition and visualization, and supported researchers using these systems. This experience connects experimental design and data acquisition with the quantitative analysis that follows.

My career progressed from studying neurons to imaging brain vasculature and later working in cardiac physiology. This progression showed me that fields organized around different organs and research questions often rely on shared experimental technologies and face common analysis problems. Regardless of the specimen or scientific question, imaging experiments create similar practical needs for organizing and visualizing data, making quantitative measurements, and producing reproducible results. My direct experimental work has centered on microscopy and electrophysiology, but I develop software with domain experts so that it can support new experimental systems and scientific questions.

## Research Software Engineering

I design reusable scientific software rather than bespoke analysis scripts. My software engineering approach begins with the scientific question and experimental workflow. I work closely with experimental scientists to understand how data are produced, what must be measured, and where existing workflows limit interpretation. I then develop software through iterative design, implementation, testing, and critical feedback from the researchers who use it.

I thrive in multidisciplinary teams where each member contributes distinct scientific or technical expertise. My contribution is a unique combination of experimental biology, quantitative analysis, and research software engineering. This allows me to translate between biological questions, measurement constraints, analytical requirements, and software design while working with domain experts whose knowledge complements my own.

I design each analysis system as one continuous software environment built around a shared computational backend with graphical and scripting interfaces. The same software remains with a project while data are acquired, during offline analysis, and at publication. At every stage, these interfaces use the same underlying data and analytical methods, preserving reproducibility without duplicating calculations. Publication is designed into the architecture rather than added after analysis. This makes data sharing part of the analysis workflow rather than a separate task created at the end of a project.

My goal is to keep raw data, quantitative analysis, and publication connected so readers can inspect how figures were produced, examine reported results, repeat analyses, and extend the work to address new scientific questions. The CloudScope suite provides an implemented workflow for achieving this goal. Researchers use the CloudScope graphical application to visualize data, run analyses, and curate results. Its AcqStore Python backend implements the analysis algorithms and saves the raw data, analysis methods, detection parameters, and results together in self-contained OME-Zarr datasets. CloudScope-Web opens those same datasets as interactive figures for publication and sharing. AcqStore exports OME-Zarr and NWB datasets that can be uploaded directly to public repositories, including the DANDI Archive and the Brain Image Library (BIL).

Scientific software has the greatest impact when it becomes reusable research infrastructure. Reusable software platforms reduce duplicated effort, improve reproducibility, and allow laboratories to build upon stable computational foundations rather than repeatedly developing new analysis scripts for each project. By combining sustainable software engineering with open-source development, research infrastructure continues to support scientific discovery long after individual publications, grants, and laboratory personnel have changed. This long-term perspective enables software to become a lasting scientific resource rather than a temporary research product.

## Analysis Core and Institutional Contribution

Imaging cores provide researchers with shared instrumentation, training, and expertise for acquiring high-quality data. I am interested in complementing that work with an analysis-core capability that provides shared expertise and reusable software for transforming acquired data into reproducible quantitative results.

I would develop this capability within an existing imaging facility, academic department, or research organization rather than requiring the immediate creation of a separate administrative core. It could begin with direct researcher support, training, and reusable analysis software, then grow according to the needs of the institution and its laboratories.

This approach would connect experimental design and acquisition with quantitative analysis, publication, and data sharing. By incorporating data organization, analysis, export, and repository preparation into the research workflow, an analysis core could reduce duplicated effort across laboratories and help researchers prepare well-described data and reproducible analyses for appropriate repositories.

## Leadership and Mentorship

I involve researchers throughout software development, from initial design through testing and critical feedback. This collaboration keeps the software connected to experimental workflows as scientific questions evolve. I also mentor researchers in quantitative analysis, software development, and reproducible computational methods so they can understand the tools they use and become more independent in extending their analyses.

I enjoy working directly with researchers on the practical problems that arise during data acquisition and analysis. These interactions help researchers develop confidence with quantitative and reproducible methods while revealing recurring needs that can be addressed through improved documentation, training, and reusable software shared across laboratories.

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
