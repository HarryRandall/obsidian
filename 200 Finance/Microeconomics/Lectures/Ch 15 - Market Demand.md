---
course: "[[200 Finance/Microeconomics/Course Overview|Microeconomics]]"
type: lecture
date: 2024-11-01
week: 6
session: 1
instructor: 
tags:
  - lecture
  - microeconomics
status: in-progress
---

# Ch 15 - Market Demand

> [!info] Lecture Details
> **Course:** [[200 Finance/Microeconomics/Course Overview|Microeconomics]]
> **Type:** Lecture
> **Date:** Friday, 1 November 2024
> **Week:** 6
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Market demand covering aggregation of individual demand, inverse demand function, discrete goods, intensive and extensive margins, elasticity, elasticity and revenue, constant elasticity demands, elasticity and marginal revenue, marginal revenue curves, and income elasticity.

---

## Key Concepts

### 1. From Individual to Market Demand

To get **market demand**, we add up the demand of all consumers for a good. If $x_1^i(p_1, p_2, m_i)$ is consumer $i$'s demand for **good 1**, and $x_2^i(p_1, p_2, m_i)$ is their demand for **good 2**, then with $n$ consumers, the **aggregate demand** for good 1 is:

$$
X_1(p_1, p_2, m_1, \dots, m_n) = \sum_{i=1}^{n} x_1^i(p_1, p_2, m_i)
$$

The same formula applies to good 2.

**Simplifying with a Representative Consumer**

Sometimes we treat all consumers as one **representative consumer** with total income $M$, which is the sum of everyone's income:

- **Representative Consumer Model**: If each consumer has a budget $m_1, m_2, \dots, m_n$, then $M = m_1 + m_2 + \dots + m_n$.
  - This model treats aggregate demand like one person's demand with income $M$ and prices $(p_1, p_2)$.
  - **Example**: If there are 3 people with incomes of $100, $200, and $300, the representative consumer would have $M = 600$.

**The Market Demand Curve**

The **market demand curve** shows how quantity demanded changes as the price changes, holding other prices and incomes fixed. Changes in other prices or income will **shift** this curve.

![[Pasted image 20241101145159.png]]

**Examples of Demand Curve Shifts**

1. **Substitute Goods**: If goods 1 and 2 are substitutes, raising the price of good 2 increases demand for good 1, shifting the **demand curve for good 1 outward**.
   - **Example**: If tea and coffee are substitutes, an increase in the price of coffee shifts tea's demand curve outward, as people buy more tea.

2. **Complement Goods**: If goods 1 and 2 are complements, raising the price of good 2 lowers demand for good 1, shifting the **demand curve for good 1 inward**.
   - **Example**: If bread and butter are complements, a price increase for butter decreases demand for bread.

3. **Normal Goods**: If good 1 is a normal good, an increase in income shifts the **demand curve for good 1 outward**.
   - **Example**: An increase in consumer income generally increases the demand for normal goods like smartphones.

4. **Representative Consumer and Normal Goods**: In the representative consumer model, an increase in total income $M$ shifts the demand curve for a normal good outward.

### 2. The Inverse Demand Function

The **inverse demand function** shows **price as a function of quantity**. This perspective tells us the price the market would set for a given quantity demanded of a good.

- **Definition**: The inverse demand function, $P(X)$, represents the **market price** needed to demand $X$ units of a good.
- **Marginal Willingness to Pay (MWTP)**: $P(X)$ also reflects the **marginal rate of substitution (MRS)**, or how much consumers are willing to pay for one more unit of the good.
  - **Example**: If $P(X)$ is high, consumers are willing to pay more for each additional unit; if it's low, their willingness to pay is lower.

**Summing Individual Demand Curves**

To get the **market demand curve**, we add up individual demand curves horizontally. This means, for any price, we sum the quantities that each person demands.

- **Horizontal Summing**: At each price, add the quantities demanded by all individuals to find the total market demand.
- **Geometric Interpretation**: This is shown in **Figure 15.2** (insert image here), where the market demand curve is the horizontal sum of individual demand curves.

> [!example] Adding Up Linear Demand Curves
> Suppose we have two individuals with the following demand functions:
> - **Agent 1's demand**: $D_1(p) = \max \{20 - p, 0\}$
> - **Agent 2's demand**: $D_2(p) = \max \{10 - 2p, 0\}$
> 
> The **market demand** is the sum of these individual demands, which introduces a kink at the point where one agent's demand hits zero.
> 
> 1. **For $p < 5$**:
>    - Both agents demand positive quantities, so we add $D_1(p)$ and $D_2(p)$ directly.
>    - **Market demand**: $D_1(p) + D_2(p) = (20 - p) + (10 - 2p) = 30 - 3p$.
> 
> 2. **For $p \geq 5$**:
>    - Agent 2's demand becomes zero (since $10 - 2p = 0$ when $p = 5$).
>    - **Market demand**: Only Agent 1's demand is positive, so $D_1(p) = 20 - p$.
> 
> This results in a **kink** at $p = 5$, as shown in **Figure 15.2**

![[Pasted image 20241101145459.png]]

- **Interpretation**: When demand curves are "linear" for positive quantities, there is often a kink where one demand curve drops to zero, changing the total market demand.

### 3. Discrete Goods

For **discrete goods**—goods available only in whole units (like 0 or 1)—a consumer's demand is based on their **reservation price**. This is the maximum price they're willing to pay for one unit.

- **Individual Demand**: Each consumer's demand is fully determined by their reservation price. If the price is at or below their reservation price, they'll buy one unit; otherwise, they'll buy none.

**Market Demand for Discrete Goods**

To get the **market demand** for a discrete good, we sum the individual demands based on each consumer's reservation price.

- **Example**: Suppose we have two consumers, **A** and **B**, with different reservation prices.
  - If the price is higher than both A and B's reservation prices, neither will buy.
  - If the price drops to meet A's reservation price but not B's, only A will buy.
  - If the price is at or below both A and B's reservation prices, both will buy one unit each.
- This creates a **downward-sloping market demand curve** because as the price decreases, more consumers are willing to buy.

![[Pasted image 20241101145643.png]]

**Key Points**

1. **Downward Slope**: The market demand curve for a discrete good slopes downward. Lower prices mean more consumers' reservation prices are met, so more units are demanded.
2. **Graph Interpretation**: In **Figure 15.3** above, each step in the demand curve represents an additional consumer willing to buy at a lower price.

By understanding each consumer's reservation price, we can predict how many units will be demanded in the market as the price changes.

### 4. The Extensive and the Intensive Margin

In consumer choice, adjustments in demand can occur on two margins: **intensive** and **extensive**.

**Intensive Margin**

Adjustments on the **intensive margin** occur when consumers already consuming a good decide to buy **more or less** of it as the price changes.

- **Example**: If the price of apples drops, a consumer who already buys apples might buy more.
- **Normal Goods**: For normal goods, as price decreases, quantity demanded increases on the intensive margin.

**Extensive Margin**

Adjustments on the **extensive margin** involve decisions about **entering or exiting the market** for a good. This happens when consumers decide **whether to buy** the good at all based on their reservation prices.

- **Example**: If the price of gym memberships drops, some people who previously found it too expensive might now join, increasing demand on the extensive margin.

**Combined Impact on Aggregate Demand**

The **aggregate demand curve** reflects both types of adjustments:

- **Downward Slope**: Both margins typically work in the "right" direction, meaning that as price decreases, aggregate quantity demanded increases.
- **Graphical Representation**: In **Figure 15.3**, we see how market demand is the sum of individual demand curves from Agents A and B, showing how both intensive and extensive margin adjustments contribute to overall demand.

![[Pasted image 20241101145643.png]]

**Figure 15.3 Interpretation**:
- **Individual Demand Curves**: Shows each consumer's demand based on their reservation price.
- **Market Demand Curve**: The combined demand curve slopes downward as lower prices lead to increased demand from both current and new consumers.

**Summary**

- **Intensive Margin**: Changes in the quantity demanded by consumers already in the market.
- **Extensive Margin**: Decisions about entering or exiting the market based on price.
- **Aggregate Demand Curve**: Reflects adjustments on both margins, generally resulting in a downward-sloping demand curve for normal goods.

### 5. Elasticity

**Elasticity** measures how responsive demand is to changes in price or income. Instead of using the **slope** of the demand curve (which changes with units), elasticity provides a **unit-free measure** of responsiveness by using percentage changes.

**Definition of Price Elasticity of Demand**

The **price elasticity of demand** is the **percent change in quantity** divided by the **percent change in price**. This is represented by:

$$
\epsilon = \frac{\Delta q / q}{\Delta p / p} = \frac{p}{q} \cdot \frac{\Delta q}{\Delta p}
$$

- **Interpretation**: Elasticity can be seen as the ratio of price to quantity multiplied by the slope of the demand curve.
- Elasticity is usually **negative** (due to the downward slope of demand curves), but we often refer to the **absolute value** to simplify comparisons.

**Understanding Elasticity Values**

1. **Elasticity > 1**: Demand is **elastic**; quantity demanded is very responsive to price changes.
2. **Elasticity < 1**: Demand is **inelastic**; quantity demanded is less responsive to price changes.
3. **Elasticity = 1**: Demand is **unit elastic**; the percentage change in quantity equals the percentage change in price.

> [!example] Elasticity of a Linear Demand Curve
> Consider a **linear demand curve** of the form $q = a - bp$, where:
> - $a$ and $b$ are constants.
> - The **slope** of this demand curve is constant, $-b$.
> 
> Plugging this into the elasticity formula:
> 
> $$
> \epsilon = \frac{-bp}{a - bp}
> $$
> 
> **Key Points on a Linear Demand Curve:**
> - **At $p = 0$**: Elasticity is zero, meaning demand is perfectly inelastic.
> - **At $q = 0$**: Elasticity is infinite, meaning demand is perfectly elastic.
> - **At $p = \frac{a}{2b}$**: Elasticity equals $-1$, which is halfway down the demand curve (see **Figure 15.4**).

![[Pasted image 20241101150011.png]]

**Figure 15.4 Interpretation**:
- Elasticity varies along the linear demand curve:
  - It is **infinite** at the top (vertical intercept).
  - It equals **1 halfway down**.
  - It is **zero at the bottom** (horizontal intercept).

This example illustrates that elasticity changes along the curve, even if the slope is constant.

### 6. Elasticity and Demand

**Elasticity** measures how **responsive demand** is to price changes:

- **Elastic Demand**: Elasticity > 1 (in absolute value)
  - **Definition**: Quantity demanded is highly responsive to price changes.
  - **Example**: A 1% increase in price causes more than a 1% decrease in quantity demanded.
- **Inelastic Demand**: Elasticity < 1 (in absolute value)
  - **Definition**: Quantity demanded is less responsive to price changes.
  - **Example**: A 1% increase in price causes less than a 1% decrease in quantity demanded.
- **Unit Elastic Demand**: Elasticity = -1
  - **Definition**: Quantity demanded changes proportionally with price changes.
  - **Example**: A 1% increase in price leads to exactly a 1% decrease in quantity demanded.

**Factors Influencing Elasticity**

The elasticity of a good often depends on **available substitutes**:

1. **Many Close Substitutes**: Higher elasticity
   - **Example**: If red and blue pencils are perfect substitutes, a price increase for red pencils will make demand for them drop to zero as consumers switch to blue pencils.
   - **Interpretation**: Goods with close substitutes are **very elastic** because consumers can easily switch to alternatives.

2. **Few Close Substitutes**: Lower elasticity
   - **Example**: If there are few alternatives to gasoline, even a price increase won't greatly reduce demand.
   - **Interpretation**: Goods without substitutes tend to be **inelastic** because consumers have limited options.

**Key Takeaway**

Think of **elasticity** as the **responsiveness of quantity demanded** to price changes:

- **Elastic**: Sensitive to price (many substitutes).
- **Inelastic**: Less sensitive to price (few substitutes).

### 7. Elasticity and Revenue

**Revenue** is the **price** of a good multiplied by the **quantity sold**. When price changes, revenue can either increase or decrease depending on the **elasticity of demand**.

- **Elastic Demand** ($|\epsilon| > 1$): A price increase reduces revenue because quantity demanded drops significantly.
- **Inelastic Demand** ($|\epsilon| < 1$): A price increase raises revenue because quantity demanded decreases only slightly.
- **Unit Elastic Demand** ($|\epsilon| = 1$): A price change leaves revenue unchanged.

**Revenue Change Calculation**

For a change in price, we calculate revenue change as follows:

1. **Original Revenue**: $R = p \cdot q$
2. **New Revenue** after price changes to $p + \Delta p$ and quantity changes to $q + \Delta q$:
   $$
   R' = (p + \Delta p)(q + \Delta q) = pq + q \Delta p + p \Delta q + \Delta p \Delta q
   $$
3. **Change in Revenue** ($\Delta R$):
   $$
   \Delta R = q \Delta p + p \Delta q + \Delta p \Delta q
   $$
   For small changes, $\Delta p \Delta q$ is negligible, so:
   $$
   \Delta R \approx q \Delta p + p \Delta q
   $$

This means the change in revenue is roughly equal to the area added on top of the original revenue box (for $q \Delta p$) minus the area lost on the side (for $p \Delta q$) as shown in **Figure 15.5**.

![[Pasted image 20241101150755.png]]

**Key Condition for Revenue Increase**

Revenue increases if the following condition holds:

$$
|\epsilon| < 1
$$

In other words, **if demand is inelastic**, a price increase raises revenue. Conversely, if **demand is elastic** ($|\epsilon| > 1$), a price increase lowers revenue.

> [!example] Strikes and Profits
> In 1979, a strike cut the supply of lettuce in half, causing a **400% price increase**. Despite halving production, profits nearly doubled due to inelastic demand for lettuce, which allowed the price increase to more than compensate for the reduced quantity.
> 
> This example illustrates how **inelastic demand** can lead to higher revenue even with supply disruptions, as consumers don't reduce their quantity demanded drastically.

### 8. Constant Elasticity Demands

**Constant Elasticity of Demand** refers to a demand curve where the elasticity remains the same at all points.

**Linear Demand Curve vs. Constant Elasticity**

- **Linear Demand Curve**: Elasticity varies from 0 to infinity as price changes, so it's **not** constant.
- **Constant Elasticity Demand Curve**: Elasticity is the same at every price level, which can be achieved by a demand function with **elasticity of -1**.

**Deriving Constant Elasticity**

To get a constant elasticity of -1:
1. **Revenue Approach**: If elasticity is -1, revenue remains unchanged with small price changes.
2. **Formula**: For constant elasticity of -1, we want $p \cdot q = R$ (constant revenue). Therefore,
   $$
   q = \frac{R}{p}
   $$
   This formula ensures that **price times quantity remains constant** along the demand curve.

3. **Graph Interpretation**: In **Figure 15.6**, the demand curve shows that as price changes, quantity adjusts to keep $p \cdot q$ constant.

![[Pasted image 20241101151051.png]]

**General Formula for Constant Elasticity**

For other constant elasticities, the demand curve can be written as:
$$
q = A \cdot p^{\epsilon}
$$
where:
- $A$ is a positive constant,
- $\epsilon$ (elasticity) is typically negative.

**Logarithmic Form**

An alternative way to express constant elasticity demand is to take the logarithm:
$$
\ln q = \ln A + \epsilon \ln p
$$
In this form, **$\ln q$ depends linearly on $\ln p$**, which is convenient for some economic models.

### 9. Elasticity and Marginal Revenue

In section 15.7, we looked at how **revenue changes with price**. Here, we examine **how revenue changes with quantity**, which is especially useful for **production decisions** by firms.

**Marginal Revenue Formula**

For small changes in price and quantity, the change in revenue ($\Delta R$) is given by:
$$
\Delta R = p \Delta q + q \Delta p
$$
Dividing by $\Delta q$ gives **Marginal Revenue (MR)**:
$$
MR = \frac{\Delta R}{\Delta q} = p + q \frac{\Delta p}{\Delta q}
$$

**Rearranging with Elasticity**

We can rearrange this formula by factoring out $p$:
$$
MR = p \left[ 1 + \frac{q \Delta p}{p \Delta q} \right]
$$
The second term, $\frac{q \Delta p}{p \Delta q}$, is the **reciprocal of elasticity**:
$$
\frac{\Delta R}{\Delta q} = p(q) \left[ 1 + \frac{1}{\epsilon(q)} \right]
$$
For clarity, we sometimes use the absolute value of elasticity $|\epsilon|$:
$$
\frac{\Delta R}{\Delta q} = p(q) \left[ 1 - \frac{1}{|\epsilon(q)|} \right]
$$

**Key Insights on Elasticity and Marginal Revenue**

- **Elastic Demand ($|\epsilon| > 1$)**: Revenue **increases** with more output.
- **Inelastic Demand ($|\epsilon| < 1$)**: Revenue **decreases** with more output.
- **Unit Elasticity ($|\epsilon| = 1$)**: Marginal revenue is zero, meaning revenue doesn't change when output changes.

If demand is inelastic, you need to **lower prices significantly** to increase output, which leads to a drop in revenue. This aligns with our earlier discussion: as **quantity increases, price decreases**, and vice versa.

> [!example] Setting a Price
> Imagine you're setting the price for a product and want to **maximize profits** (revenue minus costs). You wouldn't want to price it where **demand is inelastic** ($|\epsilon| < 1$). Why?
> 
> - If demand is inelastic, raising the price would increase revenue, and **lower the quantity sold**.
> - Lower quantity means **lower production costs** (or at least no increase).
> - Thus, **overall profit would rise** by increasing the price.
> 
> So, **operating in the inelastic range of the demand curve cannot yield maximal profits** because revenue decreases when output increases.

**Summary**: When setting prices, aim to operate where demand is **elastic** to maximize revenue. Using the marginal revenue formula and understanding elasticity can guide effective pricing and production decisions.

### 10. Marginal Revenue Curves

The **marginal revenue** (MR) of selling one more unit depends on the price and how much the price must be reduced to sell that extra unit. When demand is elastic, MR is positive; when demand is inelastic, MR becomes negative.

**Marginal Revenue Formula Recap**

Marginal Revenue is given by:
$$
MR = p(q) \left[ 1 - \frac{1}{|\epsilon(q)|} \right]
$$
where:
- $p(q)$ is the price at quantity $q$.
- $\epsilon(q)$ is the elasticity of demand at quantity $q$.

**Understanding the Marginal Revenue Curve**

1. **First Unit**: When $q = 0$, MR equals the price $p(q)$ because there's no need to reduce the price yet.
2. **After the First Unit**: As more units are sold, MR decreases below the price due to the price reduction needed to sell additional units.
   - Selling extra units requires **lowering the price**, which **reduces revenue on all previously sold units**.

> [!example] Linear Demand Curve
> For a **linear demand curve** where:
> $$
> p(q) = a - bq
> $$
> we have a constant slope:
> $$
> \frac{\Delta p}{\Delta q} = -b
> $$
> Then, the marginal revenue becomes:
> $$
> MR = a - 2bq
> $$
> 
> This means:
> - **Slope of MR** is **twice as steep** as the demand curve's slope.
> - MR is **zero when $q = a/2b$**, where elasticity equals -1.
> - **MR becomes negative** for quantities larger than $a/2b$, indicating inelastic demand.

![[Pasted image 20241101151436.png]]

**Constant Elasticity Demand Curve**

For a **constant elasticity demand curve**:
$$
MR = p(q) \left[ 1 - \frac{1}{|\epsilon|} \right]
$$
- If $|\epsilon| = 1$: MR is zero across all quantities (unit elastic).
- If $|\epsilon| > 1$: MR lies below the demand curve but remains positive (elastic demand).
- If $|\epsilon| < 1$: MR is negative (inelastic demand).

![[Pasted image 20241101151448.png]]

### 11. Income Elasticity

**Income elasticity** measures how **quantity demanded** responds to changes in **income**, providing a unit-free measure similar to price elasticity.

**Definition**

Income Elasticity of Demand:
$$
\text{Income Elasticity} = \frac{\% \text{ change in quantity demanded}}{\% \text{ change in income}}
$$

- **Normal Goods**: Positive income elasticity (demand increases as income rises).
- **Inferior Goods**: Negative income elasticity (demand decreases as income rises).
- **Luxury Goods**: Income elasticity greater than 1 (demand increases more than proportionally with income).

**Relationship with Budget Constraint**

For two income levels, let:
- $p_1 x'_1 + p_2 x'_2 = m'$ (new income level)
- $p_1 x_1 + p_2 x_2 = m$ (initial income level)

By subtracting these and simplifying, we find:
$$
s_1 \frac{\Delta x_1 / x_1}{\Delta m / m} + s_2 \frac{\Delta x_2 / x_2}{\Delta m / m} = 1
$$
where $s_i$ represents the **expenditure share** of good $i$.

This equation implies:
- The **weighted average of income elasticities is 1**.
- Goods with **high income elasticity (luxury goods)** are balanced by goods with **lower income elasticity**.

---

## Notes

**Market Demand** [V 15; NS 4-10 to 4-16] – Page 270 (Lecture 6)

---

## Examples

> [!example] Adding Up Linear Demand Curves
> See Key Concepts section above.

> [!example] Elasticity of a Linear Demand Curve
> See Key Concepts section above.

> [!example] Strikes and Profits
> See Key Concepts section above.

> [!example] Setting a Price
> See Key Concepts section above.

> [!example] Linear Demand Curve
> See Key Concepts section above.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Market Demand | Sum of individual demands: $X_1 = \sum_{i=1}^{n} x_1^i(p_1, p_2, m_i)$ |
| Representative Consumer | Model treating all consumers as one with total income $M$ |
| Inverse Demand Function | $P(X)$ - price as function of quantity |
| Marginal Willingness to Pay | Maximum price willing to pay for additional unit |
| Horizontal Summing | Adding individual demand curves horizontally to get market demand |
| Discrete Goods | Goods available only in whole units |
| Reservation Price | Maximum price consumer willing to pay for one unit |
| Intensive Margin | Changes in quantity by consumers already in market |
| Extensive Margin | Decisions about entering/exiting market based on price |
| Price Elasticity of Demand | $\epsilon = \frac{\Delta q / q}{\Delta p / p} = \frac{p}{q} \cdot \frac{\Delta q}{\Delta p}$ |
| Elastic Demand | $|\epsilon| > 1$ - highly responsive to price changes |
| Inelastic Demand | $|\epsilon| < 1$ - less responsive to price changes |
| Unit Elastic Demand | $|\epsilon| = 1$ - proportional response to price changes |
| Constant Elasticity Demand | $q = A \cdot p^{\epsilon}$ - elasticity constant at all prices |
| Marginal Revenue | $MR = p(q) \left[ 1 - \frac{1}{|\epsilon(q)|} \right]$ |
| Income Elasticity | $\frac{\% \text{ change in quantity}}{\% \text{ change in income}}$ |
| Luxury Good | Income elasticity > 1 |

---

## Questions & Discussion

- [ ] How is market demand derived from individual demands?
- [ ] What is the difference between intensive and extensive margins?
- [ ] How does elasticity measure demand responsiveness?
- [ ] How does elasticity relate to revenue?
- [ ] What is marginal revenue and how does it relate to elasticity?
- [ ] What is income elasticity?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand elasticity calculations
- [ ] Practice drawing demand curves
- [ ] Understand relationship between elasticity and revenue

---

## Related Notes

- [[200 Finance/Microeconomics/Course Overview|Course Overview]]
- [[200 Finance/Microeconomics/Lectures/Ch 06 - Demand|Ch 06 - Demand]]
- [[200 Finance/Microeconomics/Lectures/Ch 16 - Equilibrium|Ch 16 - Equilibrium]]

---

## References