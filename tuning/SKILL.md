---
name: tuning
description: tune parameters and interaction, test the quality of the candidate critical point. Use when search for the critical point.
---

# human workflow

**This is an example for your reference, about how humans search for the critical point.**

We divide the process into three parts, the relevant parameters, the irrelevant interactions, and the critical point with no transition. If you need visulization, read **skills/plot/SKILL.md**.


## relevant parameters

The relevant parameters are those driving the phase transition. In the language of CFT, they are relevant operators. For multiple relevant parameters, the strategy is very similar to a single one. So we will only talk about a single one in this part. The strategy depends on if there is any local order parameters:

### no local order parameter

This is quite normal for topological transitions or some transitions beyond Landau-Ginzburg criterion. Other cases may also lack such order parameters.

For a rough search, we can try quantities signifying transitions such as particle number of one certain layer. But as it's not the order parameter, it will be very rough. The best we can use near the critical point is the gap: $\Delta E=E-E_0$, where $E_0$ is the ground state energy. Due to the scaling behavior, we have $\Delta E=\alpha \Delta/L+o(L^{-1})$, where $\Delta$ is the scaling dimension (due to state-operator correspondence, for every state there is a scaling dimension). $\alpha$ is a universal constant independent of sizes. So we can test the quantity $\Delta \tilde{E}=L\Delta E$ at different sizes. If the finite size is small enough, we can see $\Delta \tilde{E}$ of different sizes meet the same value at the critical point for every CFT energy level. A more exact check is by fitting $\Delta E$ versus $1/L$ to the first order (i.e. $\Delta E=a+b/L$ fitting). At the critical point, $a=0$. More commonly, we can only see such phenomena in low-lying states. But we will still conclude it as the critical point.

### with a local order parameter

This is quite normal for DQCP and Landau symmetry breaking transitions. Other cases should be checked carefully.

The test for gap is still usable and still a golden standard. Near the critical point, the scaling behavior of the order parameter can be calculated using the scaling dimension (if known). Then we can multiply a factor to remove the size-dependence. The point where the order parmeters of different sizes collapse is the critical point. Sometimes we use it as a cross-check. If we already know the scaling dimension of high accuracy (such as by numerical bootstrap), we expect a good critical point by the collapse.

For advanced techniques accelerating the process of scanning the phase diagram, see **/references/2609.11675v1.pdf**.

## irrelevant interactions

The above only talks about finding a critical point. The irrelevant interactions, in the CFT context known as irrelevant operators, can lower the finite size effects and improve the quality of the conformal data.

If the time cost is applicable, for every chosen set of irrelevant interactions, we should repeat the **relevent parameters** process to get the conformal quality. If not, we just extract the conformal quality for every data point (not necessarily every size). To define and test the quality, you should use the [conformal-quality skill] (./skills/conformal-quality/SKILL.md).

After getting the conformal quality as a cost function $\delta$, we can treat it as a optimization problem. We define $a_0$ as the relevant parameters and $\vec{a}$ as the irrelevant ones. If we have done the **relevant parmeters** process, the optimization problem is: given $\vec{a}$, we scan $a_0$ to get $\delta(\vec{a})$, then we optimize $\delta(\vec{a})$ to get $\vec{a}$. If we haven't, the problem is to optimize $\delta(a_0,\vec{a})$. It's better if we check $(a_0,\vec{a})$ is a true critical point.

A more fundamental but not necessarily useful improvent is to add a new irrelevant interaction. The new interaction should respect the symmetry. There is no silver bullet to test whether it's irrelevant rigorously. We make clear the trigger to the transition and treat other interactions as irrelevant. But they may accidentally become relevant. And all in all, the simpler the better (if the conformal quality is good enough).

## critical point with no transition

For some special cases, such as super symmetric CFT, it may not serve as a transition point.

In such cases, we should just run the optimization problem as mentioned in **irrelevant interactions**. We should optimize $\delta(a_0,\vec{a})$. Adding additional irrelevant interactions is still applicable.



# optimization advices

* The optimization problem is usually a black-box problem.
* Depending on your choice on sizes, one data point may take a long time.
* You can use some states or sizes for optimization and others for validation, which will improve the performance.
* Parallelization is a good choice, but you can also consider methods such as heuristic search and stochastic gradient descent.
* If the time cost for every shot is too big, you can choose smaller sizes or consider optimization methods for large-time-cost cases.
* This is just advices. You can choose a better way if you find one.

# phase check

After finding the critical point, you should check if the phases far from the critical point are still right. use [phase-check skill] (./skills/phase-check/SKILL.md).

# to avoid reward-hacking
Be careful about unconscious reward-hacking. Several cases are known:

* use too many parameters/interactions to fit/optimization a small number of states involved in the cost function
* involving too many states in the cost function, making the conformal tower more like a result of brute force optimization rather than a true conformal structure.

The key is to find sweet point for low lying states using simple model rather than using complicated model to fit a large number of eigen energy. At this sweet point, ideally, many conformal states and good conformal tower will emergy without entering the cost function.