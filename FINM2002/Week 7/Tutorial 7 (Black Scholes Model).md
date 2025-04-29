1) A stock price has an expected return of $16\%$ and a volitility of $35\%$. The current price is $\$38$.
	1) What is the probability that a European put option on the stock with an exercise price of $\$40$ and a maturity date in six months will be exercised?

Expected return = $16\%$ 
Volitility of $35\%$.

First thing to do, find the probability distrubtion for the stock price in 6 months time.
lognormal distribution formula

ln 38 + (0.16 - 0.35^2 / 2) * 6 / 12, 0.35 * sqrt(6/12) = 

3.678 (main), 0.247 (deviation), probability deviation of stock price in 6 months times.

Put option to be exercise ($S_T < 40$), trying to find the probability of this.

Probabiltity ($S_T < 40$) , $ln S_T$ < $ln 40$ 

$z = x-u^* /sd^*$

pr (z < ln(40)-3.687 / 0.247)

pr (z < 0.01$)

Go to Z table, standard normal distributions

=0, 0.1

= 0.5040 (50.4%)

2) What is the probability that a European call optoin will be exercised.

Call option to be exercise ($S_T < 40$), trying to find the probability of this.

= 1 - 0.5040, = 0.4960 (49.6%)

Question 2
Consider a European option pair written on a non-dividend paying stock, matured in 3 months.
The current stock price is $52. The strike price is $50. The risk free rate is 12% p.a., continu-
ously compounded. The volatility of stock price is 30% p.a.
(1) Please use Black-Scholes model to compute the prices of call and put option in this option
pair.

$d_1$ = long formula ln so/x + r...



(2) Verify whether Put-call parity holds in this case.