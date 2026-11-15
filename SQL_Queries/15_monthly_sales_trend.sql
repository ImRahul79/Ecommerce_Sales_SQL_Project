use ecommerce_sales;
SELECT 
    DATE_FORMAT(o.order_date, '%Y - %m') AS sales_month,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.revenue) AS total_revenue,
    SUM(oi.profit) AS total_profit
FROM
    orders AS o
        JOIN
    order_items AS oi ON o.order_id = oi.order_id
GROUP BY DATE_FORMAT(o.order_date, '%Y - %m')
ORDER BY sales_month DESC;