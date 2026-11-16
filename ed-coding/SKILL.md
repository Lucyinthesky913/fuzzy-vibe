---
name: ed-coding
description: Build or review reusable fuzzy-sphere exact-diagonalization code, Hamiltonian matrices, sector solvers, and observables. Use when implementing calculations or extending an existing numerical code.
---

# Choose the implementation

Use the project's established language and verified solver when available. For an unconstrained new implementation, Julia with FuzzifiED is a suitable default; ask about the language only when the choice materially affects the work and is not already known. The structure below is advice, not a requirement to rewrite working code.

Use the [bundled FuzzifiED documentation](references/FuzzifiED/FuzzifiED.jl-main/README.md), checking that the examples match the package version actually used. Record the environment rather than assuming that documentation for another version is compatible.

# Structure reusable code

Separate the following responsibilities where useful:

- Geometry, bases, statistics, charges, and symmetry blocks.
- Hamiltonian terms and sparse matrices or matrix-vector actions.
- Observable matrices, including maps between different sectors.
- Eigensolvers, observable extraction, and data output.
- Scan and analysis scripts that call the reusable core.

Accept geometry, couplings, and requested quantum numbers explicitly. Use the project's size convention; the default is N = 2s + 1 and R = sqrt(N). Record the layer-to-orbital and flux map in multilayer systems.

Leave interfaces for candidate improvement terms without adding them to the physical model automatically. Keep DMRG-specific code separate when DMRG is actually requested or needed. Derive coefficients through [matrix-element](../matrix-element/SKILL.md).

# Reduce computational cost deliberately

Use SO(3)lver when applicable. Exact angular-momentum decomposition preserves the states in the selected symmetry sector; an energy cutoff or trial-space projection is a different approximation.

For repeated parameter queries, consider the exact angular-momentum and reduced-basis methods in [the emulation paper](references/2609.11675v1.pdf). Reduced-basis emulation can accelerate searches, but final evidence must cover competing lower states and the claimed spectral window, through full-space calculations or appropriate certification. Small eigenpair residuals alone do not prove that all lower states were found.

Measure representative setup costs, sector dimensions, memory, and per-point solve times before scaling a scan. Reuse cached bases and term matrices and budget threads and memory across simultaneous jobs.

# Verify and record

Check small-system coefficients, spectra, symmetries, and solvable limits as appropriate. An independent implementation or optional independent review can help with subtle constructions; routine edits do not require a new review workflow.

Store geometry, all couplings, basis and truncation status, solver tolerances, actual residuals, requested and returned levels, energy references, and observable normalization with the data. Check eigenvalue tails or otherwise justify completeness in the claimed window, including relevant competing sectors. Retain raw energies when saving normalized spectra.

Record process or session identifiers and terminal outcomes for expensive runs. A partial output file or old log is not evidence that a job is live or complete. Preserve partial data and failures explicitly.
