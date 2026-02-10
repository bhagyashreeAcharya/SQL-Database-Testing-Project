USE ecommerce_db;

-- ========================================
-- BASIC DATA VALIDATION
-- ========================================

-- TC_DB_001: Verify customers table is not empty
SELECT COUNT(*) AS total_customers
FROM customers;

-- TC_DB_002: Verify orders table is not empty
SELECT COUNT(*) AS total_orders
FROM orders;

-- TC_DB_003: Verify specific customer exists
SELECT *
FROM customers
WHERE customer_id = 101;

-- TC_DB_004: Verify specific order exists
SELECT *
FROM orders
WHERE order_id = 1;


-- ========================================
-- DATA ACCURACY VALIDATION
-- ========================================

-- TC_DB_005: Verify customer email format
SELECT *
FROM customers
WHERE email NOT LIKE '%@gmail.com';

-- TC_DB_006: Verify order amount is greater than zero
SELECT *
FROM orders
WHERE amount <= 0;


-- ========================================
-- RELATIONAL INTEGRITY VALIDATION
-- ========================================

-- TC_DB_007: Verify all orders have valid customers
SELECT *
FROM orders
WHERE customer_id NOT IN
(SELECT customer_id FROM customers);

-- TC_DB_008: Verify customer-order relationship using JOIN
SELECT c.customer_id, c.name, o.order_id, o.product_name, o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;


-- ========================================
-- AGGREGATION VALIDATION (BUSINESS LOGIC)
-- ========================================

-- TC_DB_009: Verify total amount spent by each customer
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id;

-- TC_DB_010: Verify average order amount
SELECT AVG(amount) AS avg_order_amount
FROM orders;

-- TC_DB_011: Verify maximum order amount
SELECT MAX(amount) AS max_order_amount
FROM orders;

-- TC_DB_012: Verify minimum order amount
SELECT MIN(amount) AS min_order_amount
FROM orders;


-- ========================================
-- DUPLICATE DATA VALIDATION
-- ========================================

-- TC_DB_013: Check duplicate customers
SELECT customer_id, COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- TC_DB_014: Check duplicate orders
SELECT order_id, COUNT(*)
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;


-- ========================================
-- FILTERING VALIDATION
-- ========================================

-- TC_DB_015: Find orders above 10,000
SELECT *
FROM orders
WHERE amount > 10000;

-- TC_DB_016: Find customers whose name starts with 'A'
SELECT *
FROM customers
WHERE name LIKE 'A%';

-- TC_DB_017: Find orders for specific product
SELECT *
FROM orders
WHERE product_name = 'Laptop';

-- TC_DB_018: Find orders using IN condition
SELECT *
FROM orders
WHERE customer_id IN (101,105,110);


-- ========================================
-- SORTING VALIDATION
-- ========================================

-- TC_DB_019: Sort orders by amount descending
SELECT *
FROM orders
ORDER BY amount DESC;

-- TC_DB_020: Sort customers alphabetically
SELECT *
FROM customers
ORDER BY name ASC;


-- ========================================
-- GROUP BY VALIDATION
-- ========================================

-- TC_DB_021: Count number of orders per customer
SELECT customer_id, COUNT(*) AS order_count
FROM orders
GROUP BY customer_id;

-- TC_DB_022: Count number of orders per product
SELECT product_name, COUNT(*) AS product_count
FROM orders
GROUP BY product_name;


-- ========================================
-- NEGATIVE TESTING SCENARIOS
-- ========================================

-- TC_DB_023: Verify no NULL values in customer_id
SELECT *
FROM customers
WHERE customer_id IS NULL;

-- TC_DB_024: Verify no NULL values in order amount
SELECT *
FROM orders
WHERE amount IS NULL;

-- TC_DB_025: Verify invalid product names
SELECT *
FROM orders
WHERE product_name = '';

-- TC_DB_026: Verify orders exist for specific customer
SELECT *
FROM orders
WHERE customer_id = 999;


-- ========================================
-- BUSINESS VALIDATION USING JOIN + GROUP BY
-- ========================================

-- TC_DB_027: Find total spending per customer with name
SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- TC_DB_028: Find customers with more than 1 order
SELECT customer_id, COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;
