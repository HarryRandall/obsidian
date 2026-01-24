---
course: "[[200 Finance/Derivatives/FINM3006 - Derivatives|Derivatives]]"
type: workshop
date: 2025-03-11
week: 4
session: 1
instructor: 
tags:
  - workshop
  - derivatives
status: in-progress
---

# Week 04 - Workshop 1

> [!info] Workshop Details
> **Course:** [[200 Finance/Derivatives/FINM3006 - Derivatives|Derivatives]]
> **Type:** Workshop
> **Date:** Tuesday, 11 March 2025
> **Week:** 4
> **Workshop #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Workshop covering option bounds and arbitrage opportunities.

---

## Key Concepts

### 1. Option Bounds

### 2. Arbitrage Opportunities

---

## Notes

![[Workshop 4.pdf]]

---

## Examples

> [!example] Option Lower Bound Example
> - Strike price $X$ = $\$18$
> - Expiration date in one year, $T$ = $1$
> - Current price $c$ = $\$3$
> - Stock price today $S_0$ = $\$20$
> - $R_f$ = $10\%$ p.a. continuously compounded
> - Calculate the theoretical minimum price for the option
> 
> Given $S_0 = 20$, $X = 18$, $r = 10\%$, $T=1$, $c=3$, the lower bound of the European call option is:
> $$c_{min} = \max(S_0-Xe^{-rT}, 0) = 20 - 18e^{-10\% \times 1} = \$3.71$$
> - The current option price ($c = \$3$) is smaller than the lower bound
> - Therefore arbitrage opportunity exists
> - "Buy cheap and short expensive"

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Option Lower Bound | Minimum theoretical price for an option |
| Arbitrage Opportunity | Risk-free profit from price differences |
| European Call Lower Bound | $c \geq \max(S_0 - Xe^{-rT}, 0)$ |

---

## Questions & Discussion

- [ ] What are the lower bounds for options?
- [ ] How do you identify arbitrage opportunities?
- [ ] How do you exploit arbitrage opportunities?

---

## Action Items

- [ ] Review workshop recording
- [ ] Complete practice questions
- [ ] Understand option bounds
- [ ] Practice identifying arbitrage opportunities

---

## Related Notes

- [[200 Finance/Derivatives/FINM3006 - Derivatives|Course Summary]]
- [[200 Finance/Derivatives/Lectures/Week 04 - Lecture 1|Week 04 - Lecture 1]]

---

## References

- ![[Workshop 4.pdf]]
