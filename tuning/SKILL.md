---
name: tuning
description: tune parameters and interaction, test the quality of the candidate critical point. Use when search for the critical point.
---

# human workflow

**This is an example for your reference, about how humans search for the critical point.**

We divide the process into three parts, the relevant parameters, the irrelevant interactions, and the critical point with no transition. To save context and maintain a stable agent's memory, you should create a new subagent as an independent reviewer to review the result of tuning and give advice to next step, see **skills/indepdendent-review/SKILL.md**. If you need visulization, read **skills/plot/SKILL.md**.


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

A more fundamental but not necessarily useful improvent is to add a new irrelevant interaction. The new interaction should respect the symmetry. There is no silver bullet to test whether it's irrelevant rigorously. We make clear the trigger to the transition and treat other interactions as irrelevant. But they may accidentally become relevant.

There is no good method to find such irrelevant interactions in general. The philosophy is to think of the terms involving in the process of phase transition. But other terms like intra-layer pseudo-potential may also help, while it generally will not contribute the transition. We come up with a list of them. Then we try some and tune to see the result. We try from simple to complicated one and one term to more terms. And all in all, the simpler the better (if the conformal quality is good enough).

## critical point with no transition

For some special cases, such as super symmetric CFT, it may not serve as a transition point.

In such cases, we should just run the optimization problem as mentioned in **irrelevant interactions**. We should optimize $\delta(a_0,\vec{a})$. Adding additional irrelevant interactions is still applicable.

## human workflow in detail

Normally, we start from a basic model realizing the fixed point. We specify the basic model's irrelevant parameters and also give a list of candidate irrelevant interactions. Then we do:
* tune one irrelevant parameter/interaction and the relevant parameter to the fixed point
* test the quality of the spectrum and conformal tower
* if not good enough, we switch to tune another irrelevant parameter/interaction
* repeat from the first step
* if one-irrelevant family fails, we then try two, then three, then four... The irrelevant should be picked from the candidate list to keep a structural and logical workflow.

Moreover, we human will NOT focus on the tune part a lot. Once the tuning is over, we can immediately see the quality and determine whether to stop or to move to the next step. The microscopic model's quality of the spectrum and of the conformal tower can hardly be increased by the tuning. Proper interaction will make the problem much simpler.

You should carefully check what interaction is allowed, try not miss any allowed or include any not allowed. You should carefully check what interaction is allowed, try not miss any allowed or include any not allowed. You should carefully check what interaction is allowed, try not miss any allowed or include any not allowed.

# dependence on size and renormalization group running

It's preferred that the final model's critical point is almost the same at different sizes. Because for an ideal fixed point, there is no scale-dependence. In other words, it will remain a fixed point for different sizes. It's also a sign that we successfully tune away almost all the finite-size effect. The mentioned gap-closing or $L\Delta E$ colliding behavior is another way to state this requirement: in a colliding point, the model becomes critical at the same point for at sizes. Moreover, the size-drifting behavior can also serve as a useful criterion. In an ideal fixed point, conformal data hardly drifts. If your data drifts fast or wildely, you are far from a good fixed point.

The above paragraph states that you SHOULDN'T extrapolate the scaling dimension. The scaling dimension is ought to be STABLE and FLAT across different sizes.

Not all the physical setup is good enough to reach such a result, so the above is just a preference and an ideal goal.

# optimization advices

* The optimization problem is usually a black-box problem.
* Depending on your choice on sizes, one data point may take a long time.
* You can use some states or sizes for optimization and others for validation, which will improve the performance.
* Parallelization is a good choice, but you can also consider methods such as heuristic search and stochastic gradient descent.
* If the time cost for every shot is too big, you can choose smaller sizes or consider optimization methods for large-time-cost cases.
* This is just advices. You can choose a better way if you find one.

# phase check

After finding the critical point, you should check if the phases far from the critical point are still right. use [phase-check skill] (./skills/phase-check/SKILL.md).

# lesson of universality

Not all the data are universal. Conformal data are universal. The actual value of the critical relevant parameter and well-tuned irrelevant parameter is not. The torus parameters' values have nothing to do with that on sphere.

# to avoid reward-hacking
Be careful about unconscious reward-hacking. Several cases are known:
* use too many parameters/interactions to fit/optimization a small number of states involved in the cost function
* involving too many states in the cost function, making the conformal tower more like a result of brute force optimization rather than a true conformal structure.
* concentrate too much in order to fit the value of the known primaries. This usually makes the conformal tower bad. Physically, the right scaling dimension will emerge as long as we find good conformal towers. So at least the conformal tower is equally (and even more) important as (to) the primaries' scaling dimensions.
* cherry-picking is wrong. Some normalized energies may accidentally meet some ideal CFT values (or towers). But keeping assign the CFT states to them makes no sense. For example, in angular momentum L=1 you find that the spectrum has $\Delta=2, 3, ...$ values. You may take \Delta=3 as \partial J. But the ideal spectrum may have a $2<\Delta<3$ at L=1. Then human will make the second level as this $\Delta$ and do tuning, while you totally miss it. You should NOT be limited to this example, and this example assumes a set of CFT data, not a true data.
* over-extrapolating: you are FORBIDDENED to extrapolate data withoug theoretical explanation.

The key is to find sweet point for low lying states using simple model rather than using complicated model to fit a large number of eigen energy. At this sweet point, ideally, many conformal states and good conformal tower will emergy without entering the cost function.

In finding the critical point, a hacking case is known:
* use conformal cost function to locate the critical point rather than gap closing.

One will lose the true critical point using this strategy. This hacking-strategy can only serve as a rough search. Whether this point is critical must be tested via the gap-closing condition. The GOLDEN RULE is the gap-closing condition.