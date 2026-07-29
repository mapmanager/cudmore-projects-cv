# Robert H. Cudmore, PhD

**Research Software Engineer & Scientist**

## Professional Summary

I build scientific software that transforms biological data into reproducible quantitative measurements.

Throughout my career I have worked at the intersection of biology, quantitative analysis, and software engineering. Rather than developing one-off analysis scripts for individual publications, I design reusable software platforms that enable researchers to analyze imaging and electrophysiology data through reproducible computational workflows. My work combines extensive scientific domain expertise with modern software engineering practices to make data analysis easy to perform, reproducible, and shareable.

## Scientific Domains

My scientific domain expertise includes neuroscience, vascular biology, and cardiac physiology. I have decades of experience at the bench designing experiments to test new hypotheses, performing experiments with precision, interpreting results, and publishing the findings. I have also built custom microscopy and electrophysiology rigs, developed software for real-time data acquisition and visualization, and supported researchers using these systems. This experience connects experimental design and data acquisition with the quantitative analysis supported by my software.

This expertise developed along a career trajectory from studying neurons to imaging brain vasculature and later working in cardiac physiology. This trajectory showed me that fields organized around different organs and research questions often rely on shared experimental technologies and face common analysis problems. Regardless of the specimen or scientific question, imaging experiments create similar practical needs for organizing and visualizing data, making quantitative measurements, and producing reproducible results. My direct experimental work has centered on microscopy and electrophysiology, but I design software that can be extended with domain experts to support new experimental systems and scientific questions.

## Research Software Engineering

I design reusable scientific software rather than bespoke analysis scripts. I begin with the scientific question and experimental workflow, then develop modular computational backends that can support multiple applications and analyses. My work combines documented interfaces, automated testing, interactive desktop and web applications, and open-source development.

I design each analysis system as one continuous software environment built around a shared computational backend with graphical and scripting interfaces. The same software remains with a project while data are acquired, during offline analysis, and at publication. At every stage, the interfaces use the same data model and analytical methods, preserving reproducibility without duplicating calculations. Publication is designed into the architecture rather than added after analysis. This makes data sharing part of the analysis workflow rather than a separate task created at the end of a project.

My longer-term goal is to publish raw data and completed analyses with the same software used in the laboratory so readers can inspect how figures were produced, examine reported results, repeat the analysis, and extend it to address new scientific questions. I am extending these systems to prepare data and completed analyses for community standards and appropriate repositories selected according to the scientific domain and data type.

Scientific software has the greatest impact when it becomes reusable research infrastructure. Reusable software platforms reduce duplicated effort, improve reproducibility, and allow laboratories to build upon stable computational foundations rather than repeatedly developing new analysis scripts for each project. By combining sustainable software engineering with open-source development, research infrastructure continues to support scientific discovery long after individual publications, grants, and laboratory personnel have changed. This long-term perspective enables software to become a lasting scientific resource rather than a temporary research product.

## Research Software Platforms

### CloudScope

[Live Web App](https://cloudscope.mapmanager.net) · [Documentation](https://mapmanager.github.io/cloudscope-app/)

Microscopy image analysis often depends on disconnected tools and manual processing. CloudScope provides desktop and web interfaces for data management, visualization, and quantitative analysis. Its interfaces use AcqStore as their shared computational backend. Analyses for blood-flow velocity, vessel diameter, heart rate, and related signals are implemented in AcqStore. They are available through CloudScope without duplicating the underlying calculations. New AcqStore file loaders, analyses, and visualization tools can also be incorporated into CloudScope as the backend evolves.

### AcqStore

[Documentation](https://mapmanager.github.io/acqstore/) · [Source Code](https://github.com/mapmanager/acqstore)

AcqStore is a general-purpose Python toolbox and computational backend for loading, managing, visualizing, and analyzing imaging data. Its documented API supplies data, visualization primitives, and analysis methods to CloudScope and scripting workflows.

Raw imaging data come from many sources, including proprietary microscope file formats. AcqStore loads these data while retaining the experimental metadata and physical units required for quantitative analysis. Its extensible file-loader plugin system allows new formats to be supported without rewriting the applications built on AcqStore.

AcqStore can also be extended through plugins for analysis and cloud sharing. It exports analysis results as structured tabular data through an extensible export system. Desktop, web, and scripted workflows therefore operate on the same data model and analysis implementation, improving reproducibility while allowing new capabilities to be added over time.

AcqStore uses lazy loading so collections containing hundreds or thousands of files can be browsed without loading the complete dataset into memory. It implements OME-Zarr and NGFF file-formats for scalable data access, sharing, and cloud deployments.

### SanPy

[Documentation](https://cudmore.github.io/SanPy) · [Source Code](https://github.com/cudmore/SanPy)

Electrophysiology analysis frequently depends on manual measurements or laboratory-specific scripts. Manual measurements are difficult to standardize and reproduce across researchers and experiments. SanPy provides automated action-potential detection, quantitative measurements, interactive visualization, a plugin architecture, and a documented Python API.

The freely available desktop application supports real-time use during experiments, offline analysis, and inspection of published analyzed datasets. Its GUI and scripting workflows use the same internal computational backend. This ensures that interactive and automated workflows calculate measurements with the same implementation, improving reproducibility while allowing analyses to be extended and automated.

### MapManager

[Live Web App](https://mapmanager.github.io/WebMapManager/) · [Documentation](https://mapmanager.github.io/)

Longitudinal microscopy studies require researchers to organize, visualize, and analyze datasets collected across multiple imaging sessions potentially spanning weeks to months. MapManager provides an open-source platform for reproducible annotation, visualization, and quantitative analysis of dendritic spine dynamics over time.

MapManager is optimized to manage annotation collections that may contain tens of thousands of items. Its graphical interface supports interactive review and curation, including identifying and correcting false-positive and false-negative annotations.

### PiE

[Documentation](https://cudmore.github.io/pie-doc) · [Source Code](https://github.com/cudmore/pie)

Behavioral neuroscience experiments often require custom hardware control, data acquisition, and analysis software assembled from independent components. Experimenter presence can also interfere with sensitive behaviors and confound measurements. PiE integrates experiment control, automated acquisition, data management, video streaming, and quantitative analysis. Its web interface allows experiments to be controlled and monitored remotely, reducing experimenter interference while supporting reproducible behavioral research.

### Brightest Path

[Documentation](https://mapmanager.github.io/brightest-path-lib/) · [Source Code](https://github.com/mapmanager/brightest-path-lib)

Python lacked a reusable, documented library for tracing brightest paths through n-dimensional scientific images. Brightest Path fills this gap by providing a tested, installable Python package with a well-documented API, enabling scientific software projects to incorporate robust path-tracing algorithms without reimplementing them.

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

## Leadership and Mentorship

My software projects have supported collaborative research involving faculty, postdoctoral scholars, graduate students, and undergraduate researchers. I enjoy mentoring scientists in quantitative analysis, software design, and computational methods while developing software that enables research groups to become more productive and self-sufficient.

I involve researchers throughout software development, from initial design and implementation through testing and critical feedback. Scientific software is a living resource. Continued feedback from its users keeps it useful as experimental workflows and scientific questions evolve.

I value the day-to-day work that makes shared research infrastructure useful. This includes working directly with researchers, troubleshooting datasets and analysis pipelines, improving documentation, and providing practical training. Recurring support problems often reveal needs shared across laboratories. I use that experience to improve the software and create solutions that can be reused.

## Teaching and Scientific Training

My teaching connects scientific instrumentation with quantitative analysis and interpretation. Through lectures, laboratory instruction, and research training, I have taught the optical physics of laser-scanning microscopy, image formation, the physical limits of light microscopy, and signal-detection principles relevant to imaging and electrophysiology. This training helps researchers understand not only how to operate an instrument, but also what it measures, where uncertainty enters, and how acquisition choices affect analysis and interpretation.

I also designed and taught an undergraduate Internet of Things (IoT) course as instructor of record for three years. The course combined IoT concepts with hands-on circuit building with Arduino microcontrollers. Lectures and final projects examined current medical applications of IoT, including wearable technologies and real-time, remote data acquisition. We also considered how large longitudinal datasets could support new scientific questions.

I have also mentored computer science and biophysical engineering graduate students and managed full-time employees with computer science backgrounds. I helped them apply their expertise in mathematics, physics, and software engineering to biological questions and experimental workflows. This ability to build a shared language across disciplines is important for supporting imaging-core and analysis-core users.

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
