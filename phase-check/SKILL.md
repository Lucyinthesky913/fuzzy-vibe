---
name: phase-check
description: Assess the phases surrounding a fuzzy-sphere candidate using spectra, symmetry, correlations, and finite-size evidence. Use before interpreting a transition or after changing improvement couplings.
---

# Check the intended phases

Identify the proposed phases and their theoretical distinguishing properties before an expensive critical search. Vary the transition-driving couplings while holding the other chosen couplings fixed, then recheck the phases after changing improvement interactions. A microscopic interaction is not known to be irrelevant merely because it preserves symmetry.

Correct distant endpoints do not establish that the intervening transition is direct or continuous. Occupation changes, susceptibility peaks, and avoided crossings are useful locators, not standalone CFT evidence. Combine them with size dependence and the relevant phase diagnostics.

# Choose diagnostics appropriate to the phase

For symmetry breaking, a finite symmetry-preserving ground state can be unique even when the thermodynamic phase breaks symmetry. Use symmetry-resolved low levels, order-parameter correlations, and size dependence as appropriate; do not require a nonzero finite-volume one-point function or an exact finite-volume ground-state degeneracy.

For a quantum Hall or other topological phase, check compatible flux and filling shifts, gaps, quantum numbers, and useful reference-state overlaps. A topologically ordered phase may have a unique ground state on the sphere. When using entanglement spectra, state the cut and expected counting or symmetry labels; a suggestive pattern is supporting evidence with finite-size limitations.

For order-parameter scaling, define the operator and its normalization. Local correlators, integrated structure factors, and density-matrix eigenvalues have different size factors. Derive the appropriate scaling and any subtraction instead of applying a common exponent to all observables. Check compatibility of charged order parameters with the monopole background.

Check competing sectors sufficiently to support the claimed vacuum and phase. An analysis confined to the scalar sector must state that competing nonzero spins remain unchecked. Use [gapped](../gapped/SKILL.md) for unexpected low branches and return the result to [tuning](../tuning/SKILL.md).

# Optional acceleration

The [reduced-basis emulation paper](references/2609.11675v1.pdf) provides methods for exploring parameter dependence and ground-state criteria. Use them when their assumptions, size range, and certification apply; they do not remove the need to establish the actual phases or verify candidate spectra.
