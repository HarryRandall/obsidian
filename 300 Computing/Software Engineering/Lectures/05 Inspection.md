---
course: "[[300 Computing/Software Engineering/COMP3500 - Software Engineering|Software Engineering]]"
type: lecture
date: 2025-03-10
week: 5
session: 1
instructor: 
tags:
  - lecture
  - software-engineering
  - inspection
  - code-review
status: in-progress
---

# Week 05 - Inspection

> [!info] Lecture Details
> **Course:** [[300 Computing/Software Engineering/COMP3500 - Software Engineering|Software Engineering]]
> **Type:** Lecture
> **Date:** Monday, 10 March 2025
> **Week:** 5
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Coverage of software inspection and review processes including formal inspections, reviews, quality management in Agile, modern code reviews, pair and mob programming, and best practices for running effective meetings.

---

## Key Concepts

### 1. Inspection

- Inspections identify defects in code or documents early, without executing code.
- Roles in inspections: Author (explains work), Reader (leads through code), Moderator (manages meeting), Recorder (notes issues).
- Checklists for common errors enhance efficiency (e.g., initialisation, loop termination).
- Proved to find up to 90% of bugs, but can be time consuming and is best for critical code sections.

### 2. Reviews and Inspections

- **Reviews** assess software's progress, quality, or readiness, often leading to "sign-offs".
- **Inspection Phases:** Pre-review (prep), Review meeting, Post-review (follow-ups).
- **Types of Reviews:** Code reviews, design reviews, formal qualification reviews.
- Encourages a quality culture by fostering collaboration and feedback.

### 3. Quality Management in Agile

- Agile quality is maintained through a collaborative quality culture, not rigid documentation.
- **Key practices:** "Key before check-in", "Never break the build", "Fix issues on the spot".
- Informal reviews like Scrum (sprint reviews) and Extreme Programming (pair programming).

### 4. Modern Code Reviews

- Code reviews find defects, enforce standards, and promote knowledge sharing.
- Improves readability, removes dead code, and aligns team standards.
- Reviews support transparency and shared ownership, which reduces code defensiveness.
- Style guides (e.g., Google's) help enforce consistency across codebases.

### 5. Pair and Mob Programming

- **Pair Programming:** Driver (codes) and Navigator (reviews) work together, switching roles.
- **Mob Programming:** All team members work simultaneously on the same code, increasing collaboration and quality.
- Advantages: Faster knowledge sharing, reduce bugs, and increased morale.
- Challenges: Risk mutual misunderstandings and reluctance to critique closely working partners.

### 6. Running a Meeting

- **Key rules:** Set the agenda, start and end on time, conclude with an action plan.
- **Encourage participation** by giving everyone a role and setting ground rules.
- Managing personalities and encouraging constructive input are essential for effectiveness.
- Types of meetings (e.g., brainstorming, decision-making) require different best practice.

---

## Notes

---

## Examples

> [!example] Inspection Roles
> - **Author:** Explains their work
> - **Reader:** Leads through the code
> - **Moderator:** Manages the meeting
> - **Recorder:** Notes issues found

> [!example] Pair Programming
> Two developers work together: one codes (Driver) while the other reviews and thinks ahead (Navigator), then they switch roles.

> [!example] Agile Quality Practices
> - "Key before check-in" - Review code before committing
> - "Never break the build" - Ensure code compiles and tests pass
> - "Fix issues on the spot" - Address problems immediately

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Inspection | Process of identifying defects in code or documents early, without executing code |
| Review | Assessment of software's progress, quality, or readiness |
| Pre-review | Preparation phase before the review meeting |
| Post-review | Follow-up phase after the review meeting |
| Pair Programming | Two developers work together: Driver codes, Navigator reviews |
| Mob Programming | All team members work simultaneously on the same code |
| Code Review | Process of examining code to find defects, enforce standards, and share knowledge |
| Style Guide | Document defining coding standards and conventions |

---

## Questions & Discussion

- [ ] What are the different roles in a formal inspection?
- [ ] How do inspections differ from reviews?
- [ ] What are the key practices for quality management in Agile?
- [ ] What are the advantages and challenges of pair programming?
- [ ] How do you run an effective meeting?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand inspection and review processes
- [ ] Learn about pair and mob programming
- [ ] Practice code review techniques

---

## Related Notes

- [[300 Computing/Software Engineering/COMP3500 - Software Engineering|Course Summary]]
- [[300 Computing/Software Engineering/Lectures/01-02 Agile|Week 01-02 - Agile]]
- [[300 Computing/Software Engineering/Lectures/04 Metrics|Week 04 - Metrics]]

---

## References

- Lecture materials
