# Mapping Red Hat OpenShift and Ansible to the CISA Zero Trust Maturity Model

## Purpose

This document provides a practical mapping between the **CISA Zero Trust Maturity Model (ZTMM)** and real-world implementations using **Red Hat OpenShift** and **Red Hat Ansible Automation Platform**.

It is intended for:
- Federal architects and engineers
- ISSOs and security teams
- Program and platform owners responsible for Zero Trust execution

The focus is not on theory, but on **how agencies move from Initial or Advanced maturity toward Optimal maturity through automation, identity-driven policy, and operational consistency**.

---

## Zero Trust as an Operational Model

CISA’s ZTMM makes a critical distinction:
- *Initial and Advanced* maturity stages are often tool-driven
- *Optimal* maturity is **automation-driven and continuously enforced**

Across all pillars, reaching Optimal maturity requires:
- Policy-as-code
- Identity-centric access controls
- Continuous validation and enforcement
- Reduction of manual, exception-based processes

OpenShift and Ansible provide the control plane and automation fabric required to operate Zero Trust at scale.

---

## Pillar 1: Identity

### CISA Focus
- Phishing-resistant MFA
- Centralized identity governance
- Continuous validation of users and services

### OpenShift & Ansible Implementation

- **PIV/CAC integration** with OpenShift authentication
- **Role-based access control (RBAC)** enforced consistently across clusters
- **Red Hat Identity Management (IdM)** for centralized identity lifecycle management
- **Automated policy enforcement** using Ansible to eliminate manual access drift

### Outcome
Identity becomes the security boundary — not network location — with policies enforced consistently across hybrid environments.

---

## Pillar 2: Devices

### CISA Focus
- Asset inventory
- Continuous compliance
- Elimination of unmanaged or unknown devices

### OpenShift & Ansible Implementation

- **STIG enforcement via Ansible Automation Platform**
- **RHEL Image Builder** used to create hardened “golden images”
- Automated remediation when configuration drift is detected
- Consistent baselines across on-prem, cloud, and edge environments

### Outcome
Devices start compliant and remain compliant without relying on periodic, manual audits.

---

## Pillar 3: Networks

### CISA Focus
- Micro-segmentation
- Encrypted communications
- Restricted lateral movement

### OpenShift & Ansible Implementation

- **OpenShift Service Mesh (Istio)** for mutual TLS (mTLS)
- Identity-aware network policies at the workload level
- Encryption in transit enforced by default
- Reduced blast radius through service-to-service authorization

### Outcome
Network trust is eliminated. Every request is authenticated, authorized, and encrypted.

---

## Pillar 4: Applications & Workloads

### CISA Focus
- Secure-by-default deployments
- Continuous monitoring
- Standardized governance

### OpenShift & Ansible Implementation

- OpenShift operated as a **first-class enterprise platform**, not an application-specific dependency
- Automated build, deploy, and policy enforcement pipelines
- Consistent workload governance across environments
- Security controls integrated into Day-1 and Day-2 operations

### Outcome
Applications are deployed and operated within a governed platform rather than managed as isolated exceptions.

---

## Pillar 5: Data

### CISA Focus
- Encryption at rest and in transit
- Access visibility
- Auditability

### OpenShift & Ansible Implementation

- **OpenShift Data Foundation (ODF)** with built-in encryption
- Automated storage policy enforcement
- Centralized audit logging
- Integration with agency SIEM platforms for continuous visibility

### Outcome
Data protections are enforced automatically, with access patterns visible and auditable in real time.

---

## Workforce Enablement: The Missing Pillar

While not formally listed as a ZTMM pillar, **workforce readiness** determines whether Zero Trust succeeds or stalls.

### Turtini Approach

- Hands-on RHCSA, RHCE, and OpenShift (DO180 / EX280) labs
- Federal-specific scenarios aligned with STIG and Zero Trust constraints
- Emphasis on verification habits and operational discipline
- Reduced reliance on external contractors for Day-2 operations

### Outcome
Zero Trust becomes sustainable because internal teams can operate and evolve the platform.

---

## Summary

Reaching **Optimal Zero Trust maturity** requires more than deploying tools.

It requires:
- Automation over documentation
- Platforms over point solutions
- Policy enforced continuously, not reviewed periodically

Red Hat OpenShift and Ansible provide the technical foundation.  
Turtini focuses on making that foundation **operable, auditable, and sustainable** in federal environments.

---

## Related Artifacts

- `zero-trust-cisa-mapping.md`
- `ztmm-mapping.png`
- https://turtini.com/approach
- https://turtini.github.io

