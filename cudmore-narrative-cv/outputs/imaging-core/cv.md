## Professional Summary

I design and develop scientific software that transforms microscopy and electrophysiology data into reproducible quantitative results. My work combines more than 20 years of experimental biology with computer science and scientific software development, allowing me to connect experimental questions with reusable analysis tools.

As a scientist and research software engineer, I am seeking a scientific staff, research-faculty, or related role within an imaging facility, academic department, or research organization. I want to help an institution extend its analysis capabilities through direct researcher support, practical training, and software that can serve multiple laboratories.

## Experimental Science and the Imaging-Analysis Gap

My background in experimental biology and software engineering gives me a practical view of imaging analysis from acquisition through interpretation. My research spans neuroscience, vascular biology, and cardiac physiology, where I have conducted microscopy and electrophysiology experiments, analyzed data, published findings, and built custom microscopes with real-time software to control them. This experience helps me design analysis tools around what instruments measure, how acquisition choices shape the data, and how researchers evaluate the results.

Advances in microscopy and fluorescent reporters continue to increase the volume and diversity of imaging data, but reusable analysis software has not kept pace. Laboratories often meet immediate needs with scripts written for a particular project or publication. Although effective in their original context, these scripts can be difficult to maintain, generalize, or transfer, forcing other groups to reconstruct methods that have already been developed. Recurring analyses should instead become maintained tools shared across projects and laboratories.

Working across several biological fields has shown me that disciplines using related imaging technologies often face the same analytical tasks: visualizing images, extracting quantitative measurements, and reviewing results against the underlying data. Common software foundations can implement these shared capabilities, while domain specialists adapt the measurements and workflows to each scientific question. These tools can serve multiple projects and laboratories while providing a technical foundation for interdisciplinary collaboration.

## Reusable Analysis Infrastructure for Imaging Cores

Recurring analysis needs create an opportunity to turn successful project solutions into shared institutional infrastructure. Imaging cores already provide instrumentation, maintenance, training, acquisition expertise, commercial software, and established analysis services. A complementary analysis-core capability would add sustained quantitative expertise and reusable software development without replacing those existing strengths.

This capability could develop within an institution's existing scientific and technical structure without requiring a separate administrative core at the outset. Direct work with laboratories would reveal which problems are specific to one experiment and which recur across projects. When broader use is scientifically appropriate, successful solutions could be documented, maintained, and extended as shared tools, while domain specialists continue to define the measurements required for each research question.

Shared analysis infrastructure reduces duplicated development, preserves analytical knowledge when projects end or personnel change, and allows improvements from one collaboration to benefit others. It gives researchers across laboratories and disciplines a common technical foundation for new work. By making methods and results easier to find, access, combine, and reuse, it also supports the FAIR principles: Findable, Accessible, Interoperable, and Reusable.

## A Continuous Workflow from Microscope to Publication

Across successive research-software projects, I developed a modular pattern that keeps data and analysis connected from an active experiment through publication. At its core is AcqStore that provides an extensible computational-engine for loading images, performing quantitative analyses, and saving complete datasets. CloudScope-App provides a desktop GUI that uses AcqStore for analysis, and CloudScope-Web opens the resulting datasets for publication on the web.

**During the experiment.** As soon as the microscope acquisition software saves a raw data file, users can open the file in CloudScope-App. Users can visualize the data and apply experiment-specific analysis while the experiment is underway. Depending on the experiment and as questions evolve, new analysis methods are added to AcqStore and become immediately available through the same Cloudscope-App graphical environment.

**In the laboratory.** Users continue with CloudScope-App for traditional systematic offline analysis, review, curation, and figure preparation. On the scope and in the lab workflows use the same analytical implementation, eliminating the need to reconstruct the analysis in a separate collection of scripts. Each time work is saved, it is in a self-contained dataset including all the information needed to reconstruct the analysis including raw images, metadata, analysis parameters, and completed results.

**For publication and sharing.** CloudScope-Web opens the saved self-contained dataset as an interactive web figure that can accompany a traditional journal publication. Readers can inspect reported results alongside the raw images and completed analyses that produced them. Standards-based exports also prepare datasets for deposition in appropriate repositories, including the DANDI Archive and the Brain Image Library, according to the scientific domain and data type.

This complete workflow is implemented for kymograph line-scan analysis and is designed to be extended when new image analysis methods are implemented through AcqStore.

My electrophysiology software, SanPy, applies the same pattern by allowing analysis during experiments, systematic offline review, self-contained datasets, and interactive presentation through SanPy-Web. Together, these systems demonstrate a reusable path from experiment to analysis, publication, and sharing.

## Researcher Collaboration and Support

Useful analysis software begins with understanding the scientific question and the researcher's workflow. I work directly with experimental scientists to define what must be measured, determine how results will be reviewed and interpreted, and integrate the analysis into laboratory practice. I involve researchers in design, testing, and refinement so the software evolves with their experiments and scientific questions.

Delivering software is not the end of the collaboration. I troubleshoot datasets and analysis pipelines, improve documentation in response to user questions, and provide practical training connected to active research. I explain how measurements are calculated and help researchers recognize the assumptions and limits of their analyses so they can interpret results confidently and work more independently.

Interdisciplinary work also requires a shared language across biology, quantitative analysis, and software engineering. I have mentored scientists and engineers across career stages, helping experimentalists communicate analytical requirements and engineers understand biological questions and experimental constraints. With that shared understanding, scientists and engineers can develop analysis tools that address the biological question and fit the experimental workflow.

## Teaching and Scientific Training

My teaching connects scientific instrumentation with quantitative analysis and interpretation. Through lectures, laboratory instruction, and research training, I have taught the optical physics of laser-scanning microscopy, image formation, the physical limits of light microscopy, and signal-detection principles relevant to both imaging and electrophysiology.

I also designed and taught an undergraduate Internet of Things course as instructor of record for three years. The course combined lectures with hands-on laboratories in which students wired simple circuits and sensors and connected them into distributed systems using internet dashboards. Laboratory exercises included electrocardiography (ECG/EKG), pulse oximetry, and accelerometer-based activity measurement as an introduction to actigraphy. Lectures examined biometric Internet of Things devices for monitoring human health and disease progression and considered how longitudinal data collected across large populations can enable new scientific questions. These were instructional exercises rather than continuous wearable monitoring, clinical research, or regulated medical-device development.

## Engineering Principles for Sustainable Scientific Software

**Modular and extensible implementation.** I place analytical methods in independently usable computational backends rather than embedding them separately in each application or script. Graphical applications, scripts, notebooks, and browser interfaces can therefore use the same implementation. New file formats, measurements, visualizations, and analysis methods can be added without rebuilding the entire system.

**Trustworthy and scalable scientific use.** Automated results remain connected to the underlying images or signals so researchers can inspect the data and curate the results. Saved analyses preserve the data, parameters, methods, and results needed to reproduce and extend the work. Data access and processing are also designed to load increasingly large datasets while keeping interactive applications responsive as data volumes grow.

**Maintainability and delivery.** Automated testing, documentation for users and developers, stable interfaces, and versioned releases help software remain dependable as research requirements change. Practical deployment options make the same analytical capabilities available to researchers with different computational backgrounds.

My software projects apply these principles across imaging, electrophysiology, and related research workflows, demonstrating how scientific applications can grow beyond their original experiments while remaining usable and maintainable.
