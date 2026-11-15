use ecommerce_sales;
select
o.payment_method,
count(distinct o.order_id) as total_orders,
sum(oi.revenue) as total_revenue,
sum(oi.profit) as total_profit
from orders as o 
join order_items as oi
on o.order_id = oi.order_id
group by o.payment_method
order by total_orders desc ;