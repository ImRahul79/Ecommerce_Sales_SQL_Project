use ecommerce_sales ;
select 
o.order_id,
c.customer_name,
p.product_name,
oi.quantity,
oi.revenue,
oi.profit
from orders o 
join customers c
on o.customer_id = c.customer_id
join order_items oi
on o.order_id = oi.order_id
join products p
on oi.product_id = p.product_id
limit 10;