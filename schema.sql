-- ========================================
-- DATABASE SCHEMA CREATION SCRIPT
-- Project: SQL Database Testing Project
-- Purpose: Create database and tables to simulate
--          an e-commerce backend system.
--
-- This schema will be used to perform database testing,
-- including data validation, relational integrity testing,
-- and business logic verification.
-- ========================================


-- ========================================
-- STEP 1: CREATE DATABASE
-- Purpose: Create a dedicated database environment
-- for testing purposes.
-- ========================================

CREATE DATABASE ecommerce_db;


-- ========================================
-- STEP 2: SELECT DATABASE
-- Purpose: Set ecommerce_db as the active database
-- so all tables are created within this schema.
-- ========================================

USE ecommerce_db;


-- ========================================
-- STEP 3: CREATE CUSTOMERS TABLE
-- Purpose: Store customer information.
--
-- Column Details:
-- customer_id : Unique identifier for each customer (Primary Key)
-- name        : Customer full name
-- email       : Customer email address
--
-- Testing Relevance:
-- - Used to validate data insertion and retrieval
-- - Used to verify relationships with orders table
-- ========================================

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);


-- ========================================
-- STEP 4: CREATE ORDERS TABLE
-- Purpose: Store customer order transactions.
--
-- Column Details:
-- order_id     : Unique identifier for each order (Primary Key)
-- customer_id  : References customers.customer_id (Foreign Key)
-- product_name : Name of the product ordered
-- amount       : Order amount in currency units
--
-- Relationship:
-- One customer can have multiple orders.
--
-- Testing Relevance:
-- - Used to validate foreign key relationships
-- - Used to perform JOIN validation
-- - Used to test aggregation logic (SUM, COUNT, AVG)
-- - Used to verify business rules and data integrity
-- ========================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


-- ========================================
-- SCHEMA VERIFICATION (OPTIONAL)
-- Purpose: Confirm tables were created successfully
-- ========================================

SHOW TABLES;
