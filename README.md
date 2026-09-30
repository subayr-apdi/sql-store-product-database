# Store Product Database — SQL

##  Project Overview

This project is a small product database built with SQL Server.

The purpose of this project is to practice creating a database and table, inserting product data, and retrieving information using basic SQL queries.

The project focuses mainly on **filtering, sorting, and basic data retrieval**.

##  Database Structure

### `products`

| Column           | Data Type     | Description                 |
| ---------------- | ------------- | --------------------------- |
| `product_id`     | INT           | Unique ID for each product  |
| `product_name`   | VARCHAR(50)   | Name of the product         |
| `category`       | VARCHAR(50)   | Product category            |
| `price`          | DECIMAL(10,2) | Product price               |
| `stock_quantity` | INT           | Number of products in stock |
| `supplier`       | VARCHAR(50)   | Product supplier            |
| `date_added`     | DATE          | Date the product was added  |

 SQL Concepts Practiced

* `CREATE DATABASE`
* `CREATE TABLE`
* `INSERT INTO`
* `SELECT`
* `WHERE`
* Comparison operators
* `AND`
* `OR`
* `IN`
* `BETWEEN`
* `LIKE`
* `ORDER BY`
* `DISTINCT`
* `PRIMARY KEY`
* `DEFAULT` values

 Queries Practiced

The project includes queries for:

* Displaying all products
* Selecting specific columns
* Filtering products by category
* Finding products above or below a specific price
* Filtering by multiple suppliers
* Finding products with low stock
* Combining multiple conditions
* Finding values within a range
* Searching product names with `LIKE`
* Sorting products by price, stock, and name
* Finding unique categories and suppliers

 What I Learned

Through this project, I practiced how to:

1. Create a database and table.
2. Define columns and data types.
3. Insert multiple records.
4. Retrieve specific data using `SELECT`.
5. Filter data using `WHERE`.
6. Combine conditions using `AND` and `OR`.
7. Search for patterns using `LIKE`.
8. Sort query results using `ORDER BY`.
9. Remove duplicate results using `DISTINCT`.

 Technology
* SQL Server Management Studio (SSMS)
