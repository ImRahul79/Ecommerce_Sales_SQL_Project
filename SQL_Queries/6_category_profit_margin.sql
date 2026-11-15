use ecommerce_sales ;
select
p.category,
sum(oi.revenue) as total_revenue,
sum(oi.profit) as total_profit,
round(sum(oi.profit) / sum(oi.revenue)
*100, 2) as profit_margin
from order_items as oi
join products p 
on oi.product_id = p.product_id
group by p.category
order by profit_margin desc ;