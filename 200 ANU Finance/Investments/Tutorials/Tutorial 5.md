**Class**: [[FINM3011 - Investments]]
**Date**: Tuesday, 26 August 2025, 14:58
**Tags**: 

---
### Question 1

The following are estimates for the two stocks.

| Stock | Expected return $E(r)$ | Beta $\beta$ | Firm-specific standard deviation $\sigma_e$ |
| :---: | :--------------------: | :----------: | :-----------------------------------------: |
|   A   |          13%           |     0.8      |                     30%                     |
|   B   |          18%           |     1.2      |                     40%                     |

The market index has a standard deviation $\sigma_M = 22\%$ and the risk-free rate $r_f = 8\%$.
- **(a)** What are the standard deviations of stocks A and B?

**Answer:** $$
\sigma_i^2=\beta_i^{2}\,\sigma_M^{2}+\sigma_{e,i}^{2}
$$
The variance of a stock formula:
$$
\sigma_i=\sqrt{\beta_i^{2}\,\sigma_M^{2}+\sigma_{e,i}^{2}}
$$

- $i$: a particular stock.
- $\sigma_i$: total standard deviation of stock $i$.
- $\sigma_M$: standard deviation of the market index.
- $\beta_i$: sensitivity of stock $i$ to the market (systematic exposure).
- $\sigma_{e,i}$: idiosyncratic (firm-specific) standard deviation of stock $i$.
- $e_i$: idiosyncratic shock for stock $i$ (assumed uncorrelated with the market).

Total risk of a stock is the sum of market-driven and firm-specific variances; take the square root to get the standard deviation.

To calculate for **stock A**:
- $\beta$ =  0.8
- $\sigma_M$ = 0.22
- $\sigma_e$ = 0.3
$$\sigma_i = \sqrt{0.8^2 \times 0.22^2 + 0.3^2}$$
This formula gives us 34.78%

To calculate for **stock B**:
- $\beta$ =  0.8
- $\sigma_M$ = 0.22
- $\sigma_e$ = 0.4

$$\sigma_i = \sqrt{0.8^2 \times 0.22^2 + 0.2^2}$$
This formula gives us 47.93%


- **(b)** Suppose that we were to construct a portfolio with proportions:

| Asset           | $w_i$ |
|:-----------------:|:-----:|
| Stock A         | 30%   |
| Stock B         | 45%   |
| Risk-free asset | 25%   |

  Compute the expected return, standard deviation, beta, and firm-specific standard deviation of the portfolio.


### Question 2

Consider the following two regression lines for stocks A and B in the following figure.  
Assume two figures use the same scale.

![[Pasted image 20250826152450.png]]

- **(a)** Which stock has higher alpha?
	- SCL (Security Charactaristic Line) measures return based on risk premium.
	- Alpha is the intercept
	- Beta is a slope
	- Systematic risk is measured by the slope, therefore B has a greater slope.
- **(b)** Which stock has higher systematic (market) risk?
	- Measured by the residual (how far it is from the line), A has a very bad residual.
- **(c)** Which stock has higher firm-specific risk?
	- 
- **(d)** Which stock has higher $R^2$?
	- How well does the line fit the dots
- **(e)** Which stock has higher correlation with the market?
	- $\sqrt{R^2}$ so just stock b


### Question 3

Consider the two (excess return) index model regression results for A and B:

- **A:**    $\widehat{r}_A = 1\% + 1.2\,[E(r_M) - r_f],\quad R^2 = 0.576,\quad \text{residual s.d.} = 10.3\%$

- **B:**     $\widehat{r}_B = -2\% + 0.8\,[E(r_M) - r_f],\quad R^2 = 0.436,\quad \text{residual s.d.} = 9.1\%$

- **(a)** Which stock has higher firm-specific risk?
	- Residual Standard Deviation is the same as firm-specific risk.
	- Therefore A has the higher firm-specific risk.
- **(b)** Which stock has higher market risk?
	- Market risk = $\beta$, CAPM formula, A has a higher beta of $1.2$ and B has a $\beta$ of 0.8.
- **(c)** For which stock does market movement explain a greater fraction of return variations?
	- This refers to $R^2$ , and the higher it is, the wider it is. Therefore Stock A has a greater fraction of return variations.

### Question 4
The estimated index models for stocks A and B are as follows:

$$
r_A - r_f = 3\% + 0.7\,(r_M - r_f) + e_A
$$

$$
r_B - r_f = -2\% + 1.2\,(r_M - r_f) + e_B
$$

With $R_A^2 = 0.20$, $R_B^2 = 0.12$.

Assume the standard deviation of the market index $\sigma_M = 20\%$.
- **(a)** What is the standard deviation of each stock?
	- $\sigma_i = \frac{\beta_i \sigma_m}{\sqrt{R^2_i}}$
	- Stock A $\sigma_A = \frac{0.7 \times (0.20)}{\sqrt{0.20}} = 31.31$
	- Stock B $\sigma_B = \frac{1.2 \times (0.20)}{\sqrt{0.12}} = 69.28$
	- Stock B has a higher Standard Deviation, therefore higher variation.

- **(b)** Break down the variance of each stock into its systematic and firm-specific component (please keep the variance form and no need to take square root).

- Systematic risk = $\sigma_{sys, A}^2 = 0.7^2 * 0.2^2 = 1.96$
- Firm-specific risk = $31.31 \times 1.96$ 