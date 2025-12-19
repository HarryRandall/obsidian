### Question 1
Convert the following interest rates into continuously compounded annual rate:
(a) If the interest rate rate is 4% p.a. compounded semi-annually

Annual Nominal Rate = $Rc = m \times ln(1+ \frac{R_m}{m})= 2 \times ln(1+ \frac{4\%}{2})=3.96\%$ 

(b) If the interest rate rate is 4% p.a. compounded monthly

Annual Nominal Rate = $Rc = m \times ln(1+ \frac{R_m}{m})= 12 \times ln(1+ \frac{4\%}{12})=3.99\%$ 

(c) If the interest rate rate is 0.5% per month. compounded monthly

Annual Nominal Rate = $Rc = m \times ln(1+ \frac{R_m}{m})= 12 \times ln(1+ \frac{6\%}{12})= 5.99\%$ 

Note: the interest rate here can also be storage cost, coupon rate, and etc.

---
#### Pricing Futures & Forwards
1. Stock doesn't pay you any dividends and there is no storage cost
$$ F_0 = S_0e^{rT}$$
2. Known amount/income, you know the dividend given
$$ F_0 = (S_0 \times D)e^{rT}$$
where $D$ is the PV of all future income. The seller of the stock is entitled to all of the income.

3. Known %,
$$ F_0 = (S_0)e^{(r-d)T}$$
where $d$ is the avg yield/divident yield per annum.

4. Foreign currency
$$ F_0 = (S_0)e^{(r-r_f)T}$$
where $r$ is the domestic $rf$ rate and $r_f$ is the foreign $rf$ rate.

1. For commodities (no storage cost)
$$ F_0 = S_0e^{rT}$$
2.  For commodities (with storage cost in $ amount)
$$ F_0 = (S_0 + q)e^{rT}$$
where Q is the storage cost in dollar amount

1. For commodities (with storage cost in % amount)
$$ F_0 = S_0e^{(r+q)T}$$
q = % of units - % of income

**valuing forwards**
- Initial value is 0
- Later on, your value (long or short) you will have different ways to value them

**Long** = $f = (F_1 - F_0)e^{-rT}$ 
**Shoert** = $f = (F_0 - F_1)e^{-rT}$ 

$F_1$: Current Forward Price
$F_0$: Initial Forward Price

---
### Question 2
A stock is expected to pay a dividend of $1 per share in two months and in five months. The stock price is $50 and the risk-free rate is constant at 8% per annum with continuous compounding. What is the current price of a six-month forward contract on this stock?

$$ F_0 = (S_0 \times D)e^{rT}$$
$$d = (1 \times e^{-8\% \times \frac{2}{12}}) + (1 \times e^{-8\% \times \frac{5}{12}}) = \$1.95$$
$$F_0 = 50 \times 1.95 ^{0.08 \times \frac{6}{12}} = \$50.01$$ initial forward price. You are required to purchase this stock in 6 months time for $50.01


---
### Question 3
A one-year long forward contract on a non-dividend-paying stock is entered into when the stock price is $40 and the risk-free rate is 10% per annum with continuous compounding.
(a) What are the forward price and the initial value of the forward contract?

Initial value = 0
$$ F_0 = (S_0)e^{rT}$$
$$ F_0 = (40)e^{0.1} = 44.21$$
In one years time, you are commited to purchase one stock at $44.21.


(b) Six months later, the price of the stock is $45 and the risk-free rate is still 10%. What are the forward price and the value of the forward contract?

$$ F_0 = (45)e^{0.1 \times \frac {6}{12}} = 47.31$$

If someone else enters this forward contract today, they are committed to buy this stock at $47.31.

**Long** = $f = (F_1 - F_0)e^{-rT}$ 
$(47.31 - 44.21) \times e ^{-10\% \times \frac {6}{12}}$
$= 2.95$ which is the value today.


---
### Question 4
On July 1, an investor holds 50,000 shares of a certain stock. The market price is $30 per share. The investor is interested in hedging against movements in the market over the next month and decides to use the September Mini S&P 500 futures contract. The index is currently 1,500 and one contract is for delivery of $50 times the index. The beta of the stock is 1.3.


(a) What strategy should the investor follow to fully hedge the exposure?

1. Type of contract
$$ N = (\beta - \beta ^{*}) \times \frac {P}{A} = (1.3 - 0)$$
2. Number of contracts
You want to reduce your portfolio to 0 beta.
$$(1.3) \times \frac{50,000 \times \$30}{1500 \times \$50} = 26 contracts$$

1. Position
Short position. If the short price drops, you will lose money in the market.





(b) If the investor only wants to reduce the beta to 0.5, what position and how many futures contracts should be used?
$$ N = (\beta - \beta ^{*}) \times \frac {P}{A} = (1.3 - 0.5)$$
$$(0.8) \times \frac{50,000 \times \$30}{1500 \times \$50} = 16 contracts$$
With less risk, you only need to buy less shares.


---
### Question 5
This is a question from past exam.
The debt crisis of Evergrande and Australian iron ore industry.
China buys about 70% of the iron ore Australia exports, which in turn makes up about 60% of all the iron ore China imports. The real estate developments demand a large amount of steel, made from iron ore. Therefore a major default of Evergrande will hit the Australian iron ore exports. In fact, the iron ore price has declined from about $220 in the middle of 2021 to below $120 per tone in October. Assume you are the chief risk officer of an Australian iron ore company. You expect to sell 10 million tones of iron ore in 2022 February. You are concerned about the further price drop if Evergrande’s situation worsens. You decide to use the February-2022 forward contract on iron ore to hedge your exposure to the iron ore price drop. The delivery date is 3 months from now. The spot price of iron ore is $120 per tone; the 3-month risk free rate is 3% p.a.; the storage cost is 1% p.a. per tone. Both rates are continuously compounded. What position do you need to take in this forward contract, and what is the current price of this forward contract on 10 million tones of iron ore?

You already own something and you are worried about future price drops, you want to short the commodity.
$$ F_0 = S_0e^{(r+q)T}$$
$$ F_0 = 120e^{(3\%+1\%)\frac {3}{12}}$$
The above forward tells you the price on 1 tone.
$$ F_0 = S_0e^{(r+q)T} \times 10,000,000$$
Multiply by 10 million to cover the cost of the total portfolio.
$$ F_0 = S_0e^{(r+q)T} \times 10,000,000 = $1,212.06M$$



