---
course: "[[200 Finance/Derivatives/FINM3006 - Derivatives|Derivatives]]"
type: lecture
date: 2025-03-04
week: 3
session: 1
instructor: Yichao Zhu
tags:
  - lecture
  - derivatives
status: in-progress
---

# Week 03 - Lecture 1

> [!info] Lecture Details
> **Course:** [[200 Finance/Derivatives/FINM3006 - Derivatives|Derivatives]]
> **Type:** Lecture
> **Date:** Tuesday, 4 March 2025
> **Week:** 3
> **Lecture #:** 1
> **Instructor:** Yichao Zhu
> **Recording:** [Link]()

---

## Overview

Interest rate contracts and swaps covering interest rates, term structure and yield curves, spot and forward rates, forward rate agreements, and interest rate swaps.

---

## Key Concepts

### 1. Interest Rates

- The amount of money a borrower promises to pay a lender
- Dependent on the credit risk of the borrower
  - Credit risk: the borrower may default and the interest and principal are not paid as promised
  - Higher credit risk -> higher interest rate
    - Greater chance that the loan is not paid off.
- Fixed rate v.s. floating rate
  - Fixed rate: interest rate remains constant for the duration of a loan.
    - Once you enter into the loan contract, the rate will be fixed.
  - Floating rate (variable rate): interest rate fluctuates over the duration of a loan
    - The rate will fluctuate over the period of the loan

### 2. Term Structure and Yield Curve

![[Pasted image 20250304101041.png]]

1. **Term structure of interest rates**
   - On the same day, interest rates differ with the terms of maturity
2. **Yield curve**
   - Visualised term structure, a plot of annualised returns (Y-axis) against maturity (X-axis).

- **Yield**
  - Determined by bond price in mathematical definition
  - A discount rate at which the current price of a bond equals to the present value of all promised future cash flows
  $$P_0 = \sum_{t=1}^T \frac {CF_t}{(1+y)^t} = \sum_{t=1}^T CF_te^{-y_ct}$$
- $y = r_f$ + risk premium + default premium + etc.

**Term structure of $r_f$ rate**
- Yields on government zero coupon bonds with different maturities
- Zeros = government zero coupon bonds
- Zero rates = yields of government zero coupon bonds = risk free rates = spot rates, at a given maturity.
  $$P = \frac {F} {(1+y)^T} = \frac {F} {(1+r_f)^T}$$
  $$P = Fe^{-yT} = Fe^{-r_fT}$$
- Yield curve of zero rates, often used as a reference for fixed rates
- Can be used directly to discount cash flows of risk-free bonds

> [!example] Bond Pricing Example
> - A two-year treasury coupon bond
> - Principal $F$ = $\$100$
> - Pays a coupon at a rate of $8\%$ p.a. semi-annually
> - The term structure of continuously compounded rates
> 
> | Maturity (years) | Zero rate (%) |
> |------------------|--------------|
> | 0.5             | 6.0          |
> | 1.0             | 6.2          |
> | 1.5             | 6.3          |
> | 2.0             | 6.2          |
> 
> - The bond pays a coupon of (twice a year)
>   $$100 \times \frac{0.08}{2} = \$4$$
> - The price of the bond is
>   $$P = \sum_{t=1}^T CF_te^{-y_ct}$$
>   $$=4e^{-0.060\times 0.5} + 4e^{-0.062 \times 1.0} + 4e^{-0.063 \times 1.5} + 104e^{-0.062 \times 2.0}$$
>   $$ = \$103.15$$

### 3. Spot and Forward Rates

- **Spot rate** is the annualised interest rate for the period from today (time 0) to a future date T.
- The interest rates in a term structure are spot rates
- **Forward rate** is the annualised interest rate from a period from a future date $t$ to another future date $T$
- Explains why the spot rates vary with maturities in term structure.

![[Pasted image 20250304103206.png]]

- Forward rates are determined by the spot rates
  $$(1 + r_{0,1})(1 + f_{1,2}) = (1 + r_{0,2})^2$$
  $$(1 + r_{0,2})^2(1 + f_{2,3}) = (1 + r_{0,3})^3$$
  $$(1 + r_{0,1})(1 + f_{1,3})^2 = (1 + r_{0,3})^3$$

![[Pasted image 20250304103318.png]]

- Forward rates are determined by the spot rates
- A general formula for forward rate ($t < T$)

  $$(1 + r_{0,t})^t \times (1 + f_{t,T})^{(T-t)} = (1 + r_{0,T})^T$$
  $$f_{t,T} = \left[ \frac{(1 + r_{0,T})^T}{(1 + r_{0,t})^t} \right]^{\frac{1}{T-t}} - 1$$

> [!example] Forward Rate Example
> - Given the term structure of Zeros
> - If we want to borrow $5000 in two years for a period of 36 months
> - What is the forward rate for the required loan?
> ![[Pasted image 20250304104300.png]]
> $$f_{2,5} = \left[ \frac{(1 + r_{0,T})^T}{(1 + r_{0,t})^t} \right]^{\frac{1}{T-t}} - 1$$
> $$= \left[ \frac{(1 + r_{0,5})^5}{(1 + r_{0,2})^2} \right]^{\frac{1}{5-2}} - 1 = 3.10\%$$
> - $r_{0,2}$ = 2.1
> - $r_{0,5}$ = 2.7

- Forward rate today does not equal to the spot rate a year later
- E.g. $f_{1,2} \neq$ new $r_{0,1}$
- Forward rate reflects today's market expectation about the interest rate a year later
- The realised interest rate could differ from the expectations

![[Pasted image 20250304104736.png]]

- Forward rate $f_{t, T}$ on a security that commences in year $t$ and matures in year $T$

- **Discrete**
  $$f_{t,T} = \left[ \frac{(1 + r_{0,T})^T}{(1 + r_{0,t})^t} \right]^{\frac{1}{T-t}} - 1$$
- **Continuous**
  $$e^{r_{0,T} \cdot T} = e^{r_{0,t} \cdot t} e^{f_{t,T} \cdot (T-t)}, \quad T > t$$
  $$f_{t,T} = \frac{r_{0,T} \cdot T - r_{0,t} \cdot t}{T - t}$$

> [!example] Forward Rate Calculation (Zero Rates)
> - $10.8\%$ for $3$ years, $11\%$ for $4$ years, continuously compounded, then forward rate between $3$ and $4$ years.
> $$f_{3,4} = \frac{r_{0,T} \cdot T - r_{0,t} \cdot t}{T - t}$$
> $$= \frac{11\% \times 4 - 10.8\% \times 3}{4 - 3}$$
> $$= 11.6\% \ p.a.$$

- **Forward rate agreement (FRA)**
  - An agreement that a certain rate will apply to certain principal during a certain future time period
  - Over the counter interest rate derivatives
  - Two parties agree to guarantee each other a given interest rate at a future date.
  - A notional principal is used but not exchanged.
  - One party compensates the other party on settlement date.

### 4. Interest Rate Swaps

- Common reference for floating rate
- **LIBOR** (fully stopped in 2023)
  - London InterBank Offered Rate
  - Large banks and financial institutions quote their wholesale rate
  - LIBOR is the average quoted rates every day
  - On a variety of short term maturities and currencies
- **Replacement**
  - The bank bill swap rate (BBSW) in Australia
  - Secured overnight financing rate (SOFR) in US

- Interest rate swaps is an agreement to exchange a floating rate cash flow stream for a fixed rate cash flow stream.
- Used for both liabilities or investments
- Subject to default risk
- Provides benefits like
  - Change interest rate exposure from floating to fixed or vice versa
  - Reduce the cost of borrowing

> [!example] Interest Rate Swap Example
> - Company A can borrow:
>   - Fixed: 7%
>   - Floating: LIBOR +1%
>   - But really wants a floating rate
> - Company B can borrow:
>   - Fixed: 10%
>   - Floating: LIBOR +1%
>   - But really wants a fixed rate
> - Both companies need to borrow $10 million
> - How can we design a swap that gets both parties what they want, and makes them better off?
> 
> Examine the comparative advantage of each party
> 
> |              | Fixed | Floating |
> |-------------|-------|----------|
> | Company A   | 7%    | L+1%     |
> | Company B   | 10%   | L+2%     |
> | Difference  | 3%    | 1%       |
> 
> - Maximum savings is difference in differences: 3% - 1% = 2%
> - Company A has a (relative) comparative advantage in fixed, but really wants a floating rate.
> - Company B has a (relative) comparative advantage in floating, but really wants a fixed rate.
> ![[Pasted image 20250304113644.png]]
> 
> - Total savings from swaps = 2%
> - Assume the saving is equally shared between A and B, then each company enjoys a 1% saving in their borrowing cost.
> 
> - The cost of borrowing after entered into interest rate swaps:
>   - Company A is better off by 1% (i.e., LIBOR +1% - LIBOR)
>   - Company B is better off by 1% (i.e., 10% - 9%)
>   - Therefore, the total gain (saving) from swap is 2%

|              | Borrowed | Received | Paid out | Net |
|-------------|----------|----------|----------|-----|
| Company A   | -7%      | +9%      | -(L + 2%)| -LIBOR |
| Company B   | -(L + 2%)| +(L + 2%)| -9%      | -9% |

- What if swap bank requires 0.5% commission?
  - After deducting the 0.5% as commission, the total gain left
    $$2\% - 0.5\% = 1.5\%$$
  - Assume the commission is evenly assigned to both companies, the gain left for each company is
    $$\frac{1.5\%}{2} = 0.75\%$$
  - Company A outcome: LIBOR + 0.25% (i.e. LIBOR + 1% - 0.75%)
  - Company B outcome: 9.25% (i.e. 10% - 0.75%).

---

## Notes

---

## Examples

> [!example] Bond Pricing Example
> See Key Concepts section above.

> [!example] Forward Rate Example
> See Key Concepts section above.

> [!example] Forward Rate Calculation (Zero Rates)
> See Key Concepts section above.

> [!example] Interest Rate Swap Example
> See Key Concepts section above.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Fixed Rate | Interest rate that remains constant for the duration of a loan |
| Floating Rate | Interest rate that fluctuates over the duration of a loan |
| Credit Risk | Risk that borrower may default on interest and principal payments |
| Term Structure | Relationship between interest rates and their maturities |
| Yield Curve | Visual representation of term structure, plot of annualised returns against maturity |
| Yield | Discount rate at which bond price equals present value of future cash flows |
| Zero Rate | Yield on government zero coupon bond = risk-free rate = spot rate |
| Spot Rate | Annualised interest rate from today (time 0) to a future date T |
| Forward Rate | Annualised interest rate from a future date t to another future date T |
| Forward Rate Agreement (FRA) | Agreement that a certain rate will apply to principal during a future time period |
| LIBOR | London InterBank Offered Rate (discontinued 2023) |
| BBSW | Bank Bill Swap Rate (Australia) |
| SOFR | Secured Overnight Financing Rate (US) |
| Interest Rate Swap | Agreement to exchange floating rate cash flow stream for fixed rate cash flow stream |
| Comparative Advantage | Relative advantage in borrowing at fixed vs floating rates |

---

## Questions & Discussion

- [ ] What is the difference between spot rates and forward rates?
- [ ] How do interest rate swaps work?
- [ ] What is comparative advantage in the context of interest rate swaps?
- [ ] How are forward rates calculated from spot rates?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand term structure and yield curves
- [ ] Practice calculating forward rates
- [ ] Understand interest rate swap mechanics

---

## Related Notes

- [[200 Finance/Derivatives/FINM3006 - Derivatives|Course Summary]]
- [[200 Finance/Derivatives/Lectures/Week 02 - Lecture 1|Week 02 - Lecture 1]]
- [[200 Finance/Derivatives/Lectures/Week 04 - Lecture 1|Week 04 - Lecture 1]]

---

## References

- ![[Lecture 3 - Interest Rate Contracts and Swaps.pdf]]
