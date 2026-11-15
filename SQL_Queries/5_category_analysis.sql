use ecommerce_sales ;
select
p.category,
sum(oi.revenue) as total_revenue,
sum(oi.profit) as total_profit
from order_items as oi
join products as p
on oi.product_id = p.product_id
group by p.category
order by total_revenue desc ;