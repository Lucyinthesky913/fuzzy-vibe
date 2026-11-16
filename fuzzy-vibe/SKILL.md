---
name: fuzzy-vibe
description: Coordinate fuzzy-sphere research from a specified model through implementation, phase checks, parameter tuning, and conformal analysis. Use for planning or carrying out a multi-stage study.
---

# Coordinate the study

Start from the stage required by the current request. Reuse verified implementations and completed calculations. For a new Hamiltonian, establish its coefficients and conventions before coding; for existing data, proceed directly to the relevant analysis skill. The workflow is guidance, and explicit user choices take precedence.

Resolve links relative to this file. Load another skill or reference when its task becomes relevant rather than loading the whole collection.

| Task | Skill |
| --- | --- |
| Derive or check interaction coefficients | [matrix-element](../matrix-element/SKILL.md) |
| Implement or extend ED and observables | [ed-coding](../ed-coding/SKILL.md) |
| Establish the intended phases | [phase-check](../phase-check/SKILL.md) |
| Locate and improve candidate critical parameters | [tuning](../tuning/SKILL.md) |
| Assign conformal towers and assess their quality | [conformal-quality](../conformal-quality/SKILL.md) |
| Diagnose unexplained or possibly massive branches | [gapped](../gapped/SKILL.md) |
| Inspect and communicate numerical results | [plot](../plot/SKILL.md) |

Establish reference phases before an expensive critical search, and recheck them when improvement couplings change. Feed branch diagnostics back into assignments and failed phase checks back into tuning. Prefer a simple model whose unfitted low spectrum develops conformal structure.

# Preserve the physical question

Unless the project specifies otherwise, use reference orbital count N = 2s + 1 and radius R = sqrt(N), where s is the reference LLL monopole strength. In a multilayer model, identify the reference layer and record the other layers' orbital counts separately. Distinguish orbital count, particle number, monopole charge, spatial angular momentum, and internal symmetry charges.

Record the explicit Hamiltonian, field statistics, fluxes and filling shifts, conserved charges, coefficient and energy conventions, and retained Hilbert space. If an ambiguity changes the physical Hamiltonian, explain it and obtain the missing physical choice. Changes to terms, fluxes, charges, or Hilbert-space restrictions need authorization unless already covered by the request; do not ask again for an authorized change.

# Keep the study reproducible

Maintain a concise project record containing the current model and geometry, normalization conventions, completed checks, unresolved interpretations, and run status. Reuse existing records. Preserve raw energies, all couplings, solver scope, and failed checks alongside normalized spectra. A successful fit is distinct from a supported physical conclusion.

Estimate representative setup time, solve time, and memory before a large scan. Reuse cached geometry and term matrices. Parallelize independent work within the memory and thread budget. Subagents are optional when delegation is permitted; give each a clear scope and resource budget. Straightforward tasks may use lower reasoning effort when available.

Report what was computed, what the evidence supports, and what remains unresolved. An incomplete spectral window or projected calculation cannot establish completeness of the full low spectrum.
