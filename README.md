# Delivery Performance Analysis
**Identifying the high-risk sellers driving 30% of late deliveries on the Olist e-commerce platform**

![SQL](https://img.shields.io/badge/SQL-blue) ![Excel](https://img.shields.io/badge/Excel-green) ![Domain: Logistics](https://img.shields.io/badge/Domain-Logistics-orange)

---

## The Problem

Olist's logistics team had no systematic way to distinguish sellers who occasionally miss deadlines from those who are structurally unreliable. Without that distinction, any intervention would be blanket costly and inefficient.

This analysis builds a framework to surface both failure types by separating **reliability risk** (how often a seller ships late) from **operational impact** (how many total late orders they generate), so remediation can be targeted to where it matters most.

**Key finding:** The bottom 5% of sellers are responsible for 30% of all late deliveries.

---

## Business Questions

- Which sellers most frequently miss their shipping deadlines?
- Which sellers generate the largest volume of late shipments overall?
- Are poor performers consistently late, or affected by occasional disruptions?
- When a seller ships late, how severe are those delays on average?

---

## Dataset

- **Source:** [Olist Brazilian E-Commerce Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) (public, Kaggle)
- **Scope:** ~100,000 orders, 2016–2018
- **Focus:** Sellers with 50+ orders (to ensure statistically meaningful patterns)

---

## Analytical Approach

### 1. Counted orders, not products
Each customer experience counts once. This prevents large multi-item orders from inflating a seller's late shipment rate and ensures performance scores reflect reality.

### 2. Excluded low-volume sellers (<50 orders)
Removes statistical noise from accounts without enough data to draw conclusions. When we flag a seller's performance, it reflects a consistent, proven pattern not a run of bad luck.

### 3. Dual-axis segmentation
Splitting sellers across rate and volume identifies two structurally different problem types chronic underperformers vs. high-volume sellers with occasional breakdowns each requiring a different response.

### 4. Built as a repeatable framework
The methodology scales to any seller count and can be automated into a real-time dashboard, shifting the team from reactive crisis management to proactive quality control.

---

## Metrics

| Metric | Definition |
|---|---|
| Total Orders | Number of orders handled by each seller |
| Late Orders | Orders shipped after the shipping limit date |
| Late Shipment Rate (%) | Proportion of a seller's orders shipped late |
| Average Delay (days) | Mean days late, calculated only across late shipments |

---

## Key Findings

- The **bottom 5% of sellers** account for **30% of all late deliveries**
- A distinct segment of sellers shows both a high late rate **and** high late volume these are the highest-priority accounts for intervention
- Late shipment patterns are not evenly distributed; a small cohort of chronic offenders drives outsized customer dissatisfaction

---

## Recommendations

**1. Prioritise dual-risk sellers first**
Sellers appearing in the top 10 for both late shipment rate and total late volume cause the greatest combined friction. Targeting this segment first delivers the highest return on remediation effort.

**2. Deploy segmented support, not blanket policy**
- High late-rate sellers → inventory planning and lead time support
- High-volume sellers with occasional delays → dispatch process optimisation

**3. Automate monitoring at a 5% threshold**
Integrating these metrics into a live dashboard with alerts for any seller exceeding a 5% late rate shifts strategy from reactive crisis response to proactive quality control.

---

## Files

| File | Description |
|---|---|
| `seller_delivery_performance.sql` | Full query logic for calculating seller-level delivery metrics |
| `seller_delivery_performance.xlsx` | Final tables and charts used in the analysis |
| `seller_late_rate_vs_impact.png` | Side-by-side visual: reliability risk vs. operational impact |

## Skills Demonstrated

`SQL` `Data cleaning` `Metric design` `Segmentation analysis` `Business communication` `Operational recommendation`
