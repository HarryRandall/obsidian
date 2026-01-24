---
course: "[[200 Finance/Microeconomics/Course Overview|Microeconomics]]"
type: lecture
date: 2024-10-27
week: 2
session: 1
instructor: 
tags:
  - lecture
  - microeconomics
status: in-progress
---

# Ch 02 - Budget Constraint

> [!info] Lecture Details
> **Course:** [[200 Finance/Microeconomics/Course Overview|Microeconomics]]
> **Type:** Lecture
> **Date:** Sunday, 27 October 2024
> **Week:** 2
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

The theory of the consumer assumes consumers choose the best bundle they can afford. This chapter covers the budget constraint, which defines what consumers "can afford" based on their income and the prices of goods.

---

## Key Concepts

### 1. The Budget Constraint

The Budget Constraint represents the combinations of goods a consumer can afford. We simplify by assuming there are only two goods, denoted by a consumption bundle $(x_1, x_2)$ where $x_1$ is the amount of good 1 and $x_2$ is the amount of good 2.

- **Prices and Income:** Let $(p_1, p_2)$ represent the prices of the goods, and $m$ represent the consumer's total income.
- **Budget Constraint Equation:** The budget constraint is given by $p_1x_1 + p_2x_2 \le m$, where $p_1x_1$ is the spending on good 1 and $p_2x_2$ is the spending on good 2.
- **Budget Set:** This is the set of all bundles that cost no more than income $m$, representing all affordable consumption choices at prices $(p_1, p_2)$. A big list of all possible things you could buy that cost less than your income.

The budget constraint limits the consumer's choices to what they can afford based on their income and the prices of goods.

### 2. Two Goods Are Often Enough

The two-good assumption is flexible because we can interpret **good 2** as representing all other goods the consumer might buy. For example:

1. **Specific vs Composite Goods**
   - If $x_1$ represents milk (in quarts per month), then $x_2$ can represent everything else the consumer consumes.
   - By interpreting **good 2** as all other spending, its price $p_2$ is set to 1 (since one dollar costs one dollar)

2. **Budget Constraint Form**
   - The budget constraint then becomes $p_1x_1 + x_2 \le m$, meaning the spending on good 1 plus other goods must not exceed income $m$

3. **Composite Good Interpretation:**
   - Good 2, or the composite good, measures all other goods in terms of dollars, simplifying analysis by letting **good 2** represent all other consumption.

This approach keeps the two-good model general and simplifies the budget constraint without losing any analytical power.

### 3. Properties of the Budget Set

The budget line represents all combinations of goods that cost exactly $m$, given by the equation:
$$p_1x_1 + p_2x_2 = m$$

where $x_1$ and $x_2$ are quantities of good 1 and 2, respectively, and $p_1$ and $p_2$ are their prices.

![[Pasted image 20241027175126.png]]

**Intercepts**
- **Vertical intercept:** $\frac{m}{p_2}$, representing how much of good 2 the consumer can buy if all income is spent on it.
- **Horizontal intercept:** $\frac{m}{p_1}$, representing how much of good 1 the consumer can buy if all income is spent on it.

**Slope of the budget line**
- The slope is $-\frac{p_1}{p_2}$, indicating the rate of substitution between goods 1 and 2 while staying within the budget.
- This slope represents the opportunity cost of consuming more of good 1 in terms of how much good 2 must be given up.

**Economic Interpretation**
The budget line's slope reflects the market trade off between the two goods. For a change in good 1 ($\Delta x_1$), the required change in good 2 ($\Delta x_2$) to stay on the budget line is given by:
$$\frac{\Delta x_2}{\Delta x_1} = -\frac{p_1}{p_2}$$

This trade-off highlights the opportunity cost of choosing more of one good over the other.

### 4. How the Budget Line Changes

Changes in income and prices alter the budget line and budget set.

**Income Changes**
- **Increase in income** shifts the budget line **outwards** in a parallel manner (figure below) without changing its slope.
- **Decrease in income** shifts the budget line **inward** in parallel, reducing the set of affordable goods.

![[Pasted image 20241027180103.png]]

**Price Changes**
- **Increase** in $p_1$, while keeping $p_2$ and income $m$ fixed, makes the budget line steeper, as $-\frac{p_1}{p_2}$ increases (figure below).
- **Decrease** in $p_1$ makes the line flatter.

![[Pasted image 20241027180132.png]]

**Proportional Changes**
- Doubling both prices is equivalent to halving income, shifting the budget line inward by half.
- Algebraically, if both prices increase by $t$, it's equivalent to dividing income by $t$: $p_1x_1 + p_2x_2 = \frac{m}{t}$

**Combined Changes**
- If both income decreases and price increases, the budget line shifts inward.
- Relative price changes alter the slope. If $p_2$ rises more than $p_1$, the line flattens; if $p_1$ rises more, it becomes steeper.

These adjustments reflect how economic constraints evolve with varying income and price conditions.

### 5. The Numeraire

The numeraire simplifies the budget line by fixing one price or income to 1, allowing all other variables to be expressed relative to it. This doesn't change the budget set but reduces the complexity of analysis.

**Budget Line Transformations**
- Starting with $p_1x_1 + p_2x_2 = m$
  - Dividing by $p_2$: $\frac{p_1}{p_2}x_1 + x_2 = \frac{m}{p_2}$, setting $p_2 = 1$
  - Dividing by $m$: $\frac{p_1}{m}x_1 + \frac{p_2}{m}x_2 = 1$, setting $m = 1$

**Numeraire Price**
The numeraire is the reference price, typically set to 1, to measure other prices and income relative to it. Setting a numeraire (like $p_2 = 1$) simplifies analysis by reducing the number of variables in the budget constraint.

Using a **numeraire good** reduces complexity by standardising one price or income and making it easier to analyse consumer choices.

### 6. Taxes, Subsidies, and Rationing

Economic policies like taxes and subsidies affect a consumer's budget constraint by altering the effective price of goods.

- **Quantity Tax:** Adds a fixed tax $t$ per unit of a good. If good 1's price is $p_1$, it becomes $p_1+t$, making the budget line steeper (higher cost per unit).
- **Value Tax:** A percentage tax, like sales tax, applied to the good's price. If the tax rate is $\tau$, the consumer pays $(1+\tau)p_1$.

**Subsidies**
- **Quantity Subsidy:** Reduces the effective price per unit of a good. If the subsidy is $s$ per unit, then the price of good 1 becomes $p_1 - s$, making the budget line flatter (lower cost per unit).
- **Ad Valorem Subsidy:** A percentage reduction on the price of the good. With a subsidy rate of $\sigma$, the effective price is $(1-\sigma)p_1$.

**Lump-Sum Taxes and Subsidies**
- **Lump-Sum Tax:** A fixed amount taken regardless of behaviour, shifting the budget line inward as total income decreases.
- **Combined Tax and Rationing** If a tax $t$ applies only after a certain level $\bar{x_1}$, the budget line has a steeper slope to the right of $\bar{x_1}$, reflecting the higher cost per additional unit beyond the limit.

![[Pasted image 20241027182200.png]]

> [!example] Food Stamps Program Example
> Before 1979, U.S. households could buy subsidised food stamps, creating a "kinked" budget line that allowed more food consumption at a lower effective price. After 1979, food stamps became a lump-sum subsidy (no purchase required), shifting the budget line outward by the amount of food stamps provided but keeping the slope unchanged.

![[Pasted image 20241027182440.png]]

### 7. Budget Line Changes

The budget line movements reveal insights about consumers optimal choice and well-being.

**Balanced Inflation**
If all prices and income are multiplied by the same positive number, the budget line remains unchanged. This means that balanced inflation doesn't affect the consumer's optimal choice, as the budget set stays the same.

**Increased Income**
If income increases while prices remain constant, the budget line shifts outward in a parallel manner. The consumer has the same options as before, plus more. Therefore, the consumer must be at least as well-off as they were with lower income.

**Price Decline**
If the price of one good declines while others stay the same, the consumer's budget line expands in that direction. This gives the consumer more options, implying they are at least as well-off as before.

These observations lay the groundwork for understanding how consumers adjust their choices under changes in price and income.

---

## Notes

---

## Examples

> [!example] Food Stamps Program Example
> See Key Concepts section above.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Budget Constraint | $p_1x_1 + p_2x_2 \le m$ - combinations of goods consumer can afford |
| Budget Set | Set of all bundles that cost no more than income $m$ |
| Budget Line | $p_1x_1 + p_2x_2 = m$ - combinations that cost exactly $m$ |
| Slope of Budget Line | $-\frac{p_1}{p_2}$ - opportunity cost of good 1 in terms of good 2 |
| Vertical Intercept | $\frac{m}{p_2}$ - maximum quantity of good 2 affordable |
| Horizontal Intercept | $\frac{m}{p_1}$ - maximum quantity of good 1 affordable |
| Composite Good | Good 2 representing all other goods, with $p_2 = 1$ |
| Numeraire | Reference price set to 1 to simplify analysis |
| Quantity Tax | Fixed tax $t$ per unit, effective price becomes $p_1 + t$ |
| Value Tax | Percentage tax $\tau$, effective price becomes $(1+\tau)p_1$ |
| Quantity Subsidy | Fixed subsidy $s$ per unit, effective price becomes $p_1 - s$ |
| Ad Valorem Subsidy | Percentage subsidy $\sigma$, effective price becomes $(1-\sigma)p_1$ |
| Lump-Sum Tax | Fixed tax regardless of consumption, shifts budget line inward |
| Balanced Inflation | Multiplying all prices and income by same factor leaves budget set unchanged |

---

## Questions & Discussion

- [ ] What is the budget constraint and how does it limit consumer choices?
- [ ] How do changes in income and prices affect the budget line?
- [ ] What is the economic interpretation of the budget line slope?
- [ ] How do taxes and subsidies affect the budget constraint?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand budget constraint equation
- [ ] Practice drawing budget lines
- [ ] Understand effects of taxes and subsidies

---

## Related Notes

- [[200 Finance/Microeconomics/Course Overview|Course Overview]]
- [[200 Finance/Microeconomics/Lectures/Ch 01 - Models|Ch 01 - Models]]
- [[200 Finance/Microeconomics/Lectures/Ch 03 - Preferences|Ch 03 - Preferences]]

---

## References
