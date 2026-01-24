---
course: "[[200 Finance/Regression Modelling/STAT2008 - Regression Modelling|Regression Modelling]]"
type: lecture
date: 2025-07-22
week: 1
session: 1
instructor: 
tags:
  - lecture
  - regression-modelling
  - rstudio
status: in-progress
---

# Week 01 - Lecture 1

> [!info] Lecture Details
> **Course:** [[200 Finance/Regression Modelling/STAT2008 - Regression Modelling|Regression Modelling]]
> **Type:** Lecture
> **Date:** Tuesday, 22 July 2025
> **Week:** 1
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Introduction to regression modelling covering objectives of regression, population regression equation, types of linear regression, goals of regression analysis, population and sample concepts, properties of estimators, and construction of regression models.

---

## Key Concepts

### 1. Objectives of Regression

- Regression is a means of exploring the **variation** in some quantity.
  - Why Heart Rate varies
  - Why the interest rates are going up or down
- This **variation** is separated into **EXPLAINED** and **UNEXPLAINED** components.

> [!example] Ice Cream Sales Example
> The example used for this video is Ice Cream Sales which can be explained by:
> - Daily Temperature
> - Daily Rainfall
> - School Holidays
> - Unexplained, regression will be able to quantify how much of that can be explained.

### 2. Population Regression Equation

- We will look at the Ice Cream example with only one independent variable or explanatory variable (Daily Temperature).
  $$y_i = \beta_0 + \beta_1 x_i + \varepsilon_i$$

Where:
- $y_i$ is the Dependent Variable (Ice Cream Sales). It's a dependent variable as the Ice Cream Sales depend on the Daily Temperature, but the Daily Temperature does not depend on the Ice Cream Sales.
- $x_i$ is the independent variable, which would be the Daily Temperature.
- $\varepsilon_i$ relates to all values that are classed as **Unexplained**.
- $\beta_0 + \beta_1$ are coefficients, a linear relationship

**Estimating the 'betas'**

### 3. Introduction to Regression

- Started with studying dependence of one **outcome/response** variable on one **predictor/explanatory** variable.
- We can also have more than one explanatory variable.
- In this course, we will study **linear regression**.

### 4. Types of Linear Regression

- **Simple Linear Regression (SLR)**: association between two variables.
- **Multiple Linear Regression (MLR)**: extension of SLR to include multiple explanatory variables.

### 5. Goals of Regression Analysis

- Assess the fit of the model ensuring assumptions are met.
- Diagnose any violations and errors.
- Remedy these violations and errors.
- Finally, make inferences.

### 6. What Linear Models Can Do

- Description
- Prediction
- Control

> Regression models show **association**, not **causation**.

### 7. Example Questions

1. Are daughters taller than mothers?
2. Does changing class size affect student success?
3. Does house price increase with living area?
4. Do countries with higher per capita income have lower birth rates?
5. Are women underpaid compared to men?

### 8. Population and Sample

**Population (true world)**
- A collection of the whole of something that you are interested in.
- Parameters: true values describing the population (e.g., $\mu$, $\sigma^2$) — usually unknown.

**Sample (your subjective world)**
- A set of individuals randomly drawn from the population.
- Statistics: values calculated from the sample that serve as estimators of parameters (e.g., $\bar{X}$, $S^2$).
- The sample should ideally represent the population.

### 9. Properties of Estimators

- It has random variables ($\bar{X}$).
- It has a probability distribution, often called a sampling distribution.
  $$E(X) = \mu, Var(\bar{X}) = \frac{\sigma^2}{n}$$
- Central Limit Theorem (CLT): $\bar{X}$ is asymptotically normally distributed.
- We use this to make statistical inferences:
  - Confidence intervals
  - Hypothesis testing

### 10. Regression Definition

- A statistical methodology that describes the relation between two or more variables so that a response or outcome variable can be estimated from explanatory variables.
- Widely used in business, the social and behavioural sciences, the biological sciences, and many other disciplines.

> [!example] Example 1 - Simple Linear Regression
> - Predict sales of a product using the relationship between sales and advertising spending.
> - Use a Simple Linear Regression Model:
>   - 1 Explanatory Variable
>   - 1 Outcome Variable

> [!example] Example 2 - Multiple Linear Regression
> - Does the price of a house increase with increase in living area?
> - Use a Multiple Linear Regression Model with multiple predictors:
>   - Many Explanatory Variables
>   - 1 Outcome Variable

> The outcome is always **one variable**.

### 11. Relation Between Variables

**Functional Relation**
- Expressed as a perfect mathematical formula:
  $$Y = f(X)$$
- A perfect mapping from $X$ to $Y$.

**Statistical Relation**
- Not perfect - observations are typically **scattered** around the curve.
- Not all of the points lie on the line in a statistical relationship.

![Functional vs Statistical Relationship](Pasted%20image%2020250723123716.png)

### 12. Construction of Regression Models

- **X**: independent variable, predictor, regressor, covariate
- **Y**: dependent variable, response, outcome, output
- Include only a limited number of **useful** covariates.

**How do you choose covariates?**
- Through exploratory studies
- Based on existing theory

### 13. Functional Form of Regression Relation

- The choice of $f$ in $Y = f(X)$ is tied to the choice of covariates.
- Sometimes theory guides the appropriate form of $f$.
- Often determined empirically - scatter plots are helpful.
- Linear or quadratic forms are often a good starting point.

### 14. Scope of Models

- Models are typically restricted to a certain **interval** or **region** of data.
- Scope is determined by:
  - The design of the investigation
  - The range of observed data
- A model may perform poorly with **unseen** or **out-of-scope** data.

![Model Scope](Pasted%20image%2020250723174815.png)

---

## Notes

---

## Examples

> [!example] Ice Cream Sales Example
> See Key Concepts section above.

> [!example] Example 1 - Simple Linear Regression
> See Key Concepts section above.

> [!example] Example 2 - Multiple Linear Regression
> See Key Concepts section above.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Regression | Statistical methodology describing relation between variables to estimate response from explanatory variables |
| Simple Linear Regression (SLR) | Association between two variables |
| Multiple Linear Regression (MLR) | Extension of SLR to include multiple explanatory variables |
| Population Regression Equation | $y_i = \beta_0 + \beta_1 x_i + \varepsilon_i$ |
| $\beta_0$ | Intercept coefficient |
| $\beta_1$ | Slope coefficient |
| $\varepsilon_i$ | Error term (unexplained variation) |
| $y_i$ | Dependent/response/outcome variable |
| $x_i$ | Independent/predictor/explanatory variable |
| Functional Relation | Perfect mathematical mapping $Y = f(X)$ |
| Statistical Relation | Imperfect relation with scattered observations |
| Covariate | Another term for independent/predictor variable |
| Parameter | True value describing population (usually unknown) |
| Statistic | Value calculated from sample as estimator of parameter |
| Central Limit Theorem | $\bar{X}$ is asymptotically normally distributed |

---

## Questions & Discussion

- [ ] What is the difference between functional and statistical relations?
- [ ] How do you choose covariates for a regression model?
- [ ] What is the scope of a regression model?
- [ ] What are the goals of regression analysis?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand the difference between SLR and MLR
- [ ] Review population vs sample concepts

---

## Related Notes

- [[200 Finance/Regression Modelling/STAT2008 - Regression Modelling|Course Summary]]

---

## References
