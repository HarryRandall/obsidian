---
course: "[[200 Finance/Derivatives/FINM3006 - Derivatives|Derivatives]]"
type: tutorial
date: 2025-04-01
week: 7
session: 1
instructor: 
tags:
  - tutorial
  - derivatives
status: in-progress
---

# Week 07 - Tutorial 1

> [!info] Tutorial Details
> **Course:** [[200 Finance/Derivatives/FINM3006 - Derivatives|Derivatives]]
> **Type:** Tutorial
> **Date:** Tuesday, 1 April 2025
> **Week:** 7
> **Tutorial #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Tutorial covering probability calculations for option exercise and Black-Scholes model applications.

---

## Key Concepts

### 1. Probability of Option Exercise

### 2. Black-Scholes Model

---

## Notes

---

## Examples

> [!example] Question 1
> A stock price has an expected return of $16\%$ and a volatility of $35\%$. The current price is $\$38$.
> 
> 1) What is the probability that a European put option on the stock with an exercise price of $\$40$ and a maturity date in six months will be exercised?
> 
> Expected return = $16\%$
> Volatility of $35\%$.
> 
> First thing to do, find the probability distribution for the stock price in 6 months time.
> Lognormal distribution formula
> 
> $ln 38 + (0.16 - 0.35^2 / 2) \times 6 / 12, 0.35 \times \sqrt{6/12} =$
> 
> 3.678 (mean), 0.247 (deviation), probability deviation of stock price in 6 months times.
> 
> Put option to be exercised ($S_T < 40$), trying to find the probability of this.
> 
> Probability ($S_T < 40$), $ln S_T < ln 40$
> 
> $z = \frac{x-\mu^*}{sd^*}$
> 
> $Pr(z < \frac{ln(40)-3.687}{0.247})$
> 
> $Pr(z < 0.01)$
> 
> Go to Z table, standard normal distributions
> 
> $= 0.5040$ (50.4%)
> 
> 2) What is the probability that a European call option will be exercised.
> 
> Call option to be exercised ($S_T > 40$), trying to find the probability of this.
> 
> $= 1 - 0.5040 = 0.4960$ (49.6%)

> [!example] Question 2
> Consider a European option pair written on a non-dividend paying stock, matured in 3 months.
> The current stock price is $52. The strike price is $50. The risk free rate is 12% p.a., continuously compounded. The volatility of stock price is 30% p.a.
> 
> (1) Please use Black-Scholes model to compute the prices of call and put option in this option pair.
> 
> $d_1$ = long formula $ln(S_0/X) + (r + \sigma^2/2)T$...
> 
> (2) Verify whether Put-call parity holds in this case.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Lognormal Distribution | Distribution used to model stock prices |
| Black-Scholes Model | Model for pricing European options |
| Put-Call Parity | Relationship between call and put option prices |

---

## Questions & Discussion

- [ ] Question 1 - Probability of option exercise
- [ ] Question 2 - Black-Scholes model and put-call parity

---

## Action Items

- [ ] Review tutorial recording
- [ ] Complete practice questions
- [ ] Understand probability calculations
- [ ] Practice Black-Scholes calculations

---

## Related Notes

- [[200 Finance/Derivatives/FINM3006 - Derivatives|Course Summary]]
- [[200 Finance/Derivatives/Lectures/Week 06 - Lecture 1|Week 06 - Lecture 1]]

---

## References
