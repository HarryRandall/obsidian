---

---

---
#### Interest rates compounding
- Assume $10,000 investment earns $15$% interest over the next year.
- The ending value depends on the compound frequencies

- Annual Compounding
	- $FV = \$10,000 \times (1+0.15)^1 = \$11,500$
- Semi-Annual Compounding
	- $FV = \$10,000 \times (1+\frac{0.15}{2})^{2\times1} = \$11,556.25$
- Quarterly Compounding
	- $FV = \$10,000 \times (1+\frac{0.15}{4})^{4\times1} = \$11,586.50$
- Monthly Compounding
	- $FV = \$10,000 \times (1+\frac{0.15}{12})^{12\times1} = \$11,607.55$
- Daily Compounding
	- $FV = \$10,000 \times (1+\frac{0.15}{365})^{365\times1} = \$11,617.98$
- Continuous Compounding
	- $FV = \$10,000 \times e^{0.15\times1} = \$11,618.34$
	- This basically means that you are re-investing your money at every possible instant, constantly compounding whereas before, it was dynamic compounding (weekly, daily). 
	- There are constraints to this however, like time to invest, the interest rate and whatnot.
	- E is Euler's constant (2.71828) which is used in continuous growth or decay.

- Interest compounding is important in this course and we will mainly use **continuous compounding**.
**Example**
- $\$100$ grows to $\$100e^{r \times T}$ when invested at a continuously compounded rate $r$ for time $T$
- $\$100$ received at time $T$ discounts to $\$100e^{-rT}$ at $T_0$ when the continuously compounded discount rate is $r$.

**Future Value**
- Original formula
	- $FV = PV(1+r)^T$ 
- Continuous formula
	- $FV = PVe^{rT}$ 
**Present Value**
- Original formula
	- $PV = \frac {FV} {(1+r)^T}$ 
- Continuous formula
	- $PV = FVe^{-rT}$

**The conversion formula for continuously compounded interest rate**
$$R_c = m \times ln(1+ \frac {R_m}{m})$$ where:
- $R_c$ is the **effective interest rate** if interest were compounded **at every instant**.
- $m$ is the amount of compounding periods, the larger the $m$ the larger the value will be to continuous growth.
The formula converts an interest rate **compounded periodically** into an equivalent **continuously compounded rate**. The more frequently interest is applied, the closer the nominal rate gets to the **true continuous growth rate**.

Examples:
1. If the nominal interest rate is 10% p.a. compounded weekly, what is the continuously compounded rate.
$R_c = 52 \times ln(1+ \frac {0.1}{52}) = 9.99\%$
2. If the nominal interest rate is 10% p.a. compounded quarterly, what is the continuously compounded rate?
$R_c = 4 \times ln(1+ \frac {0.1}{4}) = 9.877\%$
3. If the nominal interest rate is 1% per month compounded monthly, what is the continuously compounded rate?
$R_c = 12 \times ln(1+ \frac {0.01 \times 12}{12}) = 11.940\%$

---
#### Short Selling
- Short selling (shorting) is selling an asset that is not owned
- Only avilable for some investment assets, most often stocks
- Borrow from broker or lender and sell in the market as usual
- At a later date, need to purchase the equivalent asset and buy back the one borrowed 
- The lender cannot be better off or worsen off
	- Borrower must pay dividends and other benefits that would have accrued to the lender
	- Likewise, if the borrowed asset is gold, the lender also needs to pay storage costs of the gold to the borrower.
- Short seller profits from price fall
- Margin account with the broker is required, so that possible adverse movements (increases) in the price of shorted security are covered.
- Incur lending fee, but assume no lending fee in this course.
- Must pay dividends to original holder
- You may profit from storage fee's (if you sell the asset, you don't have to store it, so there is money there for you).

---
#### Assumptions
- There are no transactional costs
- All investors are subject to the same tax rate
- Borrow and lend money at the same $R_f$
- Take advantage of arbitrage opportunities as they occur

---
#### The Price of Forward and Futures
- The payoff from a forward/futures contract can be replicated by
	- The underlying asset
	- Risk-free bonds
- The price of a forward/futures contract should be the same as the replication portfolio.

- Assume an asset that pays no dividend and incurs no storage cost
- Consider the following trading strategy
	- Borrow $S_0$ today at an interest rate of $r$
	- Buy one asset at price $S_0$
	- Hold it for a period of $T$
	- Enter a forward contract today to sell one asset at a forward price $F$
	- Sell one asset at forward price $F$ at time $T$ 
	- Payback the loan at $S_0e^{rT}$ at time $T$ 
- The forward price is $F = S_0e^{rT}$

| Position                           | Today $T_0$ | $T$              |
| ---------------------------------- | ----------- | ---------------- |
| Borrow cash $S_0$ and repay at $T$ | $S_0$       | $-S_0 e^{rT}$    |
| Buy one asset at $S_0$ and hold    | $-S_0$      | $S_T$            |
| Enter forward to sell at $F$       | $0$         | $F - S_T$        |
| **Net cash flow**                  | $0$         | $F - S_0 e^{rT}$ |

- $F = S_0 e^{rT}$ to prevent arbitrage

**Example**
- Consider a four-month forward contract to buy a zero-coupon bond
- $T = \frac {4}{12}$ 
- The current price of the bond is $S_0=\$930$
- The risk-free rate is $r=6\%$ p.a. continuously compounded
$$F = 930 \times e^{0.06 \times \frac {4}{12}} = $948.79$$
In general if:
- $F_0 > S_0e^{rT}$ arbitrageurs can make a riskless profit from **BUYING** the asset and entering into a short forward contract on this asset. This strategy is finance by borrowing funds at the risk free rate.
- $F_0 < S_0e^{rT}$ arbitrageurs can make a riskless profit from **SHORTING** the asset and entering into a long forward contract on this asset. This strategy is finance by borrowing funds at the risk free rate.
#### Known Income
- Price of forward and futures on assets with known income
- Consider a forward contract on an asset that will provide a perfectly predictable cash income to the holder
	- Stocks paying known dividends
	- Coupon bonds
	- D is the present value of this income$$F_0 = (S_0 - PV(D))e^{rT}$$ This is saying you buy the stock at $S_0$ but receive some income whilst holding it, so you need to deduct $PV(D)$ to find the price.

**Example**
- A long position in a forward contract to buy a coupon bond
- The contract matures in 9 months
- The current price of the bond is $S_0 = \$900$
- Assume a coupon payment is $40 is expected after 4 months
- The four month interest rate is 3% p.a.
- The nine month interest rate is 4% p.a.
- What is the forward price today?

#### Known Yield
- The price of forward and futures, on assets with known yield
- Income on asset is often expressed as yield rather than dollar value
	- A percentage of the asset's price when income is paid
	- $d$ as the average yield per annum on an asset during the life of a forward contract with continuous compounding $$F_0 = S_0e^{(r-d)T}$$
**Example**
- A six-month forward contract on an asset, $T = 0.5$
- The asset is expected to pay a dividend equals to 2% of the current asset price over a six-month period
- The current asset price is $S_0 = \$25$ 
- The risk-free rate $r$ is $10\%$ p.a. continuously compounded
- Note: the given yield is $2\%$ per half year
- Convert it to continuously compounded annual rate
$$d = R_c = m\times ln(1+\frac{R_m}{m})=2\times ln(1+\frac{2\%\times 2}{2}) =3.96\%$$
- The forward price
$$F_0=S_0e^{(r-d)T}=25e^{(25\%-3.96\%)\times 0.5} = \$25.77$$ 
#### Stock indices
- The price futures on stock indices
- A stock index can be viewed as an investment asset paying a dividend yield
- The price of futures on a stock index$$F_0 = S_0e^{(r-d)T}$$
- $d$ is the dividend yield on the portfolio represented by the index.
- $S$ is the points of the index times a factor conversion of dollar per point

**Example**
- A 1-year contract on the ASX S&P200
- The stocks underlying the index provide a dividend yield of $5\%$ p.a. continuously compounded
- Risk-free rate is $10\%$ p.a. continuously compounded
- The current ASX S&P200 index is 3529
- The dollar value of each point is $\$25$ 
- The price of this futures contract in terms of points
	- $F_0 = S_0e^{(r-d)T}$
	- $F_0 = 3529e^{(0.1-0.05)\times 1} = 3710$
- The dollar price of this futures contract
	- $F_0 = 3710 \times \$25$

#### Currencies
 - The price of forward and futures on foreign currency
- Consider the foreign currency as a security paying a dividend yield
- Foreign currency earns the foreign risk-free rate $r_{foreign}$
- Thus, the continuous dividend yield is the foreign risk-free rate
- $S_0$ spot price in dollars of one unit of foreign currency
	- e.g., the price for one US dollar is 1.5 Australian Dollars
- $F_0$ forward/futures price in dollars of one unit of foreign currency$$F_0 = S_0e^{(r-r_{foreign})T}$$
#### Commodities
- Investment assets
	- Held by many people purely for investment purposes
	- Examples: stocks, bonds and gold
- Consumption assets
	- Help primarily for consumption
	- (usually) not for investment purposes
	- Examples: commodities such as copper, oil, corn and meat
- When we use arbitrage arguments to price the forward and futures
	- Easy for investment assets
	- Difficult or infeasible for consumption assets

- The price of forward and futures, on commodities as investment assets (such as gold, silver)
- If there is no income or storage cost  $F_0 = S_0e^{(r-d)T}$
- If $Q$ is the present value of all the storage costs minus all income during the life of the forward $F_0 = (S_0 + Q)e^{rT}$
- If $q$ is the percentage storage costs minus the percentage income during the life of the forward $F_0 = S_0e^{(r+q)T}$

---
#### The Value of Forward
- The value of derivatives is "derived" from the underlying asset
- The price of derivatives $\neq$ its value
- The initial value of a forward/futures contract at the time it is first entered/negotiated is 0.
- At a later stage, it may have a positive or negative value

- Assume we entered a forward contract some time ago
	- The initial forward price we negotiated is $F_0 = S_0e^{r_0T_0}$ 
	- $F_0$ is also called the delivery price of this contract
- Next, we come to today, what's the value of our contract?
	- If someone wants to negotiate a new forward contract today
	- $F_0 = S_1e^{r_1T_1}$ is the current forward price
	- $T(T_1)$ is the delivery time (in years) from today
	- $r(r_1)$ is the $T$-year risk-free interest rate, continuously compounded
	- $f$ is today's value of our previous forward contract

- The value of a long forward contract
	- $f = F_1 - F_0)e^{rT}$
- The value of a short forward contract
	- $f = F_0 - F_1)e^{rT}$
- The present value from today to delivery date, so need discount
- Some slides denote $K=F_0$ and $F=F_1$
-

**Example - slide 30**

- Minor difference between forward and futures
	- Marking-to-the-market
	- If constant interest rates, prices of forward and futures are the same
	- In practice, futures are valued as if they were forwards
- When we are talking about pricing a forward contract, we really mean determining the correct delivery price $F$
- When we talk about valuing a forward contract, we really mean calculating $f$

#### Hedging
Basic principles of hedging
- Hold (or expected to hold) a position in an asset
- But don't want to be exposed to movements in asset price
- Hedge to eliminate (or reduce) the exposure to price movements
- Enter a derivatives position that provides a payoff which offsets the price movements in the exposed underlying asset
Short hedge
- Use a short position in futures
- Hold (or expected to hold) an asset and expects to sell at $T$
- Lock in the price to sell
Long hedge
- Use a long position in futures
- Expect to purchase an asset at $T$
- Lock in the price to buy

Hedging is not always perfect and straightforward
- The asset to be hedged may not be exactly the same as the asset underlying the futures contract
- Uncertain about the exact date the asset will be bought or sold
- May have to close-out the futures before delivery period

- Basic risk
	- The risk associated with imperfect hedging
	- In perfect hedging, basic risk = 0
		- Exact same asset as the underlying asset in the futures contract
		- Hold to delivery
	- Prior to delivery, the basis may be positive or negative

Basis = Spot price of asset to be hedged - futures price of contract used
![[Screenshot 2025-02-18 at 11.20.17 am.png]]

- Cross hedging
	- When there is no exact futures contract for the asset to be hedged
	- Use futures contract whose underlying asset is closely correlated (in terms of price movement) to the asset to be hedged
	- Examples
		- Airlines worried about the price of aviation fuel
		- There are no future contracts on aviate fuel
		- Use heating oil futures contracts to hedge its exposure
		- There is a lot of overlap between the two.
		- E.G BTC and Eth, no contracts for Eth, invest in Btc, they are kinda pegged.

- Hedge ratio is the ratio of the size of the position taken in the futures contract to the size of the asset with exposure
$$ Hedge Ratio = \frac {size of futures} {size of underlying asset}$$ $$ = \frac {number of contracts (N) \times size per contract (A)} {size of underlying asset (P)}$$
$$ h = \frac {N \times A} {P}$$
$$N = h \times \frac {P}{A}$$
Optimal hedge ratio
$$ h = p \frac { \sigma_S}{\sigma_F}$$
$\sigma_s$ is the standard deviation of $\triangle S$, the change in the spot price of the underlying asset during the hedging period. SPOT MARKET
$\sigma_F$ is the standard deviation of $\triangle F$, the change in the spot price of futures underlying asset during the hedging period FUTURES MARKET
$p$ is the correlation coefficient between $\triangle S$ and $\triangle F$

**Example**
- If $p = 1$ and $\sigma_S = \sigma_F = 1$ then $h = 1$
- If $1 change in the stock price, you will receive $1 compensation from the spot market

- If $p = 1$ and $\sigma_S = 0.5\sigma_F = h$ then $h = 0.5$
- You only need to buy half from the futures market,

**Example**
- Qantas expects to purchase $P = 2,000,000$ gallons of jet fuel
- In one month, $T = \frac {1}{12}$ 
- Decide to use heating oil futures contract as a cross hedge
- Each futures contract covers $A = 42,000$ gallons of heating oil
- From historical data, we estimate
	- The std of the price in jet fuel is $\sigma_S = 2.63\%$
	- The std of the price in jet fuel is $\sigma_F = 3.13\%$
	- The correlation between the two prices is $p = 0.928\%$
- What is the optimal hedge ratio?
$$h = p \frac {\sigma_S}{\sigma_F} = 0.928 \times \frac {2.63\%}{3.13\%} = 77.77\%$$
- Design the hedging strategy
The optimal number of heating oil contracts
$$N = h \times \frac {P}{A} = 77.77\% \times \frac {2,000,000}{42,000} = 37.03$$
Rounded to the nearest whole number, 37 contracts
- Since we want to buy the jet fuel (exposed to price increase), we will enter the long position in 37 contracts of heating oil futures.

- Use stock index futures to hedge a stock portfolio
	- May want to be out of the market for a short period
	- Hedge systematic risk
	- An application of cross-hedging in stock market

#### Hedging Using Index Futures
- Use stock index to hedge a stock portfolio
- The optimal hedge ratio is the beta of the portfolio to be hedged $$h = \beta$$
- The number of index futures contracts to be shorted $$N = \beta\frac{P}{A}$$
- $P$ is the value of the portfolio
- $A$ is the value of the asset (stock index) underlying one stock index futures contract index points $\times$ dollar value per point.

**Example**
- The underlying asset of SPI200 futures is S&P / ASX 200 index
- SPI200 futures contract is valued at AUD $25 per index point
- Assume the current S&P / ASX 200 index is 3500 points
- The value of the portfolio to be hedged is $5 million.
- The beta of the portfolio is 1.5

- What position is SPI200 futures contracts is necessary to hedge the portfolio?

The beta of our portfolio $\beta = 1.5$ 
The value of the stock portfolio to be hedged $P = \$5 million$ 
The dollar value of a single SPI200 futures contract $A = 3500 \times 25$
$$N = \beta_{portfolio} \frac{Amount to be hedged}{Value of one contract}$$
$$N = \beta\frac{P}{A}$$
$$N = 1.5\frac{5,000,000}{3500 \times 25}$$
$$=85.72$$
$$= 86 contracts (short)$$
- We need to short 86 contracts in SPI200 futures to hedge our long portfolio position

- What's the portfolio's new beta ($\beta^*$) after the hedge?
- Ideally, if all exposure $\beta$ is perfectly hedge, $\beta^* =0$
- But must often, 

The beta of our portfolio $\beta = 1.5$  
The value of the stock portfolio to be hedged $P = \$5\,\text{million}$  
The dollar value of a single SPI200 futures contract $A = 3500 \times 25$

Hedge Calculation:
$$
N = \beta \frac{P}{A}
$$
$$
N = 1.5 \frac{5,000,000}{3500 \times 25}
$$
$$
N \approx 85.72
$$
$$
\approx 86 \text{ contracts (short)}
$$

- We need to short 86 contracts in SPI200 futures to hedge our long portfolio position.

- What's the portfolio's new beta ($\beta^*$) after the hedge?
- Ideally, if all exposure $\beta$ is perfectly hedged, $\beta^* = 0$
- In such cases, we only manage to hedge:
  $$
  N_{\text{hedged}} = (\beta - \beta^*)\frac{P}{A}
  $$
- Rearranging to solve for the new beta:
  $$
  \beta^* = \beta - N_{\text{hedged}}\frac{A}{P}
  $$
For the given example:
- $\beta = 1.5$
- $N_{\text{hedged}} = 86$ contracts
- $A = 3500 \times 25$
- $P = \$5\,\text{million}$

Calculating:
$$
\beta^* = 1.5 - \frac{86 \times 3500 \times 25}{5,000,000} \approx -0.005
$$

Thus, $\beta^*$ is very close to zero.


**Hedging Extensions:**

1. **Reducing Beta to $\beta^* = 0.75$:**
   - Instead of a perfect hedge (i.e., reducing $\beta$ from 1.5 to 0), we want to reduce it only to 0.75.
   - Since hedging 100% of the beta requires 86 contracts, hedging 50% (to reduce from 1.5 to 0.75) requires:
$$
     N_{\text{hedged}} = \frac{86}{2} \approx 43 \text{ contracts (short)}
     $$

2. **Increasing Beta to $\beta^* = 2$:**
   - Here, we want to increase the portfolio's beta.
   - The hedge calculation becomes:
$$
     N_{\text{hedged}} = (\beta - \beta^*)\frac{P}{A} = (1.5 - 2)\frac{5,000,000}{3500 \times 25} \approx -29
     $$
   - The negative result indicates that a long position in the SPI200 futures (of about 29 contracts) is needed to increase the exposure.