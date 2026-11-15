select 
sum(revenue) as total_revenue,
sum(cost) as total_cost ,
sum(profit) as total_profit
from order_items;