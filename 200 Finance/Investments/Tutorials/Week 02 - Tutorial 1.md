---
course: "[[200 Finance/Investments/FINM3011 - Investments|Investments]]"
type: tutorial
date: 2025-08-26
week: 2
session: 1
instructor: Kevin Zhou
tags:
  - tutorial
  - investments
  - margin-trading
  - market-orders
  - equity-offerings
status: in-progress
---

# Week 02 - Tutorial 1

> [!info] Tutorial Details
> **Course:** [[200 Finance/Investments/FINM3011 - Investments|Investments]]
> **Type:** Tutorial
> **Date:** Tuesday, 26 August 2025
> **Week:** 2
> **Tutorial #:** 1
> **Instructor:** Kevin Zhou
> **Email:** u7493101@anu.edu.au
> **Recording:** [Link]()

---

## Overview

Tutorial covering buying on margin, market orders vs limit orders, equity offerings (IPO vs SEO), and limit order book mechanics.

---

## Key Concepts

### 1. Buying on Margin

**Question 1:** How does buying on margin magnify both the upside potential and the downside risk of an investment position?

**Answer:** Buying on margin means borrowing from your broker to control a larger position with the same equity. Because gains and losses are measured on your equity, a given price move produces a larger **percentage** change in equity (leverage). If price falls enough that equity drops below the **maintenance margin**, you will face a **margin call** and potential forced liquidation.

### 2. Market Orders vs Limit Orders

**Question 2:** Are the following statements true or false? If false, correct them.

**a)** An investor who wishes to sell shares immediately should ask his or her broker to enter a limit order.

**Answer:** **False.** Use a **market order** for immediate execution. A **limit order** executes only at the specified price or better and may not fill.

**b)** The ask price is less than the bid price.

**Answer:** **False.** Typically, $\text{bid} \leq \text{ask}$. The **bid–ask spread** (ask minus bid) compensates liquidity providers.

**c)** An issue of additional shares of stock to the public by Microsoft would be called an IPO.

**Answer:** **False.** That would be a **seasoned equity offering (SEO)**. An **IPO** occurs only the first time a firm sells shares to the public.

### 3. Margin Calculations

**Question 3:**

An investor opens a brokerage account and purchases $300$ shares of Company A at $\$40$ per share, borrowing $\$4{,}000$ from the broker.

- **Total long position:** $300 \times \$40 = \$12{,}000$
- **Loan:** $\$4{,}000$
- **Equity (margin):** $\$12{,}000 - \$4{,}000 = \$8{,}000$
- **Margin \%:** $\dfrac{8{,}000}{12{,}000} = 66.67\%$

**(a)** What is the margin in the investor's account when the stock is first purchased?

**Answer:** **Equity = $\$8{,}000$** (i.e., **$66.67\%$** of the position).

*Note:* The **loan** is $\$4{,}000$; "margin" refers to the investor's **equity**.

**(b)** If the share price falls to $\$30$ per share by year-end, what is the remaining margin in the account?

- New position value: $300 \times \$30 = \$9{,}000$
- Loan: $\$4{,}000$
- **Equity:** $\$9{,}000 - \$4{,}000 = \$5{,}000$
- **Margin \%:** $\dfrac{5{,}000}{9{,}000} = 55.56\%$

**(c)** If the maintenance margin requirement is $30\%$, will the investor receive a margin call?

**Answer:** **No.** $55.56\% > 30\%$.

**(d)** What is the rate of return on this investment (ignoring interest)?

$$
\text{ROI} = \dfrac{\text{Final equity} - \text{Initial equity}}{\text{Initial equity}} = \dfrac{5{,}000 - 8{,}000}{8{,}000} = -37.5\%
$$

### 4. Margin with Interest

**Question 4:**

In practice, margin loans incur interest. Assume the loan in Question 3 has an $8\%$ p.a. rate, compounded annually. Recompute Question 3.

- **Loan at year-end:** $\$4{,}000 \times (1 + 0.08) = \$4{,}320$

**(a)** What is the margin when the stock is first purchased?

**Answer:** **Equity = $\$8{,}000$** (66.67%), unchanged at inception.

**(b)** If the share price falls to $\$30$ per share by year-end, what is the remaining margin?

- Position value: $\$9{,}000$
- Loan (with interest): $\$4{,}320$
- **Equity:** $\$9{,}000 - \$4{,}320 = \$4{,}680$
- **Margin \%:** $\dfrac{4{,}680}{9{,}000} \approx 52.00\%$

**(c)** If the maintenance margin requirement is $30\%$, will the investor receive a margin call?

**Answer:** **No.** $52.00\% > 30\%$.

**(d)** What is the rate of return on this investment (including loan interest)?

$$
\text{ROI} = \dfrac{4{,}680 - 8{,}000}{8{,}000} = -41.5\%
$$

### 5. Limit Order Book

**Question 5:**

You believe the market is going to fall shortly and you want to sell your inventory in Stock A as soon as possible. How should you submit your sell order? What is the total revenue from the sale? What is the effective sell price? (Inventory: $3{,}000$ shares.)

**Answer:** Submit a **market sell order** for fastest execution.

- Sell $1{,}000$ @ $\$24.88 \Rightarrow \$24{,}880$
- Sell $1{,}600$ @ $\$24.75 \Rightarrow \$39{,}600$
- Sell $400$ @ $\$24.63 \Rightarrow \$9{,}852$
- **Total revenue:** $\$74{,}332$
- **Effective sell price:** $\dfrac{74{,}332}{3{,}000} \approx \$24.78$

You are only willing to accept a sell price no less than $\$26.00$. How should you submit the order? Where will it appear in the limit order book?

- Submit a **limit sell order at $\$26.00$** for $3{,}000$ shares
- It will rest on the **ask** side at the $\$26.00$ price level; exact queue position depends on existing orders at that price and **time priority**

---

## Notes



---

## Examples

> [!example] Margin Call Calculation
> If maintenance margin is 30% and equity falls below this threshold, the investor must either deposit more funds or face forced liquidation of positions.

> [!example] Market Order Execution
> A market sell order executes immediately at best available bid prices, potentially executing at multiple price levels as shown in the limit order book.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Initial Margin | Fraction of purchase price contributed by investor (usually at least 50%) |
| Maintenance Margin | Minimum equity that must be kept in account |
| Margin Call | Requirement to top up margin account when equity falls below maintenance margin |
| Market Order | Order executed immediately at current market price |
| Limit Order | Order executed only at specified price or better |
| Bid Price | Price at which buyer is willing to buy a security |
| Ask Price | Price at which seller is willing to sell a security |
| Bid-Ask Spread | Difference between ask and bid prices |
| IPO | Initial Public Offering - first issue of shares to the public |
| SEO | Seasoned Equity Offering - subsequent public offering of shares |
| Time Priority | Order execution priority based on time order was placed |

---

## Questions & Discussion

- [ ] How does leverage affect investment returns?
- [ ] When would you use a market order vs a limit order?
- [ ] What factors determine the bid-ask spread?
- [ ] How does margin interest affect investment returns?

---

## Action Items

- [ ] Review tutorial recording
- [ ] Complete practice questions
- [ ] Practice margin calculations
- [ ] Understand limit order book mechanics
- [ ] Review IPO vs SEO differences

---

## Related Notes

- [[200 Finance/Investments/FINM3011 - Investments|Course Summary]]
- [[200 Finance/Investments/Lectures/Week 02 - Lecture 1|Week 02 - Lecture 1]]

---

## References

- 
