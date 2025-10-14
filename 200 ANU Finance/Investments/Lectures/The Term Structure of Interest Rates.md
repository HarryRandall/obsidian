**Class**: [[FINM3011 - Investments]]
**Date**: Tuesday, 7 October 2025, 10:58
**Tags**: 

---
## Term Structure and Yield Curve
![[Pasted image 20251007111152.png]]

- From left to right: on the same day, interest rate differs with the terms of maturity - term structure of interest rates (Lecture 10).
- From up to down: for the same term of maturity, interest rate changes over time - interest rate risk (Lecture 11).

- So far we assume $r_f$ is the same for all investment horizons.
- In real life, interest rates vary with different terms of maturity
- Particularly important for bond pricing.

- Term structure int he base case - risk free rate.
	- Yield on zero coupon government bonds with different maturities.
	- Zeros = zero coupon governments bonds
	- Zero rate = yields of zero coupon government bonds = risk free rates at a given maturity.

$$P = \frac{F}{(1+y)^T} = \frac{F}{(1+r_f)^T}$$

- Once we have the yield from the risk free bonds, we can price any asset.

![[Pasted image 20251007111706.png]]

![[Pasted image 20251007111925.png]]

- Suppose a newly issues 2-year government bond.
- Face value F = $100
	- (1) Zero coupon
	- (2) Coupon rate of 10%, paid annually

- 2-year government zero coupon bond

$$P = \frac{100}{(1+r_{0,2})^2} = $95.9287$$
- Assuming $y = r_{0,2} = 2.1\%$

![[Pasted image 20251007112357.png]]


- Term structure of corporate bonds (no calculation required)

$$y = r_f \text{risk premium} + (\text{bond specific}) \;\text{default premium}$$
![[Pasted image 20251007112841.png]]
## Spot and Forward Rates
- **Spot rate** is the annualised interest rate for the period of today (time 0) to a future date T.
- The interest rates in a term structure are spot rates..
- **Forward rate** is the annualised interest rate for a period from a future date t to another future date T.
- Explain why the spot rates vary with maturities in a term structure.
- Based on the yield curve, you should be able to determine which is the spot rate, and which is the forward rate.
![[Pasted image 20251007112951.png]]

- Forward rates are determined by the spot price.
$$(1 + r_{0,1})(1 + f_{1,2}) = (1 + r_{0,2})^2$$
$$(1 + r_{0,2})^2(1 + f_{2,3}) = (1 + r_{0,3})^3$$
$$(1 + r_{0,1})(1 + f_{1,3})^2 = (1 + r_{0,3})^3$$
![[Pasted image 20251007113226.png]]

- Forward rates are determined by the spot rates.
- A general formula for forward rate ($t < T$)
$$(1 + r_{0,t})^t \times (1 + f_{t,T})^{(T - t)} = (1 + r_{0,T})^T$$
$$f_{t,T} = \left[\frac{(1 + r_{0,T})^T}{(1 + r_{0,t})^t}\right]^{\frac{1}{T - t}} - 1$$
### Example
- Given the term structure of Zeros
![[Pasted image 20251007111706.png]]
- If we want to borrow $5000 in two years for a period of 36 months.
- What is the forward rate required for the loan?
![[Pasted image 20251007114119.png]]
- Assume there is no default risk
$$
f_{2,5} = 
\left[
\frac{(1 + r_{0,T})^T}{(1 + r_{0,t})^t}
\right]^{\frac{1}{T - t}}
- 1
=
\left[
\frac{(1 + r_{0,5})^5}{(1 + r_{0,2})^2}
\right]^{\frac{1}{5 - 2}}
- 1 = 3.10\%
$$

- Forward rate today does not equal to the spot rate a year later.
- E.g., $f_{1,2} \neq \text{new} \; r_{0,1}$
- Forward rate reflects today's market expectation about the interest rate a year later.
- The realised interest rate could differ from the expectations.

![[Pasted image 20251007114617.png]]


- We can still lock in the interest rates in the future
	- Use spot rates in a term structure
	- Interest rate forward contract
- Use the previous example
	- Borrow $5,000 loan in two years for a period of 36 months.
	- Lock in a borrowing rate of $f_{2,5} = 3.1\%$
- Procedure
	- Borrow a loan of $\frac{5000}{(1+4_{0,2})^2} = \$4,796.435$ for 5 years at $r_{0,5}$

## Theories of Term Structure
- Term structure has different shapes
- Flat, upward slope (normal), downward slope (inverted), humped.

![[Pasted image 20251007115712.png]]

- What determine the term structure of interest rates?
- Theories of term structure


### Expectations hypothesis
- The forward rate should equal to the expected rate in the future.
- An upward slope yield curve means the expected future interest rate will increase.

## Term Structure
- Why do we care about the yield curve?
	- Provides information on the risk-free rates at different maturities.
	- Recession forecasting
	- Bond trading strategies

### Applications
**Bond Pricing**
- Example: a newly issued risk-free coupon bond.
- Coupon rate 35, paid anually
- Matures in three years
- Face value $100
- Government zeros are yielding 2%, 3% and 4% for 1,2, and 3 years to maturity, respectively.
- The bond price today can be found as:

$$
P=\frac{3}{1+2\%}+\frac{3}{(1+3\%)^{2}}+\frac{100+3}{(1+4\%)^{3}}=\$97.34
$$
**An inverted yield curve indicates recession**
- Yield curve inversions
- Nearly always but with large variance
- Signals tight monetary policy with rising unemployment
- More complicated in recent case with spiking inflation.



