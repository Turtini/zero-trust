# Common Zero Trust Anti-Patterns

## Purpose

This document describes recurring anti-patterns observed in Zero Trust initiatives across regulated environments.

These are not theoretical mistakes. They are patterns that consistently slow progress, introduce hidden risk, or stall organizations at **Initial** or **Advanced** maturity levels under the CISA Zero Trust Maturity Model (ZTMM).

Identifying and avoiding these early materially improves outcomes.

---

## Anti-Pattern 1: Zero Trust as a Compliance Checkbox

### Description
Zero Trust is framed as a documentation or audit exercise rather than an operating model.

### Symptoms
- Heavy focus on policy artifacts
- Minimal change to system behavior
- Manual enforcement remains the norm

### Why It Fails
Compliance without enforcement does not change risk posture.

Zero Trust requires systems that **continuously enforce intent**, not static attestations.

---

## Anti-Pattern 2: Tool Acquisition Before Architecture

### Description
Products are purchased before defining how they will be operated together.

### Symptoms
- Disconnected security tools
- Overlapping capabilities
- Unclear ownership boundaries

### Why It Fails
Zero Trust maturity depends more on **integration and operating discipline** than on individual tools.

Architecture must precede acquisition.

---

## Anti-Pattern 3: Treating Identity as an Afterthought

### Description
Identity integration is deferred until after platform deployment.

### Symptoms
- Local accounts proliferate
- RBAC models drift from organizational structure
- Emergency access becomes permanent

### Why It Fails
Identity is the control plane for Zero Trust.

Retroactively aligning identity is costly, disruptive, and often incomplete.

---

## Anti-Pattern 4: Manual Exceptions Become Permanent

### Description
Temporary workarounds are introduced to meet delivery timelines.

### Symptoms
- “Just for now” permissions
- Untracked firewall exceptions
- Hard-coded credentials

### Why It Fails
Unmanaged exceptions accumulate faster than they are removed.

Zero Trust architectures degrade quietly when drift is not explicit and reversible.

---

## Anti-Pattern 5: Platform Siloing by Application

### Description
Platforms are deployed per application or vendor rather than as shared infrastructure.

### Symptoms
- Duplicate clusters
- Inconsistent security posture
- Fragmented operational practices

### Why It Fails
Zero Trust benefits emerge through **standardization and reuse**.

Siloed platforms prevent consistent enforcement and visibility.

---

## Anti-Pattern 6: Automation as Optional Convenience

### Description
Automation is introduced but not treated as authoritative.

### Symptoms
- Manual changes override automation
- Configuration drift is tolerated
- Automation lacks enforcement authority

### Why It Fails
Zero Trust cannot scale with human enforcement.

Automation must be trusted to **detect and correct drift**, not just accelerate delivery.

---

## Anti-Pattern 7: Logging Without Context

### Description
Logs are collected but lack identity, workload, or policy context.

### Symptoms
- Logs are difficult to interpret
- Security teams cannot correlate events
- Audit findings require manual reconstruction

### Why It Fails
Visibility without context does not support trust decisions.

Logs must explain **who did what, where, and why**.

---

## Anti-Pattern 8: Day-2 Operations Are Under-Resourced

### Description
Operational ownership is unclear or deprioritized after go-live.

### Symptoms
- Platform teams are thinly staffed
- Knowledge lives with external contractors
- Validation habits erode over time

### Why It Fails
Zero Trust is sustained through continuous operation.

Under-resourced Day-2 teams cannot maintain enforcement integrity.

---

## Anti-Pattern 9: Training Detached From Reality

### Description
Training content does not reflect production constraints.

### Symptoms
- Labs ignore STIG requirements
- Examples differ from deployed architecture
- Operators lack confidence in real environments

### Why It Fails
Operators trained in abstraction struggle under real constraints.

Training must mirror the environment it prepares people to run.

---

## Anti-Pattern 10: Chasing “Optimal” Without Foundations

### Description
Organizations attempt to implement advanced controls before establishing baselines.

### Symptoms
- Complex architectures with fragile foundations
- Inconsistent enforcement
- Frequent rollback of advanced features

### Why It Fails
Zero Trust maturity is incremental.

Skipping foundational controls introduces instability rather than progress.

---

## Summary

Organizations that stall in Zero Trust maturity usually do so because of **operational patterns**, not missing technology.

Avoiding these anti-patterns enables:
- Sustained enforcement
- Clear ownership
- Predictable progress across pillars

Zero Trust succeeds when architecture, automation, and operations reinforce each other.

---

## Related Documents

- `mappings/cisa-pillars.md`
- `notes/implementation-considerations.md`
- `zero-trust-cisa-mapping.md`
- https://turtini.com/approach

