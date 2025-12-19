![[Lecture 4 - Options Basics.pdf]]

#### Options Basics
- Call option - long position
	- Holder/buyer of a call option
	- Have the right but not the obligation to buy the underlying asset
	- Payoff $max(S_T - X,0)$
- Call option - short position
	- Writer/seller of a call option
	- Obligated to sell the asset to the holder if the holder decides to exercise the option
	- Payoff $min(X - S_T,0)$
- Put option - long position
	- Holder/buyer of a put option
	- Have the right but not the obligation to sell the option
	- Payoff $max(X-S_T, 0)$
- Put option - short position
	- Writer of a put option
	- Obligated to buy the asset from the holder if the holder decides to exercise the option
	- Payoff $min(S_T - X,0)$
![[Pasted image 20250311101920.png]]
#### The Moneyness of Options
- At-the-money (ATM)
	- A call option if at-the-money if the strike price equals the asset price $(S_T = X)$
	- A put option is at-the-money if the strike price equals the asset price $(S_T = X)$
- In-the-money (ITM)
	- A call option is in-the-money if the strike price is less than the asset price $(S_T > X)$
	- A put option is in-the-money if the strike price is greater than the asset price $(S_T < X)$
- Out-of-the-money (OTM)
	- A call option is out-of-the-money if the strike price is greater than the asset price $(S_T < X)$
	-  A put option is out-of-the-money if the strike price is less than the asset price $(S_T > X)$

#### Assets Underlying Options
- Stock Options
	- Mostly traded on exchanges
	- Mainly American options
- Foreign Currency Options
	- Mainly over the counter
	- Either European or American options
- Index Options
	- Both over the counter on exchanges
	- European options

#### Futures Options
- The underlying asset is a futures contract
- Exchange traded futures often have options trading on them
- A futures option normally matures just before the delivery period of the futures contract
- When a call option is exercised, the holder acquires a long position in the underlying futures contract plus a cash amount equal to the excess of the futures price over the strike price.
- When a put option is exercised, the holder acquires a short position in the underlying futures contract plus a cash amount equal to the amount excess of the strike price of the futures price.

#### Dividends & Stock Splits
- Suppose you own $N$ options with a strike price of $X$
	- No adjustments are made to the options term for cash dividends
	- When there is an $n$-for-$m$ stock split
		- E.G., $2$-for-$1$ stock split means if you have $100$ shares before the split, after the split you would have 200 shares.
		- The strike price is reduced to $\frac {X_m}{n}$
		- The number of options is increased to $\frac {N_n}{m}$
	- Stock dividends are handled in a manner similar to stock splits

**Example**
- Consider a call option to buy 100 shares for $20 per share.
- How should terms be adjusted?
	- The strike price is reduced to
$$\frac{X_m}{n} = \$20 \times (\frac{1}{2}) = 10$$
- The number of shares in one option is increased
$$\frac{N_n}{n} = \$20 \times (\frac{2}{1}) = 200$$
**Example 2**
- For a $5\%$ stock dividend?
	- The strike price is reduced to
$$\frac{X_m}{n} = \$20 \times (\frac{100}{105}) = \$19.047$$
	- The number of shares in one option is increased to
$$\frac{N_n}{n} = 100 \times (\frac{105}{100}) = 105$$

#### Special forms of options
1. Warrants
	- Options that are issued by a company on its own stock
	- Warrants are traded in the same way as stocks
	- When call warrants are exercised, it leads to a new stock being issued
	- By offering warrants as part of financing deal, companies provide investors with the potential for additional returns beyond the initial investment
2. Exclusive or Employee Incentive Stock Options
	- Issued by a company to its executives as a performance incentive
	- When the option is exercised the company issues more stock
	- Usually out-of-the-money when issued to incentivise executives to increase the share price of the company.
	- Usually with a lock period, and cannot be sold by the executive
	- Often lasts for as long as 10 or 15 years

#### Notation
-	*c*  European call option price  
-	*p*  European put option price  
-	*C*  American call option price  
-	*P*  American put option price  
-	**X**  Strike price  
-	*S₀*  Stock price today  
-	*S_T*  Stock price at option maturity  
-	**D**  Present value of cash dividends during option’s life  
-	**T**  The time to expiry of the option (in years)  
-	**r**  The risk-free interest rate (continuously compounded)  
-	**σ**  The volatility (Standard Deviation) of returns on the underlying asset  


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Options Pricing Table</title>
    <style>
		    
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f9f9f9;
            margin: 0;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }
        table {
            border-collapse: collapse;
            text-align: center;
            width: 60%;
            font-family: Arial, sans-serif;
            background-color: white;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        .top-header {
            border-bottom: none;
        }
    </style>
</head>
<body>

<div class="container">
    <table>
        <tr class="top-header">
            <th rowspan="2">Variable</th>
            <th colspan="2">European</th>
            <th colspan="2">American</th>
        </tr>
        <tr>
            <th><i>c</i></th>
            <th><i>p</i></th>
            <th><i>C</i></th>
            <th><i>P</i></th>
        </tr>
        <tr>
            <td><i>S₀</i></td>
            <td>+</td>
            <td>-</td>
            <td>+</td>
            <td>-</td>
        </tr>
        <tr>
            <td><i>X</i></td>
            <td>-</td>
            <td>+</td>
            <td>-</td>
            <td>+</td>
        </tr>
        <tr>
            <td><i>T</i></td>
            <td>?</td>
            <td>?</td>
            <td>+</td>
            <td>+</td>
        </tr>
        <tr>
            <td><i>σ</i></td>
            <td>+</td>
            <td>+</td>
            <td>+</td>
            <td>+</td>
        </tr>
        <tr>
            <td><i>r</i></td>
            <td>+</td>
            <td>-</td>
            <td>+</td>
            <td>-</td>
        </tr>
        <tr>
            <td><i>D</i></td>
            <td>-</td>
            <td>+</td>
            <td>-</td>
            <td>+</td>
        </tr>
    </table>
</div>

</body>
</html>

#### American vs. European Options
- An American option is worth at least as much as the corresponding European option
- This is due to the value of being able to exercise the option at the time of your choosing.
$$ C \geq C$$
$$ P \geq p$$
#### Option Bounds
- Ultimately, we want a formula that gives the exact option price
- Start by finding the range in which option prices must lie
- For any option there is an **upper bound** on the option price
	- If the option price ever trades above the upper bound -> arbitrage
- For any option there is an **lower bound** on the option price
	- If the option price ever trades below the lower bound -> arbitrage

**European options on non-dividend stocks**

$$ c \leq S_0 \quad | \quad p \leq Xe^{-rT} $$

$$ c \geq \max(S_0 - Xe^{-rT}, 0) \quad | \quad p \geq \max(Xe^{-rT} - S_0, 0) $$

 **American options on non-dividend stocks**

$$ C \leq S_0 \quad | \quad P \leq X $$

$$ C \geq \max(S_0 - Xe^{-rT}, 0) \quad | \quad P \geq \max(X - S_0, 0) $$
#### Upper Bound for Call Options
- American or European call option gives the holder the right to buy a stock at the strike price.
- No matter what happens, the option can never be worth more than the stock.
- Hence, the stock price is an upper bound to the call option price
- If violated, arbitrageurs can buy the stock and sell the call option
	- $c \leq S_0$ and $C \leq S_0$ 

#### Upper Bound for Put Options
- American or European put options give the holder the right to sell a stock at the strike price.
- No matter how low the stock price becomes, the option can never be worth more than X
	- $P \leq X$ and $P \leq X$ 
- For European options, it cannot be worth more than $X$ at maturity. 
- This means it cannot be worth more than the present value of $X$ today, as it cannot be exercised early.
	- $P \leq Xe^{-rt}$

#### Lower Bound for European Call
- The lower bound for the price of a European call option on a non-dividend paying stock
	$$ C \geq max(S_0 - Xe^{-rT}, 0)$$
- We can prove this by considering the following two portfolios
- Portfolio A
	- One European call option
	- An amount of cash equal to $Xe^{-rT}$
- Portfolio B
	- One share of underlying stock


<head>
    <title>Options Strategy Table</title>
</head>

<table>
<centre>
    <tr>
        <th rowspan="2"> </th>
        <th>Time 0</th>
        <th colspan="2">Time T</th>
    </tr>
    <tr>
        <th></th>
        <th>If <i>S<sub>T</sub> &lt; X</i></th>
        <th>If <i>S<sub>T</sub> &gt; X</i></th>
    </tr>

    <tr>
        <td colspan="3"><b>Strategy A</b></td>
    </tr>
    <tr>
        <td>Long call option</td>
        <td><i>c</i></td>
        <td>0</td>
        <td><i>S<sub>T</sub> - X</i></td>
    </tr>
    <tr>
        <td>Long bond</td>
        <td><i>Xe<sup>-rT</sup></i></td>
        <td><i>X</i></td>
        <td><i>X</i></td>
    </tr>
    <tr>
        <td><b>Total payoff</b></td>
        <td></td>
        <td class="red"><i>X</i></td>
        <td class="red"><i>S<sub>T</sub></i></td>
    </tr>

    <tr>
        <td colspan="3"><b>Strategy B</b></td>
    </tr>
    <tr>
        <td>Long share</td>
        <td><i>S<sub>0</sub></i></td>
        <td><i>S<sub>T</sub></i></td>
        <td><i>S<sub>T</sub></i></td>
    </tr>
    <tr>
        <td><b>Total payoff</b></td>
        <td></td>
        <td class="red"><i>S<sub>T</sub></i></td>
        <td class="red"><i>S<sub>T</sub></i></td>
    </tr>
</centre>
</table>



$$p + S_0 \geq Xe^{-rT}$$
$$P \geq Xe^{-rT} - X_0$$
$$p \geq max(Xe^{-rT} - S_0,0)$$
