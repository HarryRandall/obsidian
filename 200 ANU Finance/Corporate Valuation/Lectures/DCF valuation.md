**Class**: [[FINM3005 - Corporate Valuation]]
**Date**: idk, idk July 2025, 15:30
**Tags**: 
**Links**: https://www.youtube.com/watch?v=gLULdxrS-CU&t=68s

---
## Lecture 2
### Net Present Value (NPV)
- General term referring to discounted value for stream of cash flows.
- **Objective**: Estimate cash flows available to providers of capital, and discount at the return required by those providers.

To meet this objective, you need:
1. Forecast of cash flows (may arise from a company model)
2. Cost of capital estimate

Various approaches exist based on the same principle, but employing different structure and terminology. Key points of differentiation:
1. **Perspective**: total enterprise vs equity holders
2. **Treatment** of tax shield on debt: discount rate vs cash flows
3. **Discount rate**: $WACC$ vs $K_{eU}$ vs $K_{eL}$ (reflects above 2 points)
4. **Capital structure assumption**: target (static) vs variable
5. **Presentation**: cash flows vs capital investment + economic profit.

- The higher we expect the return, the lower we set the price.
	- High risk, low price.
	- Low risk, high price.

### Enterprise DCF Model
- The left hand side = right hand side.
- The enterprise value is the value of the companies operation.
- The right hand side is used to support the left hand side of the company (debt and equity).


To get the equity per share, we subtract the debt value from the enterprise value, then we divide the equity by the number of shares.

**Steps in Enterprise DCF**
1. Estimate NPV of cash flows from operations, discounting WACC
	a) Free cash flow generated over forecast horizon
	b) Continuing value
2. Value non-operating assets
3. **Enterprise value** (from screenshot above) = value of operations + non-operating assets
4. Identify and value of non-equity claims (e.g., debt, options, prefs, etc)
5. Equity value = enterprise value - value of non-equity claims.
6. Valuation of shares = equity value / number of shares.

When doing a DCF, you are predicting the future cash flows of the company. When doing these, you often assume that all of the cash comes in on a certain date (end of the year like December 31). This isn't the case however, as firms tend to get money throughout the year.

Because of this, you need to add a mid-year-adjustment, which we can do by incrementing by 0.5 instead of 0.1 when calculating the DCF.
$$\text{Annual DCF}\;\;PV = \frac{100}{(1.1)^{1}} = 90.91$$
$$\text{Mid-Year DCF}\;\;PV = \frac{100}{(1.1)^{0.5}} = 95.35$$

**Worked steps in Enterprise DCF**
1) Given to us, NPV = 113,395
	1) With the mid-year adjustment factor, we get $113,395 \times 1.039 = 117,840$.
2) Non operating assets = $4,136 + 148 = 4,284$ 
3) Enterprise value = $117,840 + 4,284 = 122,124$
4) Non-equity claims = $(10,872) + (5,042) + (5,841) + (14) = 21,769$
5) Equity Value = $122,124 - 21,769 = 100,355$ 
6) Valuation of shares = $\frac{100355m}{923m} = 109$

- Non controlling interest
- NOPLAT = Net Operation Profit - Adjusted Tax

**Free Cash Flows**
- NOPLAT + non-cash items - Investments in Invested Capital.
- Free cash flows is aft er-tax cash flows available to all investors.
- The DCF valuation will be built upon these cash flows.
- Excludes the non-operating cash flows (treated and valued separately) and financing items (i.e., shifts in invested capital).


## Youtube Analysis
### Discounted Cash Flow Steps
- **Forecast the Free Cash Flows (FCF)**
	- Use a set of assumptions based upon historical data to predict whether a company is going to be generating cash within the next 5-10 years.
- **Calculate the Weighted Average Cost of Capital (WACC)**
	- This is the discount rate used to bring back all of the Free Cash Flows to the present (year 0).
	- You need to do this as per the time value of money, money is worth more today than it is in the future.
- **Calculate the Terminal Value**
	- After a forecasted period (e.g., 5-10 years), you need to assume a value for the company.
- **Discount the FCF and Terminal Value**
	- Use the WACC and discount the FCF and Terminal Value of the company.
- **Calculate the Implied Share Price**
	- Calculate the enterprise value, the equity value, and eventually get to the implied share price of the company. 

### Free Cash Flows
- Cash flow available to both debt and equity holders after the business pays for everything it needs to continue operating. 
	- Operating expenses
	- Capital Expenditures
	- Any other investments
- The more free cash flows a company has, the more attractive it is for investors as it's able to pay down it's debts or invest in new business opportunities.

**Formula**:
> Free Cash Flow = EBIT $\times$ ($1$ - tax rate) + Depreciation and Amortisation - Capital Expenditure - Increase in Non-Cash Working Capital


- EBIT = Earnings before Interest & Tax.
- Depreciation and Amortisation are known cash expenses.
- Capital Expenditure is like buying a new factory.
- Non-Cash Working Capital is capital that the business uses day-to-day for it's operations.
	- Formula: Current Assets - Cash - Current Liabilities


Worked example ([here](https://docs.google.com/spreadsheets/d/1eg0VmfDDadB6gbLi4duTIcwM-b7KBUJKCnnljwrc1KE/edit?gid=0#gid=0))
![[Pasted image 20250904105806.png]]

### Weighted Average Cost of Capital
- Measures the cost of financing for a company.
- **Debt financing**:
	- There is a **Cost of Debt**
	- This would be the interest payments on the debt.
	- The same as taking out a loan and paying interest on it.
- **Equity Financing**:
	- There is a **Cost of Equity**
	- This can be calculated using the CAPM (Capital Asset Pricing Model)

**CAPM Model**
$$E(R_i) = R_f + \beta_i(E(R_m) - R_f)$$
Where:
- $E(R_i)$ = the expected return
- $R_f$ = Risk-free rate
- $\beta_i$ = Beta
- $E(R_m)$ = expected market return

**WACC Formula**
$$WACC = \frac{E}{E + D} \cdot R_E + \frac{D}{E + D} \cdot R_D \cdot (1 - T)$$  
Where:  
- $E$ = Equity
- $D$ = Debt
- $R_E$ = Cost of Equity (from CAPM)  
- $R_D$ = Cost of Debt  
- $T$ = Tax rate
- The interest payments on the debt are tax deductible. 

Worked example ([here](https://docs.google.com/spreadsheets/d/1eg0VmfDDadB6gbLi4duTIcwM-b7KBUJKCnnljwrc1KE/edit?gid=908451720#gid=908451720))
![[Pasted image 20250906095040.png]]

### Terminal Value
- The value of the business after the forecasted period.
- There are two ways to calculate this:

**Perpetuity Growth**
$$TV = \frac{FCF_n \cdot (1 + g)}{WACC - g}$$  

Where:  
- $FCF_n$ = Free Cash Flow in the final forecast year  
- $g$ = Growth rate  
	- Based on the GDP of the country
	- Or industry standard rate
- $WACC$ = Weighted Average Cost of Capital

**Exit Multiple Formula**  
$$TV = \text{Financial Metric} \times \text{Trading Multiple}$$
Example:  
$$TV = EBITDA \times 5$$

Where:  
- Financial Metric example = EBITDA  
- Trading Multiple example = $\text{Enterprise Value} / \text{EBITDA}$

Worked example ([here](https://docs.google.com/spreadsheets/d/1eg0VmfDDadB6gbLi4duTIcwM-b7KBUJKCnnljwrc1KE/edit?gid=40010518#gid=40010518))
![[Pasted image 20250906100828.png]]

### Discounting
- We are going to discount the cash flows back to the present (time value of money).
- We'll also discount the terminal value back to the present.
- If we sum these two values, we will get the **enterprise value**.

Worked example ([here](https://docs.google.com/spreadsheets/d/1eg0VmfDDadB6gbLi4duTIcwM-b7KBUJKCnnljwrc1KE/edit?gid=1947024637#gid=1947024637))
![[Pasted image 20250906101924.png]]

### Equity Value
- The last step is to go from the enterprise value to the equity value of the company, which leads to an implied share price.

**Enterprise Value Formula**  
$$\text{Enterprise Value} = \text{Equity Value} + \text{Net Debt}$$  
Where:  
- $\text{Net Debt} = \text{Debt} - \text{Cash}$  

Worked example ([here](https://docs.google.com/spreadsheets/d/1eg0VmfDDadB6gbLi4duTIcwM-b7KBUJKCnnljwrc1KE/edit?gid=528535070#gid=528535070))
![[Pasted image 20250906102438.png]] 