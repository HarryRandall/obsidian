---
course: "[[200 Finance/Derivatives/FINM3006 - Derivatives|Derivatives]]"
type: lecture
date: 2025-03-18
week: 5
session: 1
instructor: Yichao Zhu
tags:
  - lecture
  - derivatives
status: in-progress
---

# Week 05 - Lecture 1

> [!info] Lecture Details
> **Course:** [[200 Finance/Derivatives/FINM3006 - Derivatives|Derivatives]]
> **Type:** Lecture
> **Date:** Tuesday, 18 March 2025
> **Week:** 5
> **Lecture #:** 1
> **Instructor:** Yichao Zhu
> **Recording:** [Link]()

---

## Overview

Binomial model for pricing options covering arbitrage-free replication approach, binomial model basics, risk-neutral valuation, and multi-period applications.

---

## Key Concepts

### 1. Arbitrage-free Replication Approach

- How to value the options?
  - Two assets that provide the same cash flow must logically have the same price today
  - Arbitrage-free, also called Law of One Price.
- Basic approach
  - Create a portfolio that 'replicates' the payoff of option.
  - The replicating portfolio can be formed from any assets
  - But usually, it's comprised of stocks (short or long position) and risk-free bonds (lending or borrowing)
  - The present value of the replication portfolio is the price of the option today.
- How to create a portfolio using stock and risk-free bond to replicate the payoff to an option?
  - Option payoff is dependent on the value of the underlying stock
  - We can observe the current price of the underlying stock and bonds.
  - Payoff of bond is fixed over time.
  - We need a model of how stock prices might move from now through to the expiry of the option
- Model the 'evolution' of the stock price
  - The binomial model assumes that stock prices follow a multiplicative Binomial process over discrete periods.
  - Black-Scholes Model uses a continuous-time stochastic differential equation to model stock prices.

### 2. Binomial Model

- Assumes that stock prices follow a multiplicative Binomial process over discrete periods
- The current stock price is $S$. In one period's time, the stock price will take on one of two values. It starts at $S$, then either:
  - $S_u$ if moves up, or
  - $S_d$ if moves down
- This is what is meant by Binomial (only two events can occur)
  - Easier to build some intuition about what determines option values
  - Avoids the complexities of continuous-time mathematics
  - Widely employed in practice.
- Once we know the evolution of the stock price, we can build a 'replicating portfolio' to price the option written on this stock.

> [!example] Binomial Model Example
> - Assume a stock currently worth $\$10$ will be worth either $\$13.5$ or $\$7.3$ next period one year later. What is the value of a call ($f$) with a $\$7$ strike price if the risk free rate is $5\%$ p.a. ?
> ![[Pasted image 20250318102318.png | 500]]
> - $f_u$, $f_d$ are the payoffs from option

### 3. Valuation Approaches

**Valuation in the real world**
- Asset pricing is difficult because investors don't like risk
  - Risk adverse investors don't like risk.
  - It doesn't mean they won't take on a risky investment,
  - but they want to be compensated by a higher expected return
  - Expected payoff is calculated using real-world probabilities, and then discounted by real-world discount rate.
- $E(r_s) = r_f + \beta_S[E(r_m) - r_f]$
- $S = \frac{E(\text{Payoff})_s}{1 + E(r_s)}$
- $E(r_c) = r_f + \Omega[E(r_s) - r_f]$
- $f = \frac{E(\text{Payoff})_f}{1 + E(r_c)}$

**Valuation in a risk-neutral world**
- Risk-neutral investors, they would not demand extra compensation for bearing risk.
- The appropriate discount rate for stocks and options would be the risk-free rate.
- $S = \frac{E^*(\text{Payoff})_s}{1 + r_f}$
- $f = \frac{E^*(\text{Payoff})_f}{1 + r_f}$

### 4. Risk-Neutral Probabilities

- Find the risk-neutral probabilities $p$
- Such that the discount rate for stock cash flow is the risk-free rate:
  - $S_0 = E^*(S_T)e^{-rT}$
  - $S = [p S_u + (1 - p) S_d] e^{-rT}$
  - $= [p u + (1 - p) d] S e^{-rT}$
- Therefore we can solve
  - $p = \frac{e^{rT} - d}{u - d}$
- $p$ is the probability of an up movement in a risk-neutral world
- $1-p$ is the probability of a down movement in a risk-neutral world.

- We can then compute the option price
  $$f = e^{-rT} E^*[\text{Option payoff}]$$
  $$f = e^{-rT} [p f_u + (1 - p) f_d]$$

> [!example] Risk-Neutral Pricing Example
> - Let's try our previous example
>   $$p = \frac{e^{rT} - d}{u - d} = \frac{e^{0.05 \times 1} - 0.74}{1.35 - 0.74} = 0.5103$$
>   $$1 - p = 0.4897$$
>   $$f = e^{-rT} [p f_u + (1 - p) f_d]$$
>   $$= e^{-0.05 \times 1} [0.5103 \times 6.5 + 0.4897 \times 0.4]$$
>   $$= 3.34$$
> - We get the same option price as other approaches

### 5. Risk-Neutral Approach Summary

- Risk-neutral approach to price option
  $$
  f = e^{-rT} [p f_u + (1 - p) f_d]
  $$
  $$
  p = \frac{e^{rT} - d}{u - d}
  $$
  $$
  u = \frac{S_u}{S}
  $$
  $$
  d = \frac{S_d}{S}
  $$

- **Summary**
  - We can derive the same formula for the option price through four different approaches: Replication, Delta-hedging, Traditional, and risk-neutral approaches.
  - Each approach begins with different intuition but reaches the same conclusion.
  - We noticed that the real-world probabilities $(q)$ of up/down movements are irrelevant to pricing an option.
  - We cleverly chose the risk-neutral probability $p$ that is consistent with investors being risk neutral.
  - We can then value the option by:
    - Calculate the risk-neutral probability $p$
    - Calculate the expected option payoff using $p$
    - Discount the expected payoff to present value using the risk-free rate
  - We get the right option value, with a lot less effort.
- **Other notes**
  - Please do not infer that investors are risk neutral. They most certainly are not.
  - We choose the risk-neutral approach because it's easy and yields the correct option price.
  - For the purpose of the option valuation, we merely use a set of probabilities that are consistent with a risk-neutral world.
  - Doing this gives us the correct option price – it is the same price we get if we replicate or delta hedge.

### 6. Application of Risk-Neutral Approach (Multi-period)

- (One-step) Binomial Tree risk-neutral approach
- Multi-step Binomial Tree risk-neutral approach

> [!example] Multi-Period Binomial Example
> - Current stock price $S = 10$
> - Price a call option with $X = 7$, expires in 12 months
> - With a two-step tree, each step is 6 months ($T = 0.5$)
> - The risk-free interest rate is 5% p.a., continuously compounded
> - At the end of each period, stock price either goes up by 23.6% or down by 19%. Which means $u = 1.236, d = 0.81$
> ![[Pasted image 20250318114812.png]]
> - $f_{uu}$ = $s_{uu} - X$ = $\$15.28 - 7 = \$8.28$

---

## Notes

Slide 6 -> Slide 29

---

## Examples

> [!example] Binomial Model Example
> See Key Concepts section above.

> [!example] Risk-Neutral Pricing Example
> See Key Concepts section above.

> [!example] Multi-Period Binomial Example
> See Key Concepts section above.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Arbitrage-Free | Law of One Price - assets with same cash flows must have same price |
| Replicating Portfolio | Portfolio that replicates option payoff using stocks and bonds |
| Binomial Model | Model assuming stock prices follow multiplicative binomial process over discrete periods |
| $S_u$ | Stock price after up movement |
| $S_d$ | Stock price after down movement |
| $u$ | Up factor, $u = \frac{S_u}{S}$ |
| $d$ | Down factor, $d = \frac{S_d}{S}$ |
| Risk-Neutral Probability | Probability $p$ such that stock can be discounted at risk-free rate |
| $p$ | Risk-neutral probability of up movement, $p = \frac{e^{rT} - d}{u - d}$ |
| Risk-Neutral Valuation | $f = e^{-rT} [p f_u + (1 - p) f_d]$ |
| Real-World Probabilities | Actual probabilities of stock movements (irrelevant for option pricing) |

---

## Questions & Discussion

- [ ] How does the binomial model work?
- [ ] What is risk-neutral valuation?
- [ ] Why are real-world probabilities irrelevant for option pricing?
- [ ] How do you extend the binomial model to multiple periods?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand risk-neutral valuation approach
- [ ] Practice binomial model calculations

---

## Related Notes

- [[200 Finance/Derivatives/FINM3006 - Derivatives|Course Summary]]
- [[200 Finance/Derivatives/Lectures/Week 04 - Lecture 1|Week 04 - Lecture 1]]
- [[200 Finance/Derivatives/Lectures/Week 06 - Lecture 1|Week 06 - Lecture 1]]

---

## References
