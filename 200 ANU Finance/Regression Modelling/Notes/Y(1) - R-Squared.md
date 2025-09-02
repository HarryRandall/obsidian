**Class**: [[STAT2008 - Regression Modelling]]  
**Date**: Wednesday, 27 August 2025, 10:21  
**Tags**: #statistics #correlation #regression
**Link**: [Youtube Video](https://www.youtube.com/watch?v=2AQKmw14mHM&list=PLblh5JKOoLUIzaEkCLIUxQFjPIlapw8nU)

---

## Correlation (R Value)  
- $R$ close to **1** or **-1** → strong relationship.  
- $R$ close to **0** → weak or no relationship.  

<div align="center">
  <img src="Screenshot-2023-08-12-092701.jpg" width="500">
</div>

- Strong Positive: $R = 1$  
- Weak Positive: $R = 0.5$  
- Strong Negative: $R = -1$  
- Weak Negative: $R = -0.25$  
- Moderate Negative: $R = -0.5$  
- No Correlation: $R = 0$  

---

## Explained Variation (R$^2$ Value)  
- $R^2$ is easier to interpret than $R$.  
- Example: $R^2 = 0.7$ explains **1.4× more variation** than $R^2 = 0.5$.  
- Calculation is straightforward:  

$$
R^2 = \frac{\mathrm{Var}(\text{mean}) - \mathrm{Var}(\text{line})}{\mathrm{Var}(\text{mean})}
$$  

---

## Example: Mouse Weights  

<div align="center">
  <img src="Pasted image 20250827103141.png" width="500">
</div>

- Mouse Weight is plotted on the Y-axis (high at top, low at bottom).  

<div align="center">
  <img src="Pasted image 20250827104003.png" width="500">
</div>

- The **mean weight** is shown as a horizontal line.  

<div align="center">
  <img src="Pasted image 20250827104230.png" width="500">
</div>

- Variation around the mean (residuals):  

$$\sum (w_i - \bar{w})^2$$  

- Squaring ensures positive and negative deviations don’t cancel.  

<div align="center">
  <img src="Pasted image 20250827105126.png" width="500">
</div>

- Reordering by **Mouse Size** changes only the X-axis, not the variation.  

<div align="center">
  <img src="Pasted image 20250827105505.png" width="500">
</div>

- Mean line is unchanged, but residuals align to Mouse Size.  

> **Question**: Given a mouse’s size, is the mean the best predictor of its weight?  

- No — a **line of best fit** is better.  

<div align="center">
  <img src="Pasted image 20250827110444.png" width="500">
</div>

- The regression line captures the relationship between size and weight, allowing prediction.  

---

## Residuals and R$^2$  

<div align="center">
  <img src="Pasted image 20250827110809.png" width="500">
</div>

- Does the regression line fit better than the mean?  
- By eye, yes — but we quantify it with $R^2$.  

---

## Variance Explained  

- $\mathrm{Var}(\text{mean})$ = total variation around the mean.  

$$\sum (w_i - \bar{w})^2$$  

- $\mathrm{Var}(\text{line})$ = variation around the regression line.  

---

## Worked Example 1: Mouse Size vs Weight  

- $\mathrm{Var}(\text{mean}) = 32$  
- $\mathrm{Var}(\text{line}) = 6$  

$$
R^2 = \frac{32 - 6}{32} = \frac{26}{32} = 0.8125
$$  

- The regression line explains **≈81%** of the variation in weight.  

---

## Worked Example 2: Rock Sniffing vs Weight  

<div align="center">
  <img src="Pasted image 20250827112048.png" width="500">
</div>

- $\mathrm{Var}(\text{mean}) = 32$  
- $\mathrm{Var}(\text{line}) = 30$  

$$
R^2 = \frac{32 - 30}{32} = \frac{2}{32} = 0.06
$$  

- The regression line explains only **≈6%** of the variation.  
- Sniffing time has almost no explanatory power for weight.  

---

## Interpreting R vs R$^2$  

- When $R^2 = 0.9$:  
  - “Excellent — the relationship explains 90% of variation.”  
- When $R^2 = 0.01$:  
  - “Who cares if it’s significant — it only explains 1% of variation.”  

- Remember: $R^2$ is just $R$ squared.  

- If $R = 0.9$:  
  - $0.9^2 = 0.81$ → explains **81%** of variation.  
- If $R = 0.5$:  
  - $0.5^2 = 0.25$ → explains **25%** of variation.  
  - That might be “good” if many other factors exist, but “bad” if only one factor matters.  
