---
name: independent-review
description: hints for the independent reviewer. Use when the independent reviewer needs to review the result.
---

# Standards for Good Data

* the cost function vanishes well, as least sits in a minimum.
* the energy-momentum tensor and the current operator (if exists) can be clearly seen, with good scaling dimension.
* the spectrum is sparse in low-lying states, for CFT states are often sparse.
* the spectrum is clean, that is, few low-lying states are non-conformal. For example, for unitary CFT, below the exactly fixed scaling dimension, such as the energy-momentum tensor and the current operator, there should be very few non-conformal states.
* the conformal tower structure is clean. You can clearly see the conformal tower, rather than carefully picking a level (from dense spectrum or from many un-explained levels) that coincidentally fits the desired conformal descendant scaling dimension.
* the low lying $L=0,1,2$ primary states along with their low lyting descandants are the most important. Primaries of larger scaling dimension or higher descandants of any primaries are less important due to numerical issues. Moreover, only low lying states (maybe with some descandants) shall enter the cost function. Primaries of larger scaling dimension or higher descandants of any primaries should not enter the cost function, which is to avoid over-fitting.
* the quality of the OPE coefficients doesn't matter at all unless mentioned.