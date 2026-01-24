---
course: "[[300 Computing/Software Engineering/COMP3500 - Software Engineering|Software Engineering]]"
type: lecture
date: 2025-03-24
week: 7
session: 1
instructor: 
tags:
  - lecture
  - software-engineering
  - devops
  - ci-cd
status: in-progress
---

# Week 07 - DevOps

> [!info] Lecture Details
> **Course:** [[300 Computing/Software Engineering/COMP3500 - Software Engineering|Software Engineering]]
> **Type:** Lecture
> **Date:** Monday, 24 March 2025
> **Week:** 7
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Introduction to DevOps covering its principles and benefits, Continuous Integration (CI), Continuous Deployment (CD), Infrastructure as Code (IaC), and monitoring and observability practices.

---

## Key Concepts

### 1. What Is DevOps

- **DevOps** unifies development and operations to enhance software delivery speed and quality. 
- Benefits:
  - **Increased Velocity:** Faster product releases.
  - **Improved Quality:** Fewer bugs, more stability.
- Core principles: Automation of all repetitive tasks and shared responsibility across teams.

### 2. CI: Continuous Integration

- Continuous Integration (CI): Code changes are frequently integrated, built, and tested.
- Key Practices:
  - Commit often and test with each change to catch bugs early.
  - Avoid "breaking the build" by testing locally before pushing.
- Benefits: Faster bug detection, continuous feedback, and stable builds.

### 3. CD: Continuous Deployment

- Continuous Deployment (CD): Automatic release of validated builds to production.
- Benefits:
  - **Reduced risk** with smaller, frequent releases.
  - Faster **customer feedback** and ability to run A/B tests.
- Canary and Blue-Green Deployments: Staged releases to minimise user impact from potential issues.

### 4. Infrastructure as Code

- **Infrastructure as Code (IaC):** Manages and provisions infrastructure through code, ensuring consistency.
- Benefits:
  - **Visibility:** Configurations are documented and trackable.
  - **Reliability:** Reduces manual errors and enables environment reproducibility.
- Tools: Puppet, Ansible, and Terraform for automated, consistent deployment across servers.

### 5. Monitoring

- **Monitoring and Observability:** Collects real-time data to track system performance and detect issues.
- Dashboards provide insights into:
  - **Normal vs abnormal behaviour** to enable faster problem-solving.
  - Correlating metrics with changes to identify cause and effect.
- Essential for understanding system health and preventing downtime.

---

## Notes

---

## Examples

> [!example] Continuous Integration
> Developers commit code frequently, and each commit triggers automated builds and tests to catch bugs early.

> [!example] Canary Deployment
> New version is deployed to a small subset of users first to test before full rollout.

> [!example] Infrastructure as Code
> Server configurations are defined in code (e.g., Terraform) rather than manually configured, ensuring consistency and reproducibility.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| DevOps | Unification of development and operations to enhance software delivery speed and quality |
| Continuous Integration (CI) | Practice of frequently integrating code changes, building, and testing |
| Continuous Deployment (CD) | Automatic release of validated builds to production |
| Infrastructure as Code (IaC) | Managing and provisioning infrastructure through code |
| Canary Deployment | Staged release where new version is deployed to a small subset first |
| Blue-Green Deployment | Deployment strategy using two identical production environments |
| Monitoring | Collecting real-time data to track system performance and detect issues |
| Observability | Ability to understand system state from its outputs |

---

## Questions & Discussion

- [ ] What are the core principles of DevOps?
- [ ] How does Continuous Integration improve software quality?
- [ ] What are the benefits of Continuous Deployment?
- [ ] What is Infrastructure as Code and why is it important?
- [ ] How does monitoring help maintain system health?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand CI/CD practices
- [ ] Learn about Infrastructure as Code tools
- [ ] Understand monitoring and observability

---

## Related Notes

- [[300 Computing/Software Engineering/COMP3500 - Software Engineering|Course Summary]]
- [[300 Computing/Software Engineering/Lectures/01-02 Agile|Week 01-02 - Agile]]
- [[300 Computing/Software Engineering/Lectures/06 Team Culture|Week 06 - Team Culture]]

---

## References

- Lecture materials
