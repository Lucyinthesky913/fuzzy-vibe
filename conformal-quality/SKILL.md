---
name: conformal-quality
description: Assign fuzzy-sphere spectra to CFT multiplets and towers, define conformality costs, and assess conformal data. Use when testing state-operator correspondence or candidate spectral quality.
---

# Conformal towers

For a relativistic CFT on a sphere, excitation energies approach E_n-E_0 = (v/R) Delta_n, with nonuniversal v and finite-size corrections in a microscopic realization. Use the actual vacuum, geometry, symmetry labels, and solver scope.

Translations P_mu generate descendants and raise the scaling dimension by integers; special conformal generators K_mu annihilate a primary. In the local-operator description, translations act as derivatives. A generic scalar primary has a spin-one descendant at level one and a trace scalar and symmetric traceless spin-two descendant at level two. Apply the appropriate null-state subtractions for conserved or otherwise shortened multiplets.

Primaries transform in representations of the global symmetry; they need not be singlets. Descendants remain in the primary's internal representation. Include spin, charges, internal representation, discrete symmetries where defined, and multiplicity when assigning states.

In a unitary three-dimensional CFT, a conserved internal current has Delta_J = 2 and a stress tensor has Delta_T = 3. A microscopic symmetry density can overlap with a current and other operators; its identification requires the appropriate quantum numbers and supporting evidence. Neither an energy match nor a large microscopic density overlap alone identifies a CFT operator.

# Common normalization and assignments

Use one energy reference and one conversion factor alpha = R/v across the sectors and towers of the same candidate CFT at each geometry and coupling set. Record finite-size drift in alpha. For charged sectors, state any common chemical-potential subtraction; do not reset each sector's ground energy separately.

Do not assume that the lowest spin-two level is T. Massive states may lie below it at accessible sizes. Keep competing assignments explicit and use symmetry, branch continuity, matrix elements, or Ward identities when available. For energy matching within a sector, each eigenstate should explain at most one target multiplet.

A supported stress assignment permits alpha_T = 3/(E_T-E_0). Other choices include alpha_ref = Delta_ref/(E_ref-E_0) for an independently known reference dimension, or alpha_step = n/(E_desc-E_primary) for an assigned level-n descendant.

When useful, compare these normalizations at fixed couplings and fixed assignments, using each scale consistently across all sectors. Do not retune the Hamiltonian or reassign states for each scale to make the comparison succeed. Scales calibrated from fitted relations are robustness checks, not independent validation. Report reference dimensions and their uncertainties as inputs; a fitted or imposed dimension is not a measured result.

# Cost and spectral quality

One possible cost is

    C(alpha) = sum_pairs w_pd [alpha(E_d-E_p)-n]^2
             + sum_protected w_a [alpha(E_a-E_0)-Delta_a]^2.

Specify assignments, weights, sum versus mean, and whether alpha is fixed or fitted. A known nonprotected dimension may be used as a stated prior for a tentative search; a symbolic Delta_ref avoids importing one theory's approximate dimension into another.

Inspect individual residuals. A zero cost only establishes the selected relations, not a CFT. Report unexplained levels and missing expected multiplets separately, or include explicit penalties whose definitions and windows are given. Boundary levels and uncertain assignments should remain distinguishable from supported matches.

In a unitary 3D CFT, nonidentity scalar primaries have Delta >= 1/2 and integer-spin primaries with ell >= 1 have Delta >= ell+1. Apply these bounds to the appropriate primary representations, not independently to every descendant. An apparent violation by a normalized finite-size eigenvalue flags an assignment or finite-size issue, not a violation of microscopic Hermiticity.

Use [gapped](../gapped/SKILL.md) for anomalous branches and [tuning](../tuning/SKILL.md) for independent checks and model selection. Where feasible, use operator matrix elements or conformal-generator tests beyond energies, reporting projection limits and retained spectral weight. Present both the full low spectrum and proposed families through [plot](../plot/SKILL.md).
