---
name: matrix-element
description: Derive and verify fuzzy-sphere Hamiltonian and observable coefficients from real-space interactions or pseudopotentials. Use when implementing monopole-harmonic matrix elements and angular-momentum couplings.
---

# Make the Hamiltonian explicit

Translate a schematic interaction into a form respecting the intended spatial rotations and internal symmetries. Use the monopole-harmonic identities and interaction examples in [On Monopole Harmonics](references/Notes.pdf) as needed. Spatial SO(3) invariance is distinct from full spacetime or conformal symmetry.

State field statistics, layer monopole strengths, conserved charges, harmonic normalization, integration measure, radius factors, and coupling conventions. Specify whether a pseudopotential label denotes relative angular momentum r or total pair spin J; for LLL pair spins j1,j2, J = j1 + j2 - r, with the allowed channels restricted by statistics.

State the operator ordering explicitly. Normal ordering can generate one-body terms or constants; retain these or explain the agreed convention rather than silently changing the Hamiltonian. Distinguish normalized pair projectors from density-interaction coefficients, and state any conversion between them.

If the schematic model is ambiguous or incompatible with its intended symmetries or locality, explain the concrete issue and obtain the missing choice before substituting a different model. Existing authorization for Hamiltonian changes still applies.

Use WignerSymbols.jl or another verified implementation for angular-momentum coefficients. Keep the coefficient construction reusable by Hamiltonian and observable builders; see [ed-coding](../ed-coding/SKILL.md).

# Verify the implementation

Choose checks relevant to the interaction:

- Hermiticity when the physical Hamiltonian is Hermitian, including adjoints and complex phases. Do not impose it on an intentionally non-Hermitian model.
- Charge and rotation selection rules, or commutators with the intended symmetry generators.
- Independent small-system matrix elements or spectra, including isolated-pair pseudopotential eigenvalues where applicable.
- An exactly solvable limit, when available.

An exact zero-energy fractional quantum Hall ground state is a valid test only for the specified parent interaction, compatible flux and filling shift, and stated energy offset. It is not a property of every fractional-filling Hamiltonian. Distinguish a zero mode from a verified ground state and account for its expected multiplicity.
