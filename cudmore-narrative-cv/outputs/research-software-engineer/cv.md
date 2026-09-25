## Professional Summary

I build scientific software that transforms biological data into reproducible quantitative results.

My career combines experimental biology, quantitative analysis, and research software engineering. I design and implement reusable Python backends, desktop and web applications, and scientific data formats that keep measurements connected to their experimental context. I am interested in senior hands-on engineering leadership, combining continued coding with architectural direction, development coordination, and mentorship.

## Experimental Science and Collaborative Requirements Discovery

My scientific expertise includes neuroscience, vascular biology, and cardiac physiology. Decades of bench research in microscopy and electrophysiology have involved designing experiments, building acquisition systems, interpreting results, and publishing findings. This experience helps me understand how acquisition choices and measurement constraints affect the software needed to answer a scientific question.

I work with domain experts, including in fields beyond my direct expertise, to understand experiments and identify scientifically valid measurements. Development proceeds through requirements discovery, design, implementation, testing, and feedback from researchers. Day-to-day support reveals recurring problems that can become shared capabilities, clearer documentation, and more usable analysis workflows.

## Research Software Architecture

I separate scientific computation from the interfaces used to access it. Documented Python APIs allow graphical applications, scripts, and computational notebooks to use the same analytical implementation. File loaders, analysis plugins, and reusable data models allow new scientific methods to be added without rebuilding the applications around them.

[AcqStore](https://mapmanager.github.io/acqstore/) is a general-purpose Python backend for imaging data, independent of CloudScope. It provides data access, metadata, quantitative analysis, and export through a public API. SanPy uses the same architectural principle for electrophysiology: its desktop application and scripting workflows share an internal computational backend. These designs allow interactive and automated workflows to calculate measurements using the same methods.

I also develop reusable graphical components. The image viewer, nicepool, and signal viewer in [mapmanager-web-components](https://mapmanager.github.io/mapmanager-web-components/) are used across CloudScope-Web, SanPy-Web, the PyQt SanPy application, and the NiceGUI CloudScope application. Sharing interface components across scientific domains and application frameworks reduces duplicated development and makes improvements reusable.

## Scientific Data, Reproducibility, and Publication

I design software to support one continuous workflow from experimental acquisition through offline analysis, curation, publication, and sharing. CloudScope and SanPy implement this approach for imaging and electrophysiology. Their saved datasets retain raw data, metadata, detection parameters, and completed results so researchers can inspect the connection between measurements and the experiment.

AcqStore saves self-contained OME-Zarr collections and publishes a collection specification and machine-readable schema. SanPy saves self-contained SanPy Zarr datasets with documented parameter and result definitions. These data contracts allow other developers to interpret saved work without relying on an application's internal implementation. Lazy and chunked data access support workflows that do not require entire datasets to fit in memory.

[CloudScope-Web](https://mapmanager.github.io/cloudscope-web) and [SanPy-Web](https://mapmanager.github.io/sanpy-web) present these saved datasets as interactive published figures. Readers can inspect results alongside the underlying data and use the shared datasets for further analysis. AcqStore also implements Neurodata Without Borders (NWB) export, supporting preparation for repositories appropriate to the scientific domain and data type.

## Engineering Quality and Software Delivery

I use automated testing, continuous integration, documented APIs, and end-user guidance to make software easier to maintain, inspect, and extend. GitHub Actions workflows support pytest, documentation, and automated desktop builds. PyInstaller packaging delivers macOS and Windows applications so researchers can use the software without assembling a development environment.

Engineering checks must address the interfaces that other software depends on. AcqStore Server provides a concrete example: its tests cover API schemas, the OpenAPI contract, errors, session lifecycle, representative image formats, and client behavior. Clear interfaces and tests help preserve data access as clients and implementation details evolve.

## Technical Leadership, Mentorship, and Sustainable Research Software

My leadership connects scientific aims with software design and project execution. I led the scientific and technical design and writing of successful NIH BRAIN Initiative R01 and Chan Zuckerberg Initiative software proposals. I also led and managed the resulting research, including the five-year BRAIN Initiative project, and trained full-time image analysts and engineering graduate and undergraduate students. As one of three principal investigators on an NHLBI R01, I make primary contributions to electrophysiology and imaging experiments and analyses.

I have mentored computer science and biophysical engineering trainees and employees as they applied technical expertise to biological research. I help engineers understand experiments and measurement constraints, and help experimental researchers use and extend quantitative methods. This shared understanding supports collaborative development as scientific requirements change.

I turn recurring analysis needs into reusable software that can outlast individual scripts, projects, and personnel. Established commercial tools remain useful where they meet the scientific need; open-source development adds specialized methods, transparent analysis, and extensible workflows. Documentation, researcher support, and mentorship help preserve those capabilities and enable others to maintain and build upon them.
