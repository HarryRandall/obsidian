**Class**: [[STAT2008 - Regression Modelling]]
**Date**: Tuesday, 16 September 2025, 13:03
**Tags**: 

---
Lots of R code.

![[Pasted image 20250916131612.png]]

- Always spend some time exploring the data that you have.
	- Whether the data is right for fitting a linear model.
- New function, 'pairs' instead of 'plot'.
- It produces a pairwise of scatter plots, for every combination of variables for a given set.
	- 4 variables = $4 \times 4 - 4$ plots.
- We're going to look at half of the data, so the top right half, where price is on the Y axis.

- "Fanning out shape" - nonlinear relationship.
	- Price vs Sqrt.living
	- Prive vs Bathrooms
- Price vs Bedrooms
	- Most likely an input mistake, outlier of 100.
	- Skews data.
	- Should remove, but document it, as it could be a real data point.


Doing some R analysis, we get the following
```r
house <- house[-which(house$bedrooms > 20), -1]
pairs(house, log=1)
```

![[Pasted image 20250916132933.png]]

- Applying log only effects the viewing / the scale of the data.
- It doesn't change any of the individual datapoints, just the way it's viewed.

- These pair plots are important as they can tell you if they fit the linear model.

## Fitted Model
- The fitted MLR model
$$\hat{y}$ = 12.2098 + 0.3729X_1 + 0.0385X_2$$
- The mean log(price) are expected to increase by 0.3729 when the size of the house increases by 1 thousand sqft, holding the number of bathrooms constant.
- The mean log(price) are expected to increase by 0.0385 when the size of the bathrooms increases by 1, holding the size of the house constant.

## Coefficients
- The coefficient vector estimator $b = (X'X)^-1X'Y$ 
- The variance-covariance matrix $\sigma^2(b) = \sigma^2(X'X)^-1$

- The estimated variance-covariance matrix $s^2(b) = MSE(X'X)^-1$
Where:
$$MSE = \frac{SSE}{n-p} = \frac{\sum^n_{i=1}(Y_i-\hat{Y_i})^2}{n-p}$$
## Summary() in R
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

## Confidence Interval for $\beta_k$ 
- Distribution for $b_k$
$$\frac{b_k - \beta_k}{t(b_k)} ~ t(n-p) \; k=0,1,\dots,p-1$$
- Hence the $100 (1 - \alpha)\%$ confidence interval for $\beta_k$ is:
$$[b_k - t_{\frac{\alpha}{2}}(n-p)s(b_k),\; b_k + t_{\frac{\alpha}{2}} s(b_k)]$$

## ANOVA in MLR
