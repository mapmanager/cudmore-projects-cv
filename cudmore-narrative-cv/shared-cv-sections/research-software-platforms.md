## Research Software Platforms

### CloudScope Suite

Imaging workflows often divide raw data, automated analysis, manual review, saved results, and publication among disconnected tools and processes. They may also depend on one-off scripts whose precise code, assumptions, algorithms, and detection parameters are difficult to preserve or reuse. The CloudScope suite addresses these problems through a continuous pipeline from raw imaging data through quantitative analysis, scientific curation, publication, and reuse.

[CloudScope](https://mapmanager.github.io/cloudscope-app/) is a desktop application for macOS and Windows. Its graphical interface allows researchers to load and visualize images, perform analyses implemented in AcqStore, inspect and curate results, and save and reload completed work. Its semi-automated workflows allow hundreds of raw image files to be analyzed efficiently and provide graphical tools for human-in-the-loop curation of the results. CloudScope also supports blinded and randomized analysis and curation, allowing large datasets to be reviewed systematically while helping reduce experimenter bias.

CloudScope uses [AcqStore](https://mapmanager.github.io/acqstore/) as its Python analysis backend. AcqStore loads raw images, including proprietary microscope file formats (nd2, oir, czi), implements quantitative analysis algorithms, manages results, and saves completed work. Its documented Python API allows the same algorithms available through the CloudScope desktop application to be used directly in scripts and computational notebooks. After analysis and curation, AcqStore saves the raw images, analysis methods, detection parameters, and results together in a self-contained dataset. This preserves the information needed to reconstruct how an analysis was performed even as analytical methods evolve. AcqStore exports Open Microscopy Environment Zarr (OME-Zarr) and Neurodata Without Borders (NWB) datasets for direct upload to public repositories such as the DANDI Archive and the Brain Image Library.

AcqStore currently implements analyses for kymograph line-scan images, including capillary blood-flow velocity, heartbeat derived from velocity, diameter changes in cardiac myocytes and smooth muscle, and peak detection from fluorescent reporters such as GCaMP and ATP reporters. Its extensible architecture allows new file loaders and analysis algorithms to be added and made available through the CloudScope desktop application, scripts, and computational notebooks without duplicating their implementation.

To publish and share results, [CloudScope-Web](https://mapmanager.github.io/cloudscope-web) opens the same self-contained OME-Zarr datasets saved by AcqStore as dynamic, interactive figures on publicly accessible web pages. Each web page presents the raw data and analysis performed with AcqStore and curated through CloudScope, allowing reported results to be examined alongside the raw data that produced them. The shared datasets remain available for new analyses, hypotheses, model-building, and collaborations. CloudScope-Web does not require dedicated or complex server infrastructure, making these interactive figures easier to distribute with publications.

### SanPy

Electrophysiology analysis frequently depends on manual measurements or laboratory-specific scripts. [SanPy](https://cudmore.github.io/SanPy) is a general-purpose event-detection and analysis platform for whole-cell current-clamp recordings from neurons and cardiac myocytes (any excitable cell for that matter). Its primary use is action-potential analysis, but it can also detect and analyze subthreshold events. Once a peak is detected, SanPy applies the same downstream analysis and extracts more than 20 quantitative features from each event.

The SanPy desktop application allows researchers to open individual recordings or folders and apply detection presets for fast neurons, slow neurons, cardiac myocytes, or subthreshold events. Detected events and their measurements are overlaid on the raw recording, allowing researchers to evaluate the analysis in the context of the original signal and identify results that require curation. Linked graphical views and detection-error summaries support review and curation of individual events. Researchers can save completed analyses, export tabular results, and generate figures from the same workflow.

SanPy's documented Python API gives scripts and computational notebooks access to the same detection and analysis methods used by the desktop application. Extensible file loaders, measurements, and graphical plugins allow new research needs to be incorporated without creating a separate analysis system. SanPy supports analysis during electrophysiology experiments and offline analysis, then saves raw recordings, metadata, detection parameters, and completed results as self-contained SanPy Zarr datasets. [SanPy-Web](https://mapmanager.github.io/sanpy-web) opens these datasets as interactive published figures on the web, keeping published results connected to the recordings and analyses that produced them.

### MapManager

MapManager supports large-scale annotation and curation of neuronal structures
across longitudinal microscopy sessions. Experiments can produce tens of
thousands of annotations whose identities and measurements must remain accurate
over time. Small changes in spine turnover or persistence can be obscured by
false-positive and false-negative annotations. MapManager therefore combines
automated analysis with rapid expert curation so detection errors do not become
biological conclusions.

Researchers identify candidate dendritic spines or axonal boutons. MapManager
automatically creates regions of interest, proposes acceptance or rejection
using measurement heuristics, and proposes connections between structures at
adjacent time points. Researchers confirm or correct these proposals to create
the laboratory's curated reference annotation set. MapManager then classifies
structures as persistent, transient, added, or eliminated across any number of
time points.

Corresponding user-selected landmarks guide rigid image alignment between time
points. MapManager uses the Brightest Path library to trace dendritic segments
and axons, connects spine annotations with their parent segments, and provides
region-of-interest measurements of structure and fluorescence intensity.

The established Igor Pro application made this scientific workflow practical
for longitudinal structural neuroscience. I am carrying the proven workflow
forward as an open-source, extensible, and reproducible software ecosystem that
reduces dependence on proprietary software and makes the methods easier to
reuse, extend, and share.

[MapManagerCore](https://github.com/mapmanager/MapManagerCore) provides the shared Python API, extensible analysis, and scripting for the modern ecosystem. [PyMapManager](https://github.com/mapmanager/PyMapManager) is the desktop application for macOS and Windows while [WebMapManager](https://github.com/mapmanager/WebMapManager) is the stand alone browser-based application (no server required). Both these front-end GUIs provide intuitive tools for visualizing, annotating, and analyzing time-series annotations and three-dimensional image volumes. A live [WebMapManager
web-application](https://mapmanager.github.io/WebMapManager/) is publicly available Together, these components are designed to
provide consistent scientific methods through desktop, browser, scripting, and
notebook workflows.

### PiE

Behavioral experiments often require custom hardware control, video acquisition, environmental monitoring, and behavioral scoring. [PiE](https://cudmore.github.io/pie-doc) is an open-source system for building reproducible home-cage behavioral experiments. Detailed construction instructions and modular, commercially available components allow an individual behavior-box design to be replicated across an array of boxes.

Each behavior box can record and stream video, control white and infrared lighting and ventilation, monitor temperature and humidity, and log experimental events alongside the video. A web interface allows experiments to be configured, controlled, and monitored remotely, reducing the need for experimenters to remain beside the apparatus and potentially influence behavior.

PiE can control and monitor any number of behavior boxes through a centralized web interface. System status, live video monitoring, remote controls, and file synchronization allow experiments to run in parallel and scale from one box to an array. PiE also provides an intuitive, general-purpose desktop application for behavioral scoring that allows researchers to annotate events and perform blinded scoring of randomized video segments. Together, these capabilities allow PiE to acquire around-the-clock video from multiple behavior boxes in parallel, control and monitor experiments remotely to reduce experimenter-induced changes in behavior, and support blinded and randomized behavioral scoring for more reproducible analysis of variable animal behavior.

### Brightest Path

Tracing filament-like structures is a common problem in scientific image
analysis. Axons and dendritic segments are important examples because their
paths must be followed through microscopy images before their morphology can be
visualized and measured. [Brightest Path](https://mapmanager.github.io/brightest-path-lib/)
allows a researcher to select start and end points in an n-dimensional image
and calculates the brightest path between them. The resulting image coordinates
provide a quantitative representation of the traced structure for subsequent
visualization and analysis.

The tested and documented Python library can be used in scientific
applications, scripts, and computational notebooks. A separate
[napari tracing plugin](https://github.com/mapmanager/napari-tracing) provides
an interactive graphical interface for tracing neuronal dendrites and axons
with the same underlying implementation. This makes a common image-analysis
method reusable without requiring each laboratory or software project to
recreate the algorithm.
