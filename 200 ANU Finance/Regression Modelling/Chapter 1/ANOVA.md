**Class**: [[STAT2008 - Regression Modelling]]
**Date**: Saturday, 9 August 2025, 15:44
**Tags**: 

---
### ANOVA for Simple Linear Regression - House Price Example

We have $n = 10$ observations.
$$\begin{array}{|c|c|}
\hline
\textbf{House Size} & \textbf{House Price} \\
\hline
1852 & 316000 \\
1975 & 277000 \\
1176 & 155000 \\
1550 & 253000 \\
1458 & 211000 \\
2689 & 329000 \\
2259 & 317000 \\
2763 & 360000 \\
1325 & 204000 \\
1992 & 250000 \\
\hline
\end{array}$$

$$
x = \text{house size}, \quad y = \text{house price}
$$
$$
\bar{x} = 1903.9, \quad \bar{y} = 267{,}200
$$

---

##### **Step 1** - Core Sums $S_{xx}, S_{yy}, S_{xy}$

$$
S_{xx} = \sum (x_i - \bar{x})^2 = 2{,}685{,}076.9
$$
$$
S_{yy} = \sum (y_i - \bar{y})^2 = 37{,}627{,}600{,}000
$$
$$
S_{xy} = \sum (x_i - \bar{x})(y_i - \bar{y}) = 290{,}918{,}200
$$

---

##### **Step 2** - Slope $b$ and Intercept $a$

$$
b = \frac{S_{xy}}{S_{xx}} 
= \frac{290{,}918{,}200}{2{,}685{,}076.9} 
= 108.3463
$$

$$
a = \bar{y} - b\,\bar{x} 
= 267{,}200 - 108.3463 \times 1903.9 
= 60{,}919.4421
$$

Fitted regression line:
$$
\hat{y} = 60{,}919.4421 + 108.3463 \, x
$$
![[Pasted image 20250809155107.png]]
This plot shows the observed house price data (points) and the fitted regression line (solid line) from our model:

$$\hat{y} = 60{,}919.44 + 108.35x$$
It visually demonstrates the general positive relationship between house size and price.

---

##### **Step 3** - Fitted Values and Residuals

$$
\hat{y}_i = a + b\,x_i
$$
$$
e_i = y_i - \hat{y}_i
$$

Residuals represent the **unexplained** part of $y$ after fitting the line.

![[Pasted image 20250809155123.png]]

Residuals ($e_i = y_i - \hat{y}_i$​) are plotted against house size. The horizontal dashed line at zero represents perfect predictions. Ideally, residuals should be randomly scattered with constant variance (homoscedasticity). Any patterns could indicate model misspecification.

---

##### **Step 4** - ANOVA Decomposition

**Total Sum of Squares (SST):**
$$
\text{SST} = \sum (y_i - \bar{y})^2 = S_{yy} = 37{,}627{,}600{,}000
$$

**Regression Sum of Squares (SSR):**
$$
\text{SSR} = \sum (\hat{y}_i - \bar{y})^2 
= \frac{S_{xy}^2}{S_{xx}} 
= \frac{(290{,}918{,}200)^2}{2{,}685{,}076.9} 
= 31{,}519{,}916{,}279.2097
$$

**Error Sum of Squares (SSE):**
$$
\text{SSE} = \sum (y_i - \hat{y}_i)^2 
= \text{SST} - \text{SSR} 
= 6{,}107{,}683{,}720.7903
$$

![[Pasted image 20250809155142.png]]

This bar chart illustrates the partitioning of total variation in $y$ (SST) into:

- **SSR (Explained)**: variation accounted for by the regression model.
    
- **SSE (Unexplained)**: variation remaining in the residuals.  
    In this example, $R^2 \approx 0.838$, so most of the variance is explained by house size.

---

##### **Step 5**  Degrees of Freedom

$$
\text{df}_{\text{Reg}} = 1 \quad (\text{one slope})
$$
$$
\text{df}_{\text{Err}} = n - p = 10 - 2 = 8
$$
$$
\text{df}_{\text{Tot}} = n - 1 = 9
$$

---

##### **Step 6** - Mean Squares and $F$-Statistic

$$
\text{MSR} = \frac{\text{SSR}}{\text{df}_{\text{Reg}}} 
= \frac{31{,}519{,}916{,}279.2097}{1} 
= 31{,}519{,}916{,}279.2097
$$

$$
\text{MSE} = \frac{\text{SSE}}{\text{df}_{\text{Err}}} 
= \frac{6{,}107{,}683{,}720.7903}{8} 
= 763{,}460{,}465.0988
$$

$$
F = \frac{\text{MSR}}{\text{MSE}} 
= \frac{31{,}519{,}916{,}279.2097}{763{,}460{,}465.0988} 
= 41.2856
$$

With $(1,8)$ df, the $p$-value $\approx 0.000204$, indicating a highly significant relationship.

---

##### **Step 7** - Extra Quantities

Residual Standard Error (RSE):
$$
\sqrt{\text{MSE}} = \sqrt{763{,}460{,}465.0988} = 27{,}630.79
$$

Coefficient of determination:
$$
R^2 = \frac{\text{SSR}}{\text{SST}} = 0.83768
$$

Adjusted $R^2$:
$$
\bar{R}^2 = 1 - \frac{\text{SSE}/(n-2)}{\text{SST}/(n-1)} = 0.81739
$$

Standard Error of slope:
$$
SE(b) = \sqrt{\frac{\text{MSE}}{S_{xx}}} 
= \sqrt{\frac{763{,}460{,}465.0988}{2{,}685{,}076.9}} 
= 16.8622
$$

$t$-statistic for slope:
$$
t = \frac{b}{SE(b)} = \frac{108.3463}{16.8622} = 6.4254
$$
Note: $t^2 = F$ in simple linear regression.

95% CI for slope ($t_{0.975,8} \approx 2.306$):
$$
108.3463 \pm 2.306(16.8622) = [69.462, \; 147.231]
$$

---

**Summary:**  
- **SST** = total variation in $y$  
- **SSR** = explained variation (by regression)  
- **SSE** = unexplained variation (residuals)  
- **F**-stat tests whether the slope is significantly different from $0$  
- **$R^2$** shows the proportion of variance explained  
- **$SE(b)$, $t$, and CI** give inference for the slope.
