-- Recreate table to ensure clean, correct results
DROP TABLE IF EXISTS seller_delivery_performance;

CREATE TABLE seller_delivery_performance AS
WITH base AS (
    -- Deduplicate to one row per seller per order
    SELECT DISTINCT
        oi.seller_id,
        o.order_id,
        julianday(o.order_delivered_customer_date) -
        julianday(o.order_estimated_delivery_date) AS delay_days
    FROM olist_orders_dataset o
    JOIN olist_order_items_dataset oi
        ON o.order_id = oi.order_id
    WHERE o.order_delivered_customer_date IS NOT NULL
      AND o.order_estimated_delivery_date IS NOT NULL
),
seller_metrics AS (
    SELECT
        seller_id,
        COUNT(order_id) AS total_orders,
        COUNT(
            CASE
                WHEN delay_days > 0 THEN order_id
            END
        ) AS late_orders,
        ROUND(
            1.0 * COUNT(
                CASE
                    WHEN delay_days > 0 THEN order_id
                END
            ) / COUNT(order_id),
            3
        ) AS late_rate,
        ROUND(
            AVG(
                CASE
                    WHEN delay_days > 0 THEN delay_days
                END
            ),
            2
        ) AS avg_delay_days
    FROM base
    GROUP BY seller_id
)
SELECT
    seller_id,
    total_orders,
    late_orders,
    late_rate,
    avg_delay_days
FROM seller_metrics
WHERE total_orders >= 50;
