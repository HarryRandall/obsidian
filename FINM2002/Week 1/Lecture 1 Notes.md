18/02/2025 - Yichao Zhu

---
#### Course Overview

**Mid-Sem Exam** (Progress test)
- Week 7 open book online Wattle test
- 90 minutes long, covers weeks 1-6 inclusive
- Weighs 15% and ***is*** redeemable
**Group Assignment**
- Due by week 10, groups of 4 to be finalised by week 5.
- Details to be given in week 4's workshop.
- Weights 20% is **is NOT*** redeemable
- Related to Musk 2024 election, how can we use derivatives to profit from it?
**Final Exam**
- Closed book in person exam
- 2 hours long, covers all weeks
- Exam is different to past exam

---
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
---
#### Derivatives
**Definition**
- The value of a **derivative** is derived on the value of an underlying asset
**Purpose**
- To trade specific risks without trading the underlying assets
**Example**
- You have a mortgage at a floating rate, and your worried that the interest rate may go up in the future. We don't want to sell the underlying asset (the mortgage), so we sell the risk using a derivative to hedge the risk for a certain period.
**Information Asymmetry**
- Companies want money from households/consumers but the consumers don't know anything about the firms so they introduce the financial market to eliminate this information Asymmetry. 
- You are indirectly loaning money to firms through financial intermediaries. 

---
#### Forwards & Futures Contracts
- **Spot Contract**
You want to buy a contract immediately, the price that you buy it at is the 'current price'. It's denoted by 'S'.
- **Forward/Futures contract**
An agreement to buy or sell an asset at a certain time in the future for a predetermined price.
Forward/Future price denoted by 'F' is the price at which you agree to buy or sell the underlying the asset. 

Spot price is at time$_0$ and forward price is at time$_1$ 

Key Differences
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

**In a forward or futures contract**
- The party that has greed to buy has a **long** position. They have a final payoff of $S_T - F$
- The party that has greed to buy has a **short** position. They have a final payoff of $F - S_T$
![[Screenshot 2025-02-18 at 10.48.42 am.png]]

![[Screenshot 2025-02-18 at 10.49.49 am.png]]
*Black line is the profit for a long and short position.*

The initial price is 0 for forwards/futures

**Example**
In July cost of gold at $F$ = $1,200$ per oz
To buy 100 oz of gold
In Oct cost of gold at $S_T$ = $1,215$ per oz
Profit for long position = $S_T - F$ = $1,215 - 1,200$ = $15$, $15 * 100$ = $1,500$ profit.
Profit for short position = $F - S_T$ = $1,200 - 1,215$ = $-15$, $-15 * 100$ = $-1,500$ profit/loss.

**Margin Accounts**
- A margin is cash or marketable securities deposited by an investor with the broker.
- Margins minimise the possibility of a loss through a default on a contract.

#### Convergence of Futures to Spot

![[Screenshot 2025-02-18 at 11.20.17 am.png]]

As the delivery period of a futures contract is approached, the futures price converges to the spot price of the underlying asset.
When the delivery period is reached, the futures price equals, or is very closed to the spot price.

Basically saying the closer the future reaches the maturity date, the prices will converge as it's less likely there is profit to be made as the time period narrows down. What has more variance, looking at an amazon stock for the next 5 years or for the next 5 days.

#### Arbitrage
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

#### Closing-out Before Expiry
- All futures contracts can be "closed-out" prior to expiry
- Closing out a futures position simply means entering a new futures position equal in magnitude but opposite in direction to your original futures position.
- I.E., entering into an "offsetting trade"
- Most futures contracts are closed out before maturity
- So if you entered 2 years ago into a long position and 1 year later you wanted to close out your position, you would purchase a short position for the same amount to "offset" your position.

**Example**
- Enter one long future contract in March 2025 for Easter Australian Wheat Futures at $274 per tonne.
- The underlying asset of each futures contract is 20 tons
	- If futures price is $300 when we close
		- Enter one short March 2025 wheat contracts at $300
		- **Profit** of $\$520=(300-274)\times 20$ tones
	- If futures price is $260 when we close
		- Enter one short March 2025 wheat contract at $260
		- **Loss** of $\$280=(260-274) \times 20$ tones

#### Settlement at Expiry
- If a futures contract is not closed out before maturity
- To be settled by delivering the assets underlying the contract 
	- Physical delivery
	- Cash delivery
- Go over this section

#### Options
- 