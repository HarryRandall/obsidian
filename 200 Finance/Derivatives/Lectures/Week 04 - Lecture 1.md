---
course: "[[200 Finance/Derivatives/FINM3006 - Derivatives|Derivatives]]"
type: lecture
date: 2025-03-11
week: 4
session: 1
instructor: Yichao Zhu
tags:
  - lecture
  - derivatives
status: in-progress
---

# Week 04 - Lecture 1

> [!info] Lecture Details
> **Course:** [[200 Finance/Derivatives/FINM3006 - Derivatives|Derivatives]]
> **Type:** Lecture
> **Date:** Tuesday, 11 March 2025
> **Week:** 4
> **Lecture #:** 1
> **Instructor:** Yichao Zhu
> **Recording:** [Link]()

---

## Overview

Options basics covering call and put options, moneyness, assets underlying options, futures options, dividends and stock splits, special forms of options, notation, American vs European options, and option bounds.

---

## Key Concepts

### 1. Options Basics

- **Call option - long position**
  - Holder/buyer of a call option
  - Have the right but not the obligation to buy the underlying asset
  - Payoff $max(S_T - X,0)$
- **Call option - short position**
  - Writer/seller of a call option
  - Obligated to sell the asset to the holder if the holder decides to exercise the option
  - Payoff $min(X - S_T,0)$
- **Put option - long position**
  - Holder/buyer of a put option
  - Have the right but not the obligation to sell the option
  - Payoff $max(X-S_T, 0)$
- **Put option - short position**
  - Writer of a put option
  - Obligated to buy the asset from the holder if the holder decides to exercise the option
  - Payoff $min(S_T - X,0)$

![[Pasted image 20250311101920.png]]

### 2. The Moneyness of Options

- **At-the-money (ATM)**
  - A call option is at-the-money if the strike price equals the asset price $(S_T = X)$
  - A put option is at-the-money if the strike price equals the asset price $(S_T = X)$
- **In-the-money (ITM)**
  - A call option is in-the-money if the strike price is less than the asset price $(S_T > X)$
  - A put option is in-the-money if the strike price is greater than the asset price $(S_T < X)$
- **Out-of-the-money (OTM)**
  - A call option is out-of-the-money if the strike price is greater than the asset price $(S_T < X)$
  - A put option is out-of-the-money if the strike price is less than the asset price $(S_T > X)$

### 3. Assets Underlying Options

- **Stock Options**
  - Mostly traded on exchanges
  - Mainly American options
- **Foreign Currency Options**
  - Mainly over the counter
  - Either European or American options
- **Index Options**
  - Both over the counter on exchanges
  - European options

### 4. Futures Options

- The underlying asset is a futures contract
- Exchange traded futures often have options trading on them
- A futures option normally matures just before the delivery period of the futures contract
- When a call option is exercised, the holder acquires a long position in the underlying futures contract plus a cash amount equal to the excess of the futures price over the strike price.
- When a put option is exercised, the holder acquires a short position in the underlying futures contract plus a cash amount equal to the amount excess of the strike price of the futures price.

### 5. Dividends & Stock Splits

- Suppose you own $N$ options with a strike price of $X$
  - No adjustments are made to the options term for cash dividends
  - When there is an $n$-for-$m$ stock split
    - E.G., $2$-for-$1$ stock split means if you have $100$ shares before the split, after the split you would have 200 shares.
    - The strike price is reduced to $\frac {X_m}{n}$
    - The number of options is increased to $\frac {N_n}{m}$
  - Stock dividends are handled in a manner similar to stock splits

> [!example] Stock Split Example
> - Consider a call option to buy 100 shares for $20 per share.
> - How should terms be adjusted?
>   - The strike price is reduced to
>     $$\frac{X_m}{n} = \$20 \times (\frac{1}{2}) = 10$$
>   - The number of shares in one option is increased
>     $$\frac{N_n}{n} = 100 \times (\frac{2}{1}) = 200$$

> [!example] Stock Dividend Example
> - For a $5\%$ stock dividend?
>   - The strike price is reduced to
>     $$\frac{X_m}{n} = \$20 \times (\frac{100}{105}) = \$19.047$$
>   - The number of shares in one option is increased to
>     $$\frac{N_n}{n} = 100 \times (\frac{105}{100}) = 105$$

### 6. Special Forms of Options

1. **Warrants**
   - Options that are issued by a company on its own stock
   - Warrants are traded in the same way as stocks
   - When call warrants are exercised, it leads to a new stock being issued
   - By offering warrants as part of financing deal, companies provide investors with the potential for additional returns beyond the initial investment

2. **Exclusive or Employee Incentive Stock Options**
   - Issued by a company to its executives as a performance incentive
   - When the option is exercised the company issues more stock
   - Usually out-of-the-money when issued to incentivise executives to increase the share price of the company.
   - Usually with a lock period, and cannot be sold by the executive
   - Often lasts for as long as 10 or 15 years

### 7. Notation

- $c$ - European call option price
- $p$ - European put option price
- $C$ - American call option price
- $P$ - American put option price
- $X$ - Strike price
- $S_0$ - Stock price today
- $S_T$ - Stock price at option maturity
- $D$ - Present value of cash dividends during option's life
- $T$ - The time to expiry of the option (in years)
- $r$ - The risk-free interest rate (continuously compounded)
- $\sigma$ - The volatility (Standard Deviation) of returns on the underlying asset

### 8. American vs. European Options

- An American option is worth at least as much as the corresponding European option
- This is due to the value of being able to exercise the option at the time of your choosing.
  $$C \geq c$$
  $$P \geq p$$

### 9. Option Bounds

- Ultimately, we want a formula that gives the exact option price
- Start by finding the range in which option prices must lie
- For any option there is an **upper bound** on the option price
  - If the option price ever trades above the upper bound -> arbitrage
- For any option there is an **lower bound** on the option price
  - If the option price ever trades below the lower bound -> arbitrage

**European options on non-dividend stocks**

$$c \leq S_0 \quad | \quad p \leq Xe^{-rT}$$

$$c \geq \max(S_0 - Xe^{-rT}, 0) \quad | \quad p \geq \max(Xe^{-rT} - S_0, 0)$$

**American options on non-dividend stocks**

$$C \leq S_0 \quad | \quad P \leq X$$

$$C \geq \max(S_0 - Xe^{-rT}, 0) \quad | \quad P \geq \max(X - S_0, 0)$$

### 10. Upper Bound for Call Options

- American or European call option gives the holder the right to buy a stock at the strike price.
- No matter what happens, the option can never be worth more than the stock.
- Hence, the stock price is an upper bound to the call option price
- If violated, arbitrageurs can buy the stock and sell the call option
  - $c \leq S_0$ and $C \leq S_0$

### 11. Upper Bound for Put Options

- American or European put options give the holder the right to sell a stock at the strike price.
- No matter how low the stock price becomes, the option can never be worth more than X
  - $P \leq X$ and $p \leq X$
- For European options, it cannot be worth more than $X$ at maturity.
- This means it cannot be worth more than the present value of $X$ today, as it cannot be exercised early.
  - $p \leq Xe^{-rT}$

### 12. Lower Bound for European Call

- The lower bound for the price of a European call option on a non-dividend paying stock
  $$c \geq \max(S_0 - Xe^{-rT}, 0)$$
- We can prove this by considering the following two portfolios
- **Portfolio A**
  - One European call option
  - An amount of cash equal to $Xe^{-rT}$
- **Portfolio B**
  - One share of underlying stock

| | Time 0 | Time T (If $S_T < X$) | Time T (If $S_T > X$) |
|---|---|---|---|
| **Strategy A** | | | |
| Long call option | $c$ | $0$ | $S_T - X$ |
| Long bond | $Xe^{-rT}$ | $X$ | $X$ |
| **Total payoff** | | $X$ | $S_T$ |
| **Strategy B** | | | |
| Long share | $S_0$ | $S_T$ | $S_T$ |
| **Total payoff** | | $S_T$ | $S_T$ |

Since Portfolio A's payoff is at least as good as Portfolio B's payoff at time T, and sometimes better, Portfolio A must be worth at least as much as Portfolio B today:
$$c + Xe^{-rT} \geq S_0$$
$$c \geq S_0 - Xe^{-rT}$$

Since the option cannot have negative value:
$$c \geq \max(S_0 - Xe^{-rT}, 0)$$

### 13. Lower Bound for European Put

$$p + S_0 \geq Xe^{-rT}$$
$$p \geq Xe^{-rT} - S_0$$
$$p \geq \max(Xe^{-rT} - S_0, 0)$$

---

## Notes

---

## Examples

> [!example] Stock Split Example
> See Key Concepts section above.

> [!example] Stock Dividend Example
> See Key Concepts section above.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Call Option (Long) | Right to buy asset at strike price, payoff $max(S_T - X, 0)$ |
| Call Option (Short) | Obligation to sell asset if exercised, payoff $min(X - S_T, 0)$ |
| Put Option (Long) | Right to sell asset at strike price, payoff $max(X - S_T, 0)$ |
| Put Option (Short) | Obligation to buy asset if exercised, payoff $min(S_T - X, 0)$ |
| At-the-Money (ATM) | Strike price equals asset price $(S_T = X)$ |
| In-the-Money (ITM) | Call: $S_T > X$, Put: $S_T < X$ |
| Out-of-the-Money (OTM) | Call: $S_T < X$, Put: $S_T > X$ |
| Warrants | Options issued by company on its own stock |
| Employee Stock Options | Options issued to executives as performance incentive |
| European Call Upper Bound | $c \leq S_0$ |
| European Put Upper Bound | $p \leq Xe^{-rT}$ |
| American Call Upper Bound | $C \leq S_0$ |
| American Put Upper Bound | $P \leq X$ |
| European Call Lower Bound | $c \geq \max(S_0 - Xe^{-rT}, 0)$ |
| European Put Lower Bound | $p \geq \max(Xe^{-rT} - S_0, 0)$ |
| American Call Lower Bound | $C \geq \max(S_0 - Xe^{-rT}, 0)$ |
| American Put Lower Bound | $P \geq \max(X - S_0, 0)$ |

---

## Questions & Discussion

- [ ] What is the difference between call and put options?
- [ ] How does moneyness affect option value?
- [ ] What are the upper and lower bounds for option prices?
- [ ] How do stock splits affect option terms?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand option payoffs and moneyness
- [ ] Practice calculating option bounds

---

## Related Notes

- [[200 Finance/Derivatives/FINM3006 - Derivatives|Course Summary]]
- [[200 Finance/Derivatives/Lectures/Week 03 - Lecture 1|Week 03 - Lecture 1]]
- [[200 Finance/Derivatives/Lectures/Week 05 - Lecture 1|Week 05 - Lecture 1]]

---

## References

- ![[Lecture 4 - Options Basics.pdf]]
