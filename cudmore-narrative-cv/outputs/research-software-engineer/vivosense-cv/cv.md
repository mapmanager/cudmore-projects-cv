## Professional Summary

I develop scientific software that transforms biological and physiological data into reproducible quantitative results. My work connects experimental measurements, numerical algorithms, data models, software interfaces, and instrument integration.

My foundation in computer science and full-time software development was followed by a PhD in Neuroscience and more than 20 years of experimental research in microscopy and electrophysiology. This combination allows me to translate scientific questions into technical requirements and carry development through design, implementation, testing, and delivery.

Python is my primary language for scientific computing and software development. I use Jupyter, NumPy, SciPy, and pandas to prototype and document analytical workflows before integrating them into larger applications. I remain a hands-on developer while providing architectural direction, development coordination, and mentorship.

## Experimental Physiology and Sensor Integration

I bring domain expertise in neuroscience, vascular biology, and cardiac physiology. I have designed custom microscopy and electrophysiology systems that integrate experimental hardware with real-time acquisition, visualization, storage, and analysis software. This experience helps me define scientifically meaningful measurements and translate instrument behavior, sampling, timing, and noise into software requirements.

Experimental systems often depend on proprietary commercial components that must be adapted to research needs. I have worked with vendors to integrate these components into custom systems, including accessing scanner reference signals for precise position and timing and using vendor-documented network protocols to read and control motor positions. I also design file loaders and compatibility tests that identify unexpected changes in proprietary formats.

I have developed and taught laboratory exercises involving ECG/EKG, pulse oximetry, accelerometer-based activity measurements, distributed sensors, and internet dashboards. This instructional work complements my research experience without representing clinical wearable-device or regulated medical-device development.

## Scientific Algorithms, Data Quality, and Validation

I begin algorithm development by defining what a measurement represents, the assumptions required to interpret it, and the effects of noise and sampling. I then translate those definitions into numerical methods, expected outputs, acceptance criteria, and reference implementations. My work includes electrophysiological event detection and feature extraction, spectral heart-rate estimation, imaging-derived physiological measurements, and real-time and batch processing.

Biological signals are noisy, so automated results must remain inspectable. My software keeps raw data and metadata connected to the methods and parameters used to generate each result. It preserves completed measurements and records calculation failures so researchers can investigate inconsistent outputs without losing usable results. Graphical review tools support correction and curation, while recurring failure patterns become repeatable tests or rules in code.

When results are inconsistent, I trace the problem across acquisition settings, file parsing, metadata, sampling, and numerical analysis to identify the root cause. I compare expected and generated outputs when testing analytical workflows, giving engineers concrete criteria for verifying integrations.

I improve performance by identifying calculations that can run independently and applying multiprocessing, thread pools, Numba acceleration, or batch execution according to the workload.

## Software Architecture and Production Integration

I place scientific computation in independently usable Python backends with object-oriented data models and documented APIs. Desktop and browser applications remain thin because they delegate computation to these backends and focus on presentation and workflow coordination. Scripts, notebooks, and services use the same APIs, allowing scientists to prototype methods programmatically and applications to use the resulting implementation.

Backend APIs define plugin interfaces for adding file formats, analyses, visualizations, and export methods without changing surrounding applications. Data schemas define how data and results are structured, while versioned service contracts define how clients request and receive them. These boundaries give engineers explicit interfaces for integrating scientific capabilities into larger systems.

AcqStore-Server demonstrates this approach by exposing scientific file loaders, normalized metadata, and image data through a versioned FastAPI service. Pydantic schemas define request and response structures, and OpenAPI publishes the service contract for independently developed clients. I also use lazy loading and chunked storage so applications can work responsively with large local and networked datasets.

## Engineering Quality, Provenance, and Delivery

Testing, documentation, and delivery are part of the implementation. I use pytest and GitHub Actions to check numerical behavior, APIs, schemas, errors, file compatibility, and client contracts as software changes. I provide end-user workflow documentation, documented Python APIs, and Jupyter examples that connect technical explanations to executable analyses.

Saved analyses preserve their data, parameters, completed results, calculation failures, and tagged software version. This record allows researchers and engineers to determine how results were produced and retrieve the corresponding source-code release. I deliver scientific software as packaged macOS and Windows applications, server-backed browser applications, and static web applications according to user and deployment requirements.

## Technical Leadership and Collaboration

My funded work includes NIH BRAIN Initiative and NHLBI R01 awards and Chan Zuckerberg Initiative software support. This funding enabled me to build multidisciplinary teams of software developers and research biologists. I combine direct technical contributions with architectural guidance, coordination, and mentorship. I help engineers understand scientific measurements and constraints while helping researchers understand and extend quantitative methods.
