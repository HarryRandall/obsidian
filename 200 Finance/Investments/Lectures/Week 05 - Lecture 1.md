---
course: "[[200 Finance/Investments/FINM3011 - Investments|Investments]]"
type: lecture
date: 2025-08-26
week: 5
session: 1
instructor: 
tags:
  - lecture
  - investments
status: in-progress
---

# Week 05 - Lecture 1

> [!info] Lecture Details
> **Course:** [[200 Finance/Investments/FINM3011 - Investments|Investments]]
> **Type:** Lecture
> **Date:** Tuesday, 26 August 2025
> **Week:** 5
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Multifactor models and Arbitrage Pricing Theory (APT) covering multiple risk factors, law of one price, APT framework, and approaches to factor identification (macroeconomic and fundamental approaches including Fama-French models).

---

## Key Concepts

### 1. Multiple Risk Factors

- The purpose of a factor model is to capture a stock's risk and return
- In single factor model there is only one common (risk) factor

$$
r_i - r_f = \alpha_i + \beta_i (r_m - r_f) + e_i
$$

- In reality, there could be multiple common risk factors that affect stock returns jointly

$$
r_i - r_f = \alpha_i + \sum_{k=1}^K \beta_{i,k}(r_k - r_f) + e_i
$$

- For example:

$$
r_i - r_f = \alpha_i + \beta_{i,m}(r_m - r_f) + \beta_{i,G} GDP + \beta_{i,inf} Inflation + e_i
$$

- Expected return

$$
E(r_i) - r_f = \alpha_i + \sum_{k=1}^K \beta_{i,k}E[(r_k) - r_f]
$$

- Variance (assume no correlations among factors)

$$
\sigma_i^2 = \sum_{k=1}^K \beta_{i,k}^2 \sigma_k^2 + \sigma_{e_i}^2
$$

- Covariance (assume covariance of residuals is zero)

$$
Cov(i,j) = \sum_{k=1}^K \beta_{i,k}\beta_{j,k}\sigma_k^2
$$

- Multiple factors represent risks that investors cannot diversify away
- Macroeconomic factors
	- Market risk
	- Price indices and inflation (CPI, PPI)
	- Industrial production (GDP)
	- Interest rates
	- Unemployment
- Fundamental common factors
	- Industry/sector
	- Firm size, growth/value, profitability
	- Momentum
	- Liquidity
- Other statistical common factors

- We need a framework to properly include multiple factors into one model to describe asset returns
- **Arbitrage Pricing Theory (APT), Ross (1976)**
	- A statistical framework to model asset returns
	- Based on the law of one price and no arbitrage
	- Allows for multiple sources of systematic risks
	- Different pricing of these risks
	- Only need weak assumptions

### 2. Law of One Price

- Law of one price (no arbitrage / absence of arbitrage)
  - Two assets or portfolios with same payoffs must have same price
  - Arbitrage opportunity otherwise
    - Zero initial investment
    - Risk-free payoff
    - Arbitrageurs exploit until opportunity disappears
- Widely used in finance to price assets
- General version: similar payoffs → similar price

- In the context of common risk factors and return
- Focus on well-diversified portfolios
- Two portfolios with identical return co-movements with multiple common factors → same expected return
- Firm-specific risks diversified away
- Arbitrageurs eliminate mispricing: short overpriced, buy underpriced → prices converge

### 3. Arbitrage Pricing Theory

- APT model for well-diversified portfolios

$$
r_i - r_f = \sum_{k=1}^K \beta_{i,k}(r_k - r_f)
$$

$$
E(r_i) - r_f = \sum_{k=1}^K \beta_{i,k}[E(r_k) - r_f]
$$

- Where:
  - $E(r_k) - r_f =$ risk premium on factor $k$
  - $\beta_{i,k} =$ portfolio $i$'s loading on factor $k$
  - $e_i=0$ due to diversification
  - $\alpha_i=0$ due to arbitrage

- A multivariate framework for asset returns
- No arbitrage in well-diversified portfolios
- Only applies if no firm-specific risk
- Factors = systematic risks (sources of co-movement)
- Priced risks = undiversifiable risks (carry risk premium)
- Diversifiable risks = zero risk premium
- Factor loadings = sensitivities $\beta$
- Same $\beta$-return relation holds for all well-diversified portfolios
- Arbitrageurs replicate and arbitrage away mispricing

- **Single factor APT**

$$
r_i - r_f = \beta_{i,m}(r_m - r_f)
$$

$$
E(r_i) - r_f = \beta_{i,m}[E(r_m) - r_f]
$$

- **Multifactor APT**

$$
r_i - r_f = \sum_{k=1}^K \beta_{i,k}(r_k - r_f)
$$

$$
E(r_i) - r_f = \sum_{k=1}^K \beta_{i,k}[E(r_k) - r_f]
$$

- **Security Market Line (SML) for APT models**
  - Well diversified portfolios must lie on the same SML
  - Otherwise → arbitrage opportunity
  - Market portfolio not necessary
  - Single-factor APT: standard SML
  - Multifactor APT: multidimensional SML

- **Example:**
  - Two factors:
	- Stock market index $E(r_M) - r_f$
	- Bond market index $E(r_B) - r_f$
  - Assume
	- $r_f=5\%$
	- $E(r_M)-r_f=8\%$
	- $E(r_B)-r_f=2\%$
  - Multifactor model:

$$
r_i - r_f = \alpha_i + \beta_{i,M}(r_M - r_f) + \beta_{i,B}(r_B - r_f) + e_i
$$

  - APT equilibrium (well-diversified):

$$
r_i - r_f = \beta_{i,M}(r_M - r_f) + \beta_{i,B}(r_B - r_f)
$$

  - Key: arbitrage eliminates $\alpha$

- **Example:**
  - Portfolios X, Y, Z:
	- $\beta_{M,X}=1$, $\beta_{B,X}=0$
	- $\beta_{M,Y}=0$, $\beta_{B,Y}=1$
	- $\beta_{M,Z}=1.5$, $\beta_{B,Z}=0.5$
  - Expected returns:
	- $E(r_X) = r_f + \beta_{X,M}[E(r_M) - r_f] + \beta_{X,B}[E(r_B) - r_f] = 13\%$
	- $E(r_Y)=7\%$
	- $E(r_Z)=18\%$
  - If actual $E(r_Z)=20\%$, then $\alpha_Z=2\%$ → underpriced

- Arbitrage portfolio construction:

| Position         | $T=0$ Initial Cost | $T=1$ Realized Return              |
| ---------------- | ------------------ | ---------------------------------- |
| Buy $1 of Z      | $-1$               | $\alpha_Z + r_f + 1.5R_M + 0.5R_B$ |
| Short $1.5 of X  | $+1.5$             | $-1.5(r_f+R_M)$                    |
| Short $0.5 of Y  | $+0.5$             | $-0.5(r_f+R_B)$                    |
| Buy $1 risk-free | $-1$               | $r_f$                              |
| **Net**          | $0$                | $\alpha_Z$                         |

- Arbitrage payoff $=\alpha_Z>0$

- Construct long-short arbitrage portfolio
- Replicate mispriced portfolio with other assets
- Opposite trading direction
- Use risk-free asset to balance initial cost
- Combined portfolio: zero factor exposure, zero cost, positive payoff

- APT must hold for all well-diversified portfolios (portfolio $\alpha$ insignificant)
- Implies APT must hold for most individual securities ($\alpha$ insignificant)
- Mispricing arbitraged away quickly

- **Comparison**

| Model     | CAPM                         | Index Model                | APT                                           |
| --------- | ---------------------------- | -------------------------- | --------------------------------------------- |
| Nature    | Theoretical                  | Statistical                | Statistical + Arbitrage                       |
| Return    | $E(R)=\beta R_M$, $\alpha=0$ | $R=\alpha+\beta_m R_m+e_i$ | $E(R)=\sum\beta_kE(R_k)$                      |
| $\alpha$  | $0$                          | non-zero possible          | $0$ (well-diversified), $0$ (majority stocks) |
| Investors | All hold market portfolio    | –                          | Arbitrageurs exploit mispricing               |
| Line      | SML                          | SCL                        | SML                                           |

### 4. Approaches to Possible Factors

- Multifactor APT does not tell:
  - What the factors are
  - What premiums they carry
- A factor should:
  - Explain expected return variation
  - Demand non-zero risk premium

- Possible factors:
  - Macroeconomic
  - Fundamental
  - Statistical (PCA, not required)
- Many APT studies start with macroeconomic risks or firm characteristics

### 5. Macroeconomic Approach

- Chen, Roll & Ross (1986) factors:
  - NYSE portfolio
  - Industrial production growth
  - Inflation rate
  - Bond spread
  - Term structure slope
- Typically use changes/returns in macro variables
- Focus on surprises/unexpected changes
- Two-step regression (optional):
  - Time-series for $\beta$
  - Cross-sectional for premiums

### 6. Fundamental Approach

- Firm characteristics proxy for systematic risks
- Similar characteristics → similar risks → similar returns
- Form portfolios sorted by characteristics → proxies for factors
- In practice:
  - Identify anomalies (significant $\alpha$)
  - Add factor to explain anomaly (set $\alpha=0$)

#### 6.1. Fama-French 3-Factor Model

$$
r_i - r_f = \beta_{i,M}(r_M - r_f) + \beta_{i,SMB}SMB + \beta_{i,HML}HML
$$

- Anomalies:
  - Small stocks outperform large
  - Value stocks outperform growth
- Three factors:
  - Market
  - Size (SMB = small − big)
  - Value (HML = high − low B/M)

- Higher $\beta$ does not → higher expected return
- Small size outperforms large
- Double-sorting approach used

- Value stocks outperform growth
- Small size outperforms large

#### 6.2. Fama-French-Carhart 4-Factor Model

$$
r_i - r_f = \beta_{i,M}(r_M - r_f) + \beta_{i,SMB}SMB + \beta_{i,HML}HML + \beta_{i,WML}WML
$$

- Adds **momentum factor (WML)**
  - Winners keep winning
  - Losers keep losing
- Momentum anomaly documented by Jegadeesh & Titman (1993)
- Momentum diminished as exploited by industry

#### 6.3. Other Important Factor Models

- Fama-French 5-factor (2015): add RMW, CMA
  - RMW = profitability factor
  - CMA = investment factor
- Liquidity factor (Pastor & Stambaugh 2003)
- Idiosyncratic risk factor (Ang *et al.*, 2006)

#### 6.4. Fundamental Approach (Summary)

- Hundreds of factors developed
- Many from data mining
- Adding more factors not always good
- Few pass strict tests
- Must understand risk source
- Models explain anomalous $\alpha$ relative to benchmark
- Remaining mispricing may be due to:
  - Unknown systematic risk
  - Market inefficiency (Lecture 7)
  - Fund manager skill (Lecture 8)

### 7. Practitioner (Proprietary) Models (Optional)

- MSCI-Barra, MSCI RiskMetrics
- JP Morgan's Measurisk
- BlackRock Solutions
- Algorithmics (DST/Fimalac)
- Moody's KMV
- SunGard Data Systems

---

## Notes

### Terminologies in Today's Class

- Compute the expected return = to price an asset/stock
- Common factor = systematic risk = market risk
- Risk premium = the price of a risk = reward for a risk
- A common factor is priced = risk premium $>0$
- $\beta =$ sensitivity to a common factor = exposure to a risk = loading to a risk
- Significant $(\alpha, \beta) =$ Significantly different from zero
- Residual risk/return = firm-specific risk/return
- Long position = buy assets / portfolios
- Short position = short sell assets / portfolios

---

## Examples

> [!example] Multifactor APT
> A stock with $\beta_{M}=1.5$ and $\beta_{B}=0.5$ has expected return $E(r) = r_f + 1.5[E(r_M)-r_f] + 0.5[E(r_B)-r_f]$

> [!example] Arbitrage Opportunity
> If portfolio Z has actual return 20% but APT predicts 18%, $\alpha_Z=2\%$ creates arbitrage opportunity through long-short portfolio construction.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Multifactor Model | $r_i - r_f = \alpha_i + \sum_{k=1}^K \beta_{i,k}(r_k - r_f) + e_i$ |
| APT Expected Return | $E(r_i) - r_f = \sum_{k=1}^K \beta_{i,k}[E(r_k) - r_f]$ |
| Multifactor Variance | $\sigma_i^2 = \sum_{k=1}^K \beta_{i,k}^2 \sigma_k^2 + \sigma_{e_i}^2$ |
| Multifactor Covariance | $Cov(i,j) = \sum_{k=1}^K \beta_{i,k}\beta_{j,k}\sigma_k^2$ |
| Law of One Price | Two assets/portfolios with same payoffs must have same price |
| Arbitrage | Zero-cost, risk-free profit opportunity |
| Fama-French 3-Factor | $r_i - r_f = \beta_{i,M}(r_M - r_f) + \beta_{i,SMB}SMB + \beta_{i,HML}HML$ |
| Fama-French-Carhart 4-Factor | Adds momentum factor WML to 3-factor model |
| SMB | Small minus Big - size factor |
| HML | High minus Low B/M - value factor |
| WML | Winners minus Losers - momentum factor |

---

## Questions & Discussion

- [ ] How does APT differ from CAPM?
- [ ] What is the law of one price and how does it relate to arbitrage?
- [ ] How are factors identified in the fundamental approach?
- [ ] What are the key factors in the Fama-French models?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand multifactor models and APT
- [ ] Review Fama-French factor models
- [ ] Practice arbitrage portfolio construction

---

## Related Notes

- [[200 Finance/Investments/FINM3011 - Investments|Course Summary]]
- [[200 Finance/Investments/Lectures/Week 04 - Lecture 1|Week 04 - Lecture 1]]

---

## References

- 
