---
course: "[[200 Finance/Investments/FINM3011 - Investments|Investments]]"
type: tutorial
date: 2025-08-26
week: 3
session: 1
instructor: 
tags:
  - tutorial
  - investments
  - expected-return
  - standard-deviation
  - utility-function
status: in-progress
---

# Week 03 - Tutorial 1

> [!info] Tutorial Details
> **Course:** [[200 Finance/Investments/FINM3011 - Investments|Investments]]
> **Type:** Tutorial
> **Date:** Tuesday, 26 August 2025
> **Week:** 3
> **Tutorial #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Tutorial covering scenario analysis for expected returns and standard deviations, utility functions with different risk aversion coefficients, and real-life data analysis using Kenneth French's data library.

---

## Key Concepts

### 1. Scenario Analysis (Stocks X & Y)

**Question 1:**

|             | Bear | Normal | Bull |
| ----------- | ---: | -----: | ---: |
| **Probability** | 0.2  | 0.5    | 0.3  |
| **Stock X HPR** | −20% | 18%    | 50%  |
| **Stock Y HPR** | −15% | 20%    | 10%  |

1) **Expected returns**

$$
E[r_X] = 0.2(-0.20) + 0.5(0.18) + 0.3(0.50) = \mathbf{20\%}
$$

$$
E[r_Y] = 0.2(-0.15) + 0.5(0.20) + 0.3(0.10) = \mathbf{10\%}
$$

2) **Standard deviations**

$$
\sigma_X = \sqrt{0.0592} = \mathbf{24.33\%}
$$

$$
\sigma_Y = \sqrt{0.0175} = \mathbf{13.23\%}
$$

3) **Portfolio expected return** (invest \$9,000 in X and \$1,000 in Y)

$$
E[r_p] = 0.9 \times 20\% + 0.1 \times 10\% = \mathbf{19\%}
$$

4) **Risk premium & Sharpe ratio** (given $\sigma_p = 24\%$, $r_f = 3\%$)

Risk premium $= 19\% - 3\% = \mathbf{16\%}$

Sharpe $= \dfrac{16\%}{24\%} = \mathbf{0.667}$

5) **Expected real return** (inflation $= 2\%$)

Approx: $19\% - 2\% = \mathbf{17\%}$

Exact: $\dfrac{1.19}{1.02} - 1 = \mathbf{16.67\%}$

### 2. Utility with Different Risk Aversion

**Question 2:**

Utility function:

$$
U = E(r) - \tfrac{1}{2}A\sigma^2
$$

| Stock | $E(r)$ | $\sigma$ |
|---|---:|---:|
| X | 15% | 20% |
| Y | 20% | 30% |

- For $A_1 = 1$

$$
U_{A_1}(X) = 0.15 - \tfrac{1}{2}(1)(0.20)^2 = \mathbf{13.0\%}
$$

$$
U_{A_1}(Y) = 0.20 - \tfrac{1}{2}(1)(0.30)^2 = \mathbf{15.5\%}
$$

**Preference:** $\mathbf{Y}$

- For $A_2 = 3$

$$
U_{A_2}(X) = 0.15 - \tfrac{1}{2}(3)(0.20)^2 = \mathbf{9.0\%}
$$

$$
U_{A_2}(Y) = 0.20 - \tfrac{1}{2}(3)(0.30)^2 = \mathbf{6.5\%}
$$

**Preference:** $\mathbf{X}$

### 3. "Ethic" Multiplier Illustration

**Question 3:**

Baseline utility and "ethical" utility:

$$
U = E(r) - \tfrac{1}{2}A\sigma^2, \qquad U^{\text{Ethic}} = U \times \text{Ethic}
$$

with $A=2$, $\text{Ethic} = 1.1$ for **Solar** (clean) and $0.9$ for **Coal** (emissions).

| Company | $E(r)$ | $\sigma$ | $U$ | $U^{\text{Ethic}}$ |
|---|---:|---:|---:|---:|
| Solar | 40% | 40% | $0.40 - 0.5\cdot 2 \cdot 0.40^2 = 0.24$ | $0.24 \times 1.1 = \mathbf{0.264}$ |
| Coal  | 30% | 20% | $0.30 - 0.5\cdot 2 \cdot 0.20^2 = 0.26$ | $0.26 \times 0.9 = \mathbf{0.234}$ |

- **Without** ethics term: prefer **Coal** ($0.26 > 0.24$)
- **With** ethics term: prefer **Solar** ($0.264 > 0.234$)

### 4. Real Life Data Example

**Question 4:**

Visit professor Kenneth French's data library Website [https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html](https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html) and download the monthly returns of "6 portfolios formed on Size and Book-to-Market (2×3)."

Choose the value-weighted series for the period from January 1930 - December 2018. Split the sample in half and compute the average, standard deviation, skewness, and kurtosis for each of the six portfolios for the two halves (i.e. January 1930 - June 1974 and July 1974 - December 2018).

Do the six split-halves statistics suggest to you that returns come from the same distributions over the entire period?

(Note: This question is not required in the exams, but related conceptual question is still possible. The main purpose of this question is to help you understand that the distribution of returns is very likely to change overtime and hence it requires more experience in practice to choose a suitable estimation time period.

In addition, the Kenneth French's data library is one of the most popular databases in finance research. The small practice in this question can give you some preliminary exposure to research. More details about the Fama-French models will be discussed in Lecture 6.)

- Average = $E(V)$
- $\sigma$ (std.dev) = risk, how far are the numbers from the average
- The skewness
	- Whether the stock is more skewed from one side to another
	- Which side does it lean
- The kurtosis
	- A measure of the probability of extreme events

---

## Notes



---

## Examples

> [!example] Scenario Analysis
> With probabilities 0.2, 0.5, 0.3 for Bear, Normal, Bull scenarios, Stock X has expected return 20% and standard deviation 24.33%.

> [!example] Utility Function
> For risk aversion $A=1$, Stock Y (20% return, 30% risk) is preferred over Stock X (15% return, 20% risk) due to higher utility (15.5% vs 13.0%).

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Expected Return | $E(r) = \sum_s Pr(s) \cdot r(s)$ |
| Standard Deviation | $\sigma = \sqrt{\sum_s Pr(s) \cdot (r(s) - E(r))^2}$ |
| Portfolio Expected Return | $E(r_p) = \sum w_i E(r_i)$ |
| Risk Premium | $E(r) - r_f$ |
| Sharpe Ratio | $\frac{E(r) - r_f}{\sigma}$ |
| Real Return (Approx) | $r_{\text{real}} \approx r_{\text{nominal}} - i$ |
| Real Return (Exact) | $r_{\text{real}} = \frac{1 + r_{\text{nominal}}}{1 + i} - 1$ |
| Utility Function | $U = E(r) - \frac{1}{2}A\sigma^2$ where $A$ is risk aversion |
| Skewness | Measure of asymmetry in return distribution |
| Kurtosis | Measure of tail fatness/extreme events in return distribution |

---

## Questions & Discussion

- [ ] How does risk aversion affect portfolio choice?
- [ ] What is the difference between approximate and exact real return calculations?
- [ ] How do ethical considerations affect investment decisions?
- [ ] Why might return distributions change over time?

---

## Action Items

- [ ] Review tutorial recording
- [ ] Complete practice questions
- [ ] Practice scenario analysis calculations
- [ ] Understand utility functions and risk aversion
- [ ] Explore Kenneth French's data library

---

## Related Notes

- [[200 Finance/Investments/FINM3011 - Investments|Course Summary]]
- [[200 Finance/Investments/Lectures/Week 03 - Lecture 1|Week 03 - Lecture 1]]

---

## References

- Kenneth French Data Library: [https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html](https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html)
