---
name: tuning
description: Locate and improve candidate fuzzy-sphere critical parameters using size dependence, low conformal towers, and phase checks. Use for parameter scans or reducing finite-size contamination.
---

# Human workflow

This is an adaptable search strategy, not a mandatory sequence. Start from the agreed model and a verified implementation. Distinguish transition-driving parameters from candidate improvement couplings. Use [plot](../plot/SKILL.md) to inspect scans and spectra.

# Locate candidate critical regions

With no useful local order parameter, layer occupations, responses, and avoided crossings can guide a rough search. They do not by themselves establish criticality. With an order parameter, use its appropriate finite-size scaling as additional evidence, documenting any scaling dimension used as an input.

At a relativistic critical point, tracked CFT branches approach

    E_n - E_0 = (v/R) [Delta_n + finite-size corrections],

where v is nonuniversal. Follow the project's geometry convention; by default R = sqrt(N), N = 2s + 1. Keep physical couplings and units comparable across sizes and record any derived geometric factors in microscopic coefficients.

Crossings of R(E_n-E_0) and fits of raw gaps versus 1/R locate candidate regions. The exploratory form Delta E = a + b/R is not a universally more accurate test: crossings can drift, corrections can mimic an intercept, and gapless phases or ordered-phase modes can also have vanishing gaps. Compare several labelled branches, fit ranges, and independent phase or operator evidence before claiming an isolated CFT.

Multiple relevant directions may require joint tuning or motion on an established critical manifold; fixing one gap crossing does not generally tune the others. For a conformal regime that is not an isolated transition, assess its spectra and scaling without requiring a phase crossing. Supersymmetry alone does not decide which situation applies.

# Improve the low spectrum

Define a small, interpretable fitting set and a common energy normalization using [conformal-quality](../conformal-quality/SKILL.md). When affordable, retune relevant parameters for each set of improvement couplings and then compare conformal quality. Joint optimization is also reasonable when independent checks remain available.

Treat additional couplings as candidate improvements until their RG role is supported. A microscopic interaction can contain both relevant and irrelevant components. Retune relevant directions and recheck [the phases](../phase-check/SKILL.md) after changing it. Explain the symmetry, locality, and intended effect of a proposed new term; respect the user's existing authorization.

Prefer a simple Hamiltonian whose unfitted low spectrum develops conformal structure. A useful improvement should lift unwanted branches or improve independent predictions, rather than merely match more chosen eigenvalues.

# Avoid over-fitting and reward-hacking

- Tune a few identifiable low multiplets. Reserve higher towers, additional sizes, or matrix elements for validation rather than expanding the fitting catalog to manufacture a tower.
- Count independently selected physical coefficients, including ranges and coefficients fixed after earlier optimization. An overall energy unit is a convention; freezing previously fitted ratios does not erase the selection freedom used to obtain them.
- Distinguish multiplets from magnetic degeneracies and recognize that descendant relations are correlated constraints. There is no universal safe parameter-to-state ratio.
- Keep unexplained low states and missing expected states visible alongside fitting residuals. A low cost on a selected subset does not establish a clean spectrum. Do not discard a state merely because it worsens the fit.
- Compare small-model candidates under stated windows, tolerances, normalization, and assignment rules. Retain failed candidates and useful trade-offs between accuracy and unwanted low levels.
- Once validation data guide further tuning, record them as development data. Repeatedly inspected sizes are not fresh confirmation. Search ranges, family choices, and changes of the objective also create selection freedom.

A dimension used for calibration, a chosen stress-tensor branch, or a fitted scale is an input to that check, not an independent prediction. Use [gapped](../gapped/SKILL.md) to investigate anomalous branches; a massive state may lie below T at finite size without being harmless for spectral cleanliness.

# Choose computations by cost and information

Reuse bases, term matrices, and nearby eigenspaces where valid. Time representative points before a large scan. Smaller sizes or fewer levels can guide exploration, followed by larger or independent checks. Parallelize independent jobs within the memory budget. Use gradients when meaningful derivatives are available; avoid assuming stochastic gradients will resolve noisy assignment-changing costs.

Consider the [reduced-basis emulation paper](references/2609.11675v1.pdf) for expensive parameter scans, following the distinction between exact symmetry reduction and approximate emulation in [ed-coding](../ed-coding/SKILL.md). Neither an emulator minimum nor a ground-state criterion alone identifies the full conformal spectrum.

Report complete couplings and conventions, scan bounds, selected states, fitting inputs, individual residuals, unexplained levels, validation results, and size drift. Separate numerical precision from finite-size uncertainty and leave the critical interpretation unresolved when the available evidence cannot distinguish alternatives.
