**Class**: [[STAT2008 - Regression Modelling]]
**Date**: Tuesday, 22-07-2025
**Tags**: #Rstudio

---
## Youtube Introduction
##### Objectives of regression
- Regression is a means of exploring the **variation** in some quantity.
	- Why Heart Rate various
	- Why the interest rates are going up or down
- This **variation** is separated into **EXPLAINED** and **UNEXPLAINED** components.
###### Example
- The example used for this video is Ice Cream Sales which can be explained by:
	- Daily Temperature
	- Daily Rainfall
	- School Holidays
	- Unexplained, regression will be able to quantify how much of that can be explained.
##### Population Regression Equation
- We will look at the Ice Cream example with only one independent variable or explanatory variable (Daily Temperature).
$$y_i = \beta_0 + \beta_1 x_i + \varepsilon_i$$
Where:
- $y_i$ is the Dependent Variable (Ice Cream Sales). It's a dependent variable as the Ice Cream Sales depend on the Daily Temperature, but the Daily Temperature does not depend on the Ice Cream Sales.
- $x_i$ is the independent variable, which would be the Daily Temperature.
- $\varepsilon_i$ relates to all values that are classed as **Unexplained**.
- $\beta_0 + \beta_1$ are coefficients, a linear relationship

**Estimating the 'betas'**

## Lecture 1
### Introduction to Regression

- Started with studying dependence of one **outcome/response** variable on one **predictor/explanatory** variable.
- We can also have more than one explanatory variable.
- In this course, we will study **linear regression**.

### Types of Linear Regression

- **Simple Linear Regression (SLR)**: association between two variables.
- **Multiple Linear Regression (MLR)**: extension of SLR to include multiple explanatory variables.

### Goals of Regression Analysis
- Assess the fit of the model ensuring assumptions are met.
- Diagnose any violations and errors.
- Remedy these violations and errors.
- Finally, make inferences.

### What Linear Models Can Do
- Description
- Prediction
- Control

> Regression models show **association**, not **causation**.

### Example Questions

1. Are daughters taller than mothers?
2. Does changing class size affect student success?
3. Does house price increase with living area?
4. Do countries with higher per capita income have lower birth rates?
5. Are women underpaid compared to men?

---

## Lecture 2
### Population and Sample

**Population (true world)**
- A collection of the whole of something that you are interested in.
- Parameters: true values describing the population (e.g., $\mu$, $\sigma^2$) — usually unknown.

**Sample (your subjective world)**
- A set of individuals randomly drawn from the population.
- Statistics: values calculated from the sample that serve as estimators of parameters (e.g., $\bar{X}$, $S^2$).
- The sample should ideally represent the population.

---
### Properties of Estimators
- It has random variables ($\bar{X}$).
- It has a probability distribution, often called a sampling distribution.  
$$E(X) = μ, Var(\bar{X}) = \frac{σ^2}{n}$$ 
- Central Limit Theorem (CLT): $\bar{X}$ is asymptotically normally distributed.
- We use this to make statistical inferences:
    - Confidence intervals
    - Hypothesis testing

---

### Regression
- A statistical methodology that describes the relation between two or more variables so that a response or outcome variable can be estimated from explanatory variables.
- Widely used in business, the social and behavioural sciences, the biological sciences, and many other disciplines.

**Example 1**
- Predict sales of a product using the relationship between sales and advertising spending.
- Use a Simple Linear Regression Model:
    - 1 Explanatory Variable
    - 1 Outcome Variable

**Example 2**
- Does the price of a house increase with increase in living area?
- Use a Multiple Linear Regression Model with multiple predictors:
    - Many Explanatory Variables
    - 1 Outcome Variable

> The outcome is always **one variable**.

---

### Relation Between Variables

**Functional Relation**
- Expressed as a perfect mathematical formula:  
$$ Y=f(X)Y = f(X)$$
- A perfect mapping from $X$ to $Y$.

**Statistical Relation**
- Not perfect - observations are typically **scattered** around the curve.
- Not all of the points lie on the line in a statistical relationship.

![Functional vs Statistical Relationship](Pasted%20image%2020250723123716.png)

---
### Construction of Regression Models
- **X**: independent variable, predictor, regressor, covariate
- **Y**: dependent variable, response, outcome, output
- Include only a limited number of **useful** covariates.

**How do you choose covariates?**
- Through exploratory studies
- Based on existing theory

---
### Functional Form of Regression Relation
- The choice of $f$ in $Y = f(X)$ is tied to the choice of covariates.
- Sometimes theory guides the appropriate form of $f$.
- Often determined empirically - scatter plots are helpful.
- Linear or quadratic forms are often a good starting point.

---
### Scope of Models
- Models are typically restricted to a certain **interval** or **region** of data.
- Scope is determined by:
    - The design of the investigation
    - The range of observed data        
- A model may perform poorly with **unseen** or **out-of-scope** data.

![Model Scope](Pasted%20image%2020250723174815.png)
