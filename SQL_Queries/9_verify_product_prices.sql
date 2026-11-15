use ecommerce_sales ;
select
p.product_name,
round( sum(oi.revenue) / sum(oi.quantity), 2
) as avg_selling_price,
round(sum(oi.cost) / sum(oi.quantity), 2 ) as avg_cost_per_unit,
sum(oi.quantity) as unit_sold,
sum(oi.profit) as total_profit
from order_items as oi
join products as p
on oi.product_id = p.product_id
where p.category = 'Electronics'
group by p.product_id , p. product_name
having sum(oi.profit) < 0 
order by total_profit asc ;
