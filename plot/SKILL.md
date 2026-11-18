---
name: plot
description: present examples and standards for plotting data. Use when a visualization is needed or presenting final data.
---

To see examples in more detail, read **/references**.

At least four figures are needed **for final result**. For other tasks, they are conditional or just examples.
* figures showing phase transition in gap. Usually for the lowest singlet gap, $L\Delta E$ as y-axis are plotted, with x-axis being the transition parameter. Different sizes are plotted in the same figure. Data at different sizes should collide at the critical point.
* figures showing fitting result. For some good-behavior energy gap, plot $1/L-\Delta E$ figure. The raw data point and the fitting (using $\Delta E=a+b/L$) should be presented in the same figure. THe fitting line should be extrapolated to $1/L=0$. If you find some gapped states, also draw the same figure. You can put some good-behavior one with some gapped one to one figure.
* figures showing the full normlized spectrum. For different conformal families, plot one figure for each of them. Also put all the normalized energy spectrum to one figure. All figures should contain different sizes (marked by different colors) to show the (in)stability of the conformal tower. all figures must put the ideal energy level on it (the conformal tower and the predicted primary scaling dimension if possible) to show the deviation. This kind of diagram is hard to paint, you may see example code in **/references/example.jl**.
* figures showing the cost function of different irrelevant parameters. For example, a heat map for every two of the irrelevant parameters. Or a cost function versus irrelevant parameter figure if there is only one irrelevant parameter to tune.

You may also use these figures to help you tune parameters and analyzing gapped states.