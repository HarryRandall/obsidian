---
course: "[[200 Finance/Corporate Valuation/FINM3005 - Corporate Valuation|Corporate Valuation]]"
type: lecture
date: 2025-09-30
week: 7
session: 1
instructor: 
tags:
  - lecture
  - corporate-valuation
status: in-progress
---

# Week 07 - Lecture 1

> [!info] Lecture Details
> **Course:** [[200 Finance/Corporate Valuation/FINM3005 - Corporate Valuation|Corporate Valuation]]
> **Type:** Lecture
> **Date:** Tuesday, 30 September 2025
> **Week:** 7
> **Lecture #:** 1
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview

Multiple-based valuations covering foundations, advantages & disadvantages, identifying maintainable earnings, impact of inflation, normalizing earnings, calculating diluted EPS, P/E ratio, cash flow multiples, and enterprise value multiples.

---

## Key Concepts

### 1. Foundations

- Facilitated valuation prior to the computer spreadsheet
  - Firstly, decide a "correct" multiple
  - Then multiply the "correct" multiple with maintainable earnings/cash flow to generate value per share

- Several sub-categories have emerged over time:
  1. Capitalisation of equity streams - PE, Price/CF, dividend yield
  2. Enterprise value/Earnings
  3. Price/Sales (an infestation during the technology bubble)
  4. Non-financial multiples or operational multiples (e.g., Price/Number of subscribers for Spotify)
- Multiple approaches have become less dominant over time, but remain very widely used
- Ideally, multiples should refer to 'maintainable' earnings or cash flows, i.e. that which could be distributed to providers of capital 'indefinitely' by the company in its current form
- Link to 'perpetuity' concepts (albeit with growth component)

### 2. Advantages & Disadvantages

**Advantages:**
- Simple, intuitive to use, widely used
- Only need to forecast out 1-3 years
- Correlated with returns

**Disadvantages:**
- Underlying assumptions are not explicit
  - Growth potential and discount rate folded into one number
- Maintainable earnings or cash flow can be nebulous
- Appropriate multiple is not always obvious
- Difficult application for non-earning or growth companies

### 3. Identifying Maintainable Earnings

Reasons for reported earnings $\neq$ maintainable cash flow:
- One-off abnormal items in profits
  - E.G., Profit/loss on sale of assets, Unusual income, Pension fund revaluations, Write-offs, Redundancy costs
- Non-cash items
  - Goodwill amortisation / impairment charges
- Treatment of R&D, exploration, etc
- Abnormal tax rate; unsustainable effective interest rate
- Earning differing from 'trend' levels
- Investments, lazy assets, new projects in start-up period
- Growth company (maintainable earnings reach far in future)
- Depreciation $\neq$ maintenance capex
- COGS $\neq$ replacement cost of inventory

### 4. Impact of Inflation

![[Pasted image 20250930105138.png]]

- Pink cells indicate end-of-period machine purchase, as existing machine becomes fully depreciated
- Inflation in replacement cost of machines: 15%
- This worksheet bases calculations on 3 machines with 3 year life. A more dramatic impact would arise for long-dated capital goods
- Similar impact from cost of inventory replacement versus COGS
- Tax interaction (current revenues matched against historical costs)

### 5. Normalizing Earnings

- Adjustment of earnings for selected (usually) accounting items to get closer to maintainable earnings
  - **Result**: Normalized EPS

**Typical Adjustment Items (account for associated tax):**
- Goodwill amortisation / impairment charges (non-deductible expense)
- Profit or loss on asset sales
- Pension fund adjustments
- Asset revaluations or write-offs (non-deductible expense)
- Abnormal tax rates (e.g. zero tax rate due to losses carried forward)
- One-off abnormal items (e.g. unusual income items, redundancy costs)

**Other Potential Adjustment Items:**
- Earnings difference from trend levels (see slides that follow)
- Under-earning assets (allow for effect of sale or turnaround)
- R&D, exploration, etc
- Share of income in associates

**Notes:**
- Special section often created in model for calculations

### 6. Calculating Diluted EPS

- **Two main complications:**
  1. **Issuance** of new equity
  2. **Dilution** for other contingent equity claims (e.g. convertible bonds, convertible preference shares, warrants, employee options)

**General principle for issuance of new equity:**
- Use weighted average number of shares over the period

**General principle for dilution:**
- Numerator is equity earnings adjusted for impact of conversion of contingent claim (e.g. after-tax interest saving once convertible bonds are converted, or on $ received on exercising options)
- Denominator is number of shares after conversion of options, convertible bonds, convertible shares (use company forecast)

**Notes:**
- Judgment may be required on whether to dilute or not
- Ideally CF & book value per share should also be diluted

### 7. P/E Ratio

- **P/E = Price per share / Earnings per share (EPS)**
  → Solve for **P = (P/E) × EPSₘₐᵢₙₜₐᵢₙₐᵦₗₑ**

**Notes:**
- Actually a short-hand (capitalised) version of the DCF model
- Formula below can be a good way to show this

![[Pasted image 20250930111738.png]]

**P/E Ratio - Fundamental Determinants:**
- Three fundamental determinants of valuation multiples:
  1. Discount rate
  2. Growth potential
  3. Earnings quality

**Discount rate:**
- Cost of capital (proxy for funding risk, accounting for beta, k_d, k_e and gearing)

**Growth potential:**
- Ability to pursue new investments that generate a return above the cost of capital

**Earnings quality:**
- Gap between applied (often 'reported' or 'current') earnings and maintainable earnings

**P/E premium (relative to the market or comps) should be paid for:**
1. Lower discount rate (a function of risk and gearing)
2. Higher growth opportunities (access to more ROIC > WACC projects)
3. Higher earnings quality (maintainable earnings > current earnings)
   - e.g. start-ups with high expenses and low revenues currently but high maintainable earnings expected to be realised in the future

![[Pasted image 20250930112027.png]]

**P/E Ratio - Benchmark Values:**
- The P/E ratio can also be thought of as the price paid for a share in a company relative to its earnings
- A higher P/E ratio means investors are paying more for each unit of net income, so the stock is more expensive compared to one with a lower P/E
- It can also be interpreted as the number of years of earnings required to pay back the price paid for the shares
- Historical P/E valuation ranges have corresponded to the following outcomes:

| Range | Interpretation |
|-------|----------------|
| N/A | A company with no earnings has an undefined P/E ratio. By convention, companies with losses (negative earnings) are usually treated as having an undefined P/E ratio |
| 0–10 | Either the stock is undervalued or the company's earnings are thought to be in decline. Alternatively, current earnings may be substantially above historic trends or the company may have profited from selling assets |
| 10–17 | For many companies a P/E ratio in this range may be considered fair value |
| 17–25 | Either the stock is overvalued or the company's earnings have increased since the last earnings figure was published. The stock may also be a growth stock with earnings expected to increase substantially in future |
| 25+ | A company whose shares have a very high P/E may have high expected future growth in earnings or the stock may be the subject of a speculative bubble |

**Trailing P/E** – historical P/E (actual price divided by realised/actual earnings)
**Forward P/E** – estimated P/E (using future estimates of net income)
**Relative P/E** – estimated P/E ratio relative (divided by) to the market P/E ratio

**Relative P/E Example:**

![[Pasted image 20250930113652.png]]

### 8. Cash Flow Multiples

- **CFM = Price / Cash Flow per Share**
- Conceptually similar to a P/E ratio

**Problems:**
- Cash flow is not a 'maintainable' stream (fails to allow for replenishment of asset base)
- Definition of 'cash flow' is ambiguous:
  - Earnings + depreciation & amortisation is a narrow view

**Alternative: Free Cash Flow Multiple:**
- Cash flow = earnings + D&A – capex – change in working capital
  (capex may be defined as maintenance capex)

### 9. Other 'capitalisation' style approaches

**Dividend Yields:**
- **Dividend yield = DPS / Price**
- Dividends may represent a 'maintainable' cash flow stream if companies distribute what is left over after meeting business needs
- This only happens with serendipity
- More relevant metric for REITs and Telcos

**Price / Sales:**
- **Price / Sales = Market Cap / Sales** (or Enterprise Value / Sales)
- As far away from a maintainable earnings or cash flow stream as you can get in the Income Statement
- Might help within industries as a measure of potential or for companies with negative earnings

### 10. EBITA EVM (Enterprise Value Multiple)

**Estimating Value per Share:**
- EVM = (Mkt Value of Equity + Non-Equity Claims - Other Assets) / EBITA
- Enterprise Valueᵢ = EBITAᵢ × EVM + Other Assetsᵢ
- Value per Shareᵢ = (Enterprise Valueᵢ - Non-Equity Claimsᵢ) / No. Sharesᵢ

**Notes:**
1. Enterprise Value = Value of Operating Assets + Value of Non-operating Assets = Market Value of Equity + Value of Non-equity Claims
2. 'Other assets' includes anything of value not reflected in EBITA (e.g. excess cash, investments, associates, NPV of tax losses, etc)
3. EVM can be based on the (weighted) average of a group of comparable firms and/or analyst judgement
4. EVM can be based on relatives to market or sector index, applying a premium or discount

**Other forms of EVM:**

**a. Net Enterprise Value / EBITDA:**
- Focus on cash flow
- EBITA EVM is preferred if the scale of capex variates significantly across comparable firms because EBITDA EVM is more likely to be distorted
- For companies that have to constantly replenish fixed assets, depreciation represents the future cash flow required to be reinvested into the company to maintain a certain level of operation
- Not deducting depreciation from the earnings in EBITDA EVM will result in failure of recognizing the replenish of assets in valuation

**b. Net Enterprise Value / NOPLAT:**
- Preferred over EBITA EVM when the firms in the peer group have different tax rates
- Tax matters for valuation

**c. Net Enterprise Value / EBIT:**
- May be distorted if the company charges significant amortization of acquired intangible assets (non-replenishable assets, e.g. brand names, goodwill)
- EBITA EVM is preferred if amortization is not uniform in the peer group
- Amortization of internally generated intangible assets (replenishable with definite life, e.g. software systems) should be adjusted in the EBITA as part of depreciation

---

## Notes

> Worked Example in the lecture

**Summary:**
- Price-to-earnings is "how much are you willing to overpay for rights"

**Example:**
- If a company earns $1 per each share each year and the stock price is $20, the P/E is 20
- That means that investors are basically paying 20 years' worth of profits upfront for that one share
- High P/E -> People expect big growth in the future
- Low P/E -> either it's a bargain or everyone thinks the company's doomed

---

## Examples

> [!example] P/E Ratio
> Price per share divided by earnings per share. A P/E of 20 means investors pay 20 years of earnings upfront.

> [!example] Maintainable Earnings
> Earnings adjusted for one-off items, non-cash items, and normalized to reflect sustainable performance.

> [!example] Enterprise Value Multiple
> EVM = (Market Value of Equity + Non-Equity Claims - Other Assets) / EBITA, used to value companies based on operating earnings.

---

## Formulas & Definitions

| Term | Definition |
|------|------------|
| P/E Ratio | Price per share / Earnings per share (EPS) |
| Maintainable Earnings | Earnings that could be distributed to capital providers indefinitely |
| Normalized EPS | Earnings per share adjusted for accounting items to reflect maintainable earnings |
| Diluted EPS | EPS adjusted for potential dilution from convertible securities and options |
| EVM | Enterprise Value Multiple - EVM = (Mkt Value of Equity + Non-Equity Claims - Other Assets) / EBITA |
| EBITDA | Earnings Before Interest, Taxes, Depreciation, and Amortization |
| EBITA | Earnings Before Interest, Taxes, and Amortization |
| NOPLAT | Net Operating Profit Less Adjusted Taxes |

---

## Questions & Discussion

- [ ] 

---

## Action Items

- [ ] Review lecture recording
- [ ] Complete practice questions
- [ ] Calculate P/E ratios for comparable companies
- [ ] Normalize earnings for assignment company

---

## Related Notes

- [[200 Finance/Corporate Valuation/FINM3005 - Corporate Valuation|Course Summary]]
- [[200 Finance/Corporate Valuation/Lectures/Week 06 - Lecture 1|Week 06 - Lecture 1]]

---

## References

- 
