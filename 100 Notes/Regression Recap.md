**Date**: Saturday, 4 October 2025, 10:35
**Tags**: #Regression

---
## Introduction to Regresseion

![[Pasted image 20251004103529.png]]

- The scatter-plot above represents  people going to the pub on a Friday afternoon with tempreatures.
- Can we turn this into some sort of equation?
- Can we access the strength of that relationship?
- Those two questions is all about what regression is about.

### Where to start
- The best way to think about regression is a line of best fit.
- That line is called 'y-hat'. We like to put 'hats' on things when they are predictions of truths.
- This line is $\hat{y}$

![[Pasted image 20251004105117.png]]

- The $\hat{y}$ line is a prediction of $y$ for a given value of $x$
- Example:
	- At 25, if we have a 25 degree day, we can use this $\hat{y}$ line to assess how much we would expect to be making, so that would be ~$2500.
	- If it's 15 degrees, it would be ~$1500 just by sight.
	- Therefore this line is our estimate or prediction of $y$ for a given value of $x$.
- This $\hat{y}$ has an equation, the **Sample Regression Line**
	- $\hat{y} = -353.11 + 123.54x$
	- There is a constant term, the 'Y-intercept' = -353.11
	- There is a gradient, or $123.54 \times x$ which defines $\hat{y}$ also known as the coefficient of x.

### Sample Regression Line
- How do we find this line.
- Well we can look at all of the residual values (the plotted values on the graph) and we can look at their distance from one another.
- We call these the error terms, the distances to the line itself.
- We want to sum up all of the distances to the line, the line is draw so that particular value is minimised.

![[Pasted image 20251004110255.png]]

- If we appreciate the positive (blue) and negative (red) error terms, if we sum all of those values, we get 0.
- $\sum e = 0$, so that doesn't help us find the line of best fit.
- There are infinite lines that you can draw where the $\sum e = 0$, so that's not really helpful.
- What we're going to have to do is square the distances, to get rid of the negativity, so the negatives become positive.
	- $\sum (e^2) > 0$
- It's that metric, that we're going to trying to minimise to find $\hat{y}$
- $\hat{y}$ can be defined as the line that tries to minimises the sum of the squared errors, so there will only be one line that will do that.

### SSR, SST, SSE Definitions

![[Pasted image 20251004110609.png]]

- This is the same graph with the $\bar{y}$ line, which is simply the average of all of the $y$ values.
- A regression is trying to figure out why a particular variable varies. 

 ![[Pasted image 20251004123507.png]]

- For the residual on that point in the graph, we expect the value to be 'x' on the graph line, as it was a warmer day, hence there should be more sales.
- Because of this, we can calculate the value of this to be $\hat{y}_i - \bar{y}$.
- But because it's not directly on the line, there is some factor that we cant control, which is $e_i$ or the error term of that value. The definition of this is $y_i - \hat{y}_i$ which is the value - the fitted regression line point.
- Out of the total deviation, there is an explained component, and an unexplained component.

This leads us to the values of SSR, SSE, and SST.

**SSR** - green
- This is written formally as $SSR = \sum(\hat{y}_i - \bar{y})^2$
- This is the distance between the fitted values $\hat{y}_i$ and the overall mean of y $\bar{y}$.
- When you square all of those green bits across data points, you get $SSR$.
- This is the explained variation - how much better your regression line does as opposed to the mean.

**SSE** $e_i$ - red 
- This is written formally as $SSR = \sum(y_i - \hat{y}_i)^2$
- If you sum up all of the residuals or 'errors', you will get Sum of Squares Errors.
- This is the unexplained variation from the residual to the Simple Regression Line

**SST**
- This is $SST = SSR + SSE$
- We can also write it as $SST = \sum(y_i - \bar{y})^2$
- This stands for 'Sum of Squares Total'
- It's the total distance from the mean, the explained and non-explained.

**R2**
- This can be written as $\frac{SSR}{SST}$
- As it's SSR / SST, it's basically saying what's explained, vs what's not explained.
- This means that if the value is close to 1, then our line and model explains what's happening quite well, and that's good.
- If they are quite far apart, then the model is not very good at explaining the data, and we have a small $R^2$ value.

![[Pasted image 20251004125227.png]]

- This is represent graphically above, with the first graph having a fair amount of spread around the regression line.
- And the second graph having a low amount of spread and a resultingly high $R^2$ value indicating that the model fits well.

### Error Terms
- If we change the values that we had originally, we're going to get a completely different set of data. Here's an example shifting the months around. 

![[Pasted image 20251004125614.png]]

- Noting that the previous Sample Regression Line was $\hat{y} = -353.11 + 123.54x$ and now it's $\hat{y} = 586.03 + 64.55x$.
- The slope and the y-intercept value changed resulting in a new graph.

- What both of these samples are trying to do is estimate the true effect of temperature on bar takings.
- This is given by the following equation named 'Population Regression Function'

$$ Y = \beta_0 + \beta_1 X + \epsilon$$

- The idea is that we can't ever know the true values of $\beta_0$ and $\beta_1$, but we can estimate them.
- For the current data that we have:
	- $\beta_0 = 586.03$ which is often termed $\hat{\beta_0}$ or $b_0$
	- $\beta_1 = 64.55$ which is often termed $\hat{\beta_1}$  or $b_1$
- But this is just an estimate of the true relationship.

![[Pasted image 20251004130102.png]]

- The yellow line is the true relationship, but it's in yellow because you can never know where it is exactly.
- The $\epsilon$ value at the end of the function is that every observation has some distance (theoretical distance) to that population regression function.
- We can never calculate the $\epsilon$ value, but it does exist in theory.

![[Pasted image 20251004130331.png]]

