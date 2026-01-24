---
course: "[[300 Computing/Software Engineering/COMP3500 - Software Engineering|Software Engineering]]"
type: lecture
date: 2025-04-14
week: 10
session: 1
instructor: 
tags:
  - lecture
  - software-engineering
  - architecture
  - system-design
status: in-progress
---

# Week 10 - Architecture

> [!info] Lecture Details
> **Course:** [[300 Computing/Software Engineering/COMP3500 - Software Engineering|Software Engineering]]
> **Type:** Lecture
> **Date:** Monday, 14 April 2025
> **Week:** 10
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Coverage of software architecture including architecture fundamentals, security in architecture, architectural complexity, design guidelines, cross-cutting concerns, and distribution and client-server architecture.

---

## Key Concepts

### 1. Architecture

- Architecture is the organisation of a software system, influencing its performance, security, and maintainability.
- **Components and Interfaces**: Key to modularity; each component should have a defined function.
- **Principles**: Abstraction, decomposition, and separation of concerns help manage complexity.
- **Goal**: Create a reliable, secure, and efficient product by choosing suitable technology and structuring it well.

### 2. Security in Architecture

- **Centralised vs. Distributed**: Centralised security is easier to manage but risks complete data loss if breached; distributed security isolates risks.
- **Layered Security**: Multiple layers (e.g., authentication, encryption) protect against various attack vectors.
- Trade-off: Security often impacts usability, as more security layers can slow down user access and interaction.

### 3. Architectural Complexity

- Complexity arises from numerous interconnected components.
- To reduce complexity:
  - **Localise Dependencies**: Keep related components within the same module.
  - **Reduce Shared Dependencies**: Minimise shared components to simplify maintenance.
- Excessive complexity can lead to errors, increased maintenance, and vulnerability risks.

### 4. Design Guidelines

- **Separation of Concerns**: Ensure each component addresses a specific concern, avoiding duplication.
- **Stable Interfaces**: Design interfaces that are stable over time to prevent frequent changes.
- **Layered Architecture**: Components interact within layers, avoiding cross-layer dependencies for clarity and efficiency.

### 5. Cross-Cutting Concerns

- **Security, Performance, Reliability** are cross-cutting concerns, impacting all layers and components.
- Addressing these concerns early can prevent issues across the entire system, as modifications later can be challenging.

### 6. Distribution and Client-Server Architecture

- **Client-Server Model**: Distributes tasks between client (user interface) and server (business logic, data).
- **Multi-Tier Architecture**: Additional layers (e.g., application servers) improve scalability and reliability.
- **Communication Protocols**: Typically HTTP, with data represented in XML or JSON for standardisation and ease.

---

## Notes

---

## Examples

> [!example] Layered Security
> Multiple security layers: authentication, authorization, encryption, network security, etc.

> [!example] Separation of Concerns
> Each component handles one specific concern (e.g., UI component only handles user interface, not business logic)

> [!example] Client-Server Architecture
> Client handles user interface, server handles business logic and data storage

> [!example] Multi-Tier Architecture
> Additional layers like application servers between client and database improve scalability

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Architecture | Organisation of a software system influencing performance, security, and maintainability |
| Component | Modular part of a system with a defined function |
| Interface | Contract defining how components interact |
| Abstraction | Hiding implementation details to simplify complexity |
| Separation of Concerns | Each component addresses a specific concern |
| Layered Architecture | Architecture where components interact within layers |
| Cross-Cutting Concerns | Concerns (security, performance, reliability) that impact all layers |
| Client-Server Model | Architecture distributing tasks between client and server |
| Multi-Tier Architecture | Architecture with additional layers (e.g., application servers) |
| Centralised Security | Security managed in one location (easier to manage but higher risk) |
| Distributed Security | Security distributed across system (isolates risks) |

---

## Questions & Discussion

- [ ] What is software architecture and why is it important?
- [ ] How do you reduce architectural complexity?
- [ ] What are the design guidelines for good architecture?
- [ ] What are cross-cutting concerns and how do you address them?
- [ ] What are the differences between client-server and multi-tier architectures?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand architecture principles
- [ ] Learn about security in architecture
- [ ] Understand different architectural patterns

---

## Related Notes

- [[300 Computing/Software Engineering/COMP3500 - Software Engineering|Course Summary]]
- [[300 Computing/Software Engineering/Lectures/08 Microservices|Week 08 - Microservices]]
- [[300 Computing/Software Engineering/Lectures/09 Testing|Week 09 - Testing]]

---

## References

- Lecture materials
