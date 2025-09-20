**Class**: [[FINM3005 - Corporate Valuation]]
**Date**: Sunday, 7 September 2025, 15:05
**Tags**: 

---

## Overview of Company Models & Assignment

**What is a Company Model?**
- A company model is a representation of the financial accounts, designed so it can be filled right with forecasts.
- Output might include:
	- Cash flows & other items (E.G., EPS) to perform valuation analysis
	- Growth rates
	- Return on capital
- Accounting identities should be implicit in the cell links & formulas, i.e., balance sheet, income statement, and cash flow statement are all integrated; accounts should balance.

##### Assignment - First Part
**Assignment Objectives**:
1. Build a company model, using "KGW Model" as a template.
2. Generate some sensible forecasts
3. Use the model to do a DCF valuation
4. Write-up the **notes** to your mode (any formats that work for you, don't worry about the appearance).

**Tasks to complete**
- Input the historical accounting data
- Decide how to structure the model to support analysis of the company
- Build forecasts
## Overview of the KGW Valuation Model
##### What the KGW Model Provides
- A place to input historical accounts
- Collects forecasts for major line items (revenues, capex, etc).
- Organises forecasts into integrated set of financial statements
- Summaries forecasts into free cash flows, NOPLAT, etc.
- Calculates a DCF valuation

##### What the KGW Model Lacks
- Delve into forecast drivers (e.g., revenue driven only by % change)
- Analysis by business segments
- Estimation of cost of capital
- Some things need to be custom-built (e.g., DCF diagnostic charts, analysis of investment options, valuation of non-operating businesses)

## General Advice on Structuring Company Model

### General Advice
- Modelling is art as well as science
- Models need to be tailored. One size does not fit all.
- Very important to read up on the company, their plan, how they work etc.

### Decide How To Divide Up The Assets
- Identify operating versus non-operating assets.
	- **Operating**: Modelled directly; cash flows feed into DCF valuation.
	- **Non-Operating**: Stripped out and valuated separately.
- **Divisional Breakdown**
	- Company might be modelled as a single unit.
	- Alternatively, it could be modelled as a composite of divisions (e.g., business lines, geographical).
		- I.E., just one location.
	- Revenues only? EBIT or EBITDA? Assets?
	- "Segment Information" in accounts may provide a clue.
	- Think about what is most effective.
- **Group Assignment**
	- Model a single operation, or attempt to separate the business operations or geographically? 
	- By product division and service division? 
	- Is it feasible?
	- Need a segment analysis in a different tab in the Google Sheet.
		- See which segment is generating more revenue etc.

### Identify Key Value Drivers
- Key drivers are the factors that determine cash flows. The provide the focus for analysing the business and generating forecasts.
	- The pivotal points, moving from historical data to making forecasts.
- Decide the key drivers, and structure the model accordingly.
- This depends on the following
	- The nature of the business, and how operations are divided up.
	- Trade-off any additional workload versus insight gained.
	- Data availability may dictate the possibilities.
	- Is there an over-riding competitive constraint on profitability?
- **Group Assignment**
- Some issues to think about
	- What drives revenue?
	- Focus on market share, or volumes or prices?
	- Model margins, or cost lines? (KGW model provides such flexibility)
	- What drives investment, especially working capital?
	- Will simple percentages or revenue suffice, or are more 'levers' required?

### Decide Time Horizon
- KGW Model is set-up as follows:
	- 'Detailed Forecast': 5 year duration; explicit line-by-line forecasts.
	- 'Key Driver Forecast': 10 year duration; inputs include revenue growth rate and ROIC drivers; take business towards 'stead state'.
	- 'Continuing Value': estimation of NPV of cash flows occurring year 16 and beyond; based on 'steady state'.
- Don't just accept KGW template. Ask what fits naturally with the business.
- E.G., Is the company a relatively mature business, or could it grow (say) and over what period?

### Set Up For Sensitivity & Scenario Analysis
- Try to limit the spread of key input variables throughout the mode.
- Create a summary sheet containing input assumptions for key variables, and to collect the main output (i.e., 'Assumptions & Output' worksheet)

### Prepare For Easy Updating & Review
- Input data should match form in which it arrives (e.g., items in accounts should have a clear audit trail to the accounts).
- Summary sheet might be set up to provide an overview
	- E.G., a summary table that includes some important ratios, all linked to results.
	- Usually the financial ratios generated in (Results) are all we need in valuation analysis.


## Estimating ROIC
- ROIC = Return on Invested Capital
- Provides a measure of the returns a company generates on the capital at its disposal.

$$
ROIC_{\text{(from operations)}} \;=\; \frac{\text{profits from operations (NOPLAT)}}{\text{invested capital in operations}}
$$
- ROIC is designed to be directly comparable with WACC:
	- Numerator (**NOPLAT**) is a measure of operating profits available to pay the providers of capital **excluding** the interest tax shield.
	- Denominator (**Invested Capital**) is the amount invested by the providers of capital.
		- For example; equity investors, debt holders, etc.
- $ROIC - WACC = \textit{Economic Profit}$ (A measure of value creation / destruction)
- For $1 invested in the operations by the capital providers, how much profit can be generated by operations.
- If the firm can generate a return that is higher than WACC, that means that for every $1 invested in the firm, they are generating more profit than they need to pay to their capital providers.
	- This means we should invest more, to take advantage of this return.

- KGW focuses on arranging accounts to get the best possible measure of ROIC on operations.

### Principles for estimating ROIC from operations
- Identify any non-operating items, and strip their effect out of both the numerator and denominator.
- Any items related to financing should be stripped out of NOPLAT, e.g., tax shield on debt (included in WACC).
- Ensure that the denominator represents the investment in operations by the providers of capital, (i.e., equity, debt, etc).
- Over-riding principle, maintain consistency.

### Estimating Invested Capital
$$
\textit{Total Funds Invested} \;=\; \textit{Debt} + \textit{Equity} + \textit{Other Claims}
$$
$$
=\; \textit{Invested Capital} + \textit{Non-Operating Assets}
$$
- Understanding invested capital sets a base for estimating WACC: Equity, debt, and their equivalents have different cost of capital.
- Adjustments may be contemplated for:
	- Excess cash and marketable securities  
	- Goodwill *(include vs exclude ⇒ alternative measures of ROIC)*
		- When acquiring a company, this is the difference between the assets - liabilities, which we buying a company is just the acquisition premium, but will be marked on the balance sheet as goodwill.
	- Intangibles that represent an asset, e.g. R&D, advertising  
	- Capitalizing leases that are more in the nature of financing  
	- Netting off  “other” assets and liabilities *(e.g. working cap, see over)*  

### Example 
#### Accountant’s balance sheet

| Assets             | Prior year | Current year | Notes                             |
| ------------------ | ---------- | ------------ | --------------------------------- |
| Inventory          | 200        | 225          |                                   |
| Net PP&E           | 300        | 350          |                                   |
| Equity investments | 15         | 25           | This is not an operational asset. |
| **Total assets**   | **515**    | **600**      |                                   |

| Liabilities and equity           | Prior year | Current year | Notes                               |
| -------------------------------- | ---------- | ------------ | ----------------------------------- |
| Accounts payable                 | 125        | 150          | This is not operational liabilitiy. |
| Interest-bearing debt            | 225        | 200          |                                     |
| Common stock                     | 50         | 50           |                                     |
| Retained earnings                | 115        | 200          |                                     |
| **Total liabilities and equity** | **515**    | **600**      |                                     |

#### Invested capital

| Item                          | Prior year | Current year | Notes                 |
| ----------------------------- | ---------- | ------------ | --------------------- |
| Inventory                     | 200        | 225          | Operational Asset     |
| Accounts payable              | (125)      | (150)        | Operational Liability |
| **Operating working capital** | 75         | 75           | = OA - OL             |
| Net PP&E                      | 300        | 350          | Add Net PP&E          |
| **Invested capital**          | **375**    | **425**      | Add together, NWC.    |
| Equity investments            | 15         | 25           |                       |
| **Total funds invested**      | **390**    | **450**      |                       |

#### Total funds invested

| Item                   | Prior year | Current year |
|-------------------------|------------|--------------|
| Interest-bearing debt   | 225        | 200          |
| Common stock            | 50         | 50           |
| Retained earnings       | 115        | 200          |
| **Total funds invested** | **390**   | **450**      |

### NOPLAT
- NOPLAT represents the 'taxed' operating profit generated from invested capital
	- EBITA $-$ Associated Tax
- NOPLAT excludes:
	- Any payments to providers of capital (i.e., interest)
	- Tax shield on debt
	- Income or expenses associated with non-operating assets.
- **Tax** to deduct from EBITA (operating profit):
	- Approximation: tax rate $\times$ EBITA
- Watch out for:
	- Lease expenses that are really interest charges
	- Profit or loss on asset sales
	- Expensing of intangibles like R&D that may be creating an asset
	- Pension fund adjustments

### ROIC - Some Practical Issues
- ROIC is estimated from accounting data, and thus carries much of the associated baggage:
	- Invested capital is neither the amount of cash investors have committed to the business, nor a measure of the opportunity cost.
	- NOPLAT reflects accounting treatments as well as cash flows (most notably with respect to depreciation).
- Level of ROIC (or any accounting-based return measure) often remains distorted, even after all the adjustments.

**Implications**
- Estimated ROIC can provide only a rough guide.
	- Don't become fixated on honing your ROIC estimates.
	- ROIC trends and relatives versus comparable companies often contain valuable information nevertheless.