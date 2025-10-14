**Class**: [[STAT2008 - Regression Modelling]]
**Date**: Tuesday, 7 October 2025, 12:59
**Tags**: 

---
## Lecture 1
### Error Assumptions
- Diagnostic Tools
	- Residual vs Fitted Value
	- Q-Q plot
	- Plot residual against some order (e.g. time)
	- Tests (not covered in this course)

![[Pasted image 20251007134129.png]]

![[Pasted image 20251007134144.png]]

### Residual Plots
- To check model adequacy (the correct form of regression function):
	- In SLR, we simply look at the shape of the scatter plot between X and Y, or the plot of residuals against $\frac{X}{\hat{Y}}$
	- In MLR, we need to check the structure of the model between $Y$ and one of the $X$ variables. We can make pairwise scatter plots or make plots of residuals against $\hat{Y}$ or one of the $X$ variables.
	- Also the plotting of residuals against predictor variables not yet in regression model can be used to determine whether it would be helpful to add one or more of these variables to the model.
	- When the predictors have something in common amongst them, it explains its response to the predictor, and also it's response in conjunction with another predictor. We want to remove this conjunction bit.
- A limitation of the residual plots is that they may not properly show the nature of the marginal effect of a predictor variable, given the other predictor variables in the model.
- We use added-variable plot, which is also called partial regression plot or adjusted variable plot.

- Added-variable plot is a refined residual plot that provides graphic information about the marginal importance of a predictor variable, given the other predictor variables already in the model.
- Sometimes useful for identifying the nature of the marginal relation for a predictor variable in the regression.

### Added-Variable Plot
- The "unexplained" or "uncorrelated" parts are just residuals
- Thus we just need to plot the residuals from the two models:
	- The residuals from the regression of $Y$ on $X_1$ and $X_2$, against
	- The residuals from the regression on $X_3$ on $X_1$ and $X_2$
- The residual-residual plot
	- Shows the marginal imporatance of this variable;
	- May provide information about the nature of the marginal regression relation for the predictor.
	- May help in identifying outlier or influential plots.

### Shape of Added-Variable Plot
![[Pasted image 20251007141302.png]]


### The Marginal Relation
- The residuals of this model are equal to the residuals of the full model.
- The slope of the regression line in this model is equal to the coefficient of this predictor in the full model.
- The SSR of the model is equal to the extra sum of squares for this predictor in the full model.