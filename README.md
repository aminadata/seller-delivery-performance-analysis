# Seller Delivery Performance Analysis

Tools: SQLite (DB Browser for SQLite), Microsoft Excel  
Dataset: Olist Brazilian E-Commerce (Kaggle)

## Project Overview
Late deliveries have a direct impact on customer satisfaction and trust.  
This project analyses seller delivery performance to distinguish between seller reliability risk (how often sellers are late) and operational impact (how many late deliveries sellers generate), supporting more effective operational prioritisation.

## Business Questions
- Which sellers have the highest proportion of late deliveries?
- Which sellers generate the largest number of late deliveries overall?
- Are poor performers consistently late, or affected by occasional delays?
- When deliveries are late, how severe are those delays on average?

## Dataset & Definitions
- Each record represents an order placed on the Olist marketplace  
- A delivery is defined as late when the actual delivery date exceeds the estimated delivery date  
- Analysis is performed at the seller level  
- Sellers with fewer than 50 orders are excluded to ensure reliable comparisons  

## Approach
- Order and seller data were joined using SQL  
- Seller–order pairs were deduplicated to avoid overcounting multi-item orders  
- Delivery performance metrics were calculated directly in SQL  
- Results were summarised and visualised in Excel using PivotTables and charts  
- Separate views were created to compare late delivery rate versus late delivery volume  

## Metrics Used
- Total Orders – number of orders handled by each seller  
- Late Orders – number of orders delivered after the estimated delivery date  
- Late Delivery Rate (%) – proportion of a seller’s orders delivered late  
- Average Delay (days) – average number of days late, calculated only for late deliveries  

Sellers with no late deliveries correctly show no average delay.

## Key Insights
- A small number of sellers account for a disproportionate share of late deliveries  
- Sellers with the highest late delivery rates are not always those with the greatest operational impact  
- Some sellers are consistently late across many orders, while others experience only occasional delays  
- Evaluating both rate and volume is necessary to prioritise improvement efforts effectively  

## Visual Summary
The analysis includes a side-by-side comparison of:
- Top 10 Sellers by Late Delivery Rate (reliability risk)
- Top 10 Sellers by Number of Late Deliveries (operational impact)

This comparison highlights where intervention will have the greatest customer impact.

## Business Relevance
This analysis can be used to:
- Identify underperforming sellers for operational review  
- Prioritise improvement efforts based on customer impact rather than percentages alone  
- Support evidence-based discussions with logistics and supplier teams  

## Files Included
- seller_delivery_performance.sql – SQL logic used to calculate seller-level delivery metrics  
- seller_delivery_performance.xlsx – Excel tables and charts used in the analysis  
- seller_late_rate_vs_impact.png – Side-by-side visual comparison of seller risk vs impact  

## Notes
- The analysis is descriptive, not predictive  
- The focus is on clear, explainable metrics suitable for operational decision-making  
