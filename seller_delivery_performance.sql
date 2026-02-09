DROP TABLE IF EXISTS seller_delivery_performance;

CREATE TABLE seller_delivery_performance AS
WITH base AS (
    -- One row per seller per order
    SELECT
        oi.seller_id,
        oi.order_id,
        julianday(o.order_delivered_carrier_date) -
        julianday(oi.shipping_limit_date) AS delay_days
    FROM olist_order_items_dataset oi
    JOIN olist_orders_dataset o
        ON oi.order_id = o.order_id
    WHERE o.order_delivered_carrier_date IS NOT NULL
      AND oi.shipping_limit_date IS NOT NULL
),
seller_metrics AS (
    SELECT
        seller_id,
        COUNT(DISTINCT order_id) AS total_orders,
        COUNT(
            CASE WHEN delay_days > 0 THEN order_id END
        ) AS late_orders,
        ROUND(
            1.0 * COUNT(
                CASE WHEN delay_days > 0 THEN order_id END
            ) / COUNT(DISTINCT order_id),
            3
        ) AS late_rate,
        ROUND(
            AVG(CASE WHEN delay_days > 0 THEN delay_days END),
            2
        ) AS avg_delay_days
    FROM base
    GROUP BY seller_id
)
SELECT *
FROM seller_metrics
WHERE total_orders >= 50;
