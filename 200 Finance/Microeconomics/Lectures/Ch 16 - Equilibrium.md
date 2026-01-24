---
course: "[[200 Finance/Microeconomics/Course Overview|Microeconomics]]"
type: lecture
date: 2024-11-01
week: 7
session: 1
instructor: 
tags:
  - lecture
  - microeconomics
status: in-progress
---

# Ch 16 - Equilibrium

> [!info] Lecture Details
> **Course:** [[200 Finance/Microeconomics/Course Overview|Microeconomics]]
> **Type:** Lecture
> **Date:** Friday, 1 November 2024
> **Week:** 7
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Market equilibrium covering supply curves, market equilibrium, special cases, inverse demand and supply curves, comparative statics, taxes, passing along taxes, and deadweight loss of taxes.

---

## Key Concepts

### 1. Supply

The Supply Curve represents the quantity of a good that consumers or firms are willing to supply at each possible market price.

**Definition**: The supply curve $S(p)$ shows the amount of a good supplied at each price level $p$.

**Purpose**: It provides a functional relationship between price and quantity supplied, allowing insights into market behaviour without requiring detailed information about the underlying factors or behaviours that generate the curve.

**Examples**

- **Vertical Supply Curve (Apartments)**: Previously, we discussed an example of a vertical supply curve in Chapter 1, representing a fixed supply of apartments, where quantity does not change regardless of price changes.
- **Labour-Supply Decisions**: In Chapter 9, we examined cases where consumers could choose to be suppliers or demanders of goods (e.g., labour), depending on price. Here, the supply curve illustrated the relationship between wage levels (price of labour) and the quantity of labour supplied.

**Summary**
- **Supply Curve**: Shows the quantity supplied at each price, $S(p)$, summarizing market supply behaviour.
- **Application**: In many economic problems, knowing that there is a relationship between price and quantity supplied is sufficient, without delving into the specific behaviours that create the supply curve.

### 2. Market Equilibrium

Market Equilibrium is the price point where the quantity of a good demanded by consumers equals the quantity supplied by producers, ensuring that both demand and supply meet without surplus or shortage.

**Market Demand and Supply Curves**: By summing individual consumers' demand curves, we obtain the market demand curve $D(p)$. Similarly, summing individual suppliers' supply curves gives the market supply curve $S(p)$.

**Competitive Market**: In a competitive market, each individual consumer or producer accepts the market price as fixed and outside of their control, due to their relatively small impact on the overall market.

**Equilibrium Price**: The equilibrium price, denoted $p^*$, is where demand $D(p)$ equals supply $S(p)$, satisfying the equation:
$$
D(p^*) = S(p^*)
$$
This price $p^*$ is where the supply and demand curves intersect, balancing market quantities.

**Equilibrium Justification**

- **Definition**: An economic equilibrium is a state where each agent (consumer or supplier) has chosen their best possible action given the market price, and all actions are mutually consistent.
- **Stability of Equilibrium**: At the equilibrium price $p^*$, the quantity supplied matches the quantity demanded. At any other price:
  - **If $p' < p^*$**: Demand exceeds supply, creating excess demand. This scarcity enables suppliers to raise prices as buyers are willing to pay more.
  - **If $p' > p^*$**: Supply exceeds demand, resulting in excess supply. To sell surplus goods, suppliers lower their prices, driving the price down until demand meets supply.

**Summary**
- **Market Equilibrium**: Achieved at $p^*$, where market demand equals market supply, ensuring no shortage or surplus.
- **Equilibrium Dynamics**: Excess demand pushes prices up, while excess supply pushes prices down. The equilibrium price $p^*$ is stable as it aligns with the optimal behaviors of all agents, maintaining balance in the market.

### 3. Two Special Cases of Market Equilibrium

In certain cases, market equilibrium has unique characteristics based on the shape of the supply curve. These cases highlight different roles of demand and supply in determining equilibrium price and quantity.

**Fixed Supply (Vertical Supply Curve):**
- **Description**: The supply curve is vertical, indicating that the quantity supplied is fixed and does not change with price.
- **Equilibrium Determination**: In this case, the equilibrium quantity is fixed by the supply, while the equilibrium price is determined solely by the demand curve.
- **Example**: A fixed supply of rare art pieces; the number of items is constant, but the price will adjust based on consumer demand.

**Perfectly Elastic Supply (Horizontal Supply Curve):**
- **Description**: The supply curve is horizontal, meaning that suppliers are willing to provide any quantity at a constant price.
- **Equilibrium Determination**: Here, the equilibrium price is fixed by supply conditions, while the equilibrium quantity is determined by the demand curve.
- **Example**: In a perfectly competitive market for a common good like wheat, suppliers are willing to supply any amount at a given market price, and the quantity sold depends entirely on consumer demand.

![[Pasted image 20241101173527.png]]
- **Case A**: Shows a vertical supply curve where the equilibrium price is determined by the demand curve.
- **Case B**: Shows a horizontal supply curve where the equilibrium price is set by the supply curve.

**Summary**
- **Special Cases**: In these unique cases, the determination of equilibrium price and quantity can be separated:
  - **Fixed Supply**: Price is set by demand.
  - **Perfectly Elastic Supply**: Quantity is set by demand.
- **General Case**: In most markets, equilibrium price and quantity are jointly determined by the interaction of both demand and supply curves.

### 4. Inverse Demand and Supply Curves

Inverse demand and supply curves offer an alternative way to view market equilibrium by focusing on the price consumers are willing to pay for a given quantity and the price suppliers require to provide that quantity.

**Inverse Demand Curve** $P_D(q)$: Represents the price that consumers are willing to pay to acquire a given quantity $q$ of a good.

**Inverse Supply Curve** $P_S(q)$: Represents the price that suppliers must receive to supply a given quantity $q$ of a good.

**Equilibrium Condition**: Equilibrium is found where the price consumers are willing to pay matches the price suppliers require:
$$
P_D(q^*) = P_S(q^*)
$$
This condition determines the equilibrium quantity $q^*$ at which the market clears.

> [!example] Equilibrium with Linear Curves
> - Suppose the demand and supply curves are linear:
>   - **Demand Curve**: $D(p) = a - bp$
>   - **Supply Curve**: $S(p) = c + dp$
>   - Here, $a$, $b$, $c$, and $d$ are parameters that determine the intercepts and slopes of the curves.
> 
> - **Solving for Equilibrium Price**:
>   - Set $D(p) = S(p)$ to find the equilibrium price $p^*$:
>     $$
>     a - bp = c + dp
>     $$
>   - Solving this equation, we get:
>     $$
>     p^* = \frac{a - c}{b + d}
>     $$
> 
> - **Equilibrium Quantity**:
>   - Substitute $p^*$ into the demand function to find the equilibrium quantity $q^*$:
>     $$
>     q^* = D(p^*) = \frac{ad + bc}{b + d}
>     $$
> 
> - **Using Inverse Demand and Supply Curves**:
>   - **Inverse Demand Curve**: Substitute $q$ for $D(p)$ and solve for $p$:
>     $$
>     P_D(q) = \frac{a - q}{b}
>     $$
>   - **Inverse Supply Curve**: Substitute $q$ for $S(p)$ and solve for $p$:
>     $$
>     P_S(q) = \frac{q - c}{d}
>     $$
>   - Set $P_D(q) = P_S(q)$ to find the equilibrium quantity $q^*$:
>     $$
>     q^* = \frac{ad + bc}{b + d}
>     $$
>   - This approach yields the same result for the equilibrium price and quantity as the direct method.

### 5. Comparative Statics

Comparative statics examines how equilibrium changes when there are shifts in the demand or supply curves. By analyzing these shifts, we can predict the direction of change in equilibrium price and quantity.

**Key Concepts**

- **Rightward Shift in Demand**: If the demand curve shifts to the right (more demand at every price), both the equilibrium price and quantity will increase.
- **Rightward Shift in Supply**: If the supply curve shifts to the right (more supply at every price), the equilibrium quantity will increase, but the equilibrium price will decrease.
- **Simultaneous Rightward Shifts**: If both demand and supply curves shift to the right, the equilibrium quantity will definitely increase, but the effect on equilibrium price is ambiguous—it could increase, decrease, or stay the same, depending on the magnitude of each shift.

> [!example] Shifting Both Curves
> **Question**: In a competitive market for apartments, let the initial equilibrium price be $p^*$ and the equilibrium quantity be $q^*$. Suppose a developer converts $m$ of the apartments to condominiums, bought by current apartment residents. How does this affect the equilibrium price?
> 
> **Answer**: Both the demand and supply curves shift to the left by the amount $m$ (as depicted in Figure 16.2). Since both curves shift left by the same amount, the equilibrium price remains unchanged, and the equilibrium quantity decreases by $m$.
> 
> - **Algebraic Representation**: The new equilibrium condition is $D(p) - m = S(p) - m$, which simplifies to the original demand equals supply condition, ensuring the price stays the same.

![[Pasted image 20241101173908.png]]

**Figure 16.2 Summary**:
- **Figure 16.2**: Illustrates the effect of simultaneous leftward shifts in both the demand and supply curves by the same amount, $m$.
  - **Demand Curve Shift**: The demand curve moves leftward by $m$, showing a decrease in demand.
  - **Supply Curve Shift**: The supply curve also shifts leftward by $m$, representing a decrease in supply.
  - **Resulting Equilibrium**: The equilibrium price $p^*$ remains unchanged, while the equilibrium quantity decreases from $q^*$ to $q'$, reducing the total quantity in the market by $m$.

**Summary**
- **Comparative Statics**: Useful for predicting changes in equilibrium due to shifts in demand or supply.
- **Individual Shifts**: A rightward shift in demand raises both equilibrium price and quantity; a rightward shift in supply increases quantity but decreases price.
- **Simultaneous Shifts**: When both curves shift, the quantity change is predictable (increase or decrease), but the price change depends on the relative sizes of each shift.

### 6. Taxes

Taxes affect market equilibrium by creating a difference between the price paid by the demander and the price received by the supplier. Understanding the impact of taxes provides valuable insights for economic policy and comparative statics.

**Dual Prices in Taxed Markets:**
- **Demand Price ($P_D$)**: The price the demander pays.
- **Supply Price ($P_S$)**: The price the supplier receives.
- **Tax Difference**: The difference between $P_D$ and $P_S$ equals the tax amount.

**Types of Taxes:**
- **Quantity Tax**: A fixed amount per unit sold (e.g., gasoline tax). If the tax per unit is $t$, then $P_D = P_S + t$.
- **Value (Ad Valorem) Tax**: A percentage-based tax (e.g., sales tax). If the tax rate is $\tau$, then $P_D = (1 + \tau)P_S$.

**Tax Incidence:**
- Whether the supplier or demander pays the tax does not change the equilibrium quantity and prices. The tax burden is shared between consumers and suppliers based on the relative elasticities of demand and supply.

> [!example] Quantity Tax
> 1. **Supplier Pays the Tax**:
>    - If the supplier pays a per-unit tax $t$, the amount supplied depends on the supply price $P_S$ (net of tax), while the amount demanded depends on the demand price $P_D$ (inclusive of tax).
>    - Equilibrium condition:
>      $$
>      D(P_D) = S(P_D - t)
>      $$
> 
> 2. **Demander Pays the Tax**:
>    - If the demander pays the tax, the condition becomes $P_D = P_S + t$.
>    - The equilibrium condition remains:
>      $$
>      D(P_D) = S(P_D - t)
>      $$
>    - The result is identical in both cases, confirming that tax incidence is unaffected by whether the supplier or demander formally pays the tax.

![[Pasted image 20241101174003.png]]
- **Figure 16.3**: Demonstrates the impact of a tax by shifting either the demand or supply curve.
  - **Panel A**: Shift the demand curve down by the tax amount $t$ to find where it intersects the supply curve.
  - **Panel B**: Alternatively, shift the supply curve up by $t$ to find where it intersects the demand curve.
  - **Result**: Both approaches yield the same equilibrium, with a reduced quantity $q^*$, higher demand price $P_D$, and lower supply price $P_S$.

![[Pasted image 20241101174012.png]]
- **Figure 16.4**: Another method to determine the impact of a tax by sliding a line segment representing the tax vertically along the supply curve until it touches the demand curve. This point determines the equilibrium quantity $q^*$, demand price $P_D$, and supply price $P_S$.

> [!example] Taxation with Linear Demand and Supply
> - **Demand and Supply Equations**:
>   - Demand: $D(p_D) = a - b p_D$
>   - Supply: $S(p_S) = c + d p_S$
> 
> - **Equilibrium with Tax**:
>   - Given a tax $t$, the relationship between $p_D$ and $p_S$ is $p_D = p_S + t$.
>   - Substitute this into the demand equation:
>     $$
>     a - b(p_S + t) = c + d p_S
>     $$
>   - Solving for $p_S$ (equilibrium supply price):
>     $$
>     p^*_S = \frac{a - c - b t}{d + b}
>     $$
>   - The equilibrium demand price $p^*_D$ is:
>     $$
>     p^*_D = p^*_S + t = \frac{a - c + d t}{d + b}
>     $$
>   - **Effect of Tax**: The demander pays a higher price, and the supplier receives a lower price, with the exact impact dependent on the demand and supply curve slopes.

### 7. Passing Along a Tax

The extent to which a tax is passed along to consumers depends on the elasticity (slope) of the supply and demand curves. Taxes are generally shared between consumers and producers, but the specific burden depends on the characteristics of supply and demand.

**Tax Incidence**: This describes who bears the economic burden of a tax. It depends on the relative elasticity of the supply and demand curves.
- **Elastic Supply (Horizontal Supply Curve)**: The entire tax burden is passed to consumers.
- **Inelastic Supply (Vertical Supply Curve)**: The entire tax burden falls on producers.

**Special Cases of Tax Incidence**

![[Pasted image 20241101174125.png]]

1. **Perfectly Elastic Supply (Horizontal Supply Curve)**:
   - **Explanation**: A horizontal supply curve means that suppliers are willing to supply any amount at a fixed price $p^*$. If a tax is imposed, the demand price $P_D$ increases by the exact amount of the tax, $t$, while the supply price $P_S$ remains at $p^*$.
   - **Outcome**: Consumers pay the full amount of the tax.
   - **Figure 16.5A**: Shows the supply curve shifting up by the tax amount, resulting in consumers paying $p^* + t$, while suppliers receive $p^*$.

2. **Perfectly Inelastic Supply (Vertical Supply Curve)**:
   - **Explanation**: A vertical supply curve means that the quantity supplied is fixed, regardless of price. When a tax is imposed, the demand price remains at $p^*$, but the supply price $P_S$ drops to $p^* - t$.
   - **Outcome**: Suppliers bear the full tax burden.
   - **Figure 16.5B**: Shows the vertical supply curve unaffected by the tax shift, with suppliers receiving $p^* - t$ while consumers continue to pay $p^*$.

**Intermediate Cases**

- **Upward-Sloping Supply Curve**:
  - In cases where the supply curve is neither perfectly elastic nor perfectly inelastic, the tax burden is shared between consumers and producers.
  - **Tax Incidence Depends on Elasticity**:
    - If the supply curve is relatively flat (more elastic), most of the tax is passed on to consumers.
    - If the supply curve is relatively steep (more inelastic), producers bear a larger share of the tax.

![[Pasted image 20241101174055.png]]
- **Figure 16.6**:
  - **Panel A**: With a nearly horizontal supply curve, most of the tax burden is passed to consumers.
  - **Panel B**: With a nearly vertical supply curve, most of the tax burden is borne by producers.

### 8. The Deadweight Loss of a Tax

A tax on a good typically raises the price paid by demanders and reduces the price received by suppliers, leading to a loss of output in the market. From an economic perspective, the true cost of a tax is the reduction in output, which creates a deadweight loss—a loss of social welfare that neither benefits consumers, producers, nor the government.

**Consumers' and Producers' Surplus**: A tax reduces both consumer and producer surplus.
- **Loss in Consumer Surplus**: Represented by areas $A + B$.
- **Loss in Producer Surplus**: Represented by areas $C + D$.
- These areas represent the value consumers and producers lose due to the tax.

**Government Revenue**: The government gains tax revenue represented by area $A + C$.

**Deadweight Loss (Excess Burden)**: The deadweight loss is the net cost of the tax to society, represented by area $B + D$. This is the "excess burden" of the tax because it is a pure loss—output that would have benefited both consumers and producers but is lost due to the tax.

![[Pasted image 20241101174248.png]]

**Figure 16.7 Summary**:
- **Figure 16.7**: Illustrates the deadweight loss of a tax by showing the reduction in quantity traded in the market due to the tax.
  - **Price Paid by Consumers ($p_d$)**: Increases due to the tax.
  - **Price Received by Suppliers ($p_s$)**: Decreases due to the tax.
  - **Deadweight Loss**: The area $B + D$ represents the deadweight loss, measuring the social value of the lost transactions due to the tax.

**Explanation of Deadweight Loss**

- The deadweight loss occurs because the tax discourages transactions that would have been mutually beneficial to both consumers and producers. The difference between the demand price and the supply price on each lost unit represents the value that society loses due to the tax.
- **Example Calculation**: Starting from the old equilibrium, as we move left (reducing output), the gap between what consumers are willing to pay (demand price) and what suppliers are willing to accept (supply price) grows, representing the cumulative deadweight loss.

> [!example] The Market for Loans
> In the market for loans, the interest rate acts as the "price" for borrowing and lending. If a tax is imposed on interest income:
> - **Supply of Loans**: Becomes dependent on the after-tax interest rate $S((1 - t)r)$.
> - **Demand for Loans**: May adjust if borrowers can deduct interest, setting $D((1 - t)r)$.
> - **Effect**: The tax increases the equilibrium interest rate by a factor of $1/(1 - t)$, raising the nominal rate but leaving the after-tax rate unchanged, effectively shifting the supply and demand curves.

---

## Notes

**Equilibrium** [V 16; NS 10] – Page 293 (Lecture 7)

---

## Examples

> [!example] Equilibrium with Linear Curves
> See Key Concepts section above.

> [!example] Shifting Both Curves
> See Key Concepts section above.

> [!example] Quantity Tax
> See Key Concepts section above.

> [!example] Taxation with Linear Demand and Supply
> See Key Concepts section above.

> [!example] The Market for Loans
> See Key Concepts section above.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Supply Curve | $S(p)$ - quantity supplied at each price |
| Market Equilibrium | Price $p^*$ where $D(p^*) = S(p^*)$ |
| Excess Demand | Demand exceeds supply at price below equilibrium |
| Excess Supply | Supply exceeds demand at price above equilibrium |
| Fixed Supply | Vertical supply curve - quantity fixed, price determined by demand |
| Perfectly Elastic Supply | Horizontal supply curve - price fixed, quantity determined by demand |
| Inverse Demand Curve | $P_D(q)$ - price consumers willing to pay for quantity $q$ |
| Inverse Supply Curve | $P_S(q)$ - price suppliers require to supply quantity $q$ |
| Comparative Statics | Analysis of how equilibrium changes with shifts in curves |
| Quantity Tax | Fixed tax $t$ per unit: $P_D = P_S + t$ |
| Value Tax (Ad Valorem) | Percentage tax $\tau$: $P_D = (1 + \tau)P_S$ |
| Tax Incidence | Distribution of tax burden between consumers and producers |
| Deadweight Loss | Social welfare loss from tax - area $B + D$ |
| Consumer Surplus Loss | Area $A + B$ - value lost by consumers |
| Producer Surplus Loss | Area $C + D$ - value lost by producers |
| Government Revenue | Area $A + C$ - tax revenue collected |

---

## Questions & Discussion

- [ ] What is market equilibrium?
- [ ] How do special cases of supply affect equilibrium?
- [ ] How do taxes affect market equilibrium?
- [ ] What determines tax incidence?
- [ ] What is deadweight loss and why does it occur?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand market equilibrium
- [ ] Practice comparative statics
- [ ] Understand tax effects

---

## Related Notes

- [[200 Finance/Microeconomics/Course Overview|Course Overview]]
- [[200 Finance/Microeconomics/Lectures/Ch 15 - Market Demand|Ch 15 - Market Demand]]
- [[200 Finance/Microeconomics/Lectures/Ch 32 - Exchange|Ch 32 - Exchange]]

---

## References
