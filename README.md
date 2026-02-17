# EcommerceDB-Task4
SQL internship task – aggregate task – aggregate functions and grouping functions and grouping with e‑commerce with e‑commerce orders dataset.
# Task 4 – Aggregate Functions and Grouping

## 📌 Objective
Practice using SQL aggregate functions (`SUM`, `COUNT`, `AVG`, `MAX`, `MIN`) and grouping (`GROUP BY`, `HAVING`) to summarize and analyze tabular data.

## 🛠️ Tools Used
- PostgreSQL / MySQL Workbench / DB Browser for SQLite
- GitHub for submission

## 📂 Deliverables
- `task4.sql` → SQL queries with aggregate functions and grouping
- `README.md` → Explanation of steps and learnings
- Screenshots (optional) → Showing query execution results

---

## 🗄️ Table Schema (E-Commerce Example)
```sql
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,          -- Unique order ID
    customer VARCHAR(100),          -- Customer name
    category VARCHAR(50),           -- Product category
    amount DECIMAL(10,2),           -- Order amount
    order_date DATE                 -- Order date
);

