# SQL Database Testing Project

## Overview
This project demonstrates practical database testing using MySQL by simulating an e-commerce backend system. It includes schema creation, test data insertion, and validation queries to verify data integrity, table relationships, and business logic.

These validations represent backend database checks typically performed by QA engineers after API or UI operations.

---

## Tools Used
- MySQL Server
- MySQL Workbench
- SQL
- VS Code
- Git & GitHub

---

## Project Structure

```
SQL-Database-Testing-Project
│
├── schema.sql                # Creates database and tables
├── test_data.sql             # Inserts test data
├── validation_queries.sql    # Database validation queries
├── README.md
│
└── screenshots/              # Execution evidence
    ├── 01_tables_created.png
    ├── 02_customers_data.png
    ├── 03_orders_data.png
    ├── 04_join_validation.png
    └── Additional test case validation screenshots
```

---

## Database Tables

### customers
- customer_id (Primary Key)
- name
- email

### orders
- order_id (Primary Key)
- customer_id (Foreign Key)
- product_name
- amount

Relationship:
```
customers.customer_id → orders.customer_id
```

One customer can have multiple orders.

---

## How to Execute

Step 1: Clone or download this repository to your local system.

Step 2: Open MySQL Workbench and connect to your MySQL server.

---

Step 3: Run schema.sql  
Creates the ecommerce_db database and required tables.

```sql
SOURCE schema.sql;
```

---

Step 4: Run test_data.sql  
Inserts controlled test data into customers and orders tables.

```sql
SOURCE test_data.sql;
```

---

Step 5: Open validation_queries.sql  
This file contains multiple database validation test cases used to verify data integrity, relationships, and business logic.

Execute queries individually based on the validation scenario, or run the full file if needed.

```sql
SOURCE validation_queries.sql;
```

Note: SQL scripts must be executed from your local MySQL environment. GitHub is used for version control and project documentation.

---

## Testing Performed

- Data existence validation
- Data accuracy validation
- Foreign key relationship validation
- JOIN validation
- Aggregation validation (SUM, COUNT, AVG)
- Duplicate record detection
- NULL value validation
- Filtering and sorting validation

---

## How Database Testing Fits in Application Flow

In real-world applications, data flows through multiple layers:

Client (UI / Frontend) → API Server → Database

Example testing scenario:

1. User performs an action (e.g., places an order) through UI or API
2. API processes the request and stores data in the database
3. QA engineer validates database records using SQL queries
4. Tester verifies data integrity, relationships, and business logic

This project simulates this backend validation process using SQL queries.


---

## Execution Evidence

Execution screenshots demonstrating schema creation, test data insertion, and validation query results are available in the `screenshots/` folder.

These include:
- Table creation confirmation
- Customer and order data validation
- JOIN validation for relational integrity
- Individual test case validation queries


---

## Skills Demonstrated

- Database testing using SQL
- Data validation and verification
- Relational integrity testing using JOIN
- Backend data verification
- Test data preparation
- SQL query design and validation
- GitHub project version control

---

## Why This Project Matters

This project demonstrates real-world database testing practices used by QA engineers to validate backend data integrity and relationships. It reflects practical testing scenarios where database records must be verified after application operations.


