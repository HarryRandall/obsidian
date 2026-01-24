---
course: "[[200 Finance/Derivatives/FINM3006 - Derivatives|Derivatives]]"
type: lecture
date: 2025-02-17
week: 0
session: 1
instructor: Yichao Zhu
tags:
  - lecture
  - derivatives
status: in-progress
---

# Week 00 - Introduction

> [!info] Lecture Details
> **Course:** [[200 Finance/Derivatives/FINM3006 - Derivatives|Derivatives]]
> **Type:** Lecture
> **Date:** Monday, 17 February 2025
> **Week:** 0
> **Lecture #:** 1
> **Instructor:** Yichao Zhu
> **Recording:** [Link]()

---

## Overview

Introduction to derivatives covering futures contracts, forwards contracts, options, and the over-the-counter market. This lecture establishes the foundational concepts of derivative instruments and their basic characteristics.

---

## Key Concepts

### 1. Derivatives Overview

- Derivatives are traded on 'Over-The-Counter' (OTC) exchanges.
- The two main products traded are futures and options.

### 2. Future Contracts

A futures contract is an agreement to purchase some asset at a certain time in the future for a certain price.

Futures exchanges help people buy or sell things at a set price for a future date. Imagine Alice in New York wants to buy a laptop in three months, and Bob in Kansas agrees to sell one at that time. They both enter into a contract through an exchange, agreeing on a price today (say $1,000). If more people want to buy laptops for future delivery, the price may go up; if more people want to sell, the price may go down. Alice now has a _long futures position_ (she's buying), and Bob has a _short futures position_ (he's selling). This futures price is different from the _spot price_, which is the price for buying a laptop right now.

**Takeaways:**
- Long futures position: When you're buying something at some date
- Short futures position: When you're selling something at some date
- Spot Price: The current price of a laptop.

### 3. Over the Counter Market

Most trading of derivatives occurs on exchanges, however there are some that are 'Over the Counter'. The main participants of OTC derivatives markets are banks, fund managers, and corporations. The number of derivative transactions per year in OTC markets is smaller than in exchange-traded markets, but the average size of the transaction is much larger. If a nonfinancial company wants to invest in the OTC market, they can contact a derivatives dealer (typically a large bank).

### 4. Forwards Contracts

A forwards contract is very similar to a futures contract (an agreement to buy or sell an asset at a specific time in the future at a predetermined price). Unlike futures contracts, forwards are traded on the OTC market as opposed to the exchange.

Foreign exchange forward contracts are popular amongst large banks as they employ specialised spot and forward traders. Spot traders handle transactions for immediate delivery, whilst forward traders arrange transactions for future deliveries.

> [!example] Forward Contract Example
> Imagine a US company needs to pay a British supplier £100 in three months. They're worried that the pound might become more expensive relative to the dollar by then. So, they enter into a forward contract with a bank. The contract locks in an exchange rate, let's say $1.25 per £1. This means in three months, the US company will give the bank $125, and the bank will give them £100, no matter what the actual exchange rate is at that time. This protects the US company from any unfavourable exchange rate fluctuations.

### 5. Options

Options, similarly to futures, are traded on both the exchange and OTC markets.

- **Call Option**
  - A call option gives the holder of the option the right (the option to, they are not obliged) to ***buy*** an asset at a certain price (strike price) by a certain date (expiration date).
- **Put Option**
  - A put option gives the holder the right (but not the obligation) to ***sell*** an asset at a certain price (strike price) by a certain date (expiration date).

- **European vs. American**
  - European options can only be used at expiration (they give you an option at the end of the contract) whereas American options allow you to exercise them at any time.
- **Right, not obligation**
  - Unlike futures/forwards where you must complete the transaction, options give you a choice.
- **Option Premium**
  - You pay an upfront price (premium) for an option contract, unlike futures which only have margin requirements.
- **Why are Options Different from Futures/Forwards?**
  - Futures and forward contracts _obligate_ you to buy or sell. Options give you the _choice_. With a futures contract, you _must_ buy the asset at the agreed price. With a call option, you _can_ buy the asset at the strike price if you want to, but you don't have to.

![[Screenshot 2025-02-17 at 6.07.25 pm.png | 335]]![[Screenshot 2025-02-17 at 6.07.37 pm.png | 333]]

> [!example] Google Options
> The data above illustrates real-world prices for Google call and put options. Let's say you're looking at Google call options with a strike price of $550 expiring in December. If Google's stock price is below $550 by December, your option is worthless - you won't exercise it. But if Google's stock price is above $550 (say $600), you can exercise your option, buy Google stock at $550, and immediately sell it at the market of $600, making a profit (minus the premium you paid for the option)

**Breakdown of the Example:**
The table demonstrates the following:
- **Relationship between Strike Price and Option Price**
  - Call option prices decrease as the strike price increases (it's less likely the stock will go way up). Put options prices increase as the strike price increases (it's more likely the stock will go down a bit).
- **Relationship between Time to Maturity and Option Price**
  - Both call and put option prices tend to increase as the time to maturity increases (more time for the stock to move in a favourable direction).
- **Bid-Offer Spread**
  - Just like with currencies, there's a difference between the bid price (what someone is willing to pay for the option) and the offer price (what someone is willing to sell it for).

**Buying and Selling Options:**

![[Screenshot 2025-02-17 at 6.26.26.png]]

The image shows profit/loss diagrams for options trades. Graph (a), a long call, shows limited loss (premium paid) and unlimited profit potential above the strike price. Graph (b), a short put, shows limited profit (premium received) and potentially large losses below the strike price. Essentially, (a) bets the price will rise, and (b) bets it will stay above a certain point.

**Four Types of Market Participants:**

There are four main players in the options market:

1. **Buyers of Calls:** They profit if the stock price goes up.
2. **Sellers of Calls (Writers):** They profit if the stock price stays the same or goes down. They receive the option premium but have the obligation to sell the stock if the buyer exercises the option.
3. **Buyers of Puts:** They profit if the stock price goes down.
4. **Sellers of Puts (Writers):** They profit if the stock price stays the same or goes up. They receive the option premium but have the obligation to buy the stock if the buyer exercises the option.

### 6. Types of Traders

Futures, forward, and option markets thrive due to high liquidity, attracting diverse traders. These traders fall into three categories: **hedgers** (reducing risk from future market movements), **speculators** (betting on future market direction), and **arbitrageurs** (exploiting the price differences for guaranteed profit). Hedge funds are notable users of derivatives for all three purposes.

---

## Notes

---

## Examples

> [!example] Forward Contract Example
> See Key Concepts section above.

> [!example] Google Options
> See Key Concepts section above.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| Futures Contract | An agreement to purchase some asset at a certain time in the future for a certain price |
| Forward Contract | An agreement to buy or sell an asset at a specific time in the future at a predetermined price, traded OTC |
| Long Position | When you're buying something at some date |
| Short Position | When you're selling something at some date |
| Spot Price | The current price of an asset |
| Call Option | Gives the holder the right (but not obligation) to buy an asset at a certain price (strike price) by a certain date (expiration date) |
| Put Option | Gives the holder the right (but not obligation) to sell an asset at a certain price (strike price) by a certain date (expiration date) |
| European Option | Can only be exercised at expiration |
| American Option | Can be exercised at any time before expiration |
| Option Premium | The upfront price paid for an option contract |
| Hedgers | Traders reducing risk from future market movements |
| Speculators | Traders betting on future market direction |
| Arbitrageurs | Traders exploiting price differences for guaranteed profit |
| OTC Market | Over-the-counter market where derivatives are traded directly between parties |

---

## Questions & Discussion

- [ ] What is the difference between futures and forwards contracts?
- [ ] How do call and put options differ from futures/forwards?
- [ ] What are the main types of traders in derivatives markets?

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Understand the basic concepts of futures, forwards, and options

---

## Related Notes

- [[200 Finance/Derivatives/FINM3006 - Derivatives|Course Summary]]
- [[200 Finance/Derivatives/Lectures/Week 01 - Lecture 1|Week 01 - Lecture 1]]

---

## References
