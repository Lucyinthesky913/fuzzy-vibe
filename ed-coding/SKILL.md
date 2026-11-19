---
name: ed-coding
description: present a coding standard as an advice. Use it when starting arrange coding jobs for exact-diagonalization, dmrg calculation and extracting data and further jobs.
---

# coding standard
**This coding standard serves as an advice.**

## default choice
Ask the user first on what programming language he/she wants. The default choice is using FuzzifiED julia package. Even for other choices, the julia package can often be used to check whether the codes using other languages are right.

## core code
The core code is an exact-diagonalization code, which should be composed using julia with FuzzifiED. First, there should be a file, as a module, containing:
* Generating the matrix element of the Hamiltonian
* Generating the matrix element of the observables needed
* Exact Diagonalization
* Getting observables
* sending out desired data

The Hamiltonian part should be structured as:
* Generating basis
* Generating necessary terms
* Spaces for additional irrelevant terms

The module, or the core function, should at least accept:
* monopole strength (i.e. system size) with the convention $N=2s+1$ and $R=sqrt(N)$
* values of the coupling constants
* quantum numbers if you need
* other parameters you need

If applicable, you are encouraged use SO(3)lver to accelerate the calculation. Another choice is to use the complete $SO(3)$ implemention in **/references/2609.11675v1.pdf**. You should use the most efficient way both in speed and memory-use.

## other code
You can use the core code as a module to get data to enable further calculation. The dmrg code, if you really need it, should be in another file since it's very different from the ED code.

## documents
See /skills/ed-coding/references/FuzzifiED for the package FuzzifiED. Use [matrix-element skill] (./skills/matrix-element/SKILL.md) when generating the matrix element.

## independent check
As an advice, you can create an independent new subagent to review the code. For example, to ensure the matrix element code is right, I will ask 'does the code correctly realize the Hamiltonian?'.