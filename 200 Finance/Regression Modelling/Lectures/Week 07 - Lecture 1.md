---
course: "[[200 Finance/Regression Modelling/STAT2008 - Regression Modelling|Regression Modelling]]"
type: lecture
date: 2025-10-07
week: 7
session: 1
instructor: 
tags:
  - lecture
  - regression-modelling
status: in-progress
---

# Week 07 - Lecture 1

> [!info] Lecture Details
> **Course:** [[200 Finance/Regression Modelling/STAT2008 - Regression Modelling|Regression Modelling]]
> **Type:** Lecture
> **Date:** Tuesday, 7 October 2025
> **Week:** 7
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Model diagnostics covering error assumptions, diagnostic tools, residual plots, and added-variable plots.

---

## Key Concepts

### 1. Error Assumptions

- Diagnostic Tools
  - Residual vs Fitted Value
  - Q-Q plot
  - Plot residual against some order (e.g. time)
  - Tests (not covered in this course)

![[Pasted image 20251007134129.png]]

![[Pasted image 20251007134144.png]]

### 2. Residual Plots

- To check model adequacy (the correct form of regression function):
  - In SLR, we simply look at the shape of the scatter plot between X and Y, or the plot of residuals against $\hat{Y}$
  - In MLR, we need to check the structure of the model between $Y$ and one of the $X$ variables. We can make pairwise scatter plots or make plots of residuals against $\hat{Y}$ or one of the $X$ variables.
  - Also the plotting of residuals against predictor variables not yet in regression model can be used to determine whether it would be helpful to add one or more of these variables to the model.
  - When the predictors have something in common amongst them, it explains its response to the predictor, and also it's response in conjunction with another predictor. We want to remove this conjunction bit.
- A limitation of the residual plots is that they may not properly show the nature of the marginal effect of a predictor variable, given the other predictor variables in the model.
- We use added-variable plot, which is also called partial regression plot or adjusted variable plot.

- Added-variable plot is a refined residual plot that provides graphic information about the marginal importance of a predictor variable, given the other predictor variables already in the model.
- Sometimes useful for identifying the nature of the marginal relation for a predictor variable in the regression.

### 3. Added-Variable Plot

- The "unexplained" or "uncorrelated" parts are just residuals
- Thus we just need to plot the residuals from the two models:
  - The residuals from the regression of $Y$ on $X_1$ and $X_2$, against
  - The residuals from the regression on $X_3$ on $X_1$ and $X_2$
- The residual-residual plot
  - Shows the marginal importance of this variable;
  - May provide information about the nature of the marginal regression relation for the predictor.
  - May help in identifying outlier or influential plots.

### 4. Shape of Added-Variable Plot

![[Pasted image 20251007141302.png]]

### 5. The Marginal Relation

- The residuals of this model are equal to the residuals of the full model.
- The slope of the regression line in this model is equal to the coefficient of this predictor in the full model.
- The SSR of the model is equal to the extra sum of squares for this predictor in the full model.

---

## Notes

---

## Examples

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Residual Plot | Plot of residuals against fitted values or predictors to check model adequacy |
| Q-Q Plot | Quantile-quantile plot for checking normality of residuals |
| Added-Variable Plot | Refined residual plot showing marginal importance of predictor variable |
| Partial Regression Plot | Another name for added-variable plot |
| Adjusted Variable Plot | Another name for added-variable plot |
| Residual-Residual Plot | Plot of residuals from two models |
| Marginal Effect | Effect of one predictor variable given other predictors in model |
| Model Adequacy | Whether the correct form of regression function is used |

---

## Questions & Discussion

- [ ] What are the diagnostic tools for checking error assumptions?
- [ ] How do residual plots help check model adequacy?
- [ ] What is an added-variable plot and when is it useful?
- [ ] What is the marginal relation?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand diagnostic tools
- [ ] Practice interpreting residual plots

---

## Related Notes

- [[200 Finance/Regression Modelling/STAT2008 - Regression Modelling|Course Summary]]
- [[200 Finance/Regression Modelling/Lectures/Week 06 - Lecture 1|Week 06 - Lecture 1]]

---

## References
