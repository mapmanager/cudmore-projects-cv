## Research Software Platforms

These selected platforms demonstrate how reusable software can support researchers from experimental data through quantitative analysis, curation, and sharing. Each project addresses a specific research workflow while contributing methods and components that can be extended or reused in other applications.

## CloudScope: Imaging Analysis from Experiment to Publication

[CloudScope](https://mapmanager.github.io/cloudscope-app/) is a cross-platform desktop application with a graphical interface for quantitative image analysis on-the-scope during experiments and offline in the lab. Researchers can open complete dataset folders containing many hundreds of raw-data files, visualize images, run analyses, inspect measurements against the underlying data, and curate individual results. Results can be pooled across a collection to prepare summary plots and figures.

CloudScope supports systematic review of false-positive and false-negative detections through blinded and randomized curation. By concealing identifying metadata and randomizing dataset order, it helps researchers evaluate automated results efficiently while reducing experimenter bias.

CloudScope currently supports kymograph line-scan analysis and is designed to incorporate additional methods, including fully automated AI/ML pipelines. New automated methods can use the same curation tools to identify and correct errors, keeping scientific review part of the analysis workflow.

### AcqStore: Reusable Imaging Analysis and Data Management

[AcqStore](https://mapmanager.github.io/acqstore/) is the computational backend used by CloudScope for loading images, managing metadata, performing analyses, and saving results. Its documented Python interface also makes these capabilities available to scripts and notebooks, allowing interactive and automated workflows to use the same analytical implementation.

AcqStore reads widely used scientific formats and supported proprietary microscope formats (e.g. czi/lsm, nd2, oir) while preserving metadata needed for quantitative analysis. Extensible interfaces allow new file loaders, analysis methods, and export formats to be added without rebuilding CloudScope. AcqStore is designed to scale to collections containing many hundreds of files and increasingly large datasets while keeping loading, analysis, and saving practical as data volumes grow.

AcqStore saves self-contained datasets that preserve the raw images and the information needed to reconstruct, extend, and share completed analyses. Images are stored as OME-Zarr-compatible multiscale pyramids. AcqStore also exports data in Neurodata Without Borders format to support interoperability with other software and deposition of final datasets in online repositories (Dandi archive, Brain Imaging Library, etc.).

### CloudScope-Web: Interactive Presentation of Completed Analyses

[CloudScope-Web](https://mapmanager.github.io/cloudscope-web/docs/) opens saved AcqStore datasets as interactive web figures. Readers can examine pooled results alongside the images and completed analyses that produced them. This keeps the evidence behind a reported measurement available for scientific inspection rather than separating the publication figure from its underlying data.

## SanPy and SanPy-Web: Electrophysiology Analysis and Curation

[SanPy](https://cudmore.github.io/SanPy/) is a cross-platform desktop application with a graphical interface for detecting and analyzing action potentials and subthreshold events in whole-cell current-clamp recordings. It supports recordings from neurons, cardiac myocytes, and other excitable cells. For each detected event, SanPy measures features including threshold, peak, amplitude, timing, half-width, and rise and fall kinetics, together with spike-train properties such as inter-spike intervals, firing frequency, and adaptation.

Researchers can use SanPy during experiments and for systematic offline analysis. The application opens individual recordings or folders containing hundreds of recordings, overlays results on the raw recordings, and provides linked views and error summaries for reviewing and curating individual events. Detection presets offer practical starting points for common neuronal, cardiac-myocyte, and subthreshold recordings. Measurements can then be pooled across recordings for summary plots and figures.

The desktop application, scripts, and notebooks use the same analytical implementation. SanPy saves completed analyses and exports self-contained SanPy Zarr datasets containing recordings, metadata, detection parameters, and results. [SanPy-Web](https://mapmanager.github.io/sanpy-web/docs/) presents these datasets as interactive web figures that researchers can open in a browser without installing SanPy.

## MapManager: Longitudinal Microscopy and Expert Curation

[MapManager](https://mapmanager.github.io/) supports annotation, measurement, and curation of neuronal structures in three-dimensional microscopy datasets collected across hours, days, or months. Its established workflow focuses on dendritic spines, with support for axonal-bouton tracking. Longitudinal experiments can contain tens of thousands of annotations whose identities and relationships must remain accurate across repeated imaging sessions.

Small rates of false-positive and false-negative annotations can obscure biological changes in structural turnover. Researchers identify candidate structures, after which MapManager creates regions of interest and uses measurement heuristics to propose whether annotations should be accepted or rejected. It also proposes connections between corresponding structures at adjacent time points. Researchers inspect and correct these proposals to create a curated reference set, and MapManager classifies structures as persistent, transient, added, or eliminated.

Researchers select corresponding landmarks to guide rigid alignment when noisy images do not provide reliable features for fully automatic registration. MapManager associates annotations with traced dendritic segments or axons and measures properties including position, morphology, fluorescent intensities, and distance along the parent structure.

The original Igor Pro application established this workflow in research use. A modern open-source ecosystem is carrying it forward and remains under active development. It provides desktop, browser, scripting, and notebook access to shared scientific methods. A [live WebMapManager application](https://mapmanager.github.io/WebMapManager/) supports browser-based visualization, annotation, and analysis.

## Brightest Path: Reusable Tracing for Scientific Images

Tracing bright filament-like structures is a recurring image-analysis problem. [Brightest Path](https://mapmanager.github.io/brightest-path-lib/) is a documented Python package for point-to-point tracing through n-dimensional images. Researchers provide start and end points, and the library returns the image coordinates forming the brightest path. MapManager uses it to trace dendritic segments and axons, while other applications can incorporate the same implementation. A separate napari plugin provides an interactive graphical interface for tracing.

## AcqView: Local Access to Proprietary Microscopy Files

[AcqView](https://mapmanager.github.io/acqview/) allows researchers to view supported proprietary microscopy files without installing vendor-specific software. Researchers can drag a file into the browser application, inspect its metadata, visualize the images, and export them as TIFF files. The source data remain on the researcher's computer rather than being uploaded to a remote service.

## Reusable Web Interface Components

[mapmanager-web-components](https://mapmanager.github.io/mapmanager-web-components/) provides reusable web components, written in TypeScript, for viewing images and signals and exploring pooled measurements. The components are used across desktop and web applications, including CloudScope, CloudScope-Web, SanPy, and SanPy-Web. Reusing these components gives researchers consistent visualization and interaction tools while allowing improvements to benefit multiple scientific applications.
