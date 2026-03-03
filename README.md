# Delivery Performance Analysis
## Executive Summary: Improving Logistics and Seller Reliability
This analysis provides a granular evaluation of seller delivery performance on the Olist e-commerce marketplace. By segmenting performance into Reliability Risk (late shipment frequency) and Operational Impact (total volume of late shipments), this project identifies the specific accounts driving logistical inefficiencies. The findings isolate a critical segment, the bottom 5% of sellers responsible for 30% of all late deliveries. Implementing targeted remediation for these high impact accounts offers a direct pathway to improving customer satisfaction (CSAT) scores, reducing logistics overhead, and stabilising the supply chain.

## Business Questions
Which sellers most frequently miss their shipping deadlines?

Which sellers generate the largest number of late shipments overall?

Are poor performers consistently late, or affected by occasional delays?

When sellers ship late, how severe are those delays on average?

## My Approach: Clarity and Actionable Insights
To ensure these findings were accurate and ready for leadership review, I focused on three pillars.

Data Integrity and Accuracy: I designed the analysis to count orders, not just individual products. This ensures that the performance scores are a true reflection of the customer experience, preventing single large orders from distorting the results.

Meaningful Comparisons:  I intentionally excluded "noisy" data, specifically sellers with fewer than 50 orders, to focus on statistically significant trends. This ensures that when we discuss a seller’s performance, we are looking at a clear, proven pattern of behaviour, not an occasional outlier.

Operational Scalability: This analysis is built as a repeatable framework. Whether we are monitoring 100 sellers or 10,000, this methodology can be automated to provide real time dashboards, allowing team leads to catch delivery issues before they result in negative customer reviews.

## Metrics Used
Total Orders: Number of orders handled by each seller.

Late Orders: Number of orders where the seller shipped after the shipping limit date.

Late Shipment Rate (%): Proportion of a seller’s orders shipped late.

Average Delay (days): Average number of days late, calculated only for late shipments.

## Strategic Recommendations
Based on the analysis, I have identified three actionable levers to improve overall delivery performance.

Target High Impact Offenders First: We should prioritise remediation for sellers who appear in the top 10 for both late shipment rate and total late shipment volume. These sellers cause the greatest friction for the logistics team and the highest dissatisfaction for customers.

Segmented Support Programmes: Not all delays are the same. We should implement a programme for sellers with high late rates, focusing on better inventory planning. For high volume sellers with occasional delays, we should focus on optimising their specific dispatch processes.

Automated Performance Monitoring: The metrics developed in this project should be integrated into a live dashboard. By setting automated alerts for any seller who exceeds a 5% late rate, management can intervene before small delays become systemic failures, effectively shifting the strategy from reactive crisis management to proactive quality control.

## Files Included
seller_delivery_performance.sql: The SQL logic used to calculate seller level delivery metrics.

seller_delivery_performance.xlsx: The final tables and charts used in the analysis.

seller_late_rate_vs_impact.png: The side by side visual comparison of seller risk versus impact.

#### This project focuses on clear, explainable measures suitable for operational decision making and long term growth.
