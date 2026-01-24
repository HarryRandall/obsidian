---
course: "[[300 Computing/Software Engineering/COMP3500 - Software Engineering|Software Engineering]]"
type: lecture
date: 2025-04-07
week: 9
session: 1
instructor: 
tags:
  - lecture
  - software-engineering
  - testing
  - test-automation
status: in-progress
---

# Week 09 - Testing

> [!info] Lecture Details
> **Course:** [[300 Computing/Software Engineering/COMP3500 - Software Engineering|Software Engineering]]
> **Type:** Lecture
> **Date:** Monday, 7 April 2025
> **Week:** 9
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Comprehensive coverage of software testing including types of testing (functional, performance, security, regression, boundary-value), test automation, limitations of testing, fuzzing, performance testing, chaos engineering, and A/B testing.

---

## Key Concepts

### 1. Types of Testing

- **Functional Testing:** Validates software functionality against requirements (e.g., unit, feature and system testing).
- **Performance Testing:** Checks responsiveness, stability, and scalability under load.
- **Security Testing:** Identifies vulnerabilities, ensuring data protection.
- **Regression Testing:** Confirms that recent changes haven't introduced new bugs.
- **Boundary-Value Testing:** Tests edge cases to catch off-by-one and other boundary-related errors.

### 2. Test Automation

- Automates repetitive testing, ensuring consistency and saving time, especially in regression testing.
- **Unit Tests:** Fast, cover individual functions or methods.
- **Integration Tests:** Ensure multiple components interact correctly.
- **System Tests:** Full end-to-end tests simulating real user interactions.
- **Continuous Integration (CI):** Automatically runs tests with each code change.

### 3. Limitations of Testing

- **Coverage:** Achieving 100% coverage doesn't ensure complete reliability.
- **Oracle Problem:** Difficult to define expected outcomes for all possible scenarios.
- **Cost and Time:** Testing large systems thoroughly can be resource-intensive.
- Testing can't prove the absence of bugs, only detect their presence.

### 4. Fuzzing

- **Fuzz Testing:** Inputs random data to detect unexpected behaviours and crashes.
- Common for security testing, especially in low-level languages prone to memory issues.
- **Strengths:** Simple and effective for finding edge-case bugs.
- **Limitations:** May miss subtle bugs and requires handling of nonsensical inputs.

### 5. Performance Testing

- Evaluates the system's speed, resource usage, and scalability.
- **Stress Testing:** Puts system under extreme load to find breaking points.
- **Soak Testing:** Tests over extended periods to detect issues like memory leaks. 
- Tools: JMeter, profiling tools, and real-time monitoring for identifying bottlenecks.

### 6. Chaos Engineering

- **Chaos Testing:** Deliberately induces failure to test system resilience (e.g., Netflix's Chaos Monkey).
- **Goals:** Expose weak points, validate redundancy, and prepare for disaster recovery.
- Tests involved simulated network failures, server crashes, and other disruptions.

### 7. A/B Testing

- Compares two versions (A and B) of a feature to measure user response.
- Used for UX improvements and feature validation by deploying different versions to subsets of users.
- Metrics from A/B tests can inform product decisions based on real user interactions.

---

## Notes

---

## Examples

> [!example] Types of Testing
> - **Functional:** Unit tests, feature tests, system tests
> - **Performance:** Stress testing, load testing
> - **Security:** Vulnerability scanning, penetration testing
> - **Regression:** Ensuring new changes don't break existing functionality
> - **Boundary-Value:** Testing edge cases (e.g., off-by-one errors)

> [!example] Test Automation Levels
> - **Unit Tests:** Fast, test individual functions
> - **Integration Tests:** Test component interactions
> - **System Tests:** End-to-end user scenarios

> [!example] Chaos Engineering
> Netflix's Chaos Monkey deliberately causes failures (server crashes, network failures) to test system resilience and recovery.

> [!example] A/B Testing
> Deploying two versions of a feature to different user groups to measure which performs better.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Functional Testing | Validates software functionality against requirements |
| Performance Testing | Checks responsiveness, stability, and scalability under load |
| Security Testing | Identifies vulnerabilities and ensures data protection |
| Regression Testing | Confirms recent changes haven't introduced new bugs |
| Boundary-Value Testing | Tests edge cases to catch boundary-related errors |
| Unit Test | Fast test covering individual functions or methods |
| Integration Test | Test ensuring multiple components interact correctly |
| System Test | Full end-to-end test simulating real user interactions |
| Fuzz Testing | Inputs random data to detect unexpected behaviours and crashes |
| Stress Testing | Puts system under extreme load to find breaking points |
| Soak Testing | Tests over extended periods to detect issues like memory leaks |
| Chaos Engineering | Deliberately induces failure to test system resilience |
| A/B Testing | Compares two versions of a feature to measure user response |
| Oracle Problem | Difficulty defining expected outcomes for all scenarios |

---

## Questions & Discussion

- [ ] What are the different types of testing and when is each used?
- [ ] What are the benefits and limitations of test automation?
- [ ] What is fuzzing and when is it useful?
- [ ] How does performance testing help ensure system quality?
- [ ] What is chaos engineering and why is it important?
- [ ] How does A/B testing help improve products?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand different testing types
- [ ] Learn about test automation strategies
- [ ] Understand performance testing and chaos engineering

---

## Related Notes

- [[300 Computing/Software Engineering/COMP3500 - Software Engineering|Course Summary]]
- [[300 Computing/Software Engineering/Lectures/01-02 Agile|Week 01-02 - Agile]]
- [[300 Computing/Software Engineering/Lectures/07 DevOps|Week 07 - DevOps]]

---

## References

- Lecture materials
