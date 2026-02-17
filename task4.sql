-- Create orders table for aggregation practice
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,          -- Unique order ID
    customer VARCHAR(100),          -- Customer name
    category VARCHAR(50),           -- Product category
    amount DECIMAL(10,2),           -- Order amount
    order_date DATE                 -- Order date
);
INSERT INTO orders (customer, category, amount, order_date)
VALUES
('Sangeetha', 'Electronics', 55000.00, '2025-02-01'),
('Meena', 'Fashion', 2500.00, '2025-02-02'),
('Sathish', 'Electronics', 30000.00, '2025-02-03'),
('Arjun', 'Stationery', 500.00, '2025-02-04'),
('Meena', 'Fashion', 7000.00, '2025-02-05'),
('Sangeetha', 'Electronics', 15000.00, '2025-02-06');
-- 1. Count total orders
SELECT COUNT(*) AS total_orders FROM orders;

-- 2. Sum of all order amounts
SELECT SUM(amount) AS total_sales FROM orders;

-- 3. Average order amount
SELECT AVG(amount) AS average_order_value FROM orders;

-- 4. Group by category with total sales
SELECT category, SUM(amount) AS category_sales
FROM orders
GROUP BY category;

-- 5. Group by category with count of orders
SELECT category, COUNT(*) AS order_count
FROM orders
GROUP BY category;

-- 6. Filter groups using HAVING (only categories with sales > 20000)
SELECT category, SUM(amount) AS category_sales
FROM orders
GROUP BY category
HAVING SUM(amount) > 20000;

-- 7. Highest order amount per customer
SELECT customer, MAX(amount) AS highest_order
FROM orders
GROUP BY customer;

-- 8. Round average order amount
SELECT category, ROUND(AVG(amount), 2) AS avg_order
FROM orders
GROUP BY category;

-- 9. Count distinct customers
SELECT COUNT(DISTINCT customer) AS unique_customers FROM orders;

-- 10. Multiple grouping (customer + category)
SELECT customer, category, SUM(amount) AS total_spent
FROM orders
GROUP BY customer, category;
