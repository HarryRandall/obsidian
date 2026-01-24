**Class**: [[FINM3011 - Investments]]
**Date**: Wednesday, 17 September 2025, 11:01
**Tags**: 

---
## Overview
- Example questions on Efficient Market Hypothesis  
- Test EMH from the performance of skilled investors  
- Limits of arbitrage example  

---
## 1. An example question on EMH

- In a recent closely contested lawsuit, **company A** **sued** **company B** for patent infringement. The Judge announced the decision **today**. As a response from the investors, the (annualised) **returns were 23% for Stock A**, **and 18% for Stock B** by the end of the day.  

- At the meantime, the (annualised) **market return today was 20%**, due to very encouraging news about the unemployment rate.  

- The risk free rate is 5%.  

- The historical relationship between the stock returns and the market returns estimated from CAPM model is as follows:

$$
E(r_A) - r_f = 1.4 \times [E(r_M) - r_f]
$$

$$
E(r_B) - r_f = 0.6 \times [E(r_M) - r_f]
$$

---
### Expected vs Actual Returns

- Based on the given information, which company do you think won the lawsuit?  
- The (annualised) expected returns of these two stocks today, as if there was no lawsuit outcome announcement, should be:

$$
E(r_A) = 5\% + 1.4 \times [20\% - 5\%] = 26\%
$$

$$
E(r_B) = 5\% + 0.6 \times [20\% - 5\%] = 14\%
$$

- The actual market reaction today were:

$$
r_A = 23\%, \quad r_B = 18\%
$$

- Stock A performed worse than expected: $\alpha_A = -3\%$  
- Stock B performed better than expected: $\alpha_B = 4\%$  

**Conclusion:** Company B is more likely to have won the lawsuit.  

---

### Event Study Result of the Lawsuit

- Event study result of this lawsuit, some EMH observations:  

![[Pasted image 20250917111823.png]]

| EMH Form          | Stock A | Stock B | Market |
|-------------------|---------|---------|--------|
| Weak form         | NA      | NA      | NA     |
| Semi-strong form  | ✗       | ✓       | ?      |
| Strong form       | ✓       | ✗       | ?      |

---

## 2. Another example question on EMH

- In the bond market, bonds are classified into two major groups:  
	- **Investment grade bonds**: BBB-rated bonds and above; many institutional investors can only invest in investment grade bonds for regulatory reasons.  
	- **High-yield bonds**: BB-rated and below, also known as junk bonds, more risky and speculative than investment grade bonds.  

- When a bond’s credit rating falls from BBB to BB, it becomes a junk bond and many investors sell this bond.  
  This is known as a *fallen angel*.  

---

### Event Study Result of Fallen Angel Bonds

- **Question:** Does this graph indicate any market inefficiency?  

![[Pasted image 20250917112353.png]]

- **Observations:**  
  - First six months: price continued to fall in a predictable way.  
    → Not inefficiency, due to selection effect.  
  - Event month: sharp drop in price (~1%).  
    → Not inefficiency, reflects event shock.  
  - After the event: price continues to rise predictably.  
    → Potential inefficiency: excessive selling pressure causes underpricing, prices eventually recover.  

- To confirm: need to consider transaction costs, risks, survivorship bias, etc.  

---

## 3. Test EMH from the performance of skilled investors

- Can skilled investors consistently earn abnormal trading profits?  
- Straightforward EMH test:  
  - If markets efficient → No abnormal profits.  
  - Focus:  
    - Analysts  
    - Mutual fund managers  

---

### Analysts

- Security analysts publish stock recommendations regularly.  
- Motivation:  
	- Reputation building  
	- Attract potential clients to purchase detailed reports  
	- Attract brokerage business  
	- Influence prices  

![[Pasted image 20250917114106.png]]

**Studies of analyst performance:**  
- Accuracy of recommendations in predicting price direction.  
- Positive vs negative recommendations.  
- Results:  
	- No abnormal returns after transaction costs.  
	- Price changes may reflect buy/sell pressure from reputation of analysts.  

---
### Mutual Fund Managers

- Risk-adjusted mutual fund performance tested using asset pricing models.  
- Observations:  
	- Some managers outperform occasionally.  
	- Most managers cannot consistently outperform after fees.  
	- Survivorship bias important (poor performers drop out).  

---

### Conclusion on Skilled Investors

- Overall results consistent with market efficiency.  
- Most managers fail to outperform passive index strategies.  
- Enough anomalies exist to justify ongoing search for mispricing.  

**Investor implications:**  
- Even if markets are efficient, don’t pick random stocks:  
  - Risk may not align with preferences.  
  - Portfolio may not be diversified.  
  - May be tax-inefficient.  
- Choosing active funds = belief in “beating the market”.  
- Choosing passive funds = belief in EMH.  

---

## 4. Limits of arbitrage example

- Limits of arbitrage may arise from:  
  - Market frictions (transaction costs, short-selling fees, illiquidity).  
  - Model risk (asset pricing models may be wrong).  
  - Unfavourable short-run price moves (margin calls).  
  - Irrational crowd behaviour.  
  - Sudden negative news.  

**Example:**  
- March 2020 COVID-19 market crash.  
- Heavy short selling.  
- Short sellers forced out by “punch bowl” of government intervention.  

Government actions:  
- Rate cuts.  
- Corporate bond purchases.  
- US Fed pledged up to \$750bn in corporate bonds.  
- Bond prices lifted, stabilising market.  

---
