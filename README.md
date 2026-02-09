## Seller Delivery Performance Analysis

Tools: SQLite (DB Browser for SQLite), Microsoft Excel  
Dataset: Olist Brazilian E-Commerce (Kaggle)

---

## Project Overview

Late deliveries have a direct impact on customer satisfaction and trust.  
This project analyses seller delivery performance based on seller-controlled shipping behaviour, distinguishing between seller reliability risk (how often sellers ship late) and operational impact (how many late shipments sellers generate), to support more effective operational prioritisation.

---

## Business Questions

Which sellers most frequently miss their shipping deadlines?  
Which sellers generate the largest number of late shipments overall?  
Are poor performers consistently late, or affected by occasional delays?  
When sellers ship late, how severe are those delays on average?

---

## Dataset & Definitions

Each record represents a seller–order relationship on the Olist marketplace  
A shipment is defined as late when the carrier handoff date occurs after the seller’s shipping limit date  
Analysis is performed at the seller level  
Sellers with fewer than 50 orders are excluded to ensure reliable comparisons

---

## Approach

Order and order item data were joined using SQL  
Seller–order pairs were aggregated to avoid inflating metrics  
Delivery performance metrics were calculated directly in SQL using seller-level shipping dates  
Results were summarised and visualised in Excel using PivotTables and charts  
Separate views were created to compare late shipment rate versus late shipment volume

---

## Metrics Used

Total Orders – number of orders handled by each seller  
Late Orders – number of orders where the seller shipped after the shipping limit date  
Late Shipment Rate (%) – proportion of a seller’s orders shipped late  
Average Delay (days) – average number of days late, calculated only for late shipments  

Sellers with no late shipments correctly show no average delay.

---

## Key Insights

A small number of sellers account for a disproportionate share of late shipments  
Sellers with the highest late shipment rates are not always those with the greatest operational impact  
Some sellers consistently miss shipping deadlines, while others experience only occasional delays  
Evaluating both rate and volume is necessary to prioritise improvement efforts effectively

---

## Visual Summary

The analysis includes a side-by-side comparison of:

Top 10 Sellers by Late Shipment Rate (reliability risk)  
Top 10 Sellers by Number of Late Shipments (operational impact)

This comparison highlights where intervention will have the greatest customer impact.

---

## Business Relevance

This analysis can be used to:

Identify underperforming sellers for operational review  
Prioritise improvement efforts based on customer impact rather than percentages alone  
Support evidence-based discussions with logistics and supplier teams  
Monitor seller compliance with shipping commitments

---

## Files Included

seller_delivery_performance.sql – SQL logic used to calculate seller-level delivery metrics  
seller_delivery_performance.xlsx – Excel tables and charts used in the analysis  
seller_late_rate_vs_impact.png – Side-by-side visual comparison of seller risk vs impact

---

## Notes

The analysis is descriptive, not predictive  
Metrics reflect seller shipping responsibility, not downstream carrier delays  
The focus is on clear, explainable measures suitable for operational decision-making
