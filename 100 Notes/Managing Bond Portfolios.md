**Class**: [[FINM3011 - Investments]]
**Date**: Tuesday, 14 October 2025, 11:07
**Tags**: 

---
## Interest Rate Risk
![[Pasted image 20251014110749.png]]

- This graph illustrates the historical interest rates with maturities.
- Within the last 50 years, there's been a large change in the required rate of return.
- In the early 70's, return was 7%, then it increased to ~16%, which was when the interest rate was super high.

**A Motivating Numerical Example
- Suppose a 5-year treasury coupon bond  
- Face value \$100  
- Coupon rate 3%, paid annually  
- The current zero rate yield curve is as follows:  
$$r_{0,1} = 1\%, \quad r_{0,2} = 2\%, \quad r_{0,3} = 3\%, \quad r_{0,4} = 4\%, \quad r_{0,5} = 5\%$$

- Current Bond Price
The current bond price is given by
$$
P = \sum_{t=1}^{4} \frac{3}{(1 + r_{0,t})^t} + \frac{100 + 3}{(1 + r_{0,5})^5}
$$
Substituting the given rates:
$$
P = 91.8668
$$
- Solving the Yield
We can also solve for the yield \( y \) using the bond price equation:
$$
91.8668 = \sum_{t=1}^{4} \frac{3}{(1 + y)^t} + \frac{100 + 3}{(1 + y)^5}
$$
Thus,
$$
y = 4.87\%
$$
**Parallel Shift in Zero Rates**
- Now assume the zero rates jump up by **1%** suddenly.  
- The zero rate yield curve lifts up in parallel by 1%:
$$
  r_{0,1} = 2\%, \quad r_{0,2} = 3\%, \quad r_{0,3} = 4\%, \quad r_{0,4} = 5\%, \quad r_{0,5} = 6\%
  $$
- New Bond Price
- The new bond price becomes
$$
P_{\text{new}} = \sum_{t=1}^{4} \frac{3}{(1 + r_{0,t})^t} + \frac{100 + 3}{(1 + r_{0,5})^5}
$$
- Substituting the new rates:
$$
P_{\text{new}} = 87.8717
$$
- Solving the New Yield
- We can also find the new yield by equating:
$$
87.8717 = \sum_{t=1}^{4} \frac{3}{(1 + y)^t} + \frac{100 + 3}{(1 + y)^5}
$$

Thus
$$
y_{\text{new}} = 5.87\%
$$

- **Observations from this example**
	- If the zero rates (discount rates) rise by 1%
	- The bond price drops from $91.8668 to $87.8717
	- A dollar value drop of $3.9952
	- Or a percentage drop of (87.8717 - 91.8668) / 91.8668 = -4.35%
- **General conclusions**
	- Interest rate raise causes bond price drop
	- Bond price drop in turn causes an increase in yield
	- This relation holds true for both zero and coupon bonds
- **In practice and also in this course today**
	- Simply look at the relation between yield and price
	- But please be aware of the causal relationship.

![[Pasted image 20251014111759.png]]

- Bond prices change when interest rates change
	- Even if the coupon and principal payments are certain
	- Bonds are risky investments, if we plan to sell before maturity
	- We still lose opportunity cost even if we hold to maturity.


## Duration
- Measure the sensitivity of bond price to yield changes.
- Fractional Marginal Change in \( P_0 \)

The **fractional marginal change** in the bond price with respect to yield \( y \) is given by:

$$
\frac{\frac{dP_0}{dy}}{P_0} 
= 
-\frac{1}{(1+y)} \cdot \frac{1}{P_0}
\left[
\sum_{t=1}^{T} 
t \times \frac{CF_t}{(1+y)^t}
\right]
$$
![[Pasted image 20251014112910.png]]

- Both duration measures tell the sensitivity of bond price to small interest rate changes:
$$
  \frac{\frac{dP_0}{dy}}{P_0}
  =
  -\frac{1}{(1+y)} \cdot \frac{1}{P_0}
  \left[
  \sum_{t=1}^{T} 
  t \times \frac{CF_t}{(1+y)^t}
  \right]
  $$
$$
  \frac{\frac{dP_0}{dy}}{P_0}
  = -MD = -\frac{D}{(1+y)}
  $$

- Reorder and rewrite derivative \( d \) to tiny change \( \Delta \):
  **Percentage change:**
  $$
  \frac{\Delta P}{P} = -MD \times \Delta y = -\frac{D \times \Delta y}{(1+y)}
  $$
  **Dollar change:**
  $$
  \Delta P = -MD \times \Delta y \times P = -\frac{D \times \Delta y \times P}{(1+y)}
  $$

### Worked Example
- A numerical example
- A 3-year coupon bond
- Face value \$100 
- Coupon rate 8\%, paid annually
- The yield is 9\% today
- What are its Duration and Modified Duration?
- If the yield increases to 9.1\% now (i.e increases by 0.1%)
- How much will its price change in percentage and dollar value?

- Step 1: The bond price today given \( y = 9\% \) and \( C = 8 \)$$
  P = 
  \frac{8}{(1 + 9\%)}
  + \frac{8}{(1 + 9\%)^2}
  + \frac{100 + 8}{(1 + 9\%)^3}
  = 97.4687
  $$
- Step 2: The duration and modified duration
$$D = 
  \frac{1}{P}
  \left[
  \sum_{t=1}^{T} 
  t \times \frac{CF_t}{(1 + y)^t}
  \right]$$$$= \frac{1}{97.4687}
  \left[
  \frac{8}{(1 + 9\%)}
  + 2 \times \frac{8}{(1 + 9\%)^2}
  + 3 \times \frac{100 + 8}{(1 + 9\%)^3}
  \right]$$$$= 2.7803$$$$MD = \frac{D}{(1 + y)} = \frac{2.78}{(1 + 9\%)} = 2.5507$$
- Step 3: If the yield increases by 0.1% to 9.1%
- The (approximate) change in bond price in percentage  
$$\frac{\Delta P}{P} = -MD \times \Delta y = -2.5507 \times 0.1\% = -0.2551\%$$
- The (approximate) change in bond price in dollar value  
$$\Delta P = -MD \times \Delta y \times P = -2.5507 \times 0.1\% \times 97.4687 = -0.2486$$
- So the bond price will **drop** by 0.2551%, or say **$0.2486**

**Let’s verify the answer**
- Compute the bond price from \(y = 9.1\%\) directly  
  $$P_{\text{new}}=\frac{8}{(1+9.1\%)}+\frac{8}{(1+9.1\%)^2}+\frac{100+8}{(1+9.1\%)^3}=97.2205$$
- The actual price change  
  $$\Delta P_{\text{actual}}=97.2205-97.4687=-0.2482$$
- Slightly different to the duration estimate \((-0.2486)\)
- Reason: the yield–price relation is convex

## Convexity
![[Pasted image 20251014113901.png]]
- The relation between bond price and yield is **non-linear (convex)**
- Duration approximates the curve’s slope using a **tangent line**
- The approximation becomes less accurate when:
  - The curve is more convex  
  - The yield change is large
- To improve accuracy for large yield changes, include a **convexity adjustment**

$$\Delta P = -MD \times \Delta y \times P + \frac{1}{2} \times \text{Convexity} \times (\Delta y)^2 \times P$$
$$\text{Convexity} = \frac{1}{P(1+y)^2} \sum_{t=1}^{T} \frac{CF_t}{(1+y)^t} (t^2 + t)$$

- In the *previous example*, we can compute  
=- Convexity = 9.1175 (calculation **not required**)  
$$\Delta P = -MD \times \Delta y \times P + \frac{1}{2} \times \text{Convexity} \times (\Delta y)^2 \times P$$
$$= -0.2486 + \frac{1}{2} \times 9.1175 \times 0.1\%^2 \times 97.4687$$
$$= -0.2486 + 0.0004$$
$$= -0.2482$$
- Very precise to the actual change in bond price

![[Pasted image 20251014114310.png]]

## Bond Portfolio Management
- (Macaulay’s) Duration  
  $$D = \frac{1}{P_0} \left[ \sum_{t=1}^{T} t \times \frac{CF_t}{(1+y)^t} \right]$$
- Modified Duration  $$MD = \frac{D}{(1+y)}$$
- Percentage change  $$\frac{\Delta P}{P} = -MD \times \Delta y$$
- Dollar change  $$\Delta P = -MD \times \Delta y \times P$$
- Including convexity adjustment  $$\frac{\Delta P}{P} = -MD \times \Delta y + \frac{1}{2} \times \text{Convexity} \times (\Delta y)^2$$$$\Delta P = -MD \times \Delta y \times P + \frac{1}{2} \times \text{Convexity} \times (\Delta y)^2 \times P$$


- The **major participants** in **bond markets**
	- Insurance firms and pension funds
	- Fixed promised cash outflows (liability)
	- Often invest in long-term bonds (asset)
	- Bonds portfolios can be adversely affected by interest rates changes
	- Important to hedge the interest rate risk
- **Immunisation**
	- Match duration of asset and liabilities
	- Immunise the portfolio from interest rates.

- **Immunisation**  
  - Liability present value: $V_L = n_L \times P_L$  
  - Liability duration: $MD_L$  
  - Asset present values: $V_A = n_A \times P_A$, $V_B = n_B \times P_B$  
  - Asset durations: $MD_A, MD_B$

- **Target 1:** $V_L = V_A + V_B$

- **Target 2:** for a small $\Delta y$, ensure $\Delta V_L = \Delta V_A + \Delta V_B$

  $-MD_L \times \Delta y \times V_L = -MD_A \times \Delta y \times V_A - MD_B \times \Delta y \times V_B$  
  $V_L \times MD_L = V_A \times MD_A + V_B \times MD_B$

- **Solve system of equations**  
  $V_A = \frac{MD_L - MD_B}{MD_A - MD_B} \times V_L$  
  $V_B = V_L - V_A$

- **Write in weightings as fraction of $V_L$**  
  $w_A = \frac{MD_L - MD_B}{MD_A - MD_B} = \frac{V_A}{V_A + V_B}$  
  $w_B = 1 - w_A$  
  $MD_L = w_A \times MD_A + w_B \times MD_B$

- **Solve the number of bond shares to buy**  
  $V = n \times P$  
  $n = \frac{V}{P}$

### Example

- A numerical example of immunisation  
- Suppose an insurance company:
  - Has a liability of \$10 million to be paid in 3 years  
  - Yield of liability is 10%  
  - The liability is essentially a zero-coupon bond with a face value of \$10 million in 3 years  
  - The company plans to invest in two bonds:
    - Bond A: 2-year coupon bond, yield 10%, coupon rate 5%  
    - Bond B: 1-year coupon bond, yield 10%, coupon rate 8%  
    - Both have a face value of \$100  
- Question: How many shares of bond A and B should we invest to immunise the liability (hedge the interest rate risk)?

- Since all yields are the same, use $D$ instead of $MD$
- Step 1: Present value of the liability  
  $$V_L = \frac{F_L}{(1 + y_L)^3} = \frac{10}{(1 + 10\%)^3} = 7.5131 \text{ million}$$

- Duration of the liability  
  $$D_L = \frac{1}{V_L} \left[\frac{F_L}{(1 + y_L)^3} \times 3 \right] = \frac{1}{7.5131} \left[\frac{10}{(1 + 10\%)^3} \times 3\right] = 3$$  
  Shortcut: duration of a zero-coupon bond equals its maturity.

- Price of bond A (2-year coupon bond):  
  $$P_A = \frac{5}{1 + 10\%} + \frac{100 + 5}{(1 + 10\%)^2} = 91.3233$$

- Duration of bond A:  
  $$D_A = \frac{1}{91.3233} \left[\frac{5}{1 + 10\%} \times 1 + \frac{100 + 5}{(1 + 10\%)^2} \times 2\right] = 1.9502$$

- Price of bond B (1-year coupon bond):  
  $$P_B = \frac{100 + 8}{1 + 10\%} = 98.1818$$

- Duration of bond B:  
  $$D_B = \frac{1}{98.1818} \left[\frac{100 + 8}{1 + 10\%} \times 1\right] = 1$$

- Step 2: Immunisation to achieve  
  $$V_L = V_A + V_B$$  
  $$V_L \times D_L = V_A \times D_A + V_B \times D_B$$

- Therefore  
  $$V_A = \frac{D_L - D_B}{D_A - D_B} \times V_L = \frac{3 - 1}{1.9502 - 1} \times 7.5131 = 2.1048 \times 7.5131 = 15.8134 \text{ million}$$  
  $$V_B = V_L - V_A = -8.3002 \text{ million}$$

- Step 3: Number of shares  
  $$n_A = \frac{V_A}{P_A} = \frac{15.8134 \text{ million}}{91.3233} \approx 173160$$  
  $$n_B = \frac{V_B}{P_B} = \frac{-8.3002 \text{ million}}{98.1818} \approx -84539$$  
  Conclusion: **buy 173,160 bond A and short 84,539 bond B**

- Verification of $\Delta V_L = \Delta V_A + \Delta V_B$  
  Assume yield increases from 10% to 10.01%, $\Delta y = 0.01\%$

- Liability side  
  $$\Delta V_L = -MD_L \times \Delta y \times V_L = -\frac{D_L}{1 + y} \times \Delta y \times V_L$$  
  $$= -\frac{3}{1 + 10\%} \times 0.01\% \times 7.5131 \text{ million} = -2049.02$$

- Asset side  
  $$\Delta V_A + \Delta V_B = -MD_A \times \Delta y \times V_A - MD_B \times \Delta y \times V_B$$  
  $$= -\frac{1.9502 \times 0.01\% \times 15.8134}{1 + 10\%} - \frac{1 \times 0.01\% \times (-8.3002)}{1 + 10\%} = -2049.02$$  
  Verified.

- Additional remarks  
	- This example is a special case with a short position.  
	- Because the durations of both bonds are smaller than $D_L$.  
	- Usually insurance firms avoid shorting; instead, they can select a bond B with larger duration (e.g. $D_B = 5$).

- Problems with immunization  
	- Duration protects only against small interest rate changes.  
	- Over time, durations of assets and liabilities change unevenly.  
	- Interest rate changes are not always parallel across the yield curve.  
	- Yield change may not stem solely from interest rate movement.  
	- Rebalancing portfolios incurs high transaction costs.  
	- Matching cash inflows and outflows is complex in practice.

## Extensions of Duration

- Duration measures interest rate risk:
	- Sensitivity of bond price to yield changes  
	- Interpreted mathematically as:  
$$D = \frac{1}{P_0} \sum_{t=1}^{T} t \times \frac{CF_t}{(1 + y)^t}$$
	- Or as the **average time** to receive all promised cash flows, weighted by their present value:  
$$D = \sum_{t=1}^{T} t \times w_t$$

- Shortcuts  
	- Duration of a zero-coupon bond equals its maturity.  
	- Duration of a T-year coupon bond with coupon rate $c$:  
$$D = \frac{1 + y}{y} - \frac{(1 + y) + T(c - y)}{c[(1 + y)^T - 1] + y}$$

- Effective duration (optional)  
	- Option-adjusted duration for bonds with option-like features.  
	- Example: callable bonds.

![[Pasted image 20251014121923.png]]

