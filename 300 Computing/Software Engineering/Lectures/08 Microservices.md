---
course: "[[300 Computing/Software Engineering/COMP3500 - Software Engineering|Software Engineering]]"
type: lecture
date: 2025-03-31
week: 8
session: 1
instructor: 
tags:
  - lecture
  - software-engineering
  - microservices
  - architecture
status: in-progress
---

# Week 08 - Microservices

> [!info] Lecture Details
> **Course:** [[300 Computing/Software Engineering/COMP3500 - Software Engineering|Software Engineering]]
> **Type:** Lecture
> **Date:** Monday, 31 March 2025
> **Week:** 8
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Coverage of microservices architecture including comparison with monolithic and service-oriented architectures, microservices characteristics, benefits and challenges, microservice design examples, and RESTful services.

---

## Key Concepts

### 1. Monolithic vs Service-Oriented

- **Monolithic Architecture:** Single, unified codebase handling all aspects of an application; often less scalable and harder to modify without system-wide impact.
- **Service-Orientated Architecture (SOA):** Divides functionality into services with specific tasks; emphasises reusability and integration but can become complex.
- **Microservices**: An evolved SOA where services are smaller, independently deployable, and focused on single functionalities, enhancing scalability and flexibility.

### 2. Microservices

- **Characteristics**
  - **Single Responsibility:** Each microservice handles one business function.
  - **Independence:** Can be developed, deployed, and scaled independently.
  - **Data Management:** Each service often manages its own data to avoid cross-service dependencies.
- **Benefits**:
  - **Scalability:** Only needed services scale, optimising resource use.
  - **Resilience:** Faults are isolated to individual services.
  - **Faster Development Cycles:** Teams can work on separate services concurrently
- **Challenges**:
  - Complexity in deployment, managing distributed data, and inter-service communication.

### 3. Microservice Design Example

- Example: Authentication System with microservices for UID management, password management, user info management, and authentication.
- Each service performs specific tasks (e.g., UID service only manages user IDs) contributing to overall modularity and ease of maintenance.

### 4. RESTful Services

- Definition: REST (Representational State Transfer) enables stateless communication over HTTP, commonly used in microservices.
- **Principles**:
  - **Statelessness:** Each request from client to server must contain all information to understand and process the request.
  - **Uniform Interface:** Use standard HTTP verbs (GET, POST, PUT, DELETE) for CRUD operations.
  - **Resource Identification:** Resources are addressable via URIs, making the system scalable and easy to navigate
- Advantages:
  - Simple and lightweight, fitting well with microservices.
  - Enables integration with web-based applications and mobile devices effectively.

---

## Notes

---

## Examples

> [!example] Monolithic vs Microservices
> **Monolithic:** Single codebase handling all functionality (harder to scale and modify)
> 
> **Microservices:** Multiple small services, each handling one business function (easier to scale and modify independently)

> [!example] Authentication System Microservices
> - UID management service
> - Password management service
> - User info management service
> - Authentication service

> [!example] RESTful Principles
> - **Stateless:** Each request contains all needed information
> - **Uniform Interface:** Standard HTTP verbs (GET, POST, PUT, DELETE)
> - **Resource Identification:** Resources addressable via URIs

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Monolithic Architecture | Single, unified codebase handling all aspects of an application |
| Service-Oriented Architecture (SOA) | Architecture dividing functionality into services with specific tasks |
| Microservices | Evolved SOA with smaller, independently deployable services focused on single functionalities |
| Single Responsibility | Each microservice handles one business function |
| REST | Representational State Transfer - stateless communication over HTTP |
| Statelessness | Each request contains all information needed to process it |
| Uniform Interface | Use of standard HTTP verbs for CRUD operations |
| Resource Identification | Resources addressable via URIs |

---

## Questions & Discussion

- [ ] What are the differences between monolithic, SOA, and microservices architectures?
- [ ] What are the characteristics of microservices?
- [ ] What are the benefits and challenges of microservices?
- [ ] How do RESTful services work with microservices?
- [ ] What are the principles of REST?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand different architecture patterns
- [ ] Learn about microservices design principles
- [ ] Understand RESTful services

---

## Related Notes

- [[300 Computing/Software Engineering/COMP3500 - Software Engineering|Course Summary]]
- [[300 Computing/Software Engineering/Lectures/07 DevOps|Week 07 - DevOps]]
- [[300 Computing/Software Engineering/Lectures/10 Architecture|Week 10 - Architecture]]

---

## References

- Lecture materials
