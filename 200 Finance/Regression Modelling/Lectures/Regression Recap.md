**Date**: Saturday, 4 October 2025, 10:35
**Tags**: #Regression

---
## Introduction to Regression

![[Pasted image 20251004103529.png]]

- The scatter-plot above represents  people going to the pub on a Friday afternoon with temperatures.
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

## Regression Video 2
### R2

$$R^2 = \frac{\text{SSR}}{\text{SSE}}$$
 ![[Pasted image 20251005123728.png]]
- Each of these results represent different studies.

![[Pasted image 20251005123754.png]]

- A regression is basically drawing a line of best fit through all of the observations.
- The top left, the line of best fit goes through all of the observations.
	- This means it has an $R^2$ of 1.
- The top right
	- $R^2$ = 0.83103
- Bottom left
	- $R^2$ = 0.53406
- Bottom right
	- $R^2$ = 0.28319

### Degrees of Freedom

$$Y_i = B_0 + B_1 X_i + \epsilon_i$$
**Question:** What is the minimum number of observations required to estimate this regression?

![[Pasted image 20251005125530.png]]

- With one person in the study, you can't run a regression, as you can't run a line through one point.

![[Pasted image 20251005125607.png]]

- With two people in the study, we can draw a line of best fit through those two points, but that represents a perfect relationship of $R^2$ of 1. That line of best fit is always going to go through those points.
- Therefore the strength of those relationships cannot be expressed.

![[Pasted image 20251005125654.png]]

- Once we adjust the model to get this new entry, the model finally has a degree of freedom to move around, and adjust the $R^2$ value.

$$Y_i = B_0 + B_1 X_1 + B_2 X_2 + \epsilon_i$$
- With two variables, we can use the following formula:

$$ df = n - k - 1$$
- Where n is the number of residuals, k is the number of predictors, and we subtract 1 to have some freedom.

### Adjusted R2
- We know that $R^2$ can be quite deceiving when we have low values of degrees of freedom.

$$\displaystyle \bar{R}^2 = 1 - (1 - R^2)\frac{n - 1}{n - k - 1}$$

$$\displaystyle \bar{R}^2 = 1 - \left(\frac{SSE}{SST}\right)\frac{n - 1}{n - k - 1}$$

- As `k` increases, the value of adjusted $R^2$ decreases.
- Adjusted $R^2$ accounts for the reduced power in the model when you have a low degrees of freedom.

## Anova

**Example** The Olympics, how many medals a certain country should get.

![[Pasted image 20251006092835.png]]

- This it the ANOVA table.
- The question we ask is 'How much variation is there in the dependent variable?'
```sql
Total medals: 33, 28, 36, 25, ..., 3, 1, 1, 1
Average: 11.3 medals.
```
- Once we have the average, we calculate the sum of squares:
$$\text{Sum Of Squares} = \sum (X_i - \bar{x})^2$$
- We take each of the observations for $x$ and we subtract the mean $\bar{x}$ and square the value.
- If we do that for all of the values, we get $1393.76$ in the model.
- In any given regression, we're going to try and explain any of the variation in our sum of squares number via the $x$ variable.

**Question:** How much "explaining" is the model doing?
- The degrees of freedom on the model shows us how many predictors that we are using in the model. So we have three variables that we are using to explain:
$$R^2 = \frac{439.274821}{1393.76} = 0.315$$
- So $31.5\%$ of the SS variation is explained by our $x$ variables.
- This means that there's still $59.5\%$ of the variation going unexplained.

- The residual degrees of freedom is $n - k - 1$, and as we sampled 25 countries ($n$), we have $25 - 3 - 1$ which gives us $21$ degrees of freedom for the residual.

### MS or Mean Squared
- This is quite simple, it's just the Sum of Squares divided by the degrees of freedom.

$$MS = \frac{SS}{df}$$
$$ MS = \frac{439.27}{3} = 146.42$$
- We use the Mean Squared value to tell us if this model with 3 explanatory variables is better than a model with 0 explanatory variables.
$$H_0: \beta_1 = \beta_2 = \beta_3 = 0$$
- This hypothesis test states that all three coefficients are jointly equal to 0.
- This would mean that the regression is absolutely useless, as it doesn't explain any of the variation in the model.
- We can reject this by constructing an F statistic
$$F_{3, 21} = \frac{146.42}{45.45}$$
- This is dividing the model mean squared by the residual mean squared, which returns 3.22, which allows us to reject the null hypothesis $H_0$ at a $5\%$ level of significance. 

### Root MSE
- This is simply the square root of the Mean Squared of the residual.
- This tells us how far, on average, a value is from the fitted regression line.
- Basically how well the value fits the model.

### The Variables Section
![[Pasted image 20251006100458.png]]
- There are three variables here:
	- The centroids latitude
	- The elevation
	- The log population
- There's also a fourth element, the $\_$cons element, which is simply the constant term.

The sample regression equation already defined:
$$\text{Number of medals} = b_0 + b_1(\text{latitude}_i) + b_2(\text{elevation}_i) + b_3(\text{log population}_i)$$
- The $b_0$ value is rarely considered, but it has to be there.
- It means 'the expected number of medals to be won' with latitude(0), elevation(0), and log population(0).
- It needs to be there for the formula to work.

- In the top left of the table, we have *total_medal* which is the $y$ variable, and what we are trying to explain using the $x$ predictors.

**Coefficients**
![[Pasted image 20251006100458.png]]
- The first column is the Coefficients.
$$\text{Number of medals} = 54.528 + 0.523(\text{latitude}_i) + 0.003(\text{elevation}_i) + 2.146(\text{log population}_i)$$
- This means that for every additional degree of latitude a country has, the expected number of medals increases by 0.523 on average.

We can also use these coefficients to predict the value for a country. For example, the Netherlands:
- Latitude: 52.2
- Elevation: 30.1m
- Population: 16,500,000 (log population = 16.62)
$$\text{Number of medals} = 54.528 + 0.523(52.2) + 0.003(30.1) + 2.146(16.6) = 8.557$$
- So based on our model, the Netherlands should get 8.557 medals.

**The Other Variables**
![[Pasted image 20251006102103.png]]

- This whole extra panel only tells you one extra piece of information for each variable.
- It just tells it to you in different ways.
- Looking at the centroid latitude predictor, the coefficient was $0.5227$ and the Standard Error is $.1889$. 
- This tells us the typical variation of this coefficient.
- It gives you the average expected error term from this sample value.

- If we divide the Coefficient by the Standard error, we get a T statistic.
$$t = \frac{0.522752}{0.1889091}$$
- This gives us a t value of $2.77$
- The higher the t value, the more significant the variable is (positive or negative).
- 2.77 tells us that the variable will be more significant than the elevation (0.83 value).

![[Pasted image 20251006102703.png]]

- The null hypothesis for $\beta_1$ was equal to 0.
- We have our sample value of $0.522$ and $t_1 = 2.77$ (a standardised coefficient).

![[Pasted image 20251006102829.png]]
- This tells us what the probability of getting something more extreme if the null hypothesis is true.
- If the null hypothesis is true ($\beta_1 = 0$), the change of us getting a sample as extreme as we did is $\beta_1 = 0.522$, is $1.2\%$.
- 