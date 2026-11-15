use ecommerce_sales ;
select
c.region,
sum(oi.revenue) as total_revenue,
sum(oi.profit) as total_profit,
count(distinct o.order_id) as total_orders
from orders as o
join customers as c
on o.customer_id = c.customer_id
join order_items as oi
on o.order_id = oi.order_id
group by c.region
order by total_revenue desc ;
