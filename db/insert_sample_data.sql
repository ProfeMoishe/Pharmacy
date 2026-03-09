-- Sample Data for Pharmacy Management System

-- Inserting sample data into medicines table
INSERT INTO medicines (id, name, category, price, stock_qty) VALUES
(1, 'Aspirin', 'Pain Reliever', 5.99, 100),
(2, 'Amoxicillin', 'Antibiotic', 12.50, 50),
(3, 'Metformin', 'Diabetes', 7.95, 75);

-- Inserting sample data into customers table
INSERT INTO customers (id, name, email, phone) VALUES
(1, 'John Doe', 'johndoe@example.com', '555-1234'),
(2, 'Jane Smith', 'janesmith@example.com', '555-5678'),
(3, 'Emily Johnson', 'emilyj@example.com', '555-8765');

-- Inserting sample data into sales table
INSERT INTO sales (id, customer_id, medicine_id, quantity, sale_date) VALUES
(1, 1, 1, 2, '2026-03-01 10:00:00'),
(2, 2, 3, 1, '2026-03-02 15:30:00'),
(3, 1, 2, 1, '2026-03-05 12:45:00');

-- Inserting sample data into purchases table
INSERT INTO purchases (id, medicine_id, quantity, purchase_date) VALUES
(1, 1, 50, '2026-03-01 08:00:00'),
(2, 2, 30, '2026-03-02 09:30:00');

-- Inserting sample data into inventory table
INSERT INTO inventory (id, medicine_id, stock_qty) VALUES
(1, 1, 100),
(2, 2, 50),
(3, 3, 75);

-- Inserting sample data into invoices table
INSERT INTO invoices (id, customer_id, total_amount, invoice_date) VALUES
(1, 1, 11.98, '2026-03-01 11:00:00'),
(2, 2, 7.95, '2026-03-02 16:00:00');