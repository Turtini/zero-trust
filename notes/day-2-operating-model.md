# Day-2 Operating Model

## Purpose

This document describes a practical Day-2 operating model for Zero Trust environments built on Red Hat OpenShift, RHEL, and Ansible.

Zero Trust maturity is not achieved at deployment. It is sustained through **repeatable operations**, **clear ownership**, and **continuous validation**.

Day-2 is where most Zero Trust initiatives succeed or quietly fail.

---

## What Day-2 Means in a Zero Trust Context

Day-2 operations encompass everything that happens **after** initial deployment:

- Configuration drift management
- Access lifecycle enforcement
- Patch and image lifecycle
- Policy validation
- Incident response and recovery
- Audit readiness

In Zero Trust, Day-2 is not “maintenance.”  
It is **active enforcement of intent**.

---

## Core Day-2 Principles

### 1. Automation Is the Source of Truth

Manual changes are permitted only when:
- They are documented
- They are temporary
- They are reconciled back into automation

If automation and reality diverge, automation must win.

---

### 2. Drift Is Expected — Silence Is Not

Drift will occur. That is normal.

What is unacceptable is:
- Drift without detection
- Drift without alerting
- Drift without correction

Drift should be:
- Visible
- Measurable
- Reversible

---

### 3. Validation Is a Habit, Not an Event

Validation activities must be:
- Scheduled
- Repeatable
- Low-friction

Examples:
- Regular access reviews
- Image compliance checks
- Policy conformance scans
- Log completeness validation

Audit readiness is an **output**, not a separate activity.

---

## Recommended Day-2 Roles

A healthy operating model separates responsibilities without fragmenting ownership.

### Platform Engineering
- Maintains OpenShift and RHEL baselines
- Owns cluster lifecycle
- Enforces platform-wide policies

### Automation Owners
- Maintain Ansible roles and pipelines
- Encode compliance and recovery logic
- Prevent configuration drift

### Security Stakeholders
- Define policy intent
- Review enforcement outcomes
- Validate audit artifacts

### Application Teams
- Operate within guardrails
- Consume platform services
- Do not own platform security controls

---

## Day-2 Failure Modes

Common failure signals include:
- “We’ll automate that later”
- Persistent emergency access
- Manual fixes during incidents
- Knowledge concentrated in contractors

These indicate an operating model that cannot scale.

---

## Success Indicators

A healthy Day-2 Zero Trust model shows:
- Reduced manual intervention over time
- Fewer audit findings per cycle
- Faster recovery with less variance
- Confidence in enforcement, not fear of change

---

## Summary

Zero Trust maturity is sustained by **operations discipline**, not tooling.

Organizations that invest early in Day-2 clarity move faster, recover better, and audit cleaner.

---

## Related Documents

- `notes/organizational-alignment.md`
- `notes/ownership-models.md`
- `notes/common-antipatterns.md`
