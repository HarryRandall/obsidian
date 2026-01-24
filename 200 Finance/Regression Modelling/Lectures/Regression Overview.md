**Class**: [[STAT2008 - Regression Modelling]]
**Date**: Saturday, 9 August 2025, 11:11
**Link**: https://www.youtube.com/watch?v=T5AoqxQFkzY&t=134s

---
### What is a Regression Analysis?
- A method for modelling relationships between variables
- It makes it possible to infer or predict a variable based on one or more other variables.

**Example**: You want to figure out what influences a persons salary?
- The highest level of education
- The weekly working hours
- The age of a person

You could now investigate if these three variables have an influence on the salary of a person. If they do, you can predict a persons salary by using the above variables, and plotting them.

- The variable we want to infer or predict is the dependent variable (this doesn't change).
	- This would be the level of education, the weekly working hours, and the age.
	- Also referred to as:
		- **Predictor Variables** 
		- **Input Variables**
- The variable used for prediction are called the independent variables.
	- This would be the salary of a person.
	- Also referred to as:
		- **Response Variables**
		- **Target Variables**

### When do we use Regression Analysis?
- Regression analysis can be used to achieve two main goals.
	1. You can measure the influence of one or more variables on another variable.
		- E.G., how a persons education relates to their salary
	2. Prediction of one variable by one or more other variables.

##### Example (1).  Measuring the influence of one or more variables on another variable:
1. What influence's a children's ability to concentrate? 
	- You want to determine whether certain parameters have a positive or negative impact on their concentration.
	- In this case, you are **not** interested in predicting children's ability to concentrate.
2. Do the educational level of parents and place of residence have an influence on the future education level of children?
	- This is quite research based, and has many applications in the social and economic sciences.
##### Example (2). Prediction of one variable by one or more other variables:
1. How long does a patient stay in a hospital.
	- If you want to get the most out of hospital occupancy
	- Based on the prospective information about the patient, such as:
		- Age
		- Reason for stay
		- Pre-existing conditions
	- You want to know how long that person is likely to stay in the hospital.
	- Based on this prediction, bed planning can then be optimised. 
2. As an operator of an online store, you are most interested in what product a person is most likely to buy from an online store.
	- You want to suggest this product to the visitor, to increase sales.

### Different Regression Models
#### (1) Simple Linear Regression (SLR)
- Simple Linear Regression uses just one independent variable to predict the dependent variable.
- For example; if we want to predict a persons salary, we use only one variable.
	-  If a person has studied or not OR
	- How long a person works for a week OR
	- The age of a person.

#### (2) Multiple Linear Regression (MLR)
- Multiple Linear Regression uses just one independent variable to predict the dependent variable.
- For example; if we want to predict a persons salary, we use two or more of the variables.
	- If a person has studied or not AND
	- How long a person works for a week AND
	- The age of a person.

**MLR & SLR Similarities**
- The dependent variable (the resulting variable) is a metric variable.
	- I.E., The salary of a person, the body-size of a person, or the electricity consumption of a person.

#### (2) Logistical Regression
- This is used when you have a categorial depdendent variable.
- Examples:
	- If a person is at risk of burn-out or not.
	- If a person has a disease or not
	- Type of animal
- The most common form of logistical regression is **Binary Logistic Regression**.
- The outcome variable is binary, meaning that it has two possible values (yes, or no).

### Simple Linear Regression (SLR)
- A method to understand the relationship between two variables
- You can predict a variable, based on another variable.

**Example**: You can predict the annual salary of a person, based upon the years of experience they have.
- The variable we want to predict (the annual salary) is the dependent variable.
- The variable we have (the years of experience) is the independent variable.

**Example**: You want to predict house prices.
- **Dependent Variable**: We want to predict the price of the house
- **Independent Variable**: We have the size of the house.

> How do we calculate a simple regression? We need data.

$$
\begin{array}{|c|c|}
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
\end{array}
$$
- Now we can use this data to calculate our regression model.
$$ y = bx + a$$
- $y$ is the house price (dependent variable), what we want to infer.
- $x$ is the house size (independent variable), what we have.
- We want to use our data to determine the coefficients $a$ and $b$. 

**Visualise the data**: The first step is to plot the data onto a scatter plot.

![[Pasted image 20250809131154.png]]

**Summarise the data**: Now that we have this data, we want to summarise it. To do this, we draw a straight line through the points of the scatter plot.

![[Pasted image 20250809131319.png]]

We do this with a line of best fit, which try's to reduce the distance from each point.

![[Pasted image 20250809131420.png]]

- If we add up the lengths of each of the orange lines, we get the total error. 
- Our goal is to find the regression line that minimises this error value.
- This is where the formula $y = bx + a$ comes into play
	- $b$ is the slope of the line, which shows how much the house price changes, if the house size increases by 1 sq foot.
	- $a$ is the $y$ intercept, showing us where it crosses the $y$ axis. 

#### Worked Example Calculating $b$ And $a$
This is the data that we have:
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
\end{array}$$ To calculate the slope $b$, we use the formula:
$$ b = r \frac{S_y}{S_x}$$
- $r$ is the correlation coefficient between $x$ and $y$, so the correlation between house size and house price.
- $S_y$ is the correlation of the coefficients of the standard deviation of $y$ house price.
- $S_x$ is the standard deviations of the house size $x$. 

**Calculation of these values**:

**Step (1)** find the mean of the values.
$$
\textbf{Means:}\quad
\bar{x}=1,903.9,\qquad
\bar{y}=267,200
$$
**Step (2)** go through all of the values of $x$ and subtract the mean.
$$
\begin{array}{|r|r|r|}
\hline
x_i & x_i - \bar{x} & (x_i - \bar{x})^2 \\
\hline
1852 & -51.9 & 2693.61 \\
1975 & 71.1 & 5055.21 \\
1176 & -727.9 & 529817.61 \\
1550 & -353.9 & 125244.21 \\
1458 & -445.9 & 198817.21 \\
2689 & 785.1 & 616372.01 \\
2259 & 355.1 & 126093.01 \\
2763 & 859.1 & 738046.81 \\
1325 & -578.9 & 335116.81 \\
1992 & 88.1 & 7761.61 \\
\hline
\end{array}
$$
- $x_i$ is the value of the house size, corresponding to the previous table.
- $\bar{x}$ is the mean.

**Step 3** Sum all of the squared values together, to find the squared difference.
$$
\sum (x_i - \bar{x})^2 
= (1852 - 1903.9)^2 + (1975 - 1903.9)^2 + \dots + (1992 - 1903.9)^2
$$
$$
= (-51.9)^2 + (71.1)^2 + \dots + (88.1)^2
$$
$$
= 2693.61 + 5055.21 + \dots + 7761.61
$$
$$
= 2{,}668{,}017.10
$$
**Step 4** Divide the squared differences by $n-1$, where $n$ is 10, so we divide by $10 - 1 = 9$. 
$$\frac{2,668,017.10}{9} = 298,668.566$$
**Step 5** Take the square root of this answer to find $S_x$
$$S_x = \sqrt{267,668.566} = 546.21$$
**Step 6** Do the same for $S_y$ (House price)
$$\bar{y}=267,200$$$$S_y = 64,659.45$$
**Step 7** Finding the Pearson correlation coefficient
 $$r=\frac{\sum (x_i-\bar{x})(y_i-\bar{y})}{(n-1)S_xS_y}$$
**Step 7 (A)** For each $x_i$ $y_i$ pair
	- Find $x_i - \bar{x}$ and $y_i - \bar{x}$
	- Multiply them together
$$
\sum (x_i - \bar{x})(y_i - \bar{y}) \approx 2{,}886{,}753{,}890
$$
**Step 7 (B)** Sum these products
$$\sum(x_i-\bar{x}) \times (y_i-\bar{y})$$$$(n-1)S_x S_y = 9 \times 546.21 \times 64{,}659.45 \approx 3{,}154{,}266{,}940
$$
**Step 7 (C)** Divide by $(n-1)\times S_x S_y$ 

$$
r = \frac{2{,}886{,}753{,}890}{3{,}154{,}266{,}940} \approx 0.91525
$$
**Step 8** Calculate the slope of the line from $b=r\,\frac{S_y}{S_x}$
$$
b=0.915249\times\frac{64{,}659.4498}{546.2068}
=108.3463
$$
**Step 9** Calculate the intercept of the line
$$
a=\bar{y}-b\,\bar{x}
=267200-108.3463\times 1903.9
=60{,}919.4421
$$
**Step 10** Form the regression line
$$
y=b\,x + a=\; 108.35\,x\;+\;  60{,}919.44
$$

> If we increase the house size by 1 sq foot, the price of the house increases by $\$108.3463$. 

Worked example ([link](https://docs.google.com/spreadsheets/d/1vw91bW9nMCTwLovjos7aA-skCAvTHiXuNXWldmhHht4/edit?gid=0#gid=0))

#### The P-Value
Once we have calculated all of the points, we get a $p$ value. This $p$ value helps us to determine if the relationship between the independent variable and the dependent variable is statistically significant. 
![[Pasted image 20250809131420.png]]

To test whether the relationship we have determined is meaningful or just random chance, we start by stating the null hypothesis.
##### Null Hypothesis
There is no relationship between the independent variable and the dependent variable. 

- If the $p$ value is small, typically $\lt 0.05$, we reject the null hypothesis.
- This means that there is a significant relationship between the variables.

- Alternatively, if the $p$ value is larger than $\ge 0.05$, we fail to reject the null hypothesis.
- This indicates that the observed data may have occurred by chance with no strong relationship evidence of a relationship. 

### Assumptions
The previous example was fairly obvious however, as a bigger house price typically infers that it's worth more. There are cases however where this isn't clear. 
##### Assumption (1) Linear Relationship
- In linear regression, a straight line is drawn through the data.
- This straight line should represent all points as good as possible.
- If the points are non-linear, the linear line of best fit cannot fulfil all of these requirements.

##### Assumption (2) Independence of Errors
- The errors (or the distance between the line of best fit, **illustrated in orange**, and the points) should be independent of each other. 
- The error at one point doesn't affect the error at another point.

![[Pasted image 20250809131420.png]]

##### Assumption (3) Homoscedasticity - Equal Variance of Errors
If we plot the errors on the $y$ axis, and the independent variable $x$ axis, there spread should be roughly the same across all values of $x$. 
- The variance of the errors should remain constant.

![[Pasted image 20250809144134.png]]

##### Assumption (4) Normally Distributed Errors
- The distribution of errors should be normally distributed.
- This can be tested both analytically and graphically.
- This is usually done with a Quantile-Quantile Plot.
	- The residuals should fall on a straight line, illustrating normality. 

### Multiple Linear Regression (MLR)

Multiple Linear Regression uses multiple predictor or independent variables, which makes the predictions far more accurate the 

**Example**: You want to find out what influences a persons salary (dependent variable). For MLR, you can use multiple predictor variables, such as:
1. A persons education.
2. How long a person works every week.
3. How old a person is.
You now investigate whether these three variables have an influence on the salary of a person. If they do, you can predict a persons salary by taking the above points.

In **Simple Linear Regression**, we had the formula
$$ y = bx + a$$
- One dependent variable, $y$
- One independent variable, $x$

In **Multiple Linear Regression**, we have more than one independent variables $x$, so we get
$$ y = b_1 \cdot x_1 + b_2 \cdot x_2 + \dots + b_k \cdot x_k + a$$

One change that we make is we change $y$ to $\hat{y}$
- We know that regression aims to model the dependent variable as accurately as possible.
- When working with real world data, there is always some error.
	- The true values always differ from the prediction.
- $\hat{y}$ represents the predicted values from the regression model.
- $y$ represents the observed, actual values. 

#### Linear Relationship
In simple linear regression, this was quite easy to do, as you could just plot the values against the dependent variable and see if there was a linear relationship.

For **MLR**, you need to draw out a separate plot for each of the independent variables. This way, you can see if all of the variables follow the linear model.

![[Pasted image 20250809131319.png]]

#### Independence of Errors
- The errors (or the distance between the line of best fit, **illustrated in orange**, and the points) should be independent of each other. 
- The error at one point doesn't affect the error at another point.

![[Pasted image 20250809131420.png]]

#### Homoscedasticity - Equal Variance of Errors
If we plot the errors on the $y$ axis, and the independent variable $x$ axis, there spread should be roughly the same across all values of $x$. 
- The variance of the errors should remain constant.

![[Pasted image 20250809144134.png]]

#### Normally Distributed Errors
- The distribution of errors should be normally distributed.
- This can be tested both analytically and graphically.
- This is usually done with a Quantile-Quantile Plot.
	- The residuals should fall on a straight line, illustrating normality. 
#### No Multicollinearity
Multicollinearity means that two or more independent variables are highly correlated with each other.
- As an effect, the result of individual variables cannot be clearly separated. 

> **Example** you are trying to predict the price of a house.

- $x_1$ is the size of the house
- $x_2$ is the number of rooms
- $x_k$ are some other random variables.
$$ \hat{y} = b_1 \cdot x_1 + b_2 \cdot x_2 + \dots + b_k \cdot x_k + a$$
Usually, the size of the house is related to the number of rooms. 
- Large houses tend to have more rooms.
- This means that $x_1$ and $x_2$ are correlated. 

Our model will now struggle to determine how much of the price $\hat{y}$ is based upon the independent variables of $x_1$ and $x_2$. 
- This is because both of these variables overlap in information.
- This is the idea of Multicollinearity

**More to do here**,,,


#### asdasd
asd