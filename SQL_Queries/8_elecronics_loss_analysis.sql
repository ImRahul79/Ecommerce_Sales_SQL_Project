use ecommerce_sales ;
select
p.product_name,
p.category,
sum(oi.revenue) as total_revenue,
sum(oi.profit) as total_profit
from order_items as oi
join products as p
on oi.product_id = p.product_id
where p.category = 'Electronics'
group by p.product_id , p. product_name
having sum(oi.profit) < 0 
order by total_profit asc ;
