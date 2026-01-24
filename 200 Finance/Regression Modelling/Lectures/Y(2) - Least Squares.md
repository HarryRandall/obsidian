**Class**: [[STAT2008 - Regression Modelling]]  
**Date**: Wednesday, 27 August 2025, 11:58  
**Tags**: #regression #least-squares #residuals 
**Link**: [Youtube Video](https://www.youtube.com/watch?v=PaFPbb66DxQ&list=PLblh5JKOoLUIzaEkCLIUxQFjPIlapw8nU&index=2)

---
## The Data

We start with some data points:

<div align="center">
  <img src="Pasted image 20250827120145.png" width="400">
</div>

Plotted on an $X$–$Y$ graph:

<div align="center">
  <img src="Pasted image 20250827120308.png" width="400">
</div>

---

## Adding a Line of Best Fit

We often add a line of best fit to see the general trend:

<div align="center">
  <img src="Pasted image 20250827120421.png" width="400">
</div>

But is this the best line? Which one should we use?

<div align="center">
  <img src="Pasted image 20250827120506.png" width="400">
</div>

---

## The Mean Line

Another candidate is the mean line.  
It is usually the **worst fit**, but gives us a starting point for thinking about how to optimise line fitting.

<div align="center">
  <img src="Pasted image 20250827121017.png" width="400">
</div>

Here, the mean is $3.5$, which we call $b$:

<div align="center">
  <img src="Pasted image 20250827121111.png" width="400">
</div>

So we have:

$$y = b = 3.5$$

<div align="center">
  <img src="Pasted image 20250827122252.png" width="400">
</div>

---

## Residuals

Focus on an individual point $(X_1, Y_1)$:

<div align="center">
  <img src="Pasted image 20250827122508.png" width="400">
</div>

The **residual** is the distance between the point and the mean line.  

For the first point:  
$$\text{Residual} = b - y_1$$

---

## Sum of Residuals

If we add all the residuals together:

$$(b - y_1) + (b - y_2) + \dots + (b - y_n)$$

<div align="center">
  <img src="Pasted image 20250827122923.png" width="400">
</div>

But notice: if $y_i > b$, then $(b - y_i)$ is negative. This means positive and negative values could cancel out, making the fit appear better than it really is.

---

## Sum of Squared Residuals

To solve this, we square each term:

$$(b - y_1)^2 + (b - y_2)^2 + \dots + (b - y_n)^2$$

For this example:

$$\text{SSR} = 24.62$$

This is called the **sum of squared residuals (SSR)**.  
It measures how well a line fits the data: smaller SSR means a better fit.

---

## Towards the Best Fit Line

To find the optimal line, we use the general line equation:

$$y = m \times x + b$$

- $m$: the slope of the line  
- $b$: the $y$-intercept  

The line of best fit is the one that **minimises the sum of squared residuals**.
