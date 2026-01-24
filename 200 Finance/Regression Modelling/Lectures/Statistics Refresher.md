**Date**: Saturday, 4 October 2025, 10:11
**Tags**: 

---
## Data Types
There are two types of data:
- Categorical data (categories)
	- Nominal - there is no order to the categories
	- Ordinal - there is some order to the categories
- Numerical data (numbers)
	- Discrete
	- Continuous

**Examples**
- What team does Steph Curry play for?
	- Answer: Atlanta Hawks, Boston Celtics, $\dots$
	- Therefore, it's categorical data, as it's categories, not numbers.
	- And it's Nominal, as there is no order to these categories. 
- What position does Steph Curry play?
	- Answer: Guard, Forward, Centre
	- There is some order to this, as they are all positions.
	- Therefore, this is ordinal categorical data.
- How many free throws has Steph missed tonight?
	- Answer: He could miss 0,1,2,3 etc
	- Therefore, this is numerical data, as they are numbers
	- And this is discrete, as he can't miss 1.5 or 2.3 free throws. There are only discrete possible values that this piece of data can take.
- What is Steph's height?
	- Answer: 6'7 or 203.4cm etc
	- Therefore this is Numerical data, as it's numbers
	- And this is continuous, as the values are not discrete.
- What is Steph's 3-point percentage this season?
	- This would be discrete numerical data, as it's a finite value 

## Distributions
- How are the heights of NBA players distributed?
	- Smallest: 5'9
	- Tallest: 7'3
- We can use a 'probability density function' which describes the distribution of all of the heights of the players between the tallest and the smallest.

![[Pasted image 20251004102628.png]]

- This curve above, is a 'normal distribution' or 'bell curve'.
- It just means that most of the distribution happens in the middle, with it being more rare towards the end and beginning. 

## P values
- Considering a null hypothesis, hypothesis tests assess if our sample is extreme enough to reject the null hypothesis.
- The **p-values** then measures how extreme our sample is

![[Pasted image 20251004103032.png]]

- For the hypothesis test with this example, the score was '9' which isn't extreme.
- The hypothesis test says: reject the null hypothesis if test statistics is in the top 5% of the distribution.

![[Pasted image 20251004103200.png]]

- If the p-value is very small, it's more likely to reject the null hypothesis.
- If the p-value is large (closer to 1), then we are more likely to accept the null hypothesis.