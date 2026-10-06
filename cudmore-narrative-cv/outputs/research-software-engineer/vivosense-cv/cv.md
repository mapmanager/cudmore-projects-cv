## Professional Summary

I design and develop scientific software that turns biological data into reproducible quantitative results. My work spans numerical algorithms, computational backends, data models, desktop and web applications, and integration with experimental hardware.

My initial training is in computer science and full-time software development, followed by a PhD in Neuroscience and more than 20 years of experimental research in microscopy and electrophysiology. I combine scientific and engineering judgment, translating biological questions into requirements and carrying development through algorithm design, architecture, implementation, testing, and delivery.

Python is my primary language for scientific computing and software development. I use Jupyter, NumPy, SciPy, and pandas for analytical workflows and build documented backends that support graphical applications, scripts, notebooks, services, and browser clients. I remain a hands-on developer while providing architectural direction, development coordination, and mentorship.

## Experimental Physiology and Scientific Integration

I bring substantial domain expertise in neuroscience, vascular biology, and cardiac physiology. I designed and built custom microscopy and electrophysiology acquisition systems integrating modular hardware with real-time acquisition, visualization, storage, and analysis software. This experience guides the measurements I select, the assumptions I examine, and the requirements I establish for scientific software.

Research systems often depend on proprietary commercial components that must be adapted to experimental needs. I have worked with vendors to integrate these components into custom systems, including accessing scanner reference signals for precise position and timing and using vendor-documented network protocols to read and control motor positions. I also design file loaders and tests to identify incompatibilities when commercial formats change without notice.

Within multidisciplinary teams, I connect scientific questions with engineering decisions. I work with researchers to define what an analysis must measure and with engineers to express those requirements through algorithms, reference implementations, data models, interfaces, expected outputs, and testable behavior. I am comfortable entering new domains and collaborating with specialists whose expertise complements my own.

## Scientific Algorithms and Data Quality

My experimental background guides algorithm development. I define the measurement, its assumptions, and the effects of noise and sampling before selecting numerical methods and analysis parameters. My work includes electrophysiological event detection and feature extraction, spectral heart-rate estimation, imaging-derived physiological measurements, and real-time and batch processing.

Biological signals are noisy, so results must remain connected to the raw data. I preserve failed fits and feature-calculation errors without stopping an entire analysis, retain quality indicators from complementary methods, and provide efficient routes for researchers to inspect inconsistent results. Recurring failure patterns inform additional tests and rules in code, making corrections repeatable across datasets.

I improve performance by identifying calculations that can run independently. Depending on the workload, I use multiprocessing, thread pools, Numba acceleration, and batch processing built on the same APIs used for individual analyses. This keeps scalable processing connected to the validated scientific implementation.

## Software Architecture and Production Integration

I design modular software with computation in independently usable Python backends and defined interfaces for desktop applications, browser applications, scripts, notebooks, and services. Interactive and automated workflows call the same methods and data models, preventing scientific behavior from being reimplemented in each interface. Public APIs and plugin interfaces allow developers to extend file loading, analysis, and export as requirements evolve.

I define documented methods, schemas, versioned service contracts, and error behavior between backends and clients. These boundaries support interoperability, keep applications thin, and give engineers clear interfaces for integrating scientific capabilities into production systems. AcqStore-Server, for example, exposes scientific file loaders and metadata through a FastAPI service using Pydantic schemas and OpenAPI.

I design data models around the relationship between raw data and derived results. Recordings or images, experimental metadata, analysis parameters, feature definitions, and completed results remain connected for inspection and reuse. Lazy loading and chunked storage support interactive access to large datasets, while formats including HDF5, Zarr, JSON, CSV, and Parquet provide structured exchange between applications.

## Engineering Quality, Delivery, and Web Applications

Testing, documentation, and delivery are part of my development process. I use pytest and GitHub Actions to check numerical behavior, APIs, schemas, errors, file compatibility, and client contracts as software changes. I provide user documentation and documented Python APIs through MkDocs, and use automated workflows to build documentation and package macOS and Windows applications.

I develop both server-backed and static browser applications. CloudScope can run as a desktop application or web server for browser clients, while CloudScope-Web and SanPy-Web present completed imaging and physiological analyses as interactive web applications. This experience connects scientific backends with deployable interfaces that make results accessible without duplicating analytical logic.

## Technical Leadership and Mentorship

My grant-supported research includes NIH BRAIN Initiative and NHLBI R01 awards and Chan Zuckerberg Initiative software support. This funding enabled me to build multidisciplinary teams of software developers and research biologists. I combine direct technical contributions with architectural guidance, coordination, and mentorship, helping engineers understand scientific requirements and helping researchers use and extend quantitative methods.
