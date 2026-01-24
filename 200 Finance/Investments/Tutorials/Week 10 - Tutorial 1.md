---
course: "[[200 Finance/Investments/FINM3011 - Investments|Investments]]"
type: tutorial
date: 2025-10-07
week: 10
session: 1
instructor: 
tags:
  - tutorial
  - investments
status: in-progress
---

# Week 10 - Tutorial 1

> [!info] Tutorial Details
> **Course:** [[200 Finance/Investments/FINM3011 - Investments|Investments]]
> **Type:** Tutorial
> **Date:** Tuesday, 7 October 2025
> **Week:** 10
> **Tutorial #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Tutorial covering bond pricing with default risk, credit ratings, recovery rates, and government credit guarantees.

---

## Key Concepts

### 1. Bond Pricing with Default Risk

**Question 1:**

Assume a one-year government coupon bond was just issued by a sovereign country.  
Face value: $F = \$100$  
Coupon rate: $c = 5\%$, paid annually  
One-year risk-free rate: $r_f = 2\%$

1. Assume this sovereign country is risk-free. Compute the bond price and yield today.

Discount it back

2. Assume today is in year 2012, and the bond issuer is the Greece government.  
   The credit rating of the Greek government bond was downgraded to "junk" bond.  
   The estimated default probability in one year is $\pi = 30\%$.  
   If default, the recovery ratio is $\ell = 40\%$.  
   The expected bond market return is $E(r_M) = 3\%$.  
   The beta of this bond is $\beta = 0.2$.

Expected cash flow
- Use CAPM
- 

Recompute the price and yield of this bond.  
In the above two cases, indicate whether the bond is traded at **discount**, **par**, or **premium**.

### 2. Negative Yield Bonds

**Question 2:**

In 2016, a 2-year zero coupon bond was issued by LVMH Louis Vuitton with a yield of $-0.25\%$.  
Assume the face value is $F = \$100$.  
Compute the price of this bond on the issuance date.  
Determine whether the bond is traded at **discount**, **par**, or **premium**.

**Premium, as yield is negative.**

### 3. Clean Price vs Dirty Price

**Question 3:**

You are considering a 3-year government coupon bond.  
Face value: $F = \$100$  
Coupon rate: $2\%$, paid annually.  
It has been 3 months since the bond issuance.  
You purchased the bond today, and the total purchase price was \$105.35.  
What was the quoted (clean) price of this bond today?

Clean price (104.85)

### 4. Government Credit Guarantees

**Question 4:**

One common government support for clean energy companies is enhancing their credit quality.

Assume a solar energy company plans to issue **10,000** one-year coupon bonds.  
Each bond has:  
- Face value: \$100  
- Annual coupon rate: 5%  
- Risk-free rate: 2%  
- Market expected return: 10%  
- Beta: 0.8  
- Default probability: 20%  
- Recovery rate: 40%

Before the bond issuance, the government provides an additional **credit guarantee** ensuring a recovery of 80% in the event of default.  
As a result, the credit rating agency raises the rating from **BB to BBB**.

Compute the **total funds** the company can raise from the bond issuance:  
- (a) Without government support

Find discount rate with CAPM, 8.4%
We use the same formula as before 
$100 \times 1.05 \times 0.8 + 100 \times 1.05 \times 0.2 \times 0.4 / 1 + 0.084$
Multiply by 10,000 = 852,400

- (b) With government support

$100 \times 1.05 \times 0.8 + 100 \times 1.05 \times 0.2 \times 0.8 / 1 + 0.084$

Briefly discuss the **benefits** of the government support to this company.

---

## Notes



---

## Examples

> [!example] Default Risk Pricing
> A bond with 30% default probability and 40% recovery rate requires adjusting expected cash flows and using appropriate discount rate (CAPM) to account for credit risk.

> [!example] Credit Guarantee
> Government credit guarantee increasing recovery rate from 40% to 80% improves bond pricing and allows company to raise more funds at lower cost.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Default Probability ($\pi$) | Probability that bond issuer will default |
| Recovery Rate ($\ell$) | Fraction of face value recovered in case of default |
| Expected Cash Flow | $(1-\pi) \times FV + \pi \times \ell \times FV$ |
| Clean Price | Bond price excluding accrued interest |
| Dirty Price | Bond price including accrued interest |
| Credit Rating | Assessment of issuer's creditworthiness |
| Credit Guarantee | Government or third-party guarantee of bond repayment |

---

## Questions & Discussion

- [ ] How does default probability affect bond pricing?
- [ ] What is the difference between clean and dirty bond prices?
- [ ] How do credit guarantees affect bond yields?
- [ ] Why might bonds trade at negative yields?

---

## Action Items

- [ ] Review tutorial recording
- [ ] Complete practice questions
- [ ] Practice bond pricing with default risk
- [ ] Understand clean vs dirty prices
- [ ] Review credit rating systems

---

## Related Notes

- [[200 Finance/Investments/FINM3011 - Investments|Course Summary]]
- [[200 Finance/Investments/Lectures/Week 10 - Lecture 1|Week 10 - Lecture 1]]

---

## References

- 
