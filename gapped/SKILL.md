---
name: gapped
description: give hints for possibly gapped states. Use when the spectrum behaves bad at critical point or find states violate the unitary bound.
---

# general strategy
If the state has large spin, such as $s>4$, which violates the unitary bound, it's usually harmless as long as we remember they are gapped states. If the spin is not too big, there is only one known case for me. You should not be limited to the known case.

A most general strategy is to do a fitting. We fit the energy gap as $\Delta E=a+b/L$. $a\neq 0$ for gapped states and $a=0$ for the gapless one. But be careful, due to the finite size effect, the gapless states may also have $a=0$. Empirical observation is: if some $a$ are too big compared to others, it may be gapped; The smaller ones are then treated as gapless; but there must be at least one $a=0$ to signify the gapless critical point.

# known cases

By now we only know one case. There is magneto-roton modes, which may seem to be low energy states even compared to the gapless CFT states. Several sign helps us to clarify:
* We can use the single-mode approximation to get the trial wave function of the magneto-roton modes. To do this numerically, we tune the parameter deep inside the fQHE phase. Then we apply the roton creation operator to the fQHE ground state to get a roton state. We overlap the roton state to states at the critical point to test whether are roton mode.
* Another way is to watch the flow of the spectrum. Starting from the fQHE phase, we chase the roton mode's energy to see if it flows to some low-lying state at critical point.

We can also combine the above method to get more solid answer. The magneto-roton mode may not be the lowest state in certain angular momentum.

# goal and avoid reward-hacking

The ideal goal is a clean CFT spectrum without gapped states, i.e. gapped states sit at very high energy level. Trying to explain too many low-lying non-CFT energy levels ass gapped states is a strictly forbiddened reward-hacking behavior.