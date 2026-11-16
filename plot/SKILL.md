---
name: plot
description: Plot fuzzy-sphere spectra, size-dependent gaps, conformal towers, and tuning diagnostics. Use when inspecting ED results or communicating candidate critical behavior and its limitations.
---

# Show the evidence

Use figures that answer the current question. For a final critical-point claim, cover phase and size behavior, gap scaling, the full low spectrum and proposed towers, and tuning behavior where applicable. Combine panels or explain inapplicable categories rather than requiring a fixed number of figures for every task.

Use consistent size labels, symbols, and colors. Follow the project's geometry convention; by default N = 2s + 1 and R = sqrt(N). Distinguish particle counts from orbital counts and state the reference layer in a multilayer model. Specify couplings, units, normalization, spin labels, and whether plotted points are multiplets or magnetic components.

# Choose the plot

- Candidate transition: plot R Delta E against the control parameter for several sizes and labelled branches. Show crossing drift rather than assuming an exact common intersection.
- Gap scaling: plot raw Delta E versus 1/R, with any justified fit and extrapolation on the same axes. This means a plot against inverse radius, not the difference Delta E - 1/R. Compare candidate critical and massive branches when informative.
- Conformal structure: show the full low-energy overview as well as selected families, expected descendant spacings, and different sizes. Keep unexplained levels visible and identify tentative assignments.
- Tuning: use cost curves or informative parameter slices. Mark computed points and fixed parameters; do not invent a dense landscape from sparse samples or require every pairwise heat map.

Plot raw data alongside fits and explain exclusions, correction forms, and extrapolation ranges. Lines joining points are guides unless a fit is actually performed. Distinguish eigensolver precision from finite-size and assignment uncertainty, and do not display partial calculations as complete spectra.

When showing alternative normalizations, keep couplings and assignments fixed and apply one scale across sectors in each panel. Label the normalization input. A selected tower plot alone cannot establish spectral cleanliness.

Use [tuning](../tuning/SKILL.md), [gapped](../gapped/SKILL.md), and [phase-check](../phase-check/SKILL.md) for the physical interpretation of the plotted quantities.

# Examples

Read the relevant figures and nearby discussion as needed:

- [3D Ising on the fuzzy sphere](references/2210.13482v3.pdf).
- [SO(5) and pseudo-criticality](references/2306.16435v3.pdf).
- [Chern-Simons matter and massive branches](references/2507.19580v2.pdf).

Check each example's conventions before adopting its plotting variables or interpretation; example critical couplings are not transferable to a different Hamiltonian.
