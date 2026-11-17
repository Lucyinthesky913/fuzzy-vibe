---
name: matrix-element
description: translate the Hamiltonian into matrix element code. Use when writing code to generate matrix element.
---

# instruction

The Hamiltonian you receive may just be a schematica one. You should write it into $SO(3)$ invariant form. To do it theoretically, read **/references/Notes.pdf**. If you still have problems or you find the Hamiltonian cannot be written into $SO(3)$ invariant and local in real space, ask first. The operator should always be in the normal order. You can use the julia package WignerSymbols to get the wigner3j symbol.

# simple test

If the provided Hamiltonian is Hermitian, we can test if the matrix element is Hermitian. The proposed Hamiltonian may be non-unitary and even complex, which cannot be tested using Hermitianlity. We can also test the $SO(3)$ spacetime symmetry and other global symmetries by the quantization of quantum number or by the commutativity with symmetry generators. Then there are not many other physical tests we can do. One important is the fractional filling state. If we turn off all other interactions, the fractional filling state will gain an exact $0$ as its ground state energy.