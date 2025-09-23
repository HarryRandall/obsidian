**Class**: [[FINM3005 - Corporate Valuation]]
**Date**: Tuesday, 23 September 2025, 12:08
**Tags**: 

---
## Overview
- The return required by providers of capital
- Acts as a "hurdle rate":
	- Rate at which cash flows can be discounted
	- Returns a company need to exceed to create shareholder value.

**Weighted Average Cost of Capital**
- WACC
- Cost of capital under enterprise DCF method (as well as Economic Profit Valuation).
- Inclusion of tax shield on debt in WACC
- Represents the return required to satisfy all sources of capital
- Linked with "invested capital"

$$
WACC \;=\; K_e^l \cdot \frac{E}{D+E} \;+\; K_d \cdot (1 - t) \cdot \frac{D}{D+E}
$$
$$
K_e^l \;=\; K_e^u \;+\; (K_e^u - K_d) \cdot (1 - t) \cdot \frac{D}{E}
$$  
**where**  
- $K_e^u$ = cost of equity of an unlevered firm  
- $K_e^l$ = cost of equity of a levered firm  
- $K_d$ = cost of debt  
- $t$ = corporate tax rate  
- $D$ = (market) value of debt  
- $E$ = (market) value of equity  

## General Principles
**Over-riding Principle**  
- Consistency between components of WACC and free cash flow.  
- Examples:  
  - Tax shield on debt should appear in either FCF or WACC, not both.  
  - Currency denomination of FCF and WACC must be identical.  
  - Nominal vs real terms *(nominal is recommended)*.  
  - Match to duration or cash flow timing *(ideally, but not always possible)*.  

**Target Capital Structure**  
- Basing WACC on target capital structure is easiest, but:  
  - Consider APV if there are large inconsistencies over time in actual capital structure or tax shield on debt.  
  - Consider impact of persistent deviation from target *(sensitivity testing)*.  

**Key Principles**  
- Use **market weights**, not book values.  
- Ensure you account for **all invested capital**.  

**General Principles and Advice (continued)**  
- Use the **CAPM**.  
- Tax effects borne by the company (e.g. tax shield on debt): ensure these are all included.  
- Tax effects borne by investors (e.g. CGT; imputation).  
- Identify vulnerable points in your WACC estimates, so you can focus on these parameters in sensitivity analysis.  
- Beware of conclusions that rely on WACC being correct.  
- You are looking for a **solution**, not *the* answer:  
	- *There is no “correct” model for required returns.*  
	- *(Yes, that means the basic unit in the financial analysis is unknown!)*  

## Cost of Equity
### CAPM
**Cost of Equity (CAPM Formula)**  
$$
K_{e_i} = R_f + ERP \cdot \beta_i
$$
$$
ERP = K_{e_m} - R_f
$$
**where**  
- $K_{e_i}$ = cost of equity for company *i*  
- $R_f$ = risk-free rate  
- $\beta_i$ = beta of company *i*  
- $K_{e_m}$ = market cost of equity (i.e. expected return)  
- $ERP$ = equity risk premium  

**Notes**  
- This formula has many problems *(see Course Note 1)*.  
- Widely recognised and accepted due to lack of a significantly better alternative.  
- Many difficulties arise with estimating the inputs.  

**Applying CAPM - Market Definition**  
- Non-trivial issue, given internationalisation of both company operations and investment markets.  
- International asset pricing theory insufficiently developed.  
- From a practical perspective, select the market definition that makes the most sense from an **investor’s** perspective.  
- This will usually be the primary local exchange, but:  
	- Think about consistency of currency units in WACC vs FCF.  
	- If using a world equity index, everything may need to be in **US$**.  
	- Be wary of big fish in small ponds (e.g. Novo Nordisk in Denmark).  

### Risk-free Rate

- Common practice is to use government securities.  

**Issue of Matching Duration - how far do you go?**  
- KGW suggests using long-term bonds (e.g. 10 years).  
- Potentially different rates could be used for different periods, but:  
	- Is this worth the trouble? *(may depend on shape of yield curve)*.  
- Beware: T-Bills sometimes cited as $R_f$ proxy (e.g. academia).  

**Type of Bonds – two choices:**  
1. Traditional bonds *(try to gauge implicit expected inflation)*.  
2. Inflation-linked bonds (TIPs in US):  
   - Use as a “pure” measure of real $R_f$.  
   - Then add the inflation rate assumed within your model.  
3. Expected inflation:  
   - Yield difference between traditional bond and inflation-linked bond.  

### Equity Risk Premium (ERP)

**Methods to Estimate ERP (KGW):**  
1. **Historical** - unconditional estimate, approximately 6%.  
2. **Regression-based** - conditional on variables such as dividend yield that forecast returns.  
3. **Forward-looking** - implied from current price and expected cash flows (compare current price to cash flow to solve for ERP).  

**Recommendation – Use the Implied Method. Why?**  
- Historical measures are probably distorted.  
- Implied method acknowledges that ERP varies through time.  
- Implied ERP supports valuation relative to market of the day.  

**Issues:**  
	a) Cash flow assumptions – errors feed directly into ERP estimates.  
	b) Is the market at fair value (i.e. is it priced for required returns)? Or panic in bad times?  


- Goes through an ERP, use 4.9% for the assignment.
### Beta Estimates  

**Methods for Generating Beta Estimates:**  
- **Perform your own regression analysis (Do this!)**  
	- 60 monthly returns, rolling beta.  
	- 104 weekly returns, rolling beta.  
- Find unlevered betas for comparables, then re-lever *(see KGW)*.  
- Some reliable data providers: *DataAnalysis; Reuters; Yahoo Finance; Datastream; MSCI Barra; Bloomberg*.  

**Recommendation:**  
- Generate your own beta estimate from the data provided on Canvas.  
- Gauge the integrity of your estimate *(discussed in next slide)*.  
- Formulate a feasible beta range on the way through – useful later in sensitivity analysis.  
- For more depth, see paper on Canvas: *“Beta Estimation_2002.pdf”* (not required).  

- Goes over calculating the betas

**Aspects to Consider in Evaluating Beta Estimates**  
1. **Instability in beta or the company itself:**  
   - How beta changes with estimation period.  
   - Has the company changed? (e.g. nature of operations, gearing, etc).  
1. **Outliers** - check the scatter plot.  
2. **Consistency** with betas for comparable companies.  
3. **Beta over different data intervals** - e.g. weekly and monthly data.  
   - See example *“Quiksilver_Beta_estimates.xlsx”*.  
1. **Corrections** – consider whether corrections are needed for reversion towards 1 *(see KGW, p285)* or thin trading.  
2. **Reasonable range going forward:**  
   - Requires sound understanding of the company’s risk profile *(discussed in Risk section of the annual report)*.  
   - Consider the company’s strategies and approaches going forward given expected industry and economic development.  

## Cost of Debt
- Ideally use company’s own long-term, option-free debt.  

**If not available, alternatives:**  
- Interest rate quoted by company.  
- Impute from effective interest cost in financial accounts.  
- Yields on comparable debt, as observed in the market.  
- Government bond yield + spread for credit rating.  

**Items to Watch Out For:**  
- Quoted yields ≠ expected return *(especially regarding default risk)*.  
- Term structure – different rates for different terms.  
- Marginal tax rate on interest – is corporate tax rate the correct base?  

## Capital Structure - The Options
1. **Assume a target capital structure** *(recommended 1st choice)*  
	- **Advantage:** Straightforward; stable valuation; capital management can get the company to target if desired.  
	- **Disadvantage:** Valuation may be off the mark if gearing and hence tax shield on debt vary from assumed levels.  

2. **Forecast the capital structure**  
	- **Advantage:** Analyses capital structure as a value-driver (maximises tax shield).  
	- **Disadvantage:** Requires forecasts of equity value, leading to recursive NPV calculations. Still only a forecast, so subject to error.  

3. **Use APV** *(similar to option 2, but only forecast of debt is required)*  
