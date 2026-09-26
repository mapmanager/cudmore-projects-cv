# Algorithm Design and Parallel Execution

## Purpose and scope

This is a compact supporting note for CV development, extracted from Robert's
supplied implementation overview and his direct clarification about SanPy.
It preserves selected measurement problems, numerical methods, and engineering
decisions. It is not an exhaustive algorithm inventory or an independent code
review. Use it alongside `outline.md`, `narrative.md`, and the selected
audience's guidance; it does not supersede career facts or project status.

The examples below concern line-scan images and one-dimensional signals.
AcqStore supports broader image workflows, but these examples alone do not
establish arbitrary n-dimensional implementations of each estimator. Describe
Robert's algorithm design and implementation without implying he invented
established methods such as the Radon transform or spectral estimators.

## Selected measurement methods

### Flow velocity from line-scan images

- **Problem:** estimate signed flow speed over time from streaks in a
  kymograph, an image whose axes represent time and position.
- **Method:** apply a Radon transform to successive time windows, score
  projections by variance, refine the angle search, and convert the selected
  angle to velocity using spatial and temporal calibration.
- **Engineering significance:** an array-based numerical core is separate
  from application integration. The analysis records window parameters,
  time-resolved results, and summary values. Independent windows provide a
  useful unit for process-based parallel execution.

### Heart rate from a velocity time series

- **Problem:** estimate heart rate from pulsatile flow velocity, using the
  assumption that the velocity signal contains the cardiac frequency.
- **Method:** preprocess outliers and missing values, calculate Lomb–Scargle
  and Welch spectral estimates, and report their agreement and quality
  indicators. The two methods handle the time series differently; avoid
  suggesting identical preprocessing or a formal validation benchmark.
- **Engineering significance:** the core accepts time and velocity arrays.
  It consumes the parent analysis's public time-series representation rather
  than depending on that analysis's internal table columns. Detection settings
  and both estimates are retained in the result representation.

### Vessel diameter from line-scan images

- **Problem:** track vessel edges and width over time in a kymograph.
- **Method:** reduce a short time window to a spatial intensity profile and
  locate edges using either intensity thresholds or smoothed gradients.
  Optional motion gating and median filtering address abrupt changes and
  noise. Spatial calibration converts pixel widths to physical units.
- **Engineering significance:** preserve edge positions, time-resolved widths,
  and quality information so measurements can be inspected. Independent
  profile calculations can run in threads; subsequent temporal processing
  remains sequential where samples depend on their predecessors.

### Intensity traces and peak measurements

- **Problem:** extract a fluorescence time series from an image region and
  identify events with quantitative shape and timing measurements.
- **Method:** reduce the image region to a trace, optionally filter and
  correct bleaching, and normalize fluorescence. Detect threshold crossings,
  enforce a refractory interval, locate peaks, and measure widths, rise and
  decay times, slopes, area, and prominence.
- **Engineering significance:** keep trace data, event measurements, and
  detection parameters in defined result structures. Feature extraction
  measures event properties after detection. Robert confirms that both
  AcqStore and SanPy record failed fits or individual feature calculations
  without aborting the entire analysis, preserving usable results for review.
- **SanPy scope:** Robert confirms that the same one-dimensional peak-detection
  and event-measurement algorithms are also implemented in SanPy. The detailed
  implementation overview was supplied for AcqStore, not independently
  repeated for SanPy. Do not infer that both applications import one shared
  implementation or that image-specific preprocessing applies to recordings.

## Parallel execution

- AcqStore separates parallel work within one acquisition from scheduling
  across acquisitions. Its batch runner reuses the single-file analysis API.
- Radon velocity uses processes for independent time windows, with a serial
  execution path also available. Diameter uses threads for independent
  profiles, then applies dependent temporal processing sequentially.
- The backend batch runner can schedule multiple files with threads, retain
  input ordering, report per-file outcomes, and propagate cancellation.
  The supplied overview identifies batch strategies for Radon velocity and
  diameter; do not generalize that coverage to every analysis.
- CloudScope currently processes files serially in these batch workflows
  while enabling parallel execution within each file. AcqStore's ability to
  schedule concurrent files does not mean the GUI uses that configuration.
- Worker counts are execution options, separate from persisted detection
  parameters. This separation expresses the intent to keep scientific
  configuration independent of hardware scheduling; it is not evidence of
  tested numerical equivalence across every execution mode.
- The supplied heart-rate and sum-intensity implementations do not start
  worker pools. There are no measured speedups or throughput claims to use.

## Editorial use

For an RSE CV, lead with numerical problem formulation, estimator selection,
inspectable results, and decomposition of independent work. Use selected
methods as evidence, then explain how reusable APIs connect them to the rest
of the software architecture. For other audiences, select measurement and
workflow examples appropriate to their needs without copying this inventory.

Leave equations, exact thresholds, default worker counts, parameter names,
implementation caveats, and maintenance findings out of application prose
unless a specific role makes them relevant. Do not convert quality indicators
or agreement between estimators into a claim of scientific validation.
