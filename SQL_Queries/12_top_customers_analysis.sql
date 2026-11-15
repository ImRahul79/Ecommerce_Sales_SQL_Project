use ecommerce_sales ;
select
c.customer_id,
c.customer_name,
c.region,
count(distinct o.order_id) as total_orders,
sum(oi.revenue) as total_revenue,
sum(oi.profit) as total_profit
from customers as c
join orders as o
on c.customer_id = o.customer_id
join order_items as oi
on o.order_id = oi.order_id
group by 
c.customer_id,
c.customer_name,
c.region
order by total_revenue desc
limit 10 ;