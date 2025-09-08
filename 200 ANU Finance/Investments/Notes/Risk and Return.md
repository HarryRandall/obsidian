**Class**: [[FINM3011 - Investments]]
**Date**: Tuesday, 29 July 2025, 11:03
**Tags**: #holding-period-return #risk-and-return #sharpe-ratio

---
##### Calculating Returns
- “Buy-and-hold” investment.
- The **holding period return** (**HPR**) measures return over a period:
  $$
  HPR_t \;=\; \frac{P_t + D_t - P_{t-1}}{P_{t-1}}
  $$
  
  - $P_t$: value at the end of the holding period  
  - $P_{t-1}$: initial value  
  - $D_t$: cash income during the period (e.g., dividend)  
  - Assumes income is received at the end of the period.  
  - If it has happened, it’s a **realised** return.  
  - Denote the one-period return as $r$.

- **Time-series averages** for a single asset with returns $(r_1,\dots,r_T)$:
  - **Arithmetic average**:
    $$
    \bar r \;=\; \frac{1}{T}\sum_{t=1}^{T} r_t
    $$
  - **Geometric average**:
    $$
    r_G \;=\; \Big[\,(1+r_1)(1+r_2)\cdots(1+r_T)\,\Big]^{\tfrac{1}{T}} - 1
    $$

###### Example 1 (time-series)

| Year | Return |
|---|---:|
| 2018 | — |
| 2019 | 5% |
| 2020 | 9% |
| 2021 | −5% |

- Arithmetic: 
  $$
  \bar r \;=\; \tfrac{1}{3}\,(0.05 + 0.09 - 0.05) \;=\; 3\%
  $$
- Geometric:
  $$
  r_G \;=\; \big[(1+0.05)(1+0.09)(1-0.05)\big]^{\tfrac{1}{3}} - 1 \;=\; 2.8\%
  $$

###### Example 2 (time-series, extreme)

| Time | Value | Return |
|---|---:|---:|
| 0 | \$1,000 | — |
| 1 | \$2,000 | 100% |
| 2 | \$1,000 | −50% |

- Arithmetic: $\tfrac{100\% - 50\%}{2} = 25\%$  
- Geometric: $\big[(1+100\%)(1-50\%)\big]^{\tfrac{1}{2}} - 1 = 0\%$

> **Rule of thumb:**  
> - Use **geometric** for evaluating past multi-period performance.  
> - Use **arithmetic** for **next-period** expected return (will be specified in exams).

---

##### Cross-Section Averages (same period, many assets)

- **Equally-weighted (arithmetic) average** across $N$ stocks: $$
  \bar r \;=\; \frac{1}{N}\sum_{n=1}^{N} r_n
  $$
- **Value-weighted** average (weights sum to 1):
$$
  r_W \;=\; \sum_{n=1}^{N} w_n r_n
  $$
- In this course, **value-weighted** returns are the default unless specified.

---

##### Quoting Returns in This Class

- Assume **annualised**, **compounded annually** (Effective Annual Rate), unless noted (e.g., monthly HPR).
- No interest-rate conversion questions in the exam.

---

##### Real Return

- Inflation changes purchasing power. Adjust nominal return $r_{\text{nominal}}$ by inflation $i$:
  $$
  1 + r_{\text{real}} \;=\; \frac{1 + r_{\text{nominal}}}{1 + i}
  \qquad\Rightarrow\qquad
  r_{\text{real}} \;=\; \frac{1 + r_{\text{nominal}}}{1 + i} - 1
  $$
- **Approximation (small $i$):** $r_{\text{real}} \approx r_{\text{nominal}} - i$.

---

##### Expected Return and Standard Deviation

- Under uncertainty, with scenarios $s$:
  $$
  E(r) \;=\; \sum_s Pr(s)\,r(s),
  \qquad
  \sigma \;=\; \sqrt{\sum_s Pr(s)\,\big(r(s) - E(r)\big)^2}
  $$
  - $Pr(s)$: probability of scenario $s$  
  - $r(s)$: return in scenario $s$

###### Example

- Current price \$100; dividend in one year \$4. Possible outcomes:

| Scenario | Prob. | Ending Price | HPR |
|---|---:|---:|---:|
| Good | 0.35 | \$140 | 44% |
| Normal | 0.30 | \$110 | 14% |
| Bad | 0.35 | \$80 | −16% |

- Expected return:
  $$
  E(r) \;=\; 0.35\times 44\% + 0.30\times 14\% + 0.35\times (-16\%) \;=\; 14\%
  $$
- Variance and standard deviation:
  $$
  \sigma^2 \;=\; 0.35(44\%-14\%)^2 + 0.30(14\%-14\%)^2 + 0.35(-16\%-14\%)^2 \;=\; 0.063
  $$
  $$
  \sigma \;=\; \sqrt{0.063} \;=\; 25.10\%
  $$
  *(Note: variance is **6.3%**, not 63%.)*

- In practice we estimate $E(r)$ and $\sigma$ from historical data. For $T$ observations:
  $$
  \bar r \;=\; \frac{1}{T}\sum_{t=1}^{T} r_t,
  \qquad
  \hat\sigma \;=\; \sqrt{\frac{1}{T-1}\sum_{t=1}^{T} (r_t - \bar r)^2}
  $$
- **Annualising** (typical equity assumptions):
  $$
  E(r)_{\text{pa}} = \big(1 + E(r)_{\text{day}}\big)^{252} - 1
  \quad;\quad
  \sigma_{\text{pa}} = \sigma_{\text{day}} \sqrt{252}
  $$

---

##### Return Distributions

- Stock returns are **approximately normal** (bell-shaped): symmetric, fully described by mean and standard deviation.
- **Skewness** (asymmetry):
  $$
  \text{Skew} \;=\; \text{Average}\!\left[\,\frac{(r - \bar r)^3}{\hat\sigma^3}\right]
  $$
- **Excess kurtosis** (tail fatness relative to normal):
  $$
  \text{Kurtosis} \;=\; \text{Average}\!\left[\,\frac{(r - \bar r)^4}{\hat\sigma^4}\right] - 3
  $$
- Implications:
  - **Positive skew:** $\sigma$ **overestimates** risk.
  - **Negative skew:** $\sigma$ **underestimates** downside risk.
  - **Fat tails:** $\sigma$ **underestimates** extreme events (use VaR, ES, LPSD for downside risk).

---

##### Investor Risk Preferences, Excess Return, and Utility

- **Risk averse:** prefer higher $E(r)$ and lower $\sigma$; require compensation to bear risk.  
- **Excess return:** $R = r - r_f$; **Risk premium:** $E(R) = E(r) - r_f$.  
- **Sharpe ratio:** 
  $$
  \text{Sharpe} \;=\; \frac{E(r) - r_f}{\sigma}
  $$
- **Utility (mean–variance) function (risk averse $A>0$):**
  $$
  U \;=\; E(r) - \frac{1}{2}A\,\sigma^2
  $$





