create database store;

create table products(
product_id int primary key NOT NULL,
product_name varchar(50)  NOT NULL,
category varchar(50)  NOT NULL,
price decimal(10,2)  NOT NULL,
stock_quantity int  NOT NULL default 0 ,
supplier varchar(50),
date_added DATE DEFAULT GETDATE() 

);


 DELETE FROM products;
 
 insert into products(product_id,product_name,category ,
 price ,stock_quantity,supplier)
 values (1,'Nike Shoes', 'Shoes', 80.00, 20, 'Nike'),
 (2, 'Adidas Ultraboost', 'Shoes', 150.00, 18, 'Adidas'),
(3, 'Puma Running Shoes', 'Shoes', 85.50, 30, 'Puma'),
(4, 'Levi Jeans', 'Clothing', 65.00, 40, 'Levis'),
(5, 'Cotton T-Shirt', 'Clothing', 15.99, 100, 'CottonWear'),
(6, 'Leather Jacket', 'Clothing', 180.00, 12, 'FashionHub'),
(7, 'Samsung Galaxy A55', 'Electronics', 350.00, 20, 'Samsung'),
(8, 'iPhone 15', 'Electronics', 799.00, 10, 'Apple'),
(9, 'Wireless Headphones', 'Electronics', 49.99, 35, 'Sony'),
(10, 'Gaming Mouse', 'Electronics', 29.99, 50, 'Logitech'),
(11, 'Office Chair', 'Furniture', 199.00, 8, 'IKEA'),
(12, 'Wooden Desk', 'Furniture', 250.00, 6, 'IKEA'),
(13, 'School Backpack', 'Accessories', 35.00, 45, 'TravelPro'),
(14, 'Leather Wallet', 'Accessories', 25.50, 60, 'FashionHub');

 --display all products
 select * from products;

 --Display only product names and prices.

 select product_name,price from products;

 --Display product names, categories, and prices.

 select  product_name,category,price from products;

 --Display products with their stock quantities.

 select  product_name,stock_quantity from products;

 --Products with a specific category.
select product_name 
 from products
where category='shoes';

--Products costing more than a certain price.
SELECT product_name ,price from products
where price >100;

--Products costing less than a certain price.
SELECT product_name ,price from products
where price <100;

--Products with a particular supplier.
select product_name,supplier from 
products 
where supplier in ('levis','puma','apple');
--Products with stock below a certain quantity.
select product_name,stock_quantity from products
  where stock_quantity >20;
--Products in a certain category AND above a certain price.
select product_name,price ,category from products 
where category='shoes' and price >10;


--Products from one supplier OR another supplier.
select product_name,category,price from products 
where supplier='Nike' or supplier='puma';
--Products with low stock AND below a certain price.
select product_name,category from products
where stock_quantity <100 and price <700;

--Find products whose price is between two values.
select product_name ,price  from products 
where price between 20 and 100;
--Then find products whose stock quantity is between two values.
select product_name ,category ,stock_quantity from products
where stock_quantity between 10 and 20;

--Names starting with a particular letter.
select *from products
where product_name like 'pu%';
--Names ending with a particular letter.
select *from products
where product_name like '%s';
--Names containing a particular word/letter combination.
select *from products
where product_name like '%nike%';
--Find products belonging to three different categories using IN.
select product_name,category as ct  from products
where category in ('shoes','clothing','furniture');
select product_name ,price from products
order by price asc
select product_name ,price from products
order by price desc
select product_name ,stock_quantity from products
order by stock_quantity asc
select product_name ,stock_quantity from products

select *from products;
