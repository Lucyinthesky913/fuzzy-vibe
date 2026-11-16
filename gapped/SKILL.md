---
name: gapped
description: Diagnose fuzzy-sphere branches that may be massive, magnetoroton-like, or outside proposed CFT towers. Use when low-energy assignments disagree with conformal expectations or gap extrapolations need interpretation.
---

# Keep classifications evidence-based

Neither high spin nor an apparent violation of a CFT unitarity bound establishes that a finite-size level is massive or harmless. Keep unexplained levels visible. A large-spin cutoff is not a physical classification rule.

Start with verified energies, a consistent vacuum, geometry, and symmetry labels from [ed-coding](../ed-coding/SKILL.md) and [conformal-quality](../conformal-quality/SKILL.md). Poor parameters, incorrect assignments, a different phase, and coexistence of critical and massive modes are distinct possibilities.

# Compare raw gaps across sizes

Track candidate branches using quantum numbers, overlaps, and continuity rather than assuming a fixed energy rank denotes the same state. Compare at fixed physical couplings and state whether angular momentum or physical momentum is held fixed.

A critical branch can behave as Delta E approximately v Delta/R, while a massive branch tends to a positive gap. Fits such as Delta E = a + b/R are exploratory, not universal massive dispersions. Finite-size corrections or branch switching can produce an apparent nonzero intercept for a gapless branch; a small fitted intercept can also leave a massive branch unresolved.

Compare plausible correction forms and fit ranges when the independent sizes support them. For example, a 1/R^2 correction or a massive dispersion may be physically appropriate. At fixed angular momentum, physical momentum shrinks with R; tracking a finite-momentum roton minimum requires a different prescription. Do not infer gaplessness from the smallest fitted intercept, or demand a numerically exact zero from finite data.

A massive branch may lie below the stress tensor at accessible sizes. Its raw-gap and overlap behavior can support that interpretation without establishing a thermodynamic mass. Even a correctly classified massive state still obstructs a clean low-energy spectrum while it remains below the target window.

# Test a magnetoroton interpretation when relevant

In a nearby fractional quantum Hall phase, apply an appropriate projected density harmonic to the phase's reference ground state to construct a single-mode trial excitation. Remove a ground-state component when necessary and normalize the trial vector before computing overlaps or spectral weights.

At the same geometry, follow states or subspaces from the reference phase toward the candidate point. Refine parameter steps near avoided crossings and handle degeneracies as subspaces when individual eigenvectors are ambiguous. Record changes in rank and overlap quality.

Combine reference-state overlaps, branch evolution, and size dependence. A density operator can couple to several branches. Adiabatic connection to a phase excitation alone does not prove a nonzero thermodynamic gap, and the relevant mode need not be the lowest state at its angular momentum.

Use the [Chern-Simons-matter example](../plot/references/2507.19580v2.pdf) as a concrete diagnostic example, not a universal classification prescription. Return supported and unresolved interpretations to [tuning](../tuning/SKILL.md); do not silently remove disagreeing states to improve the cost.
