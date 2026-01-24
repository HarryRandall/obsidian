---
course: "[[200 Finance/Microeconomics/Course Overview|Microeconomics]]"
type: lecture
date: 2024-11-01
week: 9
session: 1
instructor: 
tags:
  - lecture
  - microeconomics
status: in-progress
---

# Ch 19 - Technology

> [!info] Lecture Details
> **Course:** [[200 Finance/Microeconomics/Course Overview|Microeconomics]]
> **Type:** Lecture
> **Date:** Friday, 1 November 2024
> **Week:** 9
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Production technology covering inputs and outputs, describing technological constraints, examples of technology (fixed proportions, perfect substitutes, Cobb-Douglas), properties of technology, marginal product, technical rate of substitution, diminishing marginal product, diminishing technical rate of substitution, long run and short run, and returns to scale.

---

## Key Concepts

### 1. Inputs and Outputs

In this section, we define *factors of production*, which are the essential inputs used in the production of goods and services. Factors are commonly categorised as land, labour, capital, and raw materials. Among these, *capital* is further distinguished as physical assets used in production, setting it apart from *financial capital*, which refers to funds used for business operations. This distinction helps clarify the types of resources required for production and their specific roles.

**Factors of Production:**
- Factors of production are inputs used to create outputs, traditionally grouped into:
  - **Land**: Natural resources used in production.
  - **Labour**: Human effort measured in units like hours worked per week.
  - **Capital Goods**: Physical assets, such as machinery and equipment, that are produced for use in further production.
  - **Raw Materials**: Basic materials consumed in the production process.

**Capital vs. Financial Capital:**
- *Capital goods*, or *physical capital*, include assets like buildings and machines. This contrasts with *financial capital*, which refers to money used to start or maintain a business.
- For example, a factory's machinery is part of its capital goods, whereas funds invested in the factory represent financial capital.

**Flow Units:**
- Production is often measured in *flow units*, meaning inputs and outputs are assessed over time (e.g., labour hours per week, output per week). This approach focuses on the quantity of inputs and outputs rather than the specific nature of each factor.

**Simplification of Production Analysis:**
- By focusing on the quantities of inputs and outputs, production analysis can generalise technological processes without needing to specify each type of input. This abstraction allows for more flexible modelling of production functions, making it easier to analyse the relationship between inputs and outputs across different industries.

> [!example] Factory Example
> Consider a factory producing widgets:
> - **Inputs**: The factory uses labour (worker hours per week), capital goods (machinery hours), and raw materials (steel, plastic).
> - **Outputs**: The widgets produced each week can be measured against these flow units to determine productivity.
> 
> This approach allows for a simplified analysis of how efficiently inputs are converted to outputs without detailing each individual input's characteristics.

### 2. Describing Technological Constraints

Technological constraints limit the combinations of inputs firms can use to achieve a given output level. Only *technologically feasible* production plans are possible, and these can be represented as a *production set*, the collection of all possible input-output combinations. The outer boundary of this set, showing the maximum output for each input level, is described by the *production function*. This section also introduces the *isoquant*, which represents all input combinations that produce a specific output level.

**Production Set:**
- The production set includes all feasible combinations of inputs and outputs, representing the technological limits of production. For example, if $x$ is an input and $y$ is an output, each point $(x, y)$ within the production set indicates that $y$ units of output are achievable with $x$ units of input.

**Production Function:**
- The production function defines the boundary of the production set, showing the maximum achievable output for each level of input. For one input, the production function can be written as:
  $$ y = f(x) $$
  where $y$ is the output, and $x$ is the input. For two inputs, the production function extends to:
  $$ y = f(x_1, x_2) $$
  where $x_1$ and $x_2$ are inputs, and $y$ is the output. The production function is critical in understanding the efficiency and capacity of production.

**Isoquant:**
- An isoquant represents all input combinations that yield the same output level, similar to an indifference curve in consumer theory but labelled with output quantities rather than utility levels. For example, if an isoquant is labelled with an output level of $y$, all input combinations on this isoquant are just sufficient to produce $y$ units of output.

![[Pasted image 20241101183447.png]]
- **Figure 19.1 (Production Set and Production Function)**: Illustrates a typical production set, where each point inside or on the boundary represents feasible input-output combinations. The production function forms the outer boundary, showing the maximum possible output for each input level.

**Cost Considerations:**
- Since inputs have associated costs, firms aim to operate along the production function's boundary, maximising output for a given input level to ensure cost efficiency. The production function thus plays a vital role in optimising resource allocation.

**Use of Isoquants:**
- Isoquants allow firms to assess the trade-offs between inputs for a fixed output level, aiding in decisions about input substitution. This is especially valuable when balancing different types of inputs, such as labour and capital, to achieve the desired output level efficiently.

### 3. Examples of Technology

This section explores different types of production technologies, each with unique input-output relationships illustrated by *isoquants*. These examples include fixed proportions, perfect substitutes, and Cobb-Douglas production functions, which all offer distinct approaches to combining inputs in production.

**Fixed Proportions:**
- In a fixed-proportion production function, inputs must be used in specific ratios, similar to *perfect complements* in consumer theory. For example, to produce holes, one man and one shovel are required for each hole. Additional shovels or workers alone will not increase output, so the production function is given by:
  $$ f(x_1, x_2) = \min\{x_1, x_2\} $$
  where $x_1$ is the number of men and $x_2$ is the number of shovels. This creates *L-shaped isoquants*, as shown in **Figure 19.2**, where each isoquant reflects a fixed combination of inputs needed to produce a specific output.

**Perfect Substitutes:**
- With perfect substitutes, inputs can replace each other entirely, much like in consumer preferences. For example, if homework production relies on red and blue pencils, only the total count of pencils matters, so the production function is:
  $$ f(x_1, x_2) = x_1 + x_2 $$
  where $x_1$ and $x_2$ are the quantities of red and blue pencils. **Figure 19.3** depicts straight-line isoquants, indicating that any increase in total pencils directly increases output without needing specific proportions.

**Cobb-Douglas Production Function:**
- The Cobb-Douglas production function, similar to Cobb-Douglas preferences, combines inputs in variable proportions and is given by:
  $$ f(x_1, x_2) = A x_1^a x_2^b $$
  where $A$ is a scaling factor, $x_1$ and $x_2$ are inputs, and $a$ and $b$ determine each input's influence on output. Unlike the utility function, here $A$ affects output scale, so parameters $a$, $b$, and $A$ are allowed to vary to capture different production scales and input responses. Cobb-Douglas isoquants, shaped like curves, represent smoothly substitutable input combinations.

![[Pasted image 20241101183540.png]]
- **Figure 19.2 (Fixed Proportions)**: Shows L-shaped isoquants where each isoquant represents fixed input combinations needed to achieve specific outputs, reflecting the rigid nature of fixed proportions.

![[Pasted image 20241101183546.png]]
- **Figure 19.3 (Perfect Substitutes)**: Illustrates straight-line isoquants where each additional unit of either input increases output, showing the flexible substitution characteristic of perfect substitutes.

**Production Efficiency:**
- Different production functions allow firms to choose technologies based on input flexibility and availability. Fixed-proportion technologies are suited to processes requiring exact input combinations, while substitute-based and Cobb-Douglas technologies offer more flexibility, beneficial in varying input scenarios.

**Impact of Parameters:**
- In Cobb-Douglas functions, $a$ and $b$ influence how responsive output is to each input, while $A$ scales the overall output level, making this function useful in modelling different production scales and input sensitivities.

### 4. Properties of Technology

This section outlines two key assumptions about production technology: *monotonicity* and *convexity*. Monotonicity implies that increasing any input cannot reduce output, while convexity suggests that weighted averages of different production techniques are feasible. These assumptions help in modelling efficient production methods and provide a basis for analysing production choices and isoquants.

**Monotonicity (Free Disposal):**
- Monotonicity means that adding more of any input will not decrease the output level, often referred to as the property of *free disposal*. If firms can dispose of inputs at no cost, having extra inputs is either beneficial or neutral for output, ensuring that increased inputs do not harm production.

**Convexity:**
- Convexity implies that if there are two feasible ways to produce a certain output level (e.g., using $(x_1, x_2)$ and $(z_1, z_2)$), any weighted average of these input combinations will also produce at least the same output level. This property enables flexible production techniques, allowing firms to adjust input combinations for efficient production.
- For instance, if one production method requires $(a_1, a_2)$ units of factors 1 and 2, and another requires $(b_1, b_2)$, convexity means that any combination along the line joining $(a_1, a_2)$ and $(b_1, b_2)$ will also yield feasible output levels. Figure 19.4 illustrates this concept, showing a convex isoquant where different input combinations can achieve the same output.

![[Pasted image 20241101183624.png]]
- **Figure 19.4 (Convexity in Production)**: Demonstrates how different combinations of two production techniques can achieve the same output level. For example, using a weighted average of techniques $(100a_1, 100a_2)$ and $(100b_1, 100b_2)$ allows production of 100 units, showing the flexible, convex nature of feasible production plans.

**Efficiency in Production Choices:**
- Monotonicity ensures that firms can always maintain or increase output when inputs are increased, reinforcing efficiency. Convexity provides flexibility in choosing input combinations, allowing firms to operate efficiently even when inputs vary, as they can adopt any feasible combination on the convex isoquant.

**Scalability:**
- Convexity supports scalable production by allowing firms to adjust the proportions of inputs without losing feasibility. This characteristic is especially valuable for industries where production scales up or down based on demand.

> [!example] Production Methods Example
> Suppose a firm has two production methods for producing widgets:
> - Method A: Requires $(100a_1, 100a_2)$ inputs to produce 100 units.
> - Method B: Requires $(100b_1, 100b_2)$ inputs for the same output.
> 
> By combining these methods—e.g., using 25% of Method A and 75% of Method B—the firm can produce 100 units with an intermediate combination of inputs, $(25a_1 + 75b_1, 25a_2 + 75b_2)$. This ability to mix production techniques provides flexibility and allows firms to use inputs efficiently.

### 5. The Marginal Product

This section introduces the concept of *marginal product*, which measures the increase in output resulting from a small increase in one input, holding other inputs constant. Similar to *marginal utility* in consumer theory, the marginal product captures the additional output per unit increase in an input, providing insights into the productivity of each factor.

**Marginal Product of a Factor:**
- The marginal product of an input measures the change in output as the input increases by a small amount, holding all other inputs constant. For an input $x_1$, the marginal product is given by:
  $$ MP_1(x_1, x_2) = \frac{\Delta y}{\Delta x_1} = \frac{f(x_1 + \Delta x_1, x_2) - f(x_1, x_2)}{\Delta x_1} $$
  where $y$ is the output, and $f(x_1, x_2)$ represents the production function. Similarly, the marginal product of factor 2 is $MP_2(x_1, x_2)$.
- Marginal product is typically viewed as the additional output from using one more unit of an input, as long as this increment is small relative to the total input amount.

**Interpretation as a Rate:**
- The marginal product is a rate indicating output change per unit change in input. It differs from marginal utility in that it measures a concrete quantity (output), making it an observable and measurable concept in production.

**Productivity Measurement:**
- Marginal product helps firms assess the productivity of each input, guiding decisions on whether increasing an input will meaningfully enhance output. It is especially relevant for determining optimal resource allocation, where firms can adjust input levels to maximise production efficiency.

**Diminishing Marginal Product:**
- In many production contexts, the marginal product decreases as more of an input is used (diminishing marginal returns). This means that as input levels rise, each additional unit contributes progressively less to total output, helping firms identify the optimal input level for maximum efficiency.

> [!example] Factory Example
> Consider a factory using labour ($x_1$) and machinery ($x_2$):
> - If the factory operates at $(x_1, x_2)$ and decides to add more labour, the marginal product of labour ($MP_1$) indicates how much additional output will result from each new unit of labour, keeping machinery constant.
> - If $MP_1$ is high, additional labour significantly increases output; if $MP_1$ is low, further increases in labour yield diminishing returns.

### 6. The Technical Rate of Substitution

The *Technical Rate of Substitution (TRS)* measures how much of one input can be reduced while increasing another input just enough to keep output constant. Analogous to the *Marginal Rate of Substitution (MRS)* in consumer theory, the TRS reflects the trade-off between inputs in production, providing insights into how firms can substitute inputs efficiently.

**Technical Rate of Substitution (TRS):**
- The TRS represents the rate at which a firm must substitute one input for another to maintain a constant output level. For inputs $x_1$ and $x_2$, the TRS at a given point $(x_1, x_2)$ is:
  $$ \text{TRS}(x_1, x_2) = \frac{\Delta x_2}{\Delta x_1} = -\frac{MP_1(x_1, x_2)}{MP_2(x_1, x_2)} $$
  where $MP_1(x_1, x_2)$ and $MP_2(x_1, x_2)$ represent the marginal products of inputs $x_1$ and $x_2$, respectively. This ratio expresses the input trade-off required to keep output constant along an isoquant.

**Interpretation as the Slope of the Isoquant:**
- The TRS is the slope of the isoquant, representing the rate at which one input can replace another in production without affecting output. A steep TRS indicates a high substitution rate, meaning one input can effectively replace the other, while a flatter TRS suggests limited substitutability.

**Input Substitution Decisions:**
- TRS provides a valuable metric for firms evaluating how to adjust input levels based on relative costs. By understanding the trade-off between inputs, firms can determine efficient combinations that maintain output while optimising costs.

**Relation to Marginal Products:**
- Since the TRS is defined by the ratio of marginal products, changes in $MP_1$ or $MP_2$ directly affect the TRS. If one input becomes less productive, the TRS shifts, indicating the need for more of the less productive input to maintain output, influencing substitution decisions.

> [!example] Labour and Capital Example
> Consider a firm using labour ($x_1$) and capital ($x_2$):
> - If the firm wants to reduce labour by a small amount $\Delta x_1$ but maintain output, it must increase capital by $\Delta x_2$ according to the TRS. If $MP_1$ is relatively high compared to $MP_2$, the TRS will be steep, indicating that labour can be reduced with only a modest increase in capital.

### 7. Diminishing Marginal Product

The *law of diminishing marginal product* states that as more of one input is added to a production process while holding other inputs constant, the additional output generated by each additional unit of that input will eventually decrease. This principle reflects a common characteristic of production processes and is crucial for understanding optimal resource allocation.

**Diminishing Marginal Product:**
- When an additional unit of an input (e.g., labour) is added while other inputs (e.g., land) are held constant, the resulting increase in output will gradually decrease. This is expressed as a diminishing marginal product of the input.
- Formally, if $MP_1$ is the marginal product of factor 1, then for a fixed level of factor 2:
  $$ \text{As } x_1 \text{ increases, } MP_1 \text{ decreases.} $$

> [!example] Diminishing Marginal Product Example
> Consider a farm where each additional worker initially increases output significantly, but as more workers are added to the same land, they begin to interfere with each other. Eventually, the output added by each new worker decreases, illustrating diminishing marginal product.

**Efficiency in Resource Allocation:**
- The diminishing marginal product guides firms in allocating resources efficiently. By recognising the point at which additional input units yield diminishing returns, firms can avoid waste and maintain cost-effectiveness.

**Limitations of Diminishing Returns:**
- This concept applies only when other inputs are held constant. For example, if a farm increases both land and labour proportionally, the diminishing marginal product may not occur, as the balance between inputs prevents crowding effects.

> [!example] Farmland Example
> Consider a small plot of farmland with fixed land ($x_2$) and increasing labour ($x_1$):
> - Initially, each new worker contributes significantly to output, but as more workers are added, their additional contributions decrease due to limited land availability.
> - At a certain point, adding more workers may even reduce total output if crowding and interference become severe.

### 8. Diminishing Technical Rate of Substitution

The *diminishing technical rate of substitution (TRS)* assumes that as we increase one input and adjust the other to keep output constant (moving along an isoquant), the TRS between the two inputs declines. This results in convex-shaped isoquants, similar to well-behaved indifference curves in consumer theory. The diminishing TRS reflects a declining willingness to substitute one input for another as the quantity of the first input increases.

**Diminishing Technical Rate of Substitution:**
- As more of factor 1 ($x_1$) is used, and factor 2 ($x_2$) is reduced to maintain constant output, the TRS decreases in absolute value. This means that as we move along an isoquant, the slope (TRS) becomes less steep as $x_1$ increases, showing a reduced rate at which $x_1$ can replace $x_2$ without changing output.
- Mathematically, if $TRS(x_1, x_2) = -\frac{MP_1}{MP_2}$, then diminishing TRS implies that $|TRS|$ decreases as $x_1$ increases along an isoquant.

**Convex Isoquants:**
- The diminishing TRS leads to convex-shaped isoquants, indicating that as one input becomes more abundant relative to the other, it becomes less effective as a substitute for that other input. This shape is similar to convex indifference curves, reinforcing the idea of diminishing substitutability.

**Differences Between Diminishing TRS and Diminishing Marginal Product**

- **Diminishing Marginal Product**:
  - Refers to the decline in additional output produced by an increase in one input, holding the other input constant.

- **Diminishing TRS**:
  - Refers to the decline in the rate at which one input substitutes for another while maintaining output at a constant level, moving along an isoquant.

**Input Substitution Flexibility:**
- Diminishing TRS implies that inputs are not perfect substitutes, and increasing one input while reducing another becomes less efficient. Firms must therefore balance input proportions to maintain efficient production as they adjust input levels.

> [!example] Factory Example
> Consider a factory that uses labour ($x_1$) and machinery ($x_2$):
> - As more labour is added while reducing machinery to keep output constant, the TRS diminishes, meaning each additional unit of labour becomes less effective at substituting for machinery.
> - If the TRS were constant, labour could fully replace machinery without losing efficiency, but the diminishing TRS reflects the practical limits of substitution.

### 9. The Long Run and the Short Run

The *short run* and *long run* are fundamental concepts in production, distinguishing between the time frames where some inputs are fixed versus those where all inputs can vary. In the short run, at least one factor of production is fixed, limiting the firm's flexibility. In the long run, however, all factors can be adjusted, allowing for more flexibility in production decisions.

![[Pasted image 20241101184004.png]]

**Short Run:**
- In the short run, at least one input is fixed at a set level. For instance, a farmer may be limited by a fixed amount of land. The short-run production function is represented by:
  $$ f(x_1, x_2) $$
  where $x_2$ is fixed, and $x_1$ can vary. This limited flexibility impacts output potential, as illustrated in **Figure 19.5**, where output initially increases with $x_1$ but flattens due to diminishing marginal product.

**Long Run:**
- In the long run, all factors of production can be varied, allowing firms to fully optimise their input levels. For the farmer, this could mean acquiring additional land or machinery. In the long run, there are no constraints on adjusting inputs, allowing the production function to reach its maximum efficiency.

**Diminishing Marginal Product in the Short Run:**
- As more units of a variable input (e.g., labour) are added in the short run to a fixed input (e.g., land), the marginal product of the variable input eventually decreases. This concept is represented by the flattening of the production function in **Figure 19.5**, illustrating the diminishing returns on adding more of a single variable input when others are held fixed.

**Flexibility in Production Decisions:**
- The distinction between short run and long run affects how firms plan for expansion or contraction. In the short run, firms are limited by fixed inputs, so they may focus on maximising efficiency within these constraints. In the long run, they can adjust all inputs to optimise production fully.

**Investment and Capacity Planning:**
- The long-run perspective allows firms to make investments in capital, technology, or other resources that can significantly increase capacity, unlike in the short run where output adjustments are limited.

> [!example] Manufacturing Firm Example
> Consider a manufacturing firm with fixed machinery ($x_2$) but variable labour ($x_1$) in the short run:
> - In the short run, the firm can only increase output by adding more labour, but due to limited machinery, additional labour eventually leads to diminishing returns.
> - In the long run, the firm can expand its machinery to match the increased labour, allowing more efficient production without encountering diminishing returns at lower levels of input.

### 10. Returns to Scale

*Returns to scale* describes how output responds to a proportional increase in all inputs. If all inputs are scaled by a constant factor $t$, the change in output can be classified as constant, increasing, or decreasing returns to scale. This concept helps us understand the efficiency of scaling production in different industries.

**Constant Returns to Scale:**
- If doubling all inputs results in a doubling of output, the production function exhibits *constant returns to scale*. Mathematically, this is represented by:
  $$ f(tx_1, tx_2) = t \cdot f(x_1, x_2) $$
  where scaling both inputs by $t$ results in output scaling by the same factor. Constant returns to scale often arise from *replication*, where additional inputs produce a proportional increase in output by simply replicating the current production setup.

**Increasing Returns to Scale:**
- *Increasing returns to scale* occur when scaling all inputs by $t$ results in output increasing by more than $t$. Formally:
  $$ f(tx_1, tx_2) > t \cdot f(x_1, x_2) $$
  An example is an oil pipeline, where doubling the diameter (doubling input materials) increases the cross-sectional area, allowing more than twice the original flow capacity. Increasing returns to scale are often seen in technologies that gain efficiency with larger-scale operations.

**Decreasing Returns to Scale:**
- *Decreasing returns to scale* occur when scaling all inputs by $t$ results in output increasing by less than $t$, expressed as:
  $$ f(tx_1, tx_2) < t \cdot f(x_1, x_2) $$
  This may indicate a missing input or operational inefficiencies. Typically, diminishing returns to scale arise from short-run constraints or unaddressed limitations, rather than long-run scenarios where all inputs are varied.

**Variable Returns to Scale:**
- Some technologies exhibit different returns to scale at different production levels. For example, a firm may experience increasing returns to scale at low output levels and constant returns to scale at higher levels as production stabilises.

> [!example] Datacentres
> Datacentres, housing thousands of servers, are designed to scale up easily by adding server racks. This scalability results in *constant returns to scale*, as doubling inputs (servers, space, energy) generally doubles computing output.

> [!example] Intel's "Copy Exactly!" Approach
> Intel's production process relies on exact replication of procedures across plants to ensure quality. This *constant returns to scale* approach enables Intel to double production by replicating identical setups, maintaining output consistency across plants.

**Planning for Growth:**
- Firms use returns to scale to plan efficient growth strategies. Understanding whether their operations have constant, increasing, or decreasing returns to scale guides investment decisions, expansion plans, and long-term production management.

**Operational Efficiency:**
- Returns to scale inform firms about potential efficiencies at larger production volumes, helping them avoid diminishing returns by identifying and addressing any constraints that could affect scalability.

---

## Notes

**Technology** [V 19; NS c7] – Page 350 (Lecture 9)

---

## Examples

> [!example] Factory Example
> See Key Concepts section above.

> [!example] Production Methods Example
> See Key Concepts section above.

> [!example] Factory Example
> See Key Concepts section above.

> [!example] Labour and Capital Example
> See Key Concepts section above.

> [!example] Diminishing Marginal Product Example
> See Key Concepts section above.

> [!example] Farmland Example
> See Key Concepts section above.

> [!example] Factory Example
> See Key Concepts section above.

> [!example] Manufacturing Firm Example
> See Key Concepts section above.

> [!example] Datacentres
> See Key Concepts section above.

> [!example] Intel's "Copy Exactly!" Approach
> See Key Concepts section above.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Factors of Production | Inputs used in production: land, labour, capital goods, raw materials |
| Capital Goods | Physical assets used in production (vs financial capital) |
| Flow Units | Inputs/outputs measured over time (e.g., hours per week) |
| Production Set | Collection of all feasible input-output combinations |
| Production Function | $y = f(x_1, x_2)$ - maximum output for given inputs |
| Isoquant | All input combinations producing same output level |
| Fixed Proportions | $f(x_1, x_2) = \min\{x_1, x_2\}$ - inputs in fixed ratios |
| Perfect Substitutes | $f(x_1, x_2) = x_1 + x_2$ - inputs fully substitutable |
| Cobb-Douglas Production | $f(x_1, x_2) = A x_1^a x_2^b$ |
| Monotonicity | More inputs don't reduce output (free disposal) |
| Convexity | Weighted averages of production methods are feasible |
| Marginal Product | $MP_1 = \frac{\Delta y}{\Delta x_1}$ - additional output from one more unit of input |
| Technical Rate of Substitution | $TRS = -\frac{MP_1}{MP_2}$ - slope of isoquant |
| Diminishing Marginal Product | Marginal product decreases as input increases |
| Diminishing TRS | TRS decreases as one input increases along isoquant |
| Short Run | At least one input fixed |
| Long Run | All inputs variable |
| Constant Returns to Scale | $f(tx_1, tx_2) = t \cdot f(x_1, x_2)$ |
| Increasing Returns to Scale | $f(tx_1, tx_2) > t \cdot f(x_1, x_2)$ |
| Decreasing Returns to Scale | $f(tx_1, tx_2) < t \cdot f(x_1, x_2)$ |

---

## Questions & Discussion

- [ ] What are the factors of production?
- [ ] What is the difference between production set and production function?
- [ ] What are the different types of production technologies?
- [ ] What is marginal product and how does it relate to diminishing returns?
- [ ] What is the technical rate of substitution?
- [ ] What is the difference between short run and long run?
- [ ] What are returns to scale?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand production functions
- [ ] Practice drawing isoquants
- [ ] Understand returns to scale

---

## Related Notes

- [[200 Finance/Microeconomics/Course Overview|Course Overview]]
- [[200 Finance/Microeconomics/Lectures/Ch 20 - Profit Maximisation|Ch 20 - Profit Maximisation]]

---

## References
