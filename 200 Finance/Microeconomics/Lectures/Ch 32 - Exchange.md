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

# Ch 32 - Exchange

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

Exchange in the Edgeworth box covering the Edgeworth box construction, trade and mutually beneficial exchanges, Pareto efficient allocations, market trade and competitive equilibrium, the algebra of equilibrium, Walras' Law, relative prices, existence of equilibrium, equilibrium and efficiency, the First and Second Welfare Theorems, and their implications.

---

## Key Concepts

### 1. The Edgeworth Box

The Edgeworth box is a graphical tool used to analyze the exchange of two goods between two individuals. It allows us to visualize the initial endowments, consumption preferences, and possible trade outcomes in a two-person, two-good economy.

**Individuals and Goods:**
- **Two Individuals**: Person A and Person B.
- **Two Goods**: Good 1 and Good 2.

**Consumption Bundles:**
- **Person A's Consumption Bundle**: $X_A = (x_1^A, x_2^A)$, where $x_1^A$ is A's consumption of good 1 and $x_2^A$ is A's consumption of good 2.
- **Person B's Consumption Bundle**: $X_B = (x_1^B, x_2^B)$, where $x_1^B$ is B's consumption of good 1 and $x_2^B$ is B's consumption of good 2.
- **Allocation**: A pair of consumption bundles $(X_A, X_B)$ representing a distribution of goods between A and B.

**Feasible Allocations:**
- An allocation is feasible if the total amount consumed by A and B for each good equals the total amount available:
  $$
  x_1^A + x_1^B = \omega_1^A + \omega_1^B
  $$
  $$
  x_2^A + x_2^B = \omega_2^A + \omega_2^B
  $$
- **Initial Endowment**: The starting allocation $(\omega_1^A, \omega_2^A)$ for A and $(\omega_1^B, \omega_2^B)$ for B, representing the goods each person initially brings to the market.

**Construction of the Edgeworth Box:**
- **Box Dimensions**:
  - The **width** of the box represents the total amount of good 1 in the economy ($\omega_1^A + \omega_1^B$).
  - The **height** of the box represents the total amount of good 2 in the economy ($\omega_2^A + \omega_2^B$).
- **Origins and Measurements**:
  - **Person A's Origin**: Located at the lower left corner, with their consumption measured from this origin.
  - **Person B's Origin**: Located at the upper right corner, with their consumption measured from this origin.
  - **Interpretation**: Each point in the box represents a feasible allocation where the quantities consumed by A and B sum to the total available.

**Indifference Curves:**
- **Person A's Indifference Curves**: Depicted in the usual way from A's origin in the lower left. Moving up and to the right represents more preferred allocations for A.
- **Person B's Indifference Curves**: Constructed by inverting B's indifference curves and overlaying them on the Edgeworth box. Moving down and to the left from B's origin represents more preferred allocations for B.

![[Pasted image 20241101175104.png]]

**Summary:**
- **Edgeworth Box Utility**: Provides a complete description of all feasible allocations between two individuals for two goods, along with their preferences.
- **Trading Outcomes**: By depicting endowments and preferences, the Edgeworth box helps analyse potential trades and identify allocations where both parties can benefit through exchange.

### 2. Trade

With both preferences and endowments depicted in the Edgeworth box, we can analyse how trade occurs. Trade begins at the initial endowment point, denoted by $W$ in Figure 32.1, where both individuals have their starting allocation of goods.

![[Pasted image 20241101175104.png]]

**Key Concepts:**

- **Initial Endowment** ($W$): The starting allocation of goods for both individuals.
  - **Person A's Better-Off Region**: All allocations above A's indifference curve through $W$ represent bundles where A is better off than at the initial endowment.
  - **Person B's Better-Off Region**: All allocations below B's indifference curve through $W$ represent bundles where B is better off than at the initial endowment.

- **Mutually Beneficial Trade**:
  - **Lens-Shaped Region**: The intersection of A and B's better-off regions forms a lens-shaped area in the Edgeworth box, representing all feasible allocations where both individuals can be better off than at $W$.
  - **Example Trade**: Point $M$ in Figure 32.1 illustrates a potential trade where:
    - A gives up $|x_1^A - \omega_1^A|$ units of good 1 and gains $|x_2^A - \omega_2^A|$ units of good 2.
    - B gains $|x_1^B - \omega_1^B|$ units of good 1 and gives up $|x_2^B - \omega_2^B|$ units of good 2.
  - **Flexibility of Trades**: Any allocation within the lens-shaped region is possible, as all points within this region represent allocations where both A and B are better off than at $W$.

**Iterative Trading Process:**
- **Continued Trade**: Starting from an allocation like $M$, both individuals may continue to trade by moving to a new allocation, such as point $N$, within the new lens-shaped region formed by their indifference curves at $M$.
- **Trade's End Point**: This process continues until there is no further mutually beneficial trade. At this point, the allocation is Pareto efficient, as no further trade can make one individual better off without making the other worse off.

**Summary:**
- **Trading in the Edgeworth Box**: The Edgeworth box illustrates how individuals can achieve mutually beneficial trades starting from their endowments and moving into the lens-shaped region of mutually preferred allocations.
- **End of Trade**: Trade continues until a Pareto efficient allocation is reached, where no further trade can improve one person's situation without harming the other.

### 3. Pareto Efficient Allocations

A Pareto efficient allocation is a state in which no individual can be made better off without making another worse off. This concept ensures that all mutually advantageous trades have been exhausted, marking the end of the trading process.

**Key Concepts:**

- **Pareto Efficiency**: At a Pareto efficient point, there are no trades that would make both individuals better off. Any trade that improves one person's welfare would reduce the welfare of the other.
- **Characteristics of Pareto Efficiency**:
  1. No possibility of making all individuals better off.
  2. Any improvement in one person's welfare requires a loss to another.
  3. All gains from trade are fully realised.
  4. There are no remaining mutually beneficial trades.

![[Pasted image 20241101175235.png]]

**Figure 32.2 Summary:**
- **Figure 32.2**: Illustrates a Pareto efficient allocation at point $M$, where:
  - **Tangency of Indifference Curves**: At $M$, A's and B's indifference curves are tangent, indicating that both individuals are on their highest possible indifference curve without intersecting each other's preference region.
  - **Contract Curve**: The line connecting all Pareto efficient points, extending from A's origin to B's origin, is known as the contract curve. It represents the set of all final allocations where no further beneficial trade is possible.

**Geometry of Pareto Efficiency:**
- **Tangency Condition**: In the interior of the Edgeworth box, Pareto efficient points occur where the indifference curves of A and B are tangent to each other. If the curves are not tangent (i.e., they cross), there exists a potential mutually beneficial trade, and the allocation is not Pareto efficient.
- **Contract Curve**: 
  - The contract curve, or Pareto set, is the set of all Pareto efficient points in the Edgeworth box.
  - The curve typically spans from A's origin (where A has no goods and B holds everything) to B's origin (where B has no goods and A holds everything), representing the range of all possible efficient allocations.

**Pareto Set and Initial Endowment:**
- **Trade Outcomes**: The contract curve (Pareto set) contains all potential final allocations resulting from trade, regardless of the initial endowment.
- **Initial Endowment and Trade**: The initial endowment determines the specific subset of the contract curve that is achievable and preferred by both individuals. This subset lies within the lens-shaped region from the initial endowment point.

**Summary:**
- **Pareto Efficiency in the Edgeworth Box**: Achieved when no further mutually advantageous trades exist, marking the tangency of indifference curves for both individuals.
- **Contract Curve**: The line of all Pareto efficient points, indicating the end of possible beneficial trades.
- **Impact of Initial Endowment**: Determines which part of the contract curve is achievable through trade, though the contract curve itself is independent of specific starting allocations.

### 4. Market Trade

Market trade in the Edgeworth box explores how the exchange of goods between two consumers can reach an equilibrium. This equilibrium, also known as a competitive or Walrasian equilibrium, occurs when supply equals demand for both goods at a set of prices, ensuring there are no unmet demands or excess supplies.

**Key Concepts:**

- **Initial Endowment**: Trade begins from the initial endowments, where each consumer assesses their holdings of goods at given prices.
- **Auctioneer Role**: To establish prices, a hypothetical "auctioneer" sets prices for each good ($p_1$, $p_2$) and presents these to both agents, who then decide how much they wish to buy or sell based on their initial endowment values.

**Demand Types:**
1. **Gross Demand**: The total amount of a good that an agent wants to consume at the given prices.
2. **Net (Excess) Demand**: The difference between an agent's gross demand and their initial endowment for a good, representing the amount they wish to purchase or sell in the market.
   - **Example**: If A's gross demand for good 1 is $x_1^A$ and their endowment is $\omega_1^A$, then A's net demand (excess demand) for good 1 is $e_1^A = x_1^A - \omega_1^A$.

**Disequilibrium and Price Adjustment:**
- **Disequilibrium**: When prices do not balance supply and demand, the market is in disequilibrium. In this state, one agent's desired purchase amount may not match the other agent's desired sale amount, leading to unmet demand or excess supply.
- **Auctioneer's Adjustment**: To resolve disequilibrium, the auctioneer adjusts prices:
  - **Excess Demand**: Raises the price of the good.
  - **Excess Supply**: Lowers the price of the good.
- **Equilibrium Configuration**: The process continues until demand equals supply for both goods, achieving market equilibrium where no further price adjustments are needed.

**Market Equilibrium (Walrasian Equilibrium):**
- **Definition**: A state where each agent selects their most-preferred bundle based on affordability, and all consumers' choices are mutually compatible, meaning that demand equals supply in each market.
- **Marginal Rate of Substitution (MRS)**: At equilibrium, the MRS between the two goods for both consumers matches the price ratio, $-\frac{p_1}{p_2}$, so that each agent's indifference curve is tangent to their budget line. This implies that the indifference curves of both consumers are tangent to each other, confirming equilibrium.

![[Pasted image 20241101175337.png]]

**Figure 32.3 Summary:**
- **Figure 32.3**: Illustrates gross and net demands for both agents based on a given endowment point $W$.
  - **Gross Demand**: Represents the total quantities each agent wishes to consume.
  - **Net Demand**: Shows the difference between what each agent wants to consume and their initial holdings, highlighting their market demand or supply for each good.

**Summary:**
- **Market Equilibrium**: Achieved when prices are set so that demand equals supply for all goods, allowing for no unmet demands or surpluses.
- **Equilibrium Conditions**: Each consumer's marginal rate of substitution aligns with the price ratio, and all individual demands are compatible with the available market supply.
- **Competitive Exchange**: In competitive markets, equilibrium ensures efficient allocation where each agent's preferences are fully satisfied without unmet demand or excess supply.

### 5. The Algebra of Equilibrium

The algebra of equilibrium provides a mathematical description of how the total demand and supply for each good are balanced in a market. This can be expressed through the use of demand functions and aggregate excess demand, leading to a clear formulation of equilibrium.

**Key Concepts:**

- **Demand Functions**:
  - **Agent A's Demand for Good 1**: $x_1^A(p_1, p_2)$.
  - **Agent B's Demand for Good 1**: $x_1^B(p_1, p_2)$.
  - Similarly, $x_2^A(p_1, p_2)$ and $x_2^B(p_1, p_2)$ denote the demand functions for good 2.
  - **Equilibrium Prices**: Denoted $(p_1^*, p_2^*)$, represent the price set where total demand equals total supply.

- **Equilibrium Conditions**:
  - In equilibrium, the total demand for each good should equal the total supply:
    $$
    x_1^A(p_1^*, p_2^*) + x_1^B(p_1^*, p_2^*) = \omega_1^A + \omega_1^B
    $$
    $$
    x_2^A(p_1^*, p_2^*) + x_2^B(p_1^*, p_2^*) = \omega_2^A + \omega_2^B
    $$
  - These equations state that, at equilibrium, the combined demand of agents A and B for each good matches the total available amount of that good.

**Reformulating Equilibrium with Net Demand:**
- **Net (Excess) Demand**:
  - Net demand represents the difference between an agent's total demand and their initial endowment of a good.
  - **Agent A's Net Demand for Good 1**: $e_1^A(p_1, p_2) = x_1^A(p_1, p_2) - \omega_1^A$
  - **Agent B's Net Demand for Good 1**: $e_1^B(p_1, p_2) = x_1^B(p_1, p_2) - \omega_1^B$
  - In equilibrium, the net demands across both agents must sum to zero for each good:
    $$
    e_1^A(p_1^*, p_2^*) + e_1^B(p_1^*, p_2^*) = 0
    $$
    $$
    e_2^A(p_1^*, p_2^*) + e_2^B(p_1^*, p_2^*) = 0
    $$

- **Aggregate Excess Demand**:
  - Defined as the sum of net demands for each good across all agents:
    $$
    z_1(p_1, p_2) = e_1^A(p_1, p_2) + e_1^B(p_1, p_2) = x_1^A(p_1, p_2) + x_1^B(p_1, p_2) - (\omega_1^A + \omega_1^B)
    $$
    $$
    z_2(p_1, p_2) = e_2^A(p_1, p_2) + e_2^B(p_1, p_2) = x_2^A(p_1, p_2) + x_2^B(p_1, p_2) - (\omega_2^A + \omega_2^B)
    $$
  - **Equilibrium Condition**: At equilibrium, the aggregate excess demand for each good is zero:
    $$
    z_1(p_1^*, p_2^*) = 0
    $$
    $$
    z_2(p_1^*, p_2^*) = 0
    $$
  - **Implication**: If the aggregate excess demand for one good is zero, then the aggregate excess demand for the other good must also be zero.

![[Pasted image 20241101175557.png]]

**Figure 32.4 Summary:**
- **Figure 32.4**: Depicts equilibrium in the Edgeworth box.
  - At equilibrium, each consumer selects their most-preferred bundle within their budget set, and the total demand equals the total available supply.

**Summary:**
- **Equilibrium in the Market**: Occurs when the demand functions for each good balance with the total supply at a set of prices.
- **Net Demand and Excess Demand**: These concepts help describe the market balance by showing how individual demands relate to initial endowments.
- **Aggregate Excess Demand**: The algebraic sum of net demands across agents, which must equal zero in equilibrium.
- **Walras' Law**: States that if one market's excess demand is zero, then the other must also be zero, ensuring a balanced market across all goods.

### 6. Walras' Law

Walras' Law states that the value of aggregate excess demand across all goods is always zero. This holds not only at equilibrium prices but for all possible price combinations.

**Key Concepts:**

- **Statement of Walras' Law**:
  - Using aggregate excess demand functions, Walras' law can be written as:
    $$
    p_1 z_1(p_1, p_2) + p_2 z_2(p_1, p_2) \equiv 0
    $$
  - This means that the combined value of aggregate excess demand (for goods 1 and 2) is always zero, no matter the prices.

**Proof of Walras' Law:**

1. **Agent A's Budget Constraint**:
   - For agent A, the budget constraint in terms of demand and endowment is:
     $$
     p_1 x_1^A(p_1, p_2) + p_2 x_2^A(p_1, p_2) \equiv p_1 \omega_1^A + p_2 \omega_2^A
     $$
   - Rearranging, we get:
     $$
     p_1 [x_1^A(p_1, p_2) - \omega_1^A] + p_2 [x_2^A(p_1, p_2) - \omega_2^A] \equiv 0
     $$
   - This implies:
     $$
     p_1 e_1^A(p_1, p_2) + p_2 e_2^A(p_1, p_2) \equiv 0
     $$
   - Meaning that the value of agent A's net demand across both goods equals zero.

2. **Agent B's Budget Constraint**:
   - Similarly, agent B's budget constraint gives:
     $$
     p_1 e_1^B(p_1, p_2) + p_2 e_2^B(p_1, p_2) \equiv 0
     $$

3. **Aggregate Excess Demand**:
   - Adding the budget constraints for both agents and using the definitions of aggregate excess demand, $z_1(p_1, p_2)$ and $z_2(p_1, p_2)$, we get:
     $$
     p_1 z_1(p_1, p_2) + p_2 z_2(p_1, p_2) \equiv 0
     $$

**Implications of Walras' Law:**
- **Equilibrium in One Market Implies Equilibrium in the Other**:
  - If excess demand in one market is zero, then the excess demand in the other market must also be zero.
  - For example, if we find prices $(p_1^*, p_2^*)$ such that:
    $$
    z_1(p_1^*, p_2^*) = 0
    $$
  - Then by Walras' law:
    $$
    p_1^* z_1(p_1^*, p_2^*) + p_2^* z_2(p_1^*, p_2^*) = 0
    $$
  - This implies that $z_2(p_1^*, p_2^*) = 0$, ensuring that the demand for good 2 equals its supply.

- **Application to Multiple Markets**:
  - In a system with $k$ goods, if equilibrium is achieved in $k - 1$ markets, then Walras' Law guarantees that the $k$th market will also be in equilibrium.

**Summary:**
- **Walras' Law**: The value of aggregate excess demand across all goods is always zero, holding true for any set of prices.
- **Market Implication**: Achieving equilibrium in one market guarantees equilibrium in the other market(s).
- **General Equilibrium**: In a multi-good economy, finding equilibrium in $k - 1$ markets implies equilibrium in the remaining market, simplifying the process of finding equilibrium across all markets.

### 7. Relative Prices

In general equilibrium, Walras' Law implies that only $k - 1$ independent equations are needed to reach equilibrium in a $k$-good economy. This leads to the concept of **relative prices**, as we have $k$ goods but only need $k - 1$ independent prices.

**Key Concepts:**

- **Relative Prices**:
  - **Multiplicity of Equilibrium Prices**: If an equilibrium set of prices $(p_1^*, p_2^*)$ is found, then any scaled version $(t p_1^*, t p_2^*)$ (for $t > 0$) is also an equilibrium price set.
  - **Numeraire Price**: To solve for a unique set of relative prices, one price is often chosen as the **numeraire** (or base), typically set to 1. This allows other prices to be interpreted as relative to the numeraire price.
    - **Example**: If $p_1$ is set as the numeraire, then we effectively divide all prices by $p_1$, making $p_1 = 1$, and express all other prices relative to $p_1$.

**Example: Equilibrium with Cobb-Douglas Utility:**

Using a Cobb-Douglas utility function, we can illustrate equilibrium prices and demands. Consider two agents, A and B, with Cobb-Douglas utilities:
- **Utility Functions**:
  - Agent A: $u_A(x_1^A, x_2^A) = (x_1^A)^a (x_2^A)^{1-a}$
  - Agent B: $u_B(x_1^B, x_2^B) = (x_1^B)^b (x_2^B)^{1-b}$
- **Demand Functions**:
  - For Agent A:
    $$
    x_1^A(p_1, p_2, m_A) = \frac{a m_A}{p_1}, \quad x_2^A(p_1, p_2, m_A) = \frac{(1 - a) m_A}{p_2}
    $$
  - For Agent B:
    $$
    x_1^B(p_1, p_2, m_B) = \frac{b m_B}{p_1}, \quad x_2^B(p_1, p_2, m_B) = \frac{(1 - b) m_B}{p_2}
    $$
- **Income from Endowments**:
  - Agent A: $m_A = p_1 \omega_1^A + p_2 \omega_2^A$
  - Agent B: $m_B = p_1 \omega_1^B + p_2 \omega_2^B$

- **Aggregate Excess Demand Functions**:
  - For good 1:
    $$
    z_1(p_1, p_2) = \frac{a m_A}{p_1} + \frac{b m_B}{p_1} - (\omega_1^A + \omega_1^B)
    $$
  - For good 2:
    $$
    z_2(p_1, p_2) = \frac{(1 - a) m_A}{p_2} + \frac{(1 - b) m_B}{p_2} - (\omega_2^A + \omega_2^B)
    $$

**Setting a Numeraire:**

To find equilibrium, we can simplify by setting $p_2 = 1$, making $p_1$ the only unknown price. This gives:

- **Excess Demand for Good 1**:
  $$
  z_1(p_1, 1) = \frac{a (p_1 \omega_1^A + \omega_2^A)}{p_1} + \frac{b (p_1 \omega_1^B + \omega_2^B)}{p_1} - (\omega_1^A + \omega_1^B)
  $$

- **Excess Demand for Good 2**:
  $$
  z_2(p_1, 1) = (1 - a)(p_1 \omega_1^A + \omega_2^A) + (1 - b)(p_1 \omega_1^B + \omega_2^B) - (\omega_2^A + \omega_2^B)
  $$

Setting either $z_1(p_1, 1) = 0$ or $z_2(p_1, 1) = 0$ and solving for $p_1$ yields the equilibrium relative price:
$$
p_1^* = \frac{a \omega_2^A + b \omega_2^B}{(1 - a) \omega_1^A + (1 - b) \omega_1^B}
$$

**Summary:**
- **Relative Prices in Equilibrium**: By setting one price as the numeraire, all other prices can be found in terms of this relative price.
- **Equilibrium in a Multi-Good Economy**: Walras' Law implies that solving for equilibrium in $k - 1$ markets is sufficient, as the $k$th market will automatically reach equilibrium.
- **Practical Application**: Setting one price as the numeraire simplifies calculations and helps determine relative prices, essential in general equilibrium models.

### 8. The Existence of Equilibrium

In general equilibrium models, proving that a set of prices exists where demand equals supply in every market is critical. This concept, known as the **existence of competitive equilibrium**, ensures that our theoretical models are valid and that equilibrium can be achieved under reasonable conditions.

**Key Concepts:**

- **Competitive Equilibrium**: A situation where there exists a set of prices that equalises supply and demand across all markets.
  - **Existence Importance**: Verifying that equilibrium exists serves as a consistency check for competitive market models. Without equilibrium, the models lose practical relevance.

**Early Economic Insights and Limitations:**
- **Initial Assumption**: Early economists believed that because there were $k - 1$ equations for $k - 1$ unknowns in a $k$-good market, equilibrium would naturally exist.
- **Flaw in Counting Arguments**: Simply matching the number of equations to the number of unknowns is insufficient to prove equilibrium. Equilibrium requires specific conditions beyond a mere count.

**Mathematical Foundation for Existence:**
- **Continuity of Aggregate Excess Demand**: 
  - The key condition for proving equilibrium existence is that the **aggregate excess demand function** must be continuous.
  - **Continuity**: Means that small price changes should lead to only small changes in aggregate demand. Large, abrupt jumps in demand with small price changes would disrupt equilibrium.

**Conditions for Continuity:**

1. **Continuous Demand by Individuals**:
   - If each consumer's demand is continuous, then small changes in prices will lead to only small changes in individual demands.
   - **Convex Preferences**: Continuity in individual demand functions often requires **convex preferences** (consumers prefer diverse bundles), ensuring smooth demand adjustments to price changes.

2. **Market Size and Consumer Behavior**:
   - Even if individual consumers have non-continuous demand functions, continuity can still be achieved if each consumer is small relative to the market size.
   - **Large Markets**: When a market has many small consumers, individual discontinuities are "smoothed out" in the aggregate, ensuring a continuous aggregate demand.

**Summary:**
- **Existence of Equilibrium**: Ensuring equilibrium exists validates the competitive model by confirming that supply and demand can balance at a specific price set.
- **Continuity Requirement**: Aggregate demand functions need to be continuous, achievable when consumers have convex preferences or when the market size is large with many small consumers.
- **Implication**: These conditions make competitive behaviour feasible, reinforcing the practical application and theoretical consistency of equilibrium models.

### 9. Equilibrium and Efficiency

In a pure exchange model, achieving a competitive equilibrium ensures that the supply meets demand across all markets. A fundamental question is whether this equilibrium also exhausts all gains from trade or if additional trades might still be desirable.

**Key Concepts:**

- **Pareto Efficiency at Equilibrium**:
  - **Definition**: An allocation is **Pareto efficient** if there are no other allocations that can make one person better off without making someone else worse off.
  - **Equilibrium and Efficiency**: In competitive equilibrium, agents have no incentive for further trades once prices balance supply and demand, indicating that the equilibrium is Pareto efficient.

**Proof of Pareto Efficiency in Competitive Equilibrium:**
- **Allocation in the Edgeworth Box**:
  - A market equilibrium allocation is Pareto efficient if each consumer's preferred set of bundles is fully constrained by their budget.
  - **Figure 32.4 Analysis**:
    - At equilibrium, the set of bundles that A prefers is entirely outside her budget set, as is B's preferred set outside his budget set.
    - This ensures that A and B's preferred bundles do not overlap within the feasible budget, meaning no mutually beneficial trades remain.
  - **Conclusion**: Since no further allocations are jointly preferred by both agents, the equilibrium allocation is Pareto efficient.

**Summary:**
- **Competitive Market Efficiency**: A competitive equilibrium not only balances supply and demand but also achieves Pareto efficiency, meaning all gains from trade have been realised, and no further improvements in welfare are possible without disadvantaging another party.
- **Implication**: The competitive equilibrium ensures that all possible benefits from trade are exhausted, making it a powerful mechanism for resource allocation in a pure exchange model.

### 10. The Algebra of Efficiency

The First Theorem of Welfare Economics asserts that any market equilibrium achieved through competitive markets will be Pareto efficient, meaning no further trades can make one agent better off without making another worse off.

**Key Concepts:**
- **Pareto Efficiency at Equilibrium**:
  - An equilibrium is **Pareto efficient** if there exists no feasible allocation that both agents would prefer over the equilibrium allocation.
  - This theorem ensures that competitive markets exhaust all gains from trade, resulting in an efficient allocation of resources.

**Algebraic Proof of Pareto Efficiency:**

1. **Feasible Allocation**:
   - Suppose there exists an alternative allocation $(y_1^A, y_2^A, y_1^B, y_2^B)$ that is feasible, satisfying:
     $$
     y_1^A + y_1^B = \omega_1^A + \omega_1^B
     $$
     $$
     y_2^A + y_2^B = \omega_2^A + \omega_2^B
     $$

2. **Preferred Allocation**:
   - Assume that this alternative allocation is preferred by both agents, such that:
     - Agent A: $(y_1^A, y_2^A) \succ_A (x_1^A, x_2^A)$
     - Agent B: $(y_1^B, y_2^B) \succ_B (x_1^B, x_2^B)$

3. **Affordability at Market Equilibrium**:
   - Since each agent is purchasing their best affordable bundle at equilibrium prices $(p_1, p_2)$:
     $$
     p_1 y_1^A + p_2 y_2^A > p_1 \omega_1^A + p_2 \omega_2^A
     $$
     $$
     p_1 y_1^B + p_2 y_2^B > p_1 \omega_1^B + p_2 \omega_2^B
     $$

4. **Adding Both Equations**:
   - Summing these inequalities results in:
     $$
     p_1(y_1^A + y_1^B) + p_2(y_2^A + y_2^B) > p_1(\omega_1^A + \omega_1^B) + p_2(\omega_2^A + \omega_2^B)
     $$
   - Substituting the feasibility conditions for $y_1^A + y_1^B$ and $y_2^A + y_2^B$, we get:
     $$
     p_1(\omega_1^A + \omega_1^B) + p_2(\omega_2^A + \omega_2^B) > p_1(\omega_1^A + \omega_1^B) + p_2(\omega_2^A + \omega_2^B)
     $$
   - This is a contradiction, as the left and right sides are identical. Therefore, the assumption that a market equilibrium is not Pareto efficient must be false.

**First Theorem of Welfare Economics:**
- **Implication**: Every competitive market equilibrium is Pareto efficient. Thus, competitive markets inherently exhaust all potential gains from trade.

**Monopoly vs. Competitive Market Efficiency:**

![[Pasted image 20241101180541.png]]

1. **Ordinary Monopoly**:
   - In a monopoly setting, the monopolist sets prices to maximise their own utility, typically resulting in **Pareto inefficiency**.
   - **Example**: Figure 32.5 illustrates a situation where Agent A acts as a monopolist, choosing prices that maximise her utility but lead to an inefficient outcome, as the allocation does not achieve a tangency between the agents' indifference curves.

![[Pasted image 20241101180556.png]]

2. **Perfectly Discriminating Monopoly**:
   - A monopolist who can perfectly discriminate will sell each unit at the buyer's highest willing price.
   - **Outcome**: This results in a **Pareto efficient** allocation, as depicted in Figure 32.6, where Agent A reaches the highest utility along Agent B's indifference curve through the endowment point.

**Summary:**
- **First Welfare Theorem**: Ensures that competitive markets lead to efficient allocations where no further mutually beneficial trades exist.
- **Efficient and Inefficient Mechanisms**: Competitive markets and perfectly discriminating monopolies achieve efficiency, whereas ordinary monopolies result in inefficiency.

### 11. Efficiency and Equilibrium

The First Welfare Theorem tells us that a competitive market equilibrium is always Pareto efficient. The Second Welfare Theorem, however, asks the opposite question: if we start with a Pareto efficient allocation, can we always find prices to make it a market equilibrium? Under certain conditions, the answer is yes.

**Key Concepts:**
- **Pareto Efficiency and Equilibrium**:
  - A **Pareto efficient allocation** means there are no mutually beneficial trades left; both agents are on their highest attainable indifference curves without making each other worse off.
  - For some Pareto efficient allocations, it's possible to construct a set of prices at which the allocation can be a market equilibrium.

**Second Theorem of Welfare Economics:**
- **Convex Preferences Requirement**:
  - If all agents have **convex preferences** (preferences that represent a balanced desire for goods without extreme preferences), any Pareto efficient allocation can be supported as a market equilibrium.

![[Pasted image 20241101180609.png]]

  - **Figure 32.7**: Shows a Pareto efficient allocation where the indifference curves of both agents are tangent, allowing a budget line to be drawn that represents a set of prices where each agent chooses the best bundle within their budget, achieving equilibrium.

- **Counterexample with Nonconvex Preferences**:
  - **Nonconvex Preferences**: When preferences are nonconvex, it's possible that no price set can support a Pareto efficient allocation as a market equilibrium.

![[Pasted image 20241101180622.png]]

  - **Figure 32.8**: Illustrates a case where agents have nonconvex preferences. At point $X$, the allocation is Pareto efficient, but no budget line can make it a market equilibrium because the demands of agents $A$ and $B$ at these prices do not match supply.

**Geometric Proof of the Second Welfare Theorem:**
- **Tangent Line Argument**:
  - At a Pareto efficient allocation, the sets of bundles preferred by each agent are disjoint. For agents with convex preferences, we can draw a straight line that separates these two sets, indicating a budget line.
  - **Relative Prices**: The slope of this line represents relative prices that, if assigned as endowments along this budget line, ensure the market equilibrium aligns with the original Pareto efficient allocation.

**Summary:**
- **Second Welfare Theorem**: States that, with convex preferences, any Pareto efficient allocation can be achieved as a market equilibrium for some set of endowments and prices.
- **Implication**: Competitive markets with convex preferences can always support efficient allocations with an appropriate initial distribution, allowing for both efficiency and potential equity in resource allocation.

### 12. Implications of the First Welfare Theorem

The First and Second Welfare Theorems are central results in economics, underpinning the theoretical support for competitive markets as effective means for resource allocation. Here, we explore the implications of the **First Welfare Theorem**, which asserts that any competitive equilibrium will result in a Pareto efficient allocation.

**Key Concepts:**
- **Competitive Equilibrium and Efficiency**: 
  - The First Welfare Theorem states that in a competitive market, where each agent maximises their own utility, the resulting allocation will be Pareto efficient.
  - **Pareto Efficiency**: A situation where no individual can be made better off without making someone else worse off.

**Implicit Assumptions:**

1. **Consumption Externalities**:
   - Assumes each agent's utility depends only on their own consumption, not others'. If agents care about others' consumption (e.g., someone disliking another's cigar consumption), known as a **consumption externality**, the equilibrium might not be Pareto efficient.
   - **Example**: If Agent A dislikes Agent B's cigar consumption, A might pay B to consume less. The standard market mechanism doesn't naturally account for this externality, potentially leading to inefficiency.

2. **Competitive Behaviour**:
   - The theorem assumes agents behave competitively, meaning they accept prices as given rather than exerting market power.
   - **Market Power**: In cases with few agents, each may influence prices to their advantage, deviating from competitive behaviour and resulting in inefficiencies.

3. **Existence of Competitive Equilibrium**:
   - For the First Welfare Theorem to apply, a competitive equilibrium must exist. This requires that each consumer is small relative to the market, ensuring individual actions don't influence overall prices.

**Significance of the First Welfare Theorem:**
- **Mechanism for Pareto Efficiency**:
  - The theorem demonstrates that a competitive market structure allows for efficient allocation, especially valuable when many agents are involved in resource allocation.
  - **Scalability**: While a two-person exchange might manage trades without a formal market, larger populations benefit from the market's ability to coordinate trades efficiently.

- **Information Economy**:
  - Competitive markets minimise the amount of information each agent needs to make decisions. Each consumer only needs knowledge of the **prices** of goods to make optimal choices; they don't require detailed knowledge about production processes or ownership.
  - **Decentralised Decision-Making**: Consumers determine demand based on prices alone, while the market adjusts prices to balance supply and demand, achieving efficiency without centralised control.

**Summary:**
- **Efficiency in Large Markets**: The First Welfare Theorem supports competitive markets as efficient resource allocation systems, particularly useful for large economies.
- **Limited Information Requirement**: The theorem highlights how competitive markets economise on information, as agents need only price information to make consumption decisions, supporting the use of markets in complex economies.

The First Welfare Theorem provides a foundational argument for the use of competitive markets, showing that they can achieve efficient outcomes through individual actions without requiring central oversight.

### 13. Implications of the Second Welfare Theorem

The **Second Welfare Theorem** provides a framework for separating the concepts of **distribution** and **efficiency** in economic policy, stating that any Pareto efficient allocation can be achieved as a competitive equilibrium. This means that society can use the market to allocate resources efficiently, regardless of the desired distribution of those resources.

**Key Concepts:**
- **Separation of Efficiency and Distribution**:
  - The Second Welfare Theorem suggests that we can separate the issue of efficient allocation (prices reflecting scarcity) from the issue of distributive equity (who has the purchasing power). 
  - This separation allows competitive markets to allocate resources efficiently while allowing redistribution of wealth to achieve equity.

- **Dual Roles of Prices**:
  - **Allocative Role**: Prices indicate the scarcity of goods, guiding consumption decisions.
  - **Distributive Role**: Prices, in combination with endowments, determine the purchasing power of agents.

**Implications for Policy:**
- **Redistribution via Endowments**:
  - Instead of manipulating prices to achieve equity (e.g., setting lower prices for certain groups), the theorem implies that a more efficient approach is to redistribute **purchasing power**.
  - This can be achieved by **lump-sum transfers** or taxes based on endowments rather than taxing consumption or income directly, which distorts marginal consumption decisions.

- **Lump-Sum Taxes and Transfers**:
  - A lump-sum tax on endowments (e.g., taxing individuals on potential labour capacity rather than actual labour income) would not influence marginal choices, maintaining efficiency. For example, taxing each person a set amount based on their potential earnings doesn't affect the decision of how much labour they supply.
  - This is theoretically nondistortionary, ensuring that prices still reflect scarcity without impacting supply or demand decisions.

**Practical Considerations:**
- **Challenges in Implementing Lump-Sum Taxes**:
  - Identifying the true endowment or potential wealth of individuals is challenging, especially when most people's endowments largely consist of their own labour.
  - Practical application could involve hypothetical measures, such as taxing potential earnings for a set number of work hours, but these ideas are complex and not commonly implemented due to administrative difficulties.

- **Efficiency and Equity Goals**:
  - The Second Welfare Theorem suggests that policymakers should avoid distorting prices to achieve equity (e.g., by offering lower prices to certain groups). Instead, a more efficient strategy is to redistribute wealth directly.
  - Direct redistribution, such as providing income support, allows recipients the freedom to decide how to spend based on their preferences rather than receiving subsidised prices on specific goods.

**Policy Implications in Real Life:**
- **Avoiding Price Manipulation**:
  - Attempts to create equity through price adjustments, such as discounting essential services for certain groups, are generally inefficient. For example, instead of offering lower utility rates for seniors, a better approach might be to increase their income directly, allowing them to allocate funds as they see fit.
  - **Redistributing Income Directly**: Direct financial support is more effective than subsidised prices, as it provides the recipient with freedom over their consumption choices.

**Summary:**

The **Second Welfare Theorem** suggests that competitive markets can be used to achieve efficient allocations if distributional goals are addressed separately. By focusing on **lump-sum transfers** or **redistributions of endowments**, we can maintain efficiency without distorting prices. Policymakers should strive to use the market to reflect scarcity while using redistributive policies to address concerns about equity.

---

## Notes

**Exchange** [V 32; NS 11-7] – Page 602 (Lecture 7, 8, 9)

---

## Examples

> [!example] Edgeworth Box Construction
> The Edgeworth box provides a complete graphical representation of all feasible allocations between two individuals for two goods, along with their preferences, enabling analysis of potential trades.

> [!example] Mutually Beneficial Trade
> The lens-shaped region in the Edgeworth box represents all allocations where both individuals are better off than at the initial endowment, showing the potential for mutually beneficial exchange.

> [!example] Cobb-Douglas Equilibrium
> With Cobb-Douglas utility functions, equilibrium prices can be calculated by setting aggregate excess demand to zero, demonstrating how relative prices are determined in general equilibrium.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Edgeworth Box | Graphical tool for analyzing exchange of two goods between two individuals |
| Feasible Allocation | Allocation where total consumption equals total endowment for each good |
| Initial Endowment | Starting allocation $(\omega_1^A, \omega_2^A)$ for A and $(\omega_1^B, \omega_2^B)$ for B |
| Gross Demand | Total amount of a good an agent wants to consume at given prices |
| Net (Excess) Demand | Difference between gross demand and initial endowment: $e_1^A = x_1^A - \omega_1^A$ |
| Aggregate Excess Demand | Sum of net demands: $z_1(p_1, p_2) = e_1^A + e_1^B$ |
| Market Equilibrium | Prices $(p_1^*, p_2^*)$ where aggregate excess demand is zero for all goods |
| Walras' Law | $p_1 z_1(p_1, p_2) + p_2 z_2(p_1, p_2) \equiv 0$ - value of aggregate excess demand always zero |
| Relative Prices | Prices expressed relative to a numeraire (base price set to 1) |
| Pareto Efficiency | Allocation where no one can be made better off without making someone worse off |
| Contract Curve | Set of all Pareto efficient allocations in the Edgeworth box |
| First Welfare Theorem | Every competitive market equilibrium is Pareto efficient |
| Second Welfare Theorem | With convex preferences, any Pareto efficient allocation can be achieved as market equilibrium |
| Lump-Sum Tax | Fixed tax regardless of behavior, nondistortionary |

---

## Questions & Discussion

- [ ] What is the Edgeworth box and how does it represent exchange?
- [ ] How do we identify mutually beneficial trades?
- [ ] What is Pareto efficiency and how is it related to the contract curve?
- [ ] How does market equilibrium work in the Edgeworth box?
- [ ] What is Walras' Law and what are its implications?
- [ ] How do relative prices simplify equilibrium analysis?
- [ ] What conditions ensure the existence of competitive equilibrium?
- [ ] What is the First Welfare Theorem and why is it important?
- [ ] What is the Second Welfare Theorem and what are its policy implications?
- [ ] How can efficiency and equity be separated in economic policy?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand Edgeworth box construction
- [ ] Understand Pareto efficiency and the contract curve
- [ ] Understand market equilibrium and Walras' Law
- [ ] Understand the First and Second Welfare Theorems
- [ ] Review implications for economic policy

---

## Related Notes

- [[200 Finance/Microeconomics/Course Overview|Course Overview]]
- [[200 Finance/Microeconomics/Lectures/Ch 16 - Equilibrium|Ch 16 - Equilibrium]]
- [[200 Finance/Microeconomics/Lectures/Ch 15 - Market Demand|Ch 15 - Market Demand]]

---

## References
