---
course: "[[200 Finance/Derivatives/FINM3006 - Derivatives|Derivatives]]"
type: lecture
date: 2025-02-18
week: 1
session: 1
instructor: Yichao Zhu
tags:
  - lecture
  - derivatives
status: in-progress
---

# Week 01 - Lecture 1

> [!info] Lecture Details
> **Course:** [[200 Finance/Derivatives/FINM3006 - Derivatives|Derivatives]]
> **Type:** Lecture
> **Date:** Tuesday, 18 February 2025
> **Week:** 1
> **Lecture #:** 1
> **Instructor:** Yichao Zhu
> **Recording:** [Link]()

---

## Overview

Course overview covering assessment structure, weekly topics, derivatives definition and purpose, forwards and futures contracts, convergence, arbitrage, closing out positions, settlement, and options basics.

---

## Key Concepts

### 1. Course Overview

**Mid-Sem Exam** (Progress test)
- Week 7 open book online Wattle test
- 90 minutes long, covers weeks 1-6 inclusive
- Weighs 15% and ***is*** redeemable

**Group Assignment**
- Due by week 10, groups of 4 to be finalised by week 5.
- Details to be given in week 4's workshop.
- Weights 20% and **is NOT** redeemable
- Related to Musk 2024 election, how can we use derivatives to profit from it?

**Final Exam**
- Closed book in person exam
- 2 hours long, covers all weeks
- Exam is different to past exam

**Weekly Topics:**
- **Week 1:** Course Overview
- **Week 2:** Hedging Strategies Using Futures
- **Week 3:** Interest Rate Contracts and Swaps
- **Week 4:** Options and Options Trading Strategies
- **Week 5:** Binomial Model for Pricing Options
- **Week 6:** Black-Scholes Model for Pricing Option
- **Week 7:** Index and Foreign Exchange Options
- **Week 8:** Options on Futures Contracts
- **Week 9:** The Greek Letters
- **Week 10:** Exotic Options and other Non-standard Products
- **Week 11:** Credit, Weather, Energy and Insurance Derivatives and Derivatives Mishaps and Ethics in Risk Management
- **Week 12:** Review

### 2. Derivatives

**Definition**
- The value of a **derivative** is derived on the value of an underlying asset

**Purpose**
- To trade specific risks without trading the underlying assets

> [!example] Derivatives Example
> You have a mortgage at a floating rate, and you're worried that the interest rate may go up in the future. We don't want to sell the underlying asset (the mortgage), so we sell the risk using a derivative to hedge the risk for a certain period.

**Information Asymmetry**
- Companies want money from households/consumers but the consumers don't know anything about the firms so they introduce the financial market to eliminate this information asymmetry.
- You are indirectly loaning money to firms through financial intermediaries.

### 3. Forwards & Futures Contracts

- **Spot Contract**
  - You want to buy a contract immediately, the price that you buy it at is the 'current price'. It's denoted by 'S'.
- **Forward/Futures contract**
  - An agreement to buy or sell an asset at a certain time in the future for a predetermined price.
  - Forward/Future price denoted by 'F' is the price at which you agree to buy or sell the underlying asset.

Spot price is at time$_0$ and forward price is at time$_1$

**Key Differences:**

**Forwards**
- Private contract between 2 parties.
- Non-standard contract
- Usually 1 specified delivery date
- Settled at maturity (the end of the contract)
- Delivery or final cash settlement usually occurs

**Futures**
- Exchange traded
- Standard contract
- Range of delivery dates
- Settled daily
- Contract usually closed out prior to maturity

**In a forward or futures contract:**
- The party that has agreed to buy has a **long** position. They have a final payoff of $S_T - F$
- The party that has agreed to sell has a **short** position. They have a final payoff of $F - S_T$

![[Screenshot 2025-02-18 at 10.48.42 am.png]]

![[Screenshot 2025-02-18 at 10.49.49 am.png]]
*Black line is the profit for a long and short position.*

The initial price is 0 for forwards/futures

> [!example] Gold Futures Example
> In July cost of gold at $F$ = $1,200$ per oz
> To buy 100 oz of gold
> In Oct cost of gold at $S_T$ = $1,215$ per oz
> Profit for long position = $S_T - F$ = $1,215 - 1,200$ = $15$, $15 \times 100$ = $1,500$ profit.
> Profit for short position = $F - S_T$ = $1,200 - 1,215$ = $-15$, $-15 \times 100$ = $-1,500$ profit/loss.

**Margin Accounts**
- A margin is cash or marketable securities deposited by an investor with the broker.
- Margins minimise the possibility of a loss through a default on a contract.

### 4. Convergence of Futures to Spot

![[Screenshot 2025-02-18 at 11.20.17 am.png]]

As the delivery period of a futures contract is approached, the futures price converges to the spot price of the underlying asset.
When the delivery period is reached, the futures price equals, or is very close to the spot price.

Basically saying the closer the future reaches the maturity date, the prices will converge as it's less likely there is profit to be made as the time period narrows down. What has more variance, looking at an amazon stock for the next 5 years or for the next 5 days.

### 5. Arbitrage

During the delivery period
- If the future price is above the spot price
  - Arbitrage opportunity
  - Short the futures contract, buy the asset and make delivery
  - Force the futures price to fall and converge to the spot price
- If the futures price is below the spot price
  - Companies wanting to acquire the asset would enter into a long position in the futures contract
  - Wait for delivery to be made
  - Difficult to arbitrage, cannot force immediate delivery of the asset
  - Futures price will tend to rise, until converge with spot price.

### 6. Closing-out Before Expiry

- All futures contracts can be "closed-out" prior to expiry
- Closing out a futures position simply means entering a new futures position equal in magnitude but opposite in direction to your original futures position.
- I.E., entering into an "offsetting trade"
- Most futures contracts are closed out before maturity
- So if you entered 2 years ago into a long position and 1 year later you wanted to close out your position, you would purchase a short position for the same amount to "offset" your position.

> [!example] Closing Out Example
> - Enter one long future contract in March 2025 for Eastern Australian Wheat Futures at $274 per tonne.
> - The underlying asset of each futures contract is 20 tons
>   - If futures price is $300 when we close
>     - Enter one short March 2025 wheat contracts at $300
>     - **Profit** of $\$520=(300-274)\times 20$ tonnes
>   - If futures price is $260 when we close
>     - Enter one short March 2025 wheat contract at $260
>     - **Loss** of $\$280=(260-274) \times 20$ tonnes

### 7. Settlement at Expiry

- If a futures contract is not closed out before maturity
- To be settled by delivering the assets underlying the contract
  - Physical delivery
  - Cash delivery
- Go over this section

### 8. Options

- Options provide the **right**, but not **the obligation**, to either **buy** (call) or **sell** (put) an asset at a set price (strike) by a specific date. The timing of exercise differentiates American (anytime) and European (expiry only) options.

**Positions**
- Buyers (long) pay a premium for this right.
- Sellers (short) receive the premium and are obligated to fulfil the contract.

Options differ from forwards/futures:
- Options require a premium, forwards/futures do not.
- Options grant rights, forwards/futures create obligations.
- Options trade both OTC and on exchanges, forwards are OTC, and futures are exchange traded.

Market traders utilise these tools with distinct goals
- Hedges aim to reduce price risk and hold positions in both the asset and derivatives.
- Speculators seek profit through price prediction and accept the risk of loss
- Arbitrageurs exploit price differences for risk-free profit and execute simultaneous trades in multiple markets.

---

## Notes

---

## Examples

> [!example] Derivatives Example
> See Key Concepts section above.

> [!example] Gold Futures Example
> See Key Concepts section above.

> [!example] Closing Out Example
> See Key Concepts section above.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Derivative | A financial instrument whose value is derived from the value of an underlying asset |
| Spot Price (S) | The current price of an asset |
| Forward/Futures Price (F) | The price at which you agree to buy or sell the underlying asset at a future date |
| Long Position | The party that has agreed to buy, with payoff $S_T - F$ |
| Short Position | The party that has agreed to sell, with payoff $F - S_T$ |
| Margin | Cash or marketable securities deposited by an investor with the broker to minimise default risk |
| Convergence | As delivery period approaches, futures price converges to spot price |
| Arbitrage | Exploiting price differences for risk-free profit |
| Closing Out | Entering an offsetting trade to exit a futures position before maturity |
| Physical Delivery | Settlement by delivering the actual underlying asset |
| Cash Delivery | Settlement by cash payment based on price difference |
| Call Option | Right (but not obligation) to buy an asset at strike price by expiration |
| Put Option | Right (but not obligation) to sell an asset at strike price by expiration |
| European Option | Can only be exercised at expiration |
| American Option | Can be exercised at any time before expiration |
| Option Premium | Upfront price paid for an option contract |

---

## Questions & Discussion

- [ ] What is the difference between forwards and futures contracts?
- [ ] How does convergence work for futures prices?
- [ ] What are the different ways to settle a futures contract?
- [ ] How do options differ from forwards and futures?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand course assessment structure
- [ ] Review forwards and futures concepts

---

## Related Notes

- [[200 Finance/Derivatives/FINM3006 - Derivatives|Course Summary]]
- [[200 Finance/Derivatives/Lectures/Week 00 - Introduction|Week 00 - Introduction]]
- [[200 Finance/Derivatives/Lectures/Week 02 - Lecture 1|Week 02 - Lecture 1]]

---

## References
