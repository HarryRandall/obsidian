**Class**: [[STAT2008 - Regression Modelling]]
**Date**: Wednesday, 27 August 2025, 12:58
**Tags**: 

---
## The Main Ideas
1) Use least-squares to fit a line to the data.
2) Calculate R$^2$ 
3) Calculate a p-value for R$^2$

## Recap of R$^2$ 
When calculating R$^2$, we use the following formula:

$$R^2 = \frac{\mathrm{Var}(\text{mean}) - \mathrm{Var}(\text{line})}{\mathrm{Var}(\text{mean})}$$
- $\mathrm{Var}(\text{mean})$ = total variation around the mean.
- We measure the distance from the data-point to the mean and square it.
- This is called SS (mean) or SST (Total sum of squares).

- **SST (Total Sum of Squares)**    
    - Measures variation of each $y_i$ **around the mean $\bar{y}$**.
    - Formula: $\text{SST} = \sum (y_i - \bar{y})^2$.
    - Baseline: “How far are the points from the mean?”
- **SSE (Error / Residual Sum of Squares)**
    - Measures variation of each $y_i$ **around the regression line $\hat{y}_i$**.
    - Formula: $\text{SSE} = \sum (y_i - \hat{y}_i)^2$.
    - What’s left unexplained by the line.
- **SSR (Regression Sum of Squares)**
    - Measures variation of the predicted values $\hat{y}_i$ **around the mean $\bar{y}$**.
    - Formula: $\text{SSR} = \sum (\hat{y}_i - \bar{y})^2$.
    - How much of SST the line has explained.
