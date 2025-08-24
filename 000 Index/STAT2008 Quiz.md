**Class**: [[]]
**Date**: Friday, 22 August 2025, 10:45
**Tags**: 

---
# 📘 Regression Quiz – Questions & Answers (Ordered)

---

## Question 1 – Director of Admissions

The director of admissions of a small college selected 120 students at random from the new freshman class in a study to determine whether a student’s grade point average (GPA) at the end of the freshman year ($Y$) can be predicted from the ACT test score ($X$). The director would like to fit a simple linear regression on $Y$ and $X$.  

**Summary statistics provided:**  
- $\sum X = 2751$  
- $\sum (X_i - \bar{X})^2 = 2370.95$  
- $\sum Y = 3688.886$  
- $\sum (Y_i - \bar{Y})^2 = 1183.379$  
- $\sum (X_i - \bar{X})(Y_i - \bar{Y}) = 93.899$  

**Task:** Based on the statistics, calculate the estimate of $\beta_0$.  

---

## Question 2 – Scatter Plot (Diamonds in USD vs Carats)

Which of the following statements is true regarding the scatter plot showing the relationship between the price of a diamond (USD) and its weight in carats?  

**Scatter Plot (from screenshot):**  
- Strongly increasing, nonlinear, variance increases with $X$.  

**Options:**  
- a) The scatter plot shows a positive linear relationship; linear regression appropriate.  
- b) The scatter plot shows a negative relationship; linear regression not appropriate.  
- c) A simple linear regression model is not appropriate (curvilinear + non-constant variance).  
- d) Linear regression is appropriate.  

---

## Question 3 – Scatter Plot (Correlation Coefficient)

Given a scatter plot of $Y$ against $X$ with coefficient of determination $R^2 = 0.54$, what is the most likely value of the correlation coefficient $r$ between $X$ and $Y$?  

**Scatter Plot (from screenshot):**  

$$
R^2 = 0.54
$$

**Options:**  
- a) -0.735  
- b) -0.292  
- c) 0.292  
- d) 0.735  

---

## Question 4 – Muscle Mass & Age

A person’s muscle mass is expected to decrease with age. A nutritionist randomly selected women aged 40–79.  

**Regression output:**  

```text
Coefficients:
(Intercept)  156.3466
X            -1.1900
Residual standard error: 8.066 on 56 df
```  

**Task:** Calculate SSE of the model.  

Formula: $SSE = MSE \times (n-2)$  

---

## Question 5 – SLR Model Assumptions

Select all correct statements of the simple linear regression model introduced in this course.  

**Options:**  
- a) $E(Y_i) = \beta_0 + \beta_1 X_i + \epsilon_i$  
- b) $Cov(\epsilon_i, \epsilon_j) = 0$ when $i \neq j$  
- c) Error terms have constant variance.  
- d) Responses are independent and identically distributed.  
- e) Sum of error terms = 0.  

---

## Question 6 – Prediction Interval vs CI

Given the level of $X$, the prediction interval of a response is always wider than the confidence interval of the mean of the response.  

---

## Question 7 – ANOVA Table for SLR

Below is the ANOVA table for a simple linear regression model. We know the coefficient of determination $R^2 = 78.53\%$. Please obtain the value of the $F$ statistic.  

**ANOVA Table (from screenshot):**  

| Source    | Df  | Sum Sq | Mean Sq | F value | Pr(>F) |     |
| --------- | --- | ------ | ------- | ------- | ------ | --- |
| X         | 1   | 2500   | ?       | ?       |        |     |
| Residuals | 42  |        |         |         |        |     |

---

## Question 8 – Employee Productivity Study

In a company, employees were asked to participate in a month-long training seminar. Each employee recorded the number of hours spent in class preparation per week. After the seminar, productivity was measured. A positive linear relationship between preparation time and productivity was found.  

**Task:** Can we conclude that increased preparation time causes increased productivity?  

---

## Question 9 – Residuals in SLR

Select all correct statements of residuals for a simple linear regression model.  

**Options:**  
- a) The sum of weighted residuals is zero when weighted by response.  
- b) Residuals have constant variance.  
- c) The sum of squared residuals is a minimum.  
- d) Residuals are correlated.  

---

## Question 10 – Fitted Regression Model (n=60)

Please select all correct statements regarding the fitted regression model below.  

**Model output:**  

```text
Coefficients:
             Estimate  Std. Error  t value  Pr(>|t|)
(Intercept)   156.3466   5.5123    28.36    <2e-16 ***
X              -1.1900   0.0902   -13.19    <2e-16 ***
```  

**Options:**  
- a) The 95% confidence interval for slope is [-1.371, -1.009].  
- b) Test statistic for $H_0: \beta_1 = -1$ vs $H_1: \beta_1 \neq -1$ is -10.25.  
- c) When $X$ increases by 1 unit, mean $Y$ decreases by 1.19.  
- d) The intercept interpretation is not meaningful ($X=0$ is out of scope).  

---

# ✅ Correct Answers

1. $\beta_0 = 2.1661$  
2. c  
3. d (0.735)  
4. SSE = 3643.3799  
5. b, c  
6. True  
7. $F = 153.6218$  
8. False  
9. c, d  
10. a, c, d  
