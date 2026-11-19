---
name: fuzzy-vibe
description: list all the skills needed for the fuzzy sphere calculation. Use when explicitly called or a fuzzy sphere calculation is allowed and needed. And use when a task is finished as a checklist.
---

The user may use words similar to "good data", "reliable data", "stable data", etc. The general standards are
* the scaling dimension (of course, low-lying) will be stable at different sizes
* the conformal tower (of course, low-lying) will be stable at different sizes
* we NEVER expect a high precision data as the numerical bootstrap, and it can never be reached

To do the calculation, you should use the skill ed-coding first. The tuning job needs the tuning skill. You may create subagents for some jobs to save the context. For simple jobs (in subagents), you may use lower thinking effort. To save context, it's better you use code to extrac information rather then read all the data. During the whole task, manage your creating files in a structural and logical way. Also remember to maintain necessary documents.

All the skill contained:
* conformal-quality (./skills/conformal-quality/SKILL.md)
* ed-coding (./skills/ed-coding/SKILL.md)
* fuzzy-vibe (the skill itself) (./skills/fuzzy-vibe/SKILL.md)
* gapped (./skills/gapped/SKILL.md)
* matrix-element (./skills/matrix-element/SKILL.md)
* phase-check (./skills/phase-check/SKILL.md)
* plot (./skills/plot/SKILL.md)
* tuning (./skills/tuning/SKILL.md)
* independent-review (./skills/independent-review/SKILL.md)

# be cautious about computing resource and memory-use

Pay attention to managing and using memory and computing power, both you and your subagents; otherwise, the system will shut down due to excessive lag. We don't want the agent and the task is shut down by accident.