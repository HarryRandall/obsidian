---
course: "[[300 Computing/Software Engineering/COMP3500 - Software Engineering|Software Engineering]]"
type: lecture
date: 2025-03-03
week: 4
session: 1
instructor: 
tags:
  - lecture
  - software-engineering
  - metrics
  - measurement
status: in-progress
---

# Week 04 - Metrics

> [!info] Lecture Details
> **Course:** [[300 Computing/Software Engineering/COMP3500 - Software Engineering|Software Engineering]]
> **Type:** Lecture
> **Date:** Monday, 3 March 2025
> **Week:** 4
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Introduction to software metrics covering understanding large systems, the Maintainability Index, autonomous vehicle safety metrics, measurement for decision making, data understanding, metrics and incentives (Goodhart's Law), and Google's GSM framework (Goals, Signals, Metrics).

---

## Key Concepts

### 1. Understanding Large Systems

- Large systems are complex and difficult to understand.
- Approaches include consulting documentation, experts, or using experience with patterns.
- Observation and hypothesis testing are essential for understanding interactions between components.

### 2. Case Study: The Maintainability Index

- Maintainability Index scores code from 0 to 100 to indicate ease of maintenance.
- Higher scores indicate better maintainability (green, yellow, and red ratings).
- Initially developed through statistical analysis, the metric simplifies complexity using Halstead Volume, Cyclomatic Complexity, and Lines of Code.

### 3. Case Study: Autonomous Vehicle Safety

- Quality and safety are assessed using metrics such as test coverage, model accuracy, failure rates, and mileage.
- Metrics provide a quantitative basis for evaluating the performance of autonomous vehicle software.

### 4. Measurement for Decision Making

- Measurement assigns numbers based on models or theories to describe attributes, reducing uncertainty.
- Software quality metrics help in decision-making but must be carefully validated to ensure relevance and accuracy.

### 5. Understanding Your Data

- Effective data understanding involves verifying causation, avoiding confounding variables, and ensuring validity (construct, internal, and external).
- Measurement reliability ensures consistency and reduces uncertainty through repeated testing.

### 6. Metrics and Incentives

- Metrics can influence behaviour (Goodhart's Law), with productivity incentives potentially leading to negative effects, such as reduced intrinsic motivation, or short-term focus.
- Examples include lines of code per day and number of bugs fixed.

### 7. Goals, Signals, Metrics

- Google's GSM framework defines goals (desired outcomes), signals (indicators of achievement), and metrics (measurable proxies for signals).
- The approach helps align metrics with high-level goals, even if direct measurement is not feasible.

---

## Notes

---

## Examples

> [!example] Maintainability Index
> Code is scored from 0 to 100, with higher scores indicating better maintainability. The metric uses Halstead Volume, Cyclomatic Complexity, and Lines of Code.

> [!example] Goodhart's Law
> When metrics become targets, they cease to be good measures. For example, incentivizing lines of code per day may lead to bloated code rather than quality code.

> [!example] GSM Framework
> **Goal:** Improve code quality
> **Signal:** Fewer bugs in production
> **Metric:** Number of bugs found in testing phase

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Maintainability Index | Score from 0 to 100 indicating ease of code maintenance |
| Halstead Volume | Software complexity metric based on operators and operands |
| Cyclomatic Complexity | Measure of code complexity based on control flow |
| Goodhart's Law | When a measure becomes a target, it ceases to be a good measure |
| GSM Framework | Google's framework: Goals (desired outcomes), Signals (indicators), Metrics (measurable proxies) |
| Construct Validity | Whether a metric measures what it claims to measure |
| Internal Validity | Whether the relationship between variables is causal |
| External Validity | Whether results can be generalized to other contexts |

---

## Questions & Discussion

- [ ] How can metrics help understand large systems?
- [ ] What is the Maintainability Index and how is it calculated?
- [ ] How are metrics used in autonomous vehicle safety?
- [ ] What is Goodhart's Law and how does it affect metrics?
- [ ] What is the GSM framework and how does it help align metrics with goals?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand different types of software metrics
- [ ] Learn about Goodhart's Law and its implications
- [ ] Practice using the GSM framework

---

## Related Notes

- [[300 Computing/Software Engineering/COMP3500 - Software Engineering|Course Summary]]
- [[300 Computing/Software Engineering/Lectures/01-02 Agile|Week 01-02 - Agile]]
- [[300 Computing/Software Engineering/Lectures/03 Requirements|Week 03 - Requirements]]

---

## References

- Lecture materials
