# SQL Database Testing Project

## Overview
This project demonstrates database testing using MySQL. It simulates a real-world e-commerce backend system and validates data integrity, relationships, and business logic using SQL queries.

The project includes database schema creation, test data setup, and comprehensive validation queries written from a QA testing perspective.

---

## Tools Used
- MySQL Server
- MySQL Workbench
- SQL
- VS Code
- Git & GitHub

---

## Database Structure

### customers table
Stores customer information.

Fields:
- customer_id (Primary Key)
- name
- email

### orders table
Stores order details placed by customers.

Fields:
- order_id (Primary Key)
- customer_id (Foreign Key)
- product_name
- amount

Relationship:
customers.customer_id → orders.customer_id

---

## Testing Scope

The following database testing validations were performed:

### Data Validation
- Verify records exist in tables
- Validate correct customer and order data
- Validate email format

### Relational Integrity Testing
- Verify foreign key relationships
- Validate orders are linked to valid customers

### Business Logic Validation
- Calculate total order amount per customer
- Verify SUM, AVG, MIN, MAX calculations

### Duplicate Detection
- Identify duplicate primary keys

### Filtering and Search Testing
- Validate WHERE, IN, LIKE queries

### Sorting Validation
- Validate ORDER BY functionality

### Negative Testing
- Check for NULL values
- Check for invalid relationships

---

## Files Included

schema.sql  
Contains database and table creation scripts.

test_data.sql  
Contains test data inserted into tables.

validation_queries.sql  
Contains SQL queries used to perform database testing and validation.

---

## SQL Skills Demonstrated

- SELECT
- WHERE
- INSERT
- INNER JOIN
- GROUP BY
- ORDER BY
- IN, NOT IN
- LIKE
- COUNT, SUM, AVG, MIN, MAX
- Data Integrity Validation
- Relational Database Testing

---

## Purpose

This project demonstrates practical database testing skills required for QA and Software Testing roles. It simulates real-world backend validation scenarios performed by testers after API or UI operations.
