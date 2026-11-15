USE ecommerce_sales;

create table customers(
customer_id int primary key ,
customer_name varchar(100) ,
city varchar(50) ,
region varchar(30) ,
signup_date date);

create table products (
product_id int primary key ,
product_name varchar(100) ,
category varchar(50) ,
unit_price decimal(12,2) ,
unit_cost decimal(12,2));

create table orders (
order_id int primary key ,
customer_id int ,
order_date date ,
payment_method varchar(50),
foreign key (customer_id)
references customers(customer_id)
);

create table order_items (
order_item_id int primary key ,
order_id int ,
product_id int ,
quantity int ,
unit_price decimal(12,2),
unit_cost decimal(12,2),
revenue decimal(14,2),
cost decimal(14,2),
profit decimal(14,2) ,
foreign key (order_id)
	references orders(order_id),
foreign key(product_id)
	references products(product_id)
);