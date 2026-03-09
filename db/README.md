# Pharmacy Database Setup and Management

This document provides comprehensive instructions on how to set up and manage the pharmacy database in MySQL.

## Prerequisites
- Ensure MySQL is installed on your system.
- Basic knowledge of SQL commands.

## Step 1: Create a Database
1. Open the MySQL command line interface.
2. Log in with your MySQL user credentials.
3. Create the database:
   ```sql
   CREATE DATABASE pharmacy;
   ```

## Step 2: Create Tables
Use the SQL commands below to create the necessary tables for the pharmacy database:

### Create Products Table
```sql
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    expiration_date DATE
);
```

### Create Customers Table
```sql
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);
```

### Create Orders Table
```sql
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);
```

## Step 3: Importing Data
To import data into the tables:
1. Create a SQL dump file or use an existing CSV.
2. For CSV, use the `LOAD DATA` command:
   ```sql
   LOAD DATA INFILE 'path/to/your/file.csv'
   INTO TABLE products
   FIELDS TERMINATED BY ','
   LINES TERMINATED BY '\n'
   IGNORE 1 ROWS;
   ```
   Adjust the path and table name as necessary.
3. For SQL files, use:
   ```sql
   SOURCE path/to/your/file.sql;
   ```

## Step 4: Verifying the Installation
1. Check the tables exist:
   ```sql
   SHOW TABLES;
   ```
2. Query the tables to see if the data is populated:
   ```sql
   SELECT * FROM products;
   SELECT * FROM customers;
   SELECT * FROM orders;
   ```

## Conclusion
Following these steps will help you set up and manage your pharmacy database in MySQL. Make sure to regularly back up your database and keep it secure!