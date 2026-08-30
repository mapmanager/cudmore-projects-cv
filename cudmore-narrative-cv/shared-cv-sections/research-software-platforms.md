## Research Software Platforms

### CloudScope Suite

Imaging workflows often divide raw data, automated analysis, manual review, saved results, and publication among disconnected tools and processes. They may also depend on one-off scripts whose precise code, assumptions, algorithms, and detection parameters are difficult to preserve or reuse. The CloudScope suite addresses these problems through a continuous pipeline from raw imaging data through quantitative analysis, scientific curation, publication, and reuse.

[CloudScope](https://mapmanager.github.io/cloudscope-app/) is a desktop application for macOS and Windows. Researchers use its graphical interface to load and visualize images, run analyses, inspect results, and curate the resulting data. Its semi-automated workflows allow potentially hundreds of raw image files to be analyzed efficiently while retaining human scientific judgment. Current analysis domains focus on kymograph line-scan images and include capillary blood-flow velocity, heartbeat derived from velocity, diameter changes in cardiac myocytes and smooth muscle, and peak detection from fluorescent reporters such as GCaMP calcium and ATP reporters.

CloudScope uses [AcqStore](https://mapmanager.github.io/acqstore/) as its Python analysis backend. Analysis algorithms are implemented in AcqStore and made accessible to researchers through CloudScope's graphical interface. AcqStore also loads raw images, including proprietary microscope file formats. After analysis and curation, it saves the raw images, analysis methods, detection parameters, and results together in a self-contained dataset. This preserves the information needed to reconstruct how an analysis was performed even as analytical methods evolve. AcqStore can export Open Microscopy Environment Zarr (OME-Zarr) and Neurodata Without Borders (NWB) datasets for direct upload to public repositories such as the DANDI Archive and the Brain Image Library.

To publish and share results, [CloudScope-Web](https://mapmanager.github.io/cloudscope-web) opens the same self-contained OME-Zarr datasets as dynamic, interactive figures on publicly accessible web pages. Each web page presents the raw data and analysis performed and curated in CloudScope, allowing reported results to be examined alongside the raw data that produced them. The shared datasets remain available for new analyses, hypotheses, model-building, and collaborations. CloudScope-Web does not require dedicated or complex server infrastructure, making these interactive figures easier to distribute with publications.

### SanPy

Electrophysiology analysis frequently depends on manual measurements or laboratory-specific scripts. SanPy provides automated action-potential detection, quantitative measurements, interactive visualization, plugins, and a documented Python API. Its graphical and scripting workflows use the same computational implementation for real-time experiments, offline analysis, and inspection of published analyzed datasets.

### MapManager

Longitudinal microscopy studies require researchers to connect measurements across imaging sessions that may span weeks or months. MapManager provides an open-source platform for annotation, visualization, and quantitative analysis of neuronal structure over time. It supports interactive review and curation of collections containing tens of thousands of annotations.

### PiE

Behavioral experiments often require custom hardware control, data acquisition, monitoring, and analysis. PiE integrates these functions through a web interface that supports remote experiment control and video monitoring. It reduces experimenter interference while providing a reusable framework for behavioral research.

### Brightest Path

Brightest Path provides a tested, documented Python package for tracing brightest paths through n-dimensional scientific images. It makes a reusable image-analysis method available to other scientific projects without requiring each project to reimplement the algorithm.
