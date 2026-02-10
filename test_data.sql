-- ========================================
-- TEST DATA SETUP SCRIPT
-- Project: SQL Database Testing Project
-- Purpose: Insert sample customer and order data
-- This data simulates real-world e-commerce transactions
-- Used for validating database integrity, relationships,
-- and business logic during database testing.
-- ========================================

-- Select the database
USE ecommerce_db;


-- ========================================
-- INSERT CUSTOMER TEST DATA
-- Purpose: Populate customers table with valid test users
-- Each customer_id is unique (Primary Key)
-- This data will be used to validate:
-- - Data retrieval
-- - JOIN operations
-- - Referential integrity with orders table
-- ========================================

INSERT INTO customers VALUES
(101,'Rahul Sharma','rahul@gmail.com'),
(102,'Priya Singh','priya@gmail.com'),
(103,'Amit Verma','amit@gmail.com'),
(104,'Neha Gupta','neha@gmail.com'),
(105,'Arjun Mehta','arjun@gmail.com'),
(106,'Sneha Iyer','sneha@gmail.com'),
(107,'Vikram Rao','vikram@gmail.com'),
(108,'Pooja Nair','pooja@gmail.com'),
(109,'Rohit Jain','rohit@gmail.com'),
(110,'Kavya Reddy','kavya@gmail.com'),
(111,'Aditya Kapoor','aditya@gmail.com'),
(112,'Meera Joshi','meera@gmail.com'),
(113,'Karan Malhotra','karan@gmail.com'),
(114,'Ananya Das','ananya@gmail.com'),
(115,'Nikhil Bansal','nikhil@gmail.com'),
(116,'Simran Kaur','simran@gmail.com'),
(117,'Yash Patel','yash@gmail.com'),
(118,'Tanvi Kulkarni','tanvi@gmail.com'),
(119,'Manish Tiwari','manish@gmail.com'),
(120,'Riya Chatterjee','riya@gmail.com');


-- ========================================
-- INSERT ORDER TEST DATA
-- Purpose: Populate orders table with sample transactions
-- Each order references a valid customer_id (Foreign Key)
-- This data will be used to validate:
-- - Foreign key relationships
-- - JOIN queries
-- - Aggregation (SUM, AVG, COUNT)
-- - Business logic validation
-- ========================================

INSERT INTO orders VALUES
(1,101,'Shoes',2000),
(2,102,'Tshirt',800),
(3,103,'Watch',3000),
(4,104,'Jeans',1500),
(5,105,'Laptop',55000),
(6,106,'Headphones',2500),
(7,107,'Mobile',20000),
(8,108,'Bag',1800),
(9,109,'Keyboard',1200),
(10,110,'Mouse',700),
(11,111,'Monitor',12000),
(12,112,'Tablet',15000),
(13,113,'Shoes',2200),
(14,114,'Dress',2700),
(15,115,'Camera',45000),
(16,116,'Speaker',3500),
(17,117,'Watch',2800),
(18,118,'Shoes',2100),
(19,119,'Laptop',60000),
(20,120,'Mobile',18000),
(21,101,'Tshirt',900),
(22,105,'Mouse',650),
(23,110,'Keyboard',1300),
(24,115,'Headphones',2700),
(25,120,'Bag',1900);


-- ========================================
-- VERIFICATION QUERIES (OPTIONAL)
-- Purpose: Confirm test data inserted successfully
-- ========================================

-- Verify total customers inserted
SELECT COUNT(*) AS total_customers FROM customers;

-- Verify total orders inserted
SELECT COUNT(*) AS total_orders FROM orders;
