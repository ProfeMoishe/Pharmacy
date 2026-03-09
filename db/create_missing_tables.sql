-- SQL script for creating missing tables in Pharmacy Database

-- Create Medicines Table
CREATE TABLE medicines (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL
);

-- Create Customers Table
CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) NOT NULL
);

-- Create Sales Table
CREATE TABLE sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    sale_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    customer_id INT,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- Create Purchases Table
CREATE TABLE purchases (
    id INT PRIMARY KEY AUTO_INCREMENT,
    purchase_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    supplier_name VARCHAR(255) NOT NULL,
    total_cost DECIMAL(10, 2) NOT NULL
);

-- Create Inventory Table
CREATE TABLE inventory (
    id INT PRIMARY KEY AUTO_INCREMENT,
    medicine_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (medicine_id) REFERENCES medicines(id)
);

-- Create Invoices Table
CREATE TABLE invoices (
    id INT PRIMARY KEY AUTO_INCREMENT,
    invoice_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    customer_id INT,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- Create indexes for faster searches
CREATE INDEX idx_medicine_name ON medicines(name);
CREATE INDEX idx_customer_email ON customers(email);
