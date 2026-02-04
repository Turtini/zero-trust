# Zero Trust in Practice  
## Mapping Red Hat OpenShift and Ansible to CISA’s Zero Trust Maturity Model

Federal agencies are no longer debating *whether* to adopt Zero Trust.  
The challenge now is how to move from **Initial** or **Advanced** maturity to **Optimal** under the CISA Zero Trust Maturity Model (ZTMM).

This repository documents how that transition can be achieved using **enterprise open source platforms** — specifically **Red Hat OpenShift** and **Ansible Automation Platform** — in regulated federal environments.

The materials here are written for architects, operators, and security practitioners responsible for designing, operating, and governing production systems.

---

## What This Repository Is

This is a **technical reference**, not a marketing site.

It provides:
- Plain-language mappings between CISA Zero Trust pillars and real platform capabilities
- Practical implementation guidance grounded in federal operational constraints
- Architecture patterns that emphasize automation, identity, and continuous verification
- Examples informed by real federal use cases

All content is intentionally readable, inspectable, and versioned.

---

## What This Repository Is Not

- Not a product pitch  
- Not a compliance checklist  
- Not a theoretical whitepaper  

This repository focuses on **how systems are actually built and operated** once software is installed.

---

## Zero Trust Pillars Covered

This repository addresses the five pillars of the CISA Zero Trust Maturity Model:

1. **Identity**  
   Identity-centric access using PIV/CAC integration, centralized identity management, and policy-driven authorization.

2. **Devices**  
   Continuous compliance through automated configuration enforcement and hardened golden images.

3. **Networks**  
   Micro-segmentation and encrypted service-to-service communication using platform-native service mesh capabilities.

4. **Applications & Workloads**  
   Treating OpenShift as a first-class enterprise platform rather than an application-specific dependency.

5. **Data**  
   Automated encryption, access logging, and integration with agency security monitoring systems.

Each section emphasizes automation, auditability, and operational sustainability.

---

## Operational Philosophy

Reaching **Optimal** Zero Trust maturity is not a tooling problem alone.

It requires:
- Automation over manual processes
- Platform consistency over bespoke deployments
- Workforce enablement over contractor dependency
- Transparency over abstraction

The patterns documented here are designed to support **Day-2 operations** — not just initial deployment.

---

## Relationship to Turtini

This repository is maintained by **Turtini LLC**, a small U.S.-based mission partner focused on successful technology implementations in regulated environments.

Turtini publishes open, public technical artifacts to:
- Support informed evaluation
- Enable peer review
- Reduce implementation risk
- Strengthen federal operator self-sufficiency

More information:
- Website: https://turtini.com  
- Technical index: https://turtini.github.io  

---

## How to Use This Repository

- Engineers: review architecture patterns and implementation guidance  
- Security teams: map controls to operational mechanisms  
- Leadership: understand what “Optimal” maturity requires beyond procurement  

Content is designed to be shared internally and referenced in planning discussions.

---

## License

This repository is published under the MIT License.  
All materials are provided as reference implementations and should be reviewed and adapted to each environment.

---

## Status

This repository is actively maintained and will evolve as:
- CISA guidance matures
- Platform capabilities change
- Federal operating models continue to shift
