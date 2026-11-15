use ecommerce_sales;
select 'customers' as table_name,
count(*) as total_rows 
from customers 
union all 
select ' products', count(*) from products
union all 
select 'orders', count(*) from orders 
union all 
select 'order_items' , count(*) from order_items ;