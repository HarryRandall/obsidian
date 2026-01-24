---
course: "[[200 Finance/Regression Modelling/STAT2008 - Regression Modelling|Regression Modelling]]"
type: lecture
date: 2025-09-16
week: 5
session: 1
instructor: 
tags:
  - lecture
  - regression-modelling
status: in-progress
---

# Week 05 - Lecture 1

> [!info] Lecture Details
> **Course:** [[200 Finance/Regression Modelling/STAT2008 - Regression Modelling|Regression Modelling]]
> **Type:** Lecture
> **Date:** Tuesday, 16 September 2025
> **Week:** 5
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Multiple Linear Regression (MLR) covering data exploration, pairwise scatter plots, fitted models, coefficients, and ANOVA in MLR.

---

## Key Concepts

### 1. Data Exploration

- Always spend some time exploring the data that you have.
  - Whether the data is right for fitting a linear model.
- New function, 'pairs' instead of 'plot'.
- It produces a pairwise of scatter plots, for every combination of variables for a given set.
  - 4 variables = $4 \times 4 - 4$ plots.
- We're going to look at half of the data, so the top right half, where price is on the Y axis.

- "Fanning out shape" - nonlinear relationship.
  - Price vs Sqrt.living
  - Price vs Bathrooms
- Price vs Bedrooms
  - Most likely an input mistake, outlier of 100.
  - Skews data.
  - Should remove, but document it, as it could be a real data point.

![[Pasted image 20250916131612.png]]

### 2. R Analysis

Doing some R analysis, we get the following
```r
house <- house[-which(house$bedrooms > 20), -1]
pairs(house, log=1)
```

![[Pasted image 20250916132933.png]]

- Applying log only effects the viewing / the scale of the data.
- It doesn't change any of the individual datapoints, just the way it's viewed.

- These pair plots are important as they can tell you if they fit the linear model.

### 3. Fitted Model

- The fitted MLR model
  $$\hat{y} = 12.2098 + 0.3729X_1 + 0.0385X_2$$
- The mean log(price) are expected to increase by 0.3729 when the size of the house increases by 1 thousand sqft, holding the number of bathrooms constant.
- The mean log(price) are expected to increase by 0.0385 when the size of the bathrooms increases by 1, holding the size of the house constant.

### 4. Coefficients

- The coefficient vector estimator $b = (X'X)^{-1}X'Y$
- The variance-covariance matrix $\sigma^2(b) = \sigma^2(X'X)^{-1}$

- The estimated variance-covariance matrix $s^2(b) = MSE(X'X)^{-1}$

Where:
$$MSE = \frac{SSE}{n-p} = \frac{\sum^n_{i=1}(Y_i-\hat{Y_i})^2}{n-p}$$

### 5. Summary() in R

```
Residuals:
     Min       1Q   Median       3Q      Max 
-1.38613 -0.30117  0.00884  0.26845  1.24111 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)
(Intercept) 12.209753   0.013592 898.281  < 2e-16
size         0.372939   0.007999  46.622  < 2e-16
bath         0.038534   0.009324   4.133 3.63e-05
               
(Intercept) ***
size        ***
bath        ***

Residual standard error: 0.3889 on 6976 degrees of freedom
Multiple R-squared:  0.4558,	Adjusted R-squared:  0.4557 
F-statistic:  2922 on 2 and 6976 DF,  p-value: < 2.2e-16
```

### 6. Confidence Interval for $\beta_k$

- Distribution for $b_k$
  $$\frac{b_k - \beta_k}{s(b_k)} \sim t(n-p) \; k=0,1,\dots,p-1$$
- Hence the $100 (1 - \alpha)\%$ confidence interval for $\beta_k$ is:
  $$[b_k - t_{\frac{\alpha}{2}}(n-p)s(b_k),\; b_k + t_{\frac{\alpha}{2}}(n-p) s(b_k)]$$

### 7. ANOVA in MLR

---

## Notes

---

## Examples

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Multiple Linear Regression (MLR) | Regression model with multiple explanatory variables |
| Pairwise Scatter Plots | Scatter plots for every combination of variables |
| Fitted Model | $\hat{y} = 12.2098 + 0.3729X_1 + 0.0385X_2$ |
| Coefficient Vector Estimator | $b = (X'X)^{-1}X'Y$ |
| Variance-Covariance Matrix | $\sigma^2(b) = \sigma^2(X'X)^{-1}$ |
| Estimated Variance-Covariance Matrix | $s^2(b) = MSE(X'X)^{-1}$ |
| Mean Squared Error (MSE) | $MSE = \frac{SSE}{n-p} = \frac{\sum^n_{i=1}(Y_i-\hat{Y_i})^2}{n-p}$ |
| Confidence Interval for $\beta_k$ | $[b_k - t_{\frac{\alpha}{2}}(n-p)s(b_k),\; b_k + t_{\frac{\alpha}{2}}(n-p) s(b_k)]$ |
| ANOVA | Analysis of Variance in MLR |

---

## Questions & Discussion

- [ ] How do you explore data before fitting a regression model?
- [ ] What is the coefficient vector estimator?
- [ ] How do you interpret coefficients in MLR?
- [ ] How do you calculate confidence intervals for coefficients?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand MLR model fitting
- [ ] Practice interpreting R output

---

## Related Notes

- [[200 Finance/Regression Modelling/STAT2008 - Regression Modelling|Course Summary]]
- [[200 Finance/Regression Modelling/Lectures/Week 04 - Lecture 1|Week 04 - Lecture 1]]

---

## References
