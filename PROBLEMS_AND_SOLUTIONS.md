# 📚 SQL Problems and Solutions - Complete Guide

## Topic 1: SELECT Basics (20 Problems)

### Theory
- **What it is**: SELECT retrieves data from database tables
- **Purpose**: Query, filter, sort, and limit data
- **Syntax**: `SELECT columns FROM table WHERE condition ORDER BY column`

### Practice Problems

#### Problem 1: Select all products
**Description**: Retrieve all columns from the products table  
**Table**: products (product_id, product_name, category, price, stock_quantity)  
**Expected Output**: All product details  
**Solution**:
```sql
SELECT * FROM products;
```

#### Problem 2: Select specific columns
**Description**: Retrieve only product_name and price  
**Table**: products  
**Expected Output**: Two columns only  
**Solution**:
```sql
SELECT product_name, price FROM products;
```

#### Problem 3: Filter by price
**Description**: Get products where price > 100  
**Table**: products  
**Expected Output**: Products costing more than $100  
**Solution**:
```sql
SELECT * FROM products WHERE price > 100;
```

#### Problem 4: Sort results
**Description**: Retrieve all products ordered by price DESC  
**Table**: products  
**Expected Output**: Products from most to least expensive  
**Solution**:
```sql
SELECT * FROM products ORDER BY price DESC;
```

#### Problem 5: Multiple conditions
**Description**: Find Electronics with price < 500  
**Table**: products  
**Expected Output**: Affordable electronics  
**Solution**:
```sql
SELECT * FROM products 
WHERE category = 'Electronics' AND price < 500;
```

#### Problem 6: DISTINCT values
**Description**: Get unique categories from products  
**Table**: products  
**Expected Output**: List of unique categories  
**Solution**:
```sql
SELECT DISTINCT category FROM products;
```

#### Problem 7: LIMIT results
**Description**: Get top 5 most expensive products  
**Table**: products  
**Expected Output**: 5 rows  
**Solution**:
```sql
SELECT * FROM products 
ORDER BY price DESC 
LIMIT 5;
```

#### Problem 8: BETWEEN operator
**Description**: Find products with price between 50 and 200  
**Table**: products  
**Expected Output**: Mid-range products  
**Solution**:
```sql
SELECT * FROM products 
WHERE price BETWEEN 50 AND 200;
```

#### Problem 9: IN operator
**Description**: Find products in Electronics, Furniture categories  
**Table**: products  
**Expected Output**: Products from specified categories  
**Solution**:
```sql
SELECT * FROM products 
WHERE category IN ('Electronics', 'Furniture');
```

#### Problem 10: LIKE pattern matching
**Description**: Find products with 'Desk' in the name  
**Table**: products  
**Expected Output**: All desk-related products  
**Solution**:
```sql
SELECT * FROM products 
WHERE product_name LIKE '%Desk%';
```

#### Problem 11: NULL handling
**Description**: Find employees without a manager (manager_id IS NULL)  
**Table**: employees  
**Expected Output**: Top-level managers  
**Solution**:
```sql
SELECT * FROM employees WHERE manager_id IS NULL;
```

#### Problem 12: Complex WHERE
**Description**: Electronics products, price > 50, stock > 50  
**Table**: products  
**Expected Output**: Well-stocked electronics  
**Solution**:
```sql
SELECT * FROM products 
WHERE category = 'Electronics' 
  AND price > 50 
  AND stock_quantity > 50;
```

#### Problem 13: ORDER BY multiple columns
**Description**: Sort by category ASC, then price DESC  
**Table**: products  
**Expected Output**: Grouped by category, expensive first  
**Solution**:
```sql
SELECT * FROM products 
ORDER BY category ASC, price DESC;
```

#### Problem 14: CASE statement
**Description**: Categorize products as Cheap/Medium/Expensive  
**Table**: products  
**Expected Output**: Products with price category  
**Solution**:
```sql
SELECT product_name, price,
  CASE 
    WHEN price < 50 THEN 'Cheap'
    WHEN price < 200 THEN 'Medium'
    ELSE 'Expensive'
  END AS price_category
FROM products;
```

#### Problem 15: Column aliasing
**Description**: Show product_name as Name, price as Cost  
**Table**: products  
**Expected Output**: Renamed columns  
**Solution**:
```sql
SELECT 
  product_name AS Name, 
  price AS Cost 
FROM products;
```

#### Problem 16: String concatenation
**Description**: Combine first_name and last_name  
**Table**: employees  
**Expected Output**: Full name column  
**Solution**:
```sql
SELECT 
  CONCAT(first_name, ' ', last_name) AS full_name 
FROM employees;
```

#### Problem 17: Date filtering
**Description**: Find employees hired after 2021-01-01  
**Table**: employees  
**Expected Output**: Recent hires  
**Solution**:
```sql
SELECT * FROM employees 
WHERE hire_date > '2021-01-01';
```

#### Problem 18: Comparison operators
**Description**: Find employees with salary >= 60000  
**Table**: employees  
**Expected Output**: High earners  
**Solution**:
```sql
SELECT * FROM employees WHERE salary >= 60000;
```

#### Problem 19: Logical operators
**Description**: IT or Sales department employees  
**Table**: employees  
**Expected Output**: Employees from specified departments  
**Solution**:
```sql
SELECT * FROM employees 
WHERE department = 'IT' OR department = 'Sales';
```

#### Problem 20: NOT operator
**Description**: All products except Stationery  
**Table**: products  
**Expected Output**: Non-stationery products  
**Solution**:
```sql
SELECT * FROM products 
WHERE category != 'Stationery';
-- OR
SELECT * FROM products 
WHERE NOT category = 'Stationery';
```

---

## Topic 2: JOINS (20 Problems)

### Theory
- **What it is**: JOINS combine rows from two or more tables based on related columns
- **Types**: INNER, LEFT, RIGHT, FULL OUTER, SELF, CROSS JOIN
- **Purpose**: Retrieve related data across normalized tables

### Practice Problems

#### Problem 1: INNER JOIN basics
**Description**: Join employees with their department info  
**Tables**: employees, departments  
**Expected Output**: Employee with department name  
**Solution**:
```sql
SELECT e.first_name, e.last_name, e.department
FROM employees e
INNER JOIN departments d ON e.department = d.department_name;
```

#### Problem 2: JOIN with specific columns
**Description**: Get customer name and their order dates  
**Tables**: customers, orders  
**Expected Output**: Customer names with order dates  
**Solution**:
```sql
SELECT c.first_name, c.last_name, o.order_date
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;
```

#### Problem 3: Three-table JOIN
**Description**: Get order details with customer and product info  
**Tables**: orders, customers, order_items, products  
**Expected Output**: Complete order information  
**Solution**:
```sql
SELECT 
  c.first_name, 
  c.last_name,
  o.order_date, 
  p.product_name,
  oi.quantity
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id;
```

#### Problem 4: JOIN with WHERE filter
**Description**: Find IT department employees with salary > 55000  
**Tables**: employees  
**Expected Output**: High-earning IT employees  
**Solution**:
```sql
SELECT * FROM employees 
WHERE department = 'IT' AND salary > 55000;
```

#### Problem 5: JOIN with aggregation
**Description**: Count number of orders per customer  
**Tables**: customers, orders  
**Expected Output**: Customer name and order count  
**Solution**:
```sql
SELECT 
  c.first_name, 
  c.last_name, 
  COUNT(o.order_id) AS total_orders
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;
```

#### Problem 6: LEFT JOIN basics
**Description**: Get all customers and their orders (including those without orders)  
**Tables**: customers, orders  
**Expected Output**: All customers, orders NULL for non-buyers  
**Solution**:
```sql
SELECT c.first_name, c.last_name, o.order_id, o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;
```

#### Problem 7: Find customers without orders
**Description**: Identify customers who haven't placed any orders  
**Tables**: customers, orders  
**Expected Output**: Customers with no orders  
**Solution**:
```sql
SELECT c.first_name, c.last_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
```

#### Problem 8: COUNT with LEFT JOIN
**Description**: Count orders per customer (including 0 for none)  
**Tables**: customers, orders  
**Expected Output**: All customers with order count  
**Solution**:
```sql
SELECT 
  c.first_name, 
  c.last_name, 
  COUNT(o.order_id) AS order_count
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;
```

#### Problem 9: LEFT JOIN with WHERE vs ON
**Description**: Demonstrate difference between WHERE and ON filtering  
**Tables**: customers, orders  
**Expected Output**: Different results based on filter placement  
**Solution**:
```sql
-- ON filter: Filters before join (keeps all left table rows)
SELECT c.first_name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id 
  AND o.status = 'Delivered';

-- WHERE filter: Filters after join (may exclude left table rows)
SELECT c.first_name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Delivered';
```

#### Problem 10: Multiple LEFT JOINs
**Description**: Get customers with orders and order items  
**Tables**: customers, orders, order_items  
**Expected Output**: Full customer order details  
**Solution**:
```sql
SELECT c.first_name, o.order_id, oi.quantity
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN order_items oi ON o.order_id = oi.order_id;
```

#### Problem 11: RIGHT JOIN
**Description**: Get all products and their sales (if any)  
**Tables**: sales, products  
**Expected Output**: All products with sales info  
**Solution**:
```sql
SELECT p.product_name, s.sale_amount
FROM sales s
RIGHT JOIN products p ON s.product_id = p.product_id;
```

#### Problem 12: RIGHT JOIN with aggregation
**Description**: Total sales per product (including products with no sales)  
**Tables**: products, sales  
**Expected Output**: Products with total sales  
**Solution**:
```sql
SELECT 
  p.product_name, 
  COALESCE(SUM(s.sale_amount), 0) AS total_sales
FROM sales s
RIGHT JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name;
```

#### Problem 13: SELF JOIN - Employee Manager
**Description**: Show each employee with their manager's name  
**Tables**: employees (self-join)  
**Expected Output**: Employee and manager names  
**Solution**:
```sql
SELECT 
  e.first_name AS employee_name,
  m.first_name AS manager_name
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;
```

#### Problem 14: SELF JOIN - Hierarchical data
**Description**: Find all employees under a specific manager  
**Tables**: employees  
**Expected Output**: Manager and their subordinates  
**Solution**:
```sql
SELECT 
  m.first_name AS manager,
  e.first_name AS employee
FROM employees e
INNER JOIN employees m ON e.manager_id = m.employee_id
WHERE m.first_name = 'John';
```

#### Problem 15: SELF JOIN - Find pairs
**Description**: Find pairs of employees in the same department  
**Tables**: employees  
**Expected Output**: Employee pairs  
**Solution**:
```sql
SELECT 
  e1.first_name AS employee1,
  e2.first_name AS employee2,
  e1.department
FROM employees e1
INNER JOIN employees e2 
  ON e1.department = e2.department 
  AND e1.employee_id < e2.employee_id;
```

#### Problem 16: CROSS JOIN
**Description**: Generate all combinations of products and categories  
**Tables**: products, (could use DISTINCT category)  
**Expected Output**: Cartesian product  
**Solution**:
```sql
SELECT p1.product_name, p2.category
FROM products p1
CROSS JOIN (SELECT DISTINCT category FROM products) p2;
```

#### Problem 17: CROSS JOIN practical use
**Description**: Create a product-month matrix for sales planning  
**Tables**: products, (generated months)  
**Expected Output**: Product-month combinations  
**Solution**:
```sql
SELECT p.product_name, m.month_name
FROM products p
CROSS JOIN (
  SELECT 'January' AS month_name UNION ALL
  SELECT 'February' UNION ALL
  SELECT 'March'
) m;
```

#### Problem 18: FULL OUTER JOIN
**Description**: Get all employees and all departments (even unmatched)  
**Tables**: employees, departments  
**Expected Output**: All employees and all departments  
**Solution**:
```sql
-- MySQL doesn't support FULL OUTER JOIN, use UNION
SELECT e.first_name, d.department_name
FROM employees e
LEFT JOIN departments d ON e.department = d.department_name
UNION
SELECT e.first_name, d.department_name
FROM employees e
RIGHT JOIN departments d ON e.department = d.department_name;
```

#### Problem 19: Complex multi-table JOIN
**Description**: Complete sales report with all related info  
**Tables**: sales, employees, products, customers (via orders)  
**Expected Output**: Comprehensive sales data  
**Solution**:
```sql
SELECT 
  e.first_name AS salesperson,
  p.product_name,
  s.sale_date,
  s.sale_amount,
  s.region
FROM sales s
INNER JOIN employees e ON s.employee_id = e.employee_id
INNER JOIN products p ON s.product_id = p.product_id
ORDER BY s.sale_date DESC;
```

#### Problem 20: JOIN with subquery
**Description**: Join with a derived table showing total orders  
**Tables**: customers, orders  
**Expected Output**: Customers with their total order amounts  
**Solution**:
```sql
SELECT 
  c.first_name, 
  c.last_name,
  order_totals.total_amount
FROM customers c
INNER JOIN (
  SELECT customer_id, SUM(total_amount) AS total_amount
  FROM orders
  GROUP BY customer_id
) order_totals ON c.customer_id = order_totals.customer_id;
```

---

## Topic 3: Aggregate Functions (20 Problems)

### Theory
- **What it is**: Functions that perform calculations on multiple rows
- **Common Functions**: COUNT, SUM, AVG, MIN, MAX
- **GROUP BY**: Groups rows sharing a value, HAVING filters groups

### Practice Problems

#### Problem 1: COUNT all rows
**Description**: Count total number of employees  
**Table**: employees  
**Expected Output**: Single count value  
**Solution**:
```sql
SELECT COUNT(*) AS total_employees FROM employees;
```

#### Problem 2: COUNT DISTINCT
**Description**: Count unique departments  
**Table**: employees  
**Expected Output**: Number of distinct departments  
**Solution**:
```sql
SELECT COUNT(DISTINCT department) AS unique_departments 
FROM employees;
```

#### Problem 3: SUM
**Description**: Calculate total salary expenditure  
**Table**: employees  
**Expected Output**: Sum of all salaries  
**Solution**:
```sql
SELECT SUM(salary) AS total_salary_cost FROM employees;
```

#### Problem 4: AVG
**Description**: Find average product price  
**Table**: products  
**Expected Output**: Average price  
**Solution**:
```sql
SELECT AVG(price) AS average_price FROM products;
```

#### Problem 5: MIN and MAX
**Description**: Find lowest and highest salaries  
**Table**: employees  
**Expected Output**: Min and max values  
**Solution**:
```sql
SELECT 
  MIN(salary) AS lowest_salary,
  MAX(salary) AS highest_salary
FROM employees;
```

#### Problem 6: GROUP BY single column
**Description**: Count employees per department  
**Table**: employees  
**Expected Output**: Department with count  
**Solution**:
```sql
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;
```

#### Problem 7: GROUP BY multiple columns
**Description**: Count products by category and supplier  
**Table**: products  
**Expected Output**: Category, supplier, count  
**Solution**:
```sql
SELECT category, supplier, COUNT(*) AS product_count
FROM products
GROUP BY category, supplier;
```

#### Problem 8: HAVING clause
**Description**: Find departments with more than 2 employees  
**Table**: employees  
**Expected Output**: Departments with count > 2  
**Solution**:
```sql
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
```

#### Problem 9: GROUP BY with JOIN
**Description**: Total order amount per customer  
**Tables**: customers, orders  
**Expected Output**: Customer with total spent  
**Solution**:
```sql
SELECT 
  c.first_name, 
  c.last_name,
  SUM(o.total_amount) AS total_spent
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;
```

#### Problem 10: COUNT with condition
**Description**: Count orders with status 'Delivered'  
**Table**: orders  
**Expected Output**: Count of delivered orders  
**Solution**:
```sql
SELECT COUNT(*) AS delivered_orders
FROM orders
WHERE status = 'Delivered';
```

#### Problem 11: SUM with GROUP BY
**Description**: Total sales amount per region  
**Table**: sales  
**Expected Output**: Region with total amount  
**Solution**:
```sql
SELECT region, SUM(sale_amount) AS total_sales
FROM sales
GROUP BY region;
```

#### Problem 12: AVG by department
**Description**: Average salary per department  
**Table**: employees  
**Expected Output**: Department with avg salary  
**Solution**:
```sql
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
```

#### Problem 13: HAVING vs WHERE
**Description**: Demonstrate difference - filter before vs after grouping  
**Table**: employees  
**Expected Output**: Different results  
**Solution**:
```sql
-- WHERE: Filter rows before grouping
SELECT department, AVG(salary) AS avg_salary
FROM employees
WHERE salary > 50000
GROUP BY department;

-- HAVING: Filter groups after aggregation
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;
```

#### Problem 14: Multiple aggregates
**Description**: Get count, sum, avg, min, max for each department  
**Table**: employees  
**Expected Output**: Department with all stats  
**Solution**:
```sql
SELECT 
  department,
  COUNT(*) AS emp_count,
  SUM(salary) AS total_salary,
  AVG(salary) AS avg_salary,
  MIN(salary) AS min_salary,
  MAX(salary) AS max_salary
FROM employees
GROUP BY department;
```

#### Problem 15: Nested aggregates with subquery
**Description**: Find departments with avg salary above company average  
**Table**: employees  
**Expected Output**: Above-average departments  
**Solution**:
```sql
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > (SELECT AVG(salary) FROM employees);
```

#### Problem 16: ROUND with aggregates
**Description**: Average price rounded to 2 decimals by category  
**Table**: products  
**Expected Output**: Category with rounded avg  
**Solution**:
```sql
SELECT category, ROUND(AVG(price), 2) AS avg_price
FROM products
GROUP BY category;
```

#### Problem 17: GROUP BY with CASE
**Description**: Count products by price range  
**Table**: products  
**Expected Output**: Price range with count  
**Solution**:
```sql
SELECT 
  CASE 
    WHEN price < 50 THEN 'Budget'
    WHEN price < 200 THEN 'Mid-Range'
    ELSE 'Premium'
  END AS price_range,
  COUNT(*) AS product_count
FROM products
GROUP BY 
  CASE 
    WHEN price < 50 THEN 'Budget'
    WHEN price < 200 THEN 'Mid-Range'
    ELSE 'Premium'
  END;
```

#### Problem 18: HAVING with multiple conditions
**Description**: Departments with 3+ employees AND avg salary > 55000  
**Table**: employees  
**Expected Output**: Qualifying departments  
**Solution**:
```sql
SELECT department, COUNT(*) AS emp_count, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING COUNT(*) >= 3 AND AVG(salary) > 55000;
```

#### Problem 19: Aggregate with complex subquery
**Description**: Find products above their category average price  
**Table**: products  
**Expected Output**: Products exceeding category avg  
**Solution**:
```sql
SELECT p.product_name, p.category, p.price
FROM products p
WHERE p.price > (
  SELECT AVG(price)
  FROM products p2
  WHERE p2.category = p.category
);
```

#### Problem 20: Complex GROUP BY
**Description**: Monthly sales totals by region  
**Table**: sales  
**Expected Output**: Month, region, total  
**Solution**:
```sql
SELECT 
  YEAR(sale_date) AS year,
  MONTH(sale_date) AS month,
  region,
  SUM(sale_amount) AS total_sales,
  COUNT(*) AS transaction_count
FROM sales
GROUP BY YEAR(sale_date), MONTH(sale_date), region
ORDER BY year, month, region;
```

---

## 📝 Note

This document continues with similar detailed explanations for all 12 topics:
- Topic 4: Subqueries (20 problems)
- Topic 5: CTEs & Recursive CTEs (20 problems)
- Topic 6: Window Functions (20 problems)
- Topic 7: String Functions (20 problems)
- Topic 8: Date Functions (20 problems)
- Topic 9: Set Operations (20 problems)
- Topic 10: CASE Expressions (20 problems)
- Topic 11: Data Modification (20 problems)
- Topic 12: Indexes and Performance (20 problems)

**Total: 240 Problems with Solutions!**

Would you like me to continue with the remaining topics?
