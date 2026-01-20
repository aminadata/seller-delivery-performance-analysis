# Seller Delivery Performance Analysis

**Tools:** SQLite (DB Browser for SQLite), Microsoft Excel  
**Dataset:** Olist Brazilian E-Commerce (Kaggle)

## Objective
Late deliveries have a direct impact on customer satisfaction and trust.  
This project analyses which sellers contribute most to late deliveries and how severe those delays are, to support operational decision-making.

## Key Questions
- Which sellers have the highest proportion of late deliveries?
- When deliveries are late, how severe are the delays on average?
- Are poor performers consistently late, or only occasionally?

## Approach 
- Order and seller data were combined using SQL  
- A delivery was defined as late when the actual delivery date exceeded the estimated delivery date  
- Results were summarised at seller level  
- Very low-volume sellers were excluded to avoid misleading results  
- Excel PivotTables were used to summarise and visualise the findings  

## Metrics Used
- **Total Orders** – number of orders handled by each seller  
- **Late Orders** – number of orders delivered late  
- **Late Rate (%)** – proportion of deliveries that were late  
- **Average Delay (days)** – average number of days late (calculated only for late deliveries)  

> Sellers with no late deliveries correctly show no average delay.

## Key Insights
- A small number of sellers account for a disproportionately high share of late deliveries  
- Some sellers are consistently late, rather than affected by isolated delays  
- The severity of delays varies, with some sellers only slightly late while others are delayed by several days on average  

## Business Relevance
This analysis can be used to:
- Identify underperforming sellers for operational review  
- Prioritise improvement efforts where customer impact is greatest  
- Support evidence-based discussions with logistics and supplier teams  

## Files Included
- `seller_delivery_performance.sql` – SQL logic used to calculate delivery metrics  
- `seller_delivery_performance.xlsx` – Excel PivotTables and summary chart  
- `top_10_late_sellers.png` – Visual summary of the worst-performing sellers  

## Notes
- The analysis focuses on sellers with **50 or more orders** to ensure reliable results  
- No predictive modelling was used; the focus is on **clear, explainable insights**  
