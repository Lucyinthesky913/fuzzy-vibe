---
name: conformal-quality
description: the definition of the conformal quality. use when defining the cost function or test the quality of conformal symmetry.
---

# conformal tower
In the sphere, the state-operator correspondence will make the energy gap $E-E_0 \propto v \Delta/R$, where $E_0$ is the ground state energy and $v$ is model-dependent (even sizes), $R$ is the radius and $\Delta$ is the scaling dimension. The primary field/state is the highest-weight representation of the conformal group. We can use conformal generators to raise the energy levels as $\Delta\to \Delta+n (n\in N)$, where we can call $n$ the descendant level. States/fields with $n> 0$ is the descants of the primary. For 3D CFT, the generators are just $\partial_1\partial_2\dots$. For example, a primary $\phi$ with spin-0 will have a $\partial \phi$ descendant with spin-1, a $\partial^2\phi$ with spin-0 and a $\partial_\mu\partial_\nu \phi$ with spin-2. The levels are $1,2,2$ correspondingly. There are infinte descendants. This structure, equal-space on the energy spectrum, is a strong sign for conformal symmetry and is easy to extract (compared to scaling behavior of correlation functions).

Besides the tower structure, other signs are
* If there is a continuous global symmetry at the critical point, the symmetry current must exist as a primary with scaling dimension $\Delta_J=d-2+j$ where $d=3$ is the spacetime dimension and $j$ is the spin of the current. For most cases, $j=1$ and $\Delta_J=2$. The lattice realization should just be the local symmetry operator.
* All primaries should respect the global symmetry ($O(2)$, $Z_2$, $SO(5)$, etc.).


# cost function and the quality of conformal symmetry
A typical definition is
$$\delta=\sum_{\{i\}}(\frac{E_{i'}-E_0}{E_T-E_0}3-\frac{E_{i}-E_0}{E_T-E_0}3-n_i)^2$$
where $i$ is a primary's energy and $i'$ is its descendant. $E_T$ is the energy of the stree-energy tensor, whose dimension is known exactly as $\Delta=3$. We use it to cancel the factor $v$. This cost function picks out some energy levels to test the quality of the conformal symmetry. $\delta=0$ is the ideal result. Due to the finite size effects, we usually choose low-lying states.

There are also other cost functions. For example, we can replace $\frac{3}{E_T-E_0}$ by $\alpha$ and add one additional term $[\alpha(E_T-E_0)-3]^2$. Then we need to also optimize $\alpha$. If we already know other scaling dimensions, for example, $\Delta=1.414$(3D Ising), we can further add $(\frac{E-E_0}{E_T-E_0}3-1.414)^2$ to encode some information a priori. Though it seems like cheat, it may largely increase the efficiency. We can also use it as a tentative search. Or we can use
$$\delta=\sum_{\{i\}}(\frac{E_{i'}-E_0}{E_1-E_0}1.414-\frac{E_{i}-E_0}{E_1-E_0}1.414-n_i)^2+(\frac{E_T-E_0}{E_1-E_0}1.414-3)^2$$
The most general definition is by choosing some reference state with known dimension to cancel the factor $v$. A general strategy to choose the states entering the cost function is that, we should assume the spectrum is clean (almost all the low-lying states are conformal) rather than letting some large energy levels coincidentally match a conformal energy level. You should at least include some (or one) descendant levels to encode the conformal tower structure and include the exatcly fixed scaling dimension (energy-momentum tensor, current, etc.).

If you need a visulization on the conformal tower, use [plot skill] (./skills/plot/SKILL.md).

It's possible some low-lying states are not CFT state or some states violate the unitary bound even if the theory is Hermitian/unitary. They may be gapped states from fQHE and other cases. Use [gapped skill] (./skills/gapped/SKILL.md) for hints. But you should think carefully whether they are gapped states or your parameters are too bad.


# what cannot serve as good data

Due to numerical accessibility, the scaling behavior of correlators $\langle O(x)O(y)\rangle \sim |x-y|^{-2\Delta_O}$ is not a good data. The scaling dimension obtained in this way is much less precise than that of energy level and state-operator correspondence. 
