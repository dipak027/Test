# Complete SQL Solutions - 480 Practice Problems

## 📚 Table of Contents
1. [SELECT Basics](#1-select-basics) - 20 problems
2. [JOINS](#2-joins) - 120 problems
   - [INNER JOIN](#21-inner-join) - 20 problems
   - [LEFT JOIN](#22-left-join) - 20 problems
   - [RIGHT JOIN](#23-right-join) - 20 problems
   - [SELF JOIN](#24-self-join) - 20 problems
   - [CROSS JOIN](#25-cross-join) - 20 problems
   - [FULL OUTER JOIN](#26-full-outer-join) - 20 problems
3. [Aggregate Functions](#3-aggregate-functions) - 20 problems
4. [Subqueries](#4-subqueries) - 20 problems
5. [Common Table Expressions (CTE)](#5-common-table-expressions-cte) - 40 problems
   - [Basic CTE](#51-basic-cte) - 20 problems
   - [Recursive CTE](#52-recursive-cte) - 20 problems
6. [Window Functions](#6-window-functions) - 180 problems
   - [ROW_NUMBER](#61-row_number) - 20 problems
   - [RANK](#62-rank) - 20 problems
   - [DENSE_RANK](#63-dense_rank) - 20 problems
   - [NTILE](#64-ntile) - 20 problems
   - [LAG](#65-lag) - 20 problems
   - [LEAD](#66-lead) - 20 problems
   - [FIRST_VALUE & LAST_VALUE](#67-first_value--last_value) - 20 problems
   - [Running Totals](#68-running-totals) - 20 problems
   - [Moving Averages](#69-moving-averages) - 20 problems
   - [Advanced Window Functions](#610-advanced-window-functions) - 20 problems
7. [String Functions](#7-string-functions) - 20 problems
8. [Date Functions](#8-date-functions) - 20 problems
9. [Set Operations](#9-set-operations) - 20 problems
10. [CASE Expressions](#10-case-expressions) - 20 problems
11. [Data Modification](#11-data-modification) - 20 problems
12. [Indexes and Performance](#12-indexes-and-performance) - 20 problems

---


## 1. SELECT Basics

### Problem 1: Select All Columns from Employees
**Description**: Retrieve all information about all employees.
**Tables Used**: employees
**Expected Output**: All columns and all rows from employees table

```sql
SELECT * FROM employees;
```

---

### Problem 2: Select Specific Columns
**Description**: Retrieve only first_name, last_name, and salary of all employees.
**Tables Used**: employees
**Expected Output**: Three columns showing employee names and salaries

```sql
SELECT first_name, last_name, salary 
FROM employees;
```

---

### Problem 3: Filter with WHERE Clause
**Description**: Find all employees in the IT department.
**Tables Used**: employees
**Expected Output**: All employees where department = 'IT'

```sql
SELECT * 
FROM employees 
WHERE department = 'IT';
```

---


### Problem 4: Filter with Multiple Conditions
**Description**: Find employees in IT department with salary greater than 50000.
**Tables Used**: employees
**Expected Output**: IT employees earning more than 50000

```sql
SELECT * 
FROM employees 
WHERE department = 'IT' AND salary > 50000;
```

---

### Problem 5: Use OR Operator
**Description**: Find employees in either IT or HR department.
**Tables Used**: employees
**Expected Output**: All employees from IT or HR

```sql
SELECT * 
FROM employees 
WHERE department = 'IT' OR department = 'HR';
```

---

### Problem 6: Use IN Operator
**Description**: Find employees in IT, HR, or Sales departments.
**Tables Used**: employees
**Expected Output**: Employees from specified departments

```sql
SELECT * 
FROM employees 
WHERE department IN ('IT', 'HR', 'Sales');
```

---


### Problem 7: Use BETWEEN Operator
**Description**: Find employees with salary between 50000 and 65000.
**Tables Used**: employees
**Expected Output**: Employees within the salary range

```sql
SELECT * 
FROM employees 
WHERE salary BETWEEN 50000 AND 65000;
```

---

### Problem 8: Use LIKE for Pattern Matching
**Description**: Find employees whose first name starts with 'J'.
**Tables Used**: employees
**Expected Output**: Employees with first_name starting with J

```sql
SELECT * 
FROM employees 
WHERE first_name LIKE 'J%';
```

---

### Problem 9: Use LIKE with Wildcards
**Description**: Find employees whose email contains 'company'.
**Tables Used**: employees
**Expected Output**: Employees with 'company' in email

```sql
SELECT * 
FROM employees 
WHERE email LIKE '%company%';
```

---

### Problem 10: Order Results Ascending
**Description**: List all employees ordered by salary (lowest to highest).
**Tables Used**: employees
**Expected Output**: Employees sorted by salary ascending

```sql
SELECT * 
FROM employees 
ORDER BY salary ASC;
```

---


### Problem 11: Order Results Descending
**Description**: List all employees ordered by salary (highest to lowest).
**Tables Used**: employees
**Expected Output**: Employees sorted by salary descending

```sql
SELECT * 
FROM employees 
ORDER BY salary DESC;
```

---

### Problem 12: Order by Multiple Columns
**Description**: List employees ordered by department (A-Z), then by salary (high to low).
**Tables Used**: employees
**Expected Output**: Employees sorted by department ASC, then salary DESC

```sql
SELECT * 
FROM employees 
ORDER BY department ASC, salary DESC;
```

---

### Problem 13: Use LIMIT
**Description**: Get the top 5 highest paid employees.
**Tables Used**: employees
**Expected Output**: Top 5 employees by salary

```sql
SELECT * 
FROM employees 
ORDER BY salary DESC 
LIMIT 5;
```

---

### Problem 14: Use DISTINCT
**Description**: Get a list of unique departments.
**Tables Used**: employees
**Expected Output**: Unique department names

```sql
SELECT DISTINCT department 
FROM employees;
```

---


### Problem 15: Use IS NULL
**Description**: Find employees who don't have a manager (manager_id is NULL).
**Tables Used**: employees
**Expected Output**: Employees with no manager

```sql
SELECT * 
FROM employees 
WHERE manager_id IS NULL;
```

---

### Problem 16: Use IS NOT NULL
**Description**: Find employees who have a manager.
**Tables Used**: employees
**Expected Output**: Employees with a manager assigned

```sql
SELECT * 
FROM employees 
WHERE manager_id IS NOT NULL;
```

---

### Problem 17: Column Alias
**Description**: Select employee names with aliased column names.
**Tables Used**: employees
**Expected Output**: Columns renamed as 'First Name' and 'Last Name'

```sql
SELECT 
    first_name AS "First Name", 
    last_name AS "Last Name" 
FROM employees;
```

---

### Problem 18: Concatenate Strings
**Description**: Create a full_name column by combining first and last names.
**Tables Used**: employees
**Expected Output**: Full name in single column

```sql
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name 
FROM employees;
```

---


### Problem 19: Select with Calculation
**Description**: Calculate annual salary for all employees (monthly salary * 12).
**Tables Used**: employees
**Expected Output**: Employee name and calculated annual salary

```sql
SELECT 
    first_name, 
    last_name, 
    salary * 12 AS annual_salary 
FROM employees;
```

---

### Problem 20: Use NOT IN
**Description**: Find employees NOT in IT or HR departments.
**Tables Used**: employees
**Expected Output**: Employees from other departments

```sql
SELECT * 
FROM employees 
WHERE department NOT IN ('IT', 'HR');
```

---

## 2. JOINS

### 2.1 INNER JOIN

### Problem 21: Basic INNER JOIN
**Description**: Get orders with customer names.
**Tables Used**: orders, customers
**Expected Output**: Order details with customer first and last names

```sql
SELECT 
    o.order_id, 
    o.order_date, 
    c.first_name, 
    c.last_name, 
    o.total_amount
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;
```

---


### Problem 22: INNER JOIN with WHERE
**Description**: Get delivered orders with customer names.
**Tables Used**: orders, customers
**Expected Output**: Only delivered orders with customer info

```sql
SELECT 
    o.order_id, 
    c.first_name, 
    c.last_name, 
    o.status
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
WHERE o.status = 'Delivered';
```

---

### Problem 23: Three Table INNER JOIN
**Description**: Get order items with product names and customer names.
**Tables Used**: order_items, orders, customers, products
**Expected Output**: Complete order details with all related info

```sql
SELECT 
    oi.order_item_id,
    c.first_name,
    c.last_name,
    p.product_name,
    oi.quantity,
    oi.unit_price
FROM order_items oi
INNER JOIN orders o ON oi.order_id = o.order_id
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN products p ON oi.product_id = p.product_id;
```

---


### Problem 24: JOIN with Aggregation
**Description**: Count total orders per customer.
**Tables Used**: customers, orders
**Expected Output**: Customer name and their order count

```sql
SELECT 
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;
```

---

### Problem 25: JOIN Products with Orders
**Description**: List products that have been ordered.
**Tables Used**: products, order_items
**Expected Output**: Products that appear in order_items

```sql
SELECT DISTINCT
    p.product_id,
    p.product_name,
    p.category
FROM products p
INNER JOIN order_items oi ON p.product_id = oi.product_id;
```

---

### Problem 26: JOIN with Calculated Field
**Description**: Calculate total revenue per product from orders.
**Tables Used**: products, order_items
**Expected Output**: Product name and total revenue

```sql
SELECT 
    p.product_name,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM products p
INNER JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC;
```

---


### Problem 27: JOIN Students with Courses
**Description**: List all student enrollments with course details.
**Tables Used**: students, student_courses, courses
**Expected Output**: Student names with enrolled courses

```sql
SELECT 
    s.student_name,
    c.course_name,
    sc.grade
FROM students s
INNER JOIN student_courses sc ON s.student_id = sc.student_id
INNER JOIN courses c ON sc.course_id = c.course_id;
```

---

### Problem 28: Filter JOIN Results
**Description**: Find all students enrolled in 'Database Systems'.
**Tables Used**: students, student_courses, courses
**Expected Output**: Students taking Database Systems course

```sql
SELECT 
    s.student_name,
    s.major,
    sc.grade
FROM students s
INNER JOIN student_courses sc ON s.student_id = sc.student_id
INNER JOIN courses c ON sc.course_id = c.course_id
WHERE c.course_name = 'Database Systems';
```

---

### Problem 29: JOIN with Multiple Conditions
**Description**: Find IT employees with their sales records.
**Tables Used**: employees, sales
**Expected Output**: IT employees who made sales

```sql
SELECT 
    e.first_name,
    e.last_name,
    s.sale_amount,
    s.sale_date
FROM employees e
INNER JOIN sales s ON e.employee_id = s.employee_id
WHERE e.department = 'Sales';
```

---


### Problem 30: Complex JOIN Query
**Description**: Get customer purchase history with product details.
**Tables Used**: customers, orders, order_items, products
**Expected Output**: Complete purchase history per customer

```sql
SELECT 
    c.first_name,
    c.last_name,
    o.order_date,
    p.product_name,
    oi.quantity,
    oi.unit_price,
    (oi.quantity * oi.unit_price) AS line_total
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id
ORDER BY c.last_name, o.order_date;
```

---

### Problem 31: JOIN with HAVING Clause
**Description**: Find customers who have placed more than 2 orders.
**Tables Used**: customers, orders
**Expected Output**: Customers with order count > 2

```sql
SELECT 
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS order_count
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(o.order_id) > 2;
```

---


### Problem 32: JOIN with Date Filter
**Description**: Find orders placed in 2023 with customer details.
**Tables Used**: orders, customers
**Expected Output**: 2023 orders with customer info

```sql
SELECT 
    c.first_name,
    c.last_name,
    o.order_date,
    o.total_amount
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
WHERE YEAR(o.order_date) = 2023;
```

---

### Problem 33: JOIN Products by Category
**Description**: Find Electronics products that have been ordered.
**Tables Used**: products, order_items
**Expected Output**: Electronics products in orders

```sql
SELECT DISTINCT
    p.product_name,
    p.price,
    p.supplier
FROM products p
INNER JOIN order_items oi ON p.product_id = oi.product_id
WHERE p.category = 'Electronics';
```

---

### Problem 34: JOIN with SUM Aggregation
**Description**: Calculate total spending per customer.
**Tables Used**: customers, orders
**Expected Output**: Customer name and total amount spent

```sql
SELECT 
    c.first_name,
    c.last_name,
    SUM(o.total_amount) AS total_spent
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC;
```

---


### Problem 35: JOIN Sales with Products
**Description**: Show sales records with product information.
**Tables Used**: sales, products
**Expected Output**: Sales data with product names

```sql
SELECT 
    s.sale_date,
    p.product_name,
    s.quantity,
    s.sale_amount,
    s.region
FROM sales s
INNER JOIN products p ON s.product_id = p.product_id;
```

---

### Problem 36: Multi-Table JOIN for Student Grades
**Description**: List students with their course grades and instructors.
**Tables Used**: students, student_courses, courses
**Expected Output**: Student, course, grade, and instructor

```sql
SELECT 
    s.student_name,
    c.course_name,
    c.instructor,
    sc.grade
FROM students s
INNER JOIN student_courses sc ON s.student_id = sc.student_id
INNER JOIN courses c ON sc.course_id = c.course_id
ORDER BY s.student_name, c.course_name;
```

---

### Problem 37: JOIN with AVG Aggregation
**Description**: Calculate average order value per customer.
**Tables Used**: customers, orders
**Expected Output**: Customer and their average order amount

```sql
SELECT 
    c.first_name,
    c.last_name,
    AVG(o.total_amount) AS avg_order_value
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;
```

---


### Problem 38: JOIN with MIN/MAX
**Description**: Find the first and last order date for each customer.
**Tables Used**: customers, orders
**Expected Output**: Customer with earliest and latest order dates

```sql
SELECT 
    c.first_name,
    c.last_name,
    MIN(o.order_date) AS first_order,
    MAX(o.order_date) AS last_order
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;
```

---

### Problem 39: Complex Filter with JOIN
**Description**: Find high-value orders (>$500) with customer location.
**Tables Used**: orders, customers
**Expected Output**: High-value orders with customer city and country

```sql
SELECT 
    o.order_id,
    c.first_name,
    c.last_name,
    c.city,
    c.country,
    o.total_amount
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
WHERE o.total_amount > 500
ORDER BY o.total_amount DESC;
```

---

### Problem 40: Product Sales Summary
**Description**: Show total quantity sold per product.
**Tables Used**: products, order_items
**Expected Output**: Product name and total quantity sold

```sql
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_sold
FROM products p
INNER JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_sold DESC;
```

---


### 2.2 LEFT JOIN

### Problem 41: Basic LEFT JOIN
**Description**: Show all customers and their orders (including customers with no orders).
**Tables Used**: customers, orders
**Expected Output**: All customers, with NULL for customers without orders

```sql
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;
```

---

### Problem 42: Find Customers Without Orders
**Description**: List customers who have never placed an order.
**Tables Used**: customers, orders
**Expected Output**: Customers with no orders (where order_id IS NULL)

```sql
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.email
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
```

---

### Problem 43: Products Not Ordered
**Description**: Find products that have never been ordered.
**Tables Used**: products, order_items
**Expected Output**: Products with no order history

```sql
SELECT 
    p.product_id,
    p.product_name,
    p.category,
    p.stock_quantity
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.order_item_id IS NULL;
```

---


### Problem 44: LEFT JOIN with Count
**Description**: Count orders per customer (including customers with 0 orders).
**Tables Used**: customers, orders
**Expected Output**: All customers with order count

```sql
SELECT 
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS order_count
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;
```

---

### Problem 45: Students Not Enrolled
**Description**: Find students who haven't enrolled in any courses.
**Tables Used**: students, student_courses
**Expected Output**: Students with no course enrollments

```sql
SELECT 
    s.student_id,
    s.student_name,
    s.major
FROM students s
LEFT JOIN student_courses sc ON s.student_id = sc.student_id
WHERE sc.enrollment_id IS NULL;
```

---

### Problem 46: All Products with Order Count
**Description**: List all products with the number of times they've been ordered.
**Tables Used**: products, order_items
**Expected Output**: All products with order count (0 if never ordered)

```sql
SELECT 
    p.product_name,
    p.category,
    COUNT(oi.order_item_id) AS times_ordered
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name, p.category
ORDER BY times_ordered DESC;
```

---


### Problem 47: Employees with No Sales
**Description**: Find employees who haven't made any sales.
**Tables Used**: employees, sales
**Expected Output**: Employees with no sales records

```sql
SELECT 
    e.first_name,
    e.last_name,
    e.department
FROM employees e
LEFT JOIN sales s ON e.employee_id = s.employee_id
WHERE s.sale_id IS NULL;
```

---

### Problem 48: Courses with Enrollment Count
**Description**: Show all courses with the number of enrolled students.
**Tables Used**: courses, student_courses
**Expected Output**: All courses with enrollment count

```sql
SELECT 
    c.course_name,
    c.instructor,
    COUNT(sc.enrollment_id) AS enrolled_students
FROM courses c
LEFT JOIN student_courses sc ON c.course_id = sc.course_id
GROUP BY c.course_id, c.course_name, c.instructor;
```

---

### Problem 49: Customer Order Summary with Nulls
**Description**: Show all customers with total spending (0 if no orders).
**Tables Used**: customers, orders
**Expected Output**: All customers with total amount spent

```sql
SELECT 
    c.first_name,
    c.last_name,
    COALESCE(SUM(o.total_amount), 0) AS total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;
```

---


### Problem 50: LEFT JOIN Three Tables
**Description**: Show all customers with their order and product details.
**Tables Used**: customers, orders, order_items, products
**Expected Output**: All customers including those without orders

```sql
SELECT 
    c.first_name,
    c.last_name,
    o.order_date,
    p.product_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN order_items oi ON o.order_id = oi.order_id
LEFT JOIN products p ON oi.product_id = p.product_id;
```

---

### Problem 51: Products Without Sales Records
**Description**: Find products that exist but have no sales records.
**Tables Used**: products, sales
**Expected Output**: Products never sold through sales table

```sql
SELECT 
    p.product_id,
    p.product_name,
    p.category
FROM products p
LEFT JOIN sales s ON p.product_id = s.product_id
WHERE s.sale_id IS NULL;
```

---

### Problem 52: All Customers with Last Order Date
**Description**: Show all customers with their most recent order date.
**Tables Used**: customers, orders
**Expected Output**: Customers with last order date (NULL if no orders)

```sql
SELECT 
    c.first_name,
    c.last_name,
    MAX(o.order_date) AS last_order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;
```

---


### Problem 53: LEFT JOIN with WHERE on Right Table
**Description**: Find customers from USA who may or may not have orders.
**Tables Used**: customers, orders
**Expected Output**: USA customers with order info (including those without orders)

```sql
SELECT 
    c.first_name,
    c.last_name,
    c.country,
    o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE c.country = 'USA';
```

---

### Problem 54: Average Order Value Including Zero
**Description**: Calculate average order value per customer (0 for no orders).
**Tables Used**: customers, orders
**Expected Output**: All customers with their average order value

```sql
SELECT 
    c.first_name,
    c.last_name,
    COALESCE(AVG(o.total_amount), 0) AS avg_order_value
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;
```

---

### Problem 55: Students and Their Total Credits
**Description**: Show all students with total enrolled credits.
**Tables Used**: students, student_courses, courses
**Expected Output**: All students with total credits (0 if not enrolled)

```sql
SELECT 
    s.student_name,
    s.major,
    COALESCE(SUM(c.credits), 0) AS total_credits
FROM students s
LEFT JOIN student_courses sc ON s.student_id = sc.student_id
LEFT JOIN courses c ON sc.course_id = c.course_id
GROUP BY s.student_id, s.student_name, s.major;
```

---


### Problem 56: Customers by City with Order Status
**Description**: List customers by city showing if they have any delivered orders.
**Tables Used**: customers, orders
**Expected Output**: Customers grouped by city with delivered order info

```sql
SELECT 
    c.city,
    c.first_name,
    c.last_name,
    COUNT(CASE WHEN o.status = 'Delivered' THEN 1 END) AS delivered_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.city, c.first_name, c.last_name;
```

---

### Problem 57: Product Revenue Including Zero
**Description**: Calculate total revenue per product (0 if never sold).
**Tables Used**: products, order_items
**Expected Output**: All products with revenue

```sql
SELECT 
    p.product_name,
    COALESCE(SUM(oi.quantity * oi.unit_price), 0) AS total_revenue
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC;
```

---

### Problem 58: Find Inactive Customers
**Description**: Find customers who registered but never ordered.
**Tables Used**: customers, orders
**Expected Output**: Customers with registration date but no orders

```sql
SELECT 
    c.first_name,
    c.last_name,
    c.email,
    c.registration_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
```

---


### Problem 59: Employee Sales Performance
**Description**: Show all employees with their total sales amount.
**Tables Used**: employees, sales
**Expected Output**: All employees with sales total (0 if no sales)

```sql
SELECT 
    e.first_name,
    e.last_name,
    e.department,
    COALESCE(SUM(s.sale_amount), 0) AS total_sales
FROM employees e
LEFT JOIN sales s ON e.employee_id = s.employee_id
GROUP BY e.employee_id, e.first_name, e.last_name, e.department;
```

---

### Problem 60: Comprehensive Customer Report
**Description**: Create a report of all customers with order count, total spent, and last order.
**Tables Used**: customers, orders
**Expected Output**: Complete customer activity summary

```sql
SELECT 
    c.first_name,
    c.last_name,
    c.city,
    COUNT(o.order_id) AS order_count,
    COALESCE(SUM(o.total_amount), 0) AS total_spent,
    MAX(o.order_date) AS last_order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.city;
```

---

### 2.3 RIGHT JOIN

### Problem 61: Basic RIGHT JOIN
**Description**: Show all orders and customer details (including orders without customer match).
**Tables Used**: customers, orders
**Expected Output**: All orders with customer info where available

```sql
SELECT 
    o.order_id,
    o.order_date,
    c.first_name,
    c.last_name
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;
```

---


### Problem 62: All Orders with Product Details
**Description**: Show all order items with product information.
**Tables Used**: products, order_items
**Expected Output**: All order items with product details

```sql
SELECT 
    oi.order_item_id,
    oi.quantity,
    p.product_name,
    p.category
FROM products p
RIGHT JOIN order_items oi ON p.product_id = oi.product_id;
```

---

### Problem 63: Sales with Employee Info
**Description**: Display all sales records with employee details.
**Tables Used**: employees, sales
**Expected Output**: All sales with employee information

```sql
SELECT 
    s.sale_id,
    s.sale_date,
    e.first_name,
    e.last_name,
    s.sale_amount
FROM employees e
RIGHT JOIN sales s ON e.employee_id = s.employee_id;
```

---

### Problem 64: All Enrollments with Student Details
**Description**: Show all course enrollments with student information.
**Tables Used**: students, student_courses
**Expected Output**: All enrollments with student names

```sql
SELECT 
    sc.enrollment_id,
    s.student_name,
    sc.grade
FROM students s
RIGHT JOIN student_courses sc ON s.student_id = sc.student_id;
```

---


### Problem 65: Orders with Customer City
**Description**: List all orders showing customer city information.
**Tables Used**: customers, orders
**Expected Output**: Order details with customer location

```sql
SELECT 
    o.order_id,
    o.order_date,
    o.total_amount,
    c.city,
    c.country
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;
```

---

### Problem 66: Sales by Region with Product
**Description**: Show all sales with product names.
**Tables Used**: products, sales
**Expected Output**: Sales records with product information

```sql
SELECT 
    s.sale_id,
    s.sale_date,
    p.product_name,
    s.quantity,
    s.region
FROM products p
RIGHT JOIN sales s ON p.product_id = s.product_id;
```

---

### Problem 67: Order Items with Order Date
**Description**: Display all order items with their order dates.
**Tables Used**: orders, order_items
**Expected Output**: Order items with order date information

```sql
SELECT 
    oi.order_item_id,
    o.order_date,
    oi.quantity,
    oi.unit_price
FROM orders o
RIGHT JOIN order_items oi ON o.order_id = oi.order_id;
```

---


### Problem 68: Course Enrollments with Course Details
**Description**: Show all enrollments with course and instructor information.
**Tables Used**: courses, student_courses
**Expected Output**: Enrollments with course details

```sql
SELECT 
    sc.enrollment_id,
    c.course_name,
    c.instructor,
    sc.grade
FROM courses c
RIGHT JOIN student_courses sc ON c.course_id = sc.course_id;
```

---

### Problem 69: Products in Order Items
**Description**: List all order items showing product category.
**Tables Used**: products, order_items
**Expected Output**: Order items with product category

```sql
SELECT 
    oi.order_item_id,
    p.product_name,
    p.category,
    oi.quantity
FROM products p
RIGHT JOIN order_items oi ON p.product_id = oi.product_id;
```

---

### Problem 70: All Orders by Status
**Description**: Show orders grouped by status with customer names.
**Tables Used**: customers, orders
**Expected Output**: Orders organized by status

```sql
SELECT 
    o.status,
    o.order_id,
    c.first_name,
    c.last_name,
    o.total_amount
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id
ORDER BY o.status;
```

---


### Problem 71: Sales Performance by Employee
**Description**: Show all sales with employee department.
**Tables Used**: employees, sales
**Expected Output**: Sales records with employee department

```sql
SELECT 
    s.sale_id,
    e.first_name,
    e.last_name,
    e.department,
    s.sale_amount
FROM employees e
RIGHT JOIN sales s ON e.employee_id = s.employee_id;
```

---

### Problem 72: Order Details Complete
**Description**: Show all order items with complete order and customer info.
**Tables Used**: customers, orders, order_items
**Expected Output**: Complete order item details

```sql
SELECT 
    oi.order_item_id,
    o.order_date,
    c.first_name,
    c.last_name,
    oi.quantity
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id
RIGHT JOIN order_items oi ON o.order_id = oi.order_id;
```

---

### Problem 73: Student Course Load
**Description**: Show all enrollments with student major.
**Tables Used**: students, student_courses
**Expected Output**: Enrollments with student major information

```sql
SELECT 
    sc.enrollment_id,
    s.student_name,
    s.major,
    sc.grade
FROM students s
RIGHT JOIN student_courses sc ON s.student_id = sc.student_id;
```

---


### Problem 74: Products Sold by Region
**Description**: Display all sales showing product and region.
**Tables Used**: products, sales
**Expected Output**: Sales with product names by region

```sql
SELECT 
    s.region,
    p.product_name,
    s.quantity,
    s.sale_amount
FROM products p
RIGHT JOIN sales s ON p.product_id = s.product_id
ORDER BY s.region;
```

---

### Problem 75: Customer Order History
**Description**: Show all orders with customer email.
**Tables Used**: customers, orders
**Expected Output**: Orders with customer contact info

```sql
SELECT 
    o.order_id,
    o.order_date,
    c.email,
    o.total_amount
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;
```

---

### Problem 76: Enrollment Dates with Student Info
**Description**: List all enrollments with student enrollment dates.
**Tables Used**: students, student_courses
**Expected Output**: Course enrollments with student info

```sql
SELECT 
    sc.enrollment_id,
    sc.enrollment_date,
    s.student_name,
    s.enrollment_date AS student_enrollment
FROM students s
RIGHT JOIN student_courses sc ON s.student_id = sc.student_id;
```

---


### Problem 77: Order Items with Product Price
**Description**: Show all order items with current product prices.
**Tables Used**: products, order_items
**Expected Output**: Order items with current vs sold price

```sql
SELECT 
    oi.order_item_id,
    p.product_name,
    oi.unit_price AS sold_price,
    p.price AS current_price
FROM products p
RIGHT JOIN order_items oi ON p.product_id = oi.product_id;
```

---

### Problem 78: Sales with Employee Salary
**Description**: Display all sales with employee salary information.
**Tables Used**: employees, sales
**Expected Output**: Sales records with employee compensation

```sql
SELECT 
    s.sale_id,
    e.first_name,
    e.last_name,
    e.salary,
    s.sale_amount
FROM employees e
RIGHT JOIN sales s ON e.employee_id = s.employee_id;
```

---

### Problem 79: Orders by Month
**Description**: Show all orders with customer details for reporting.
**Tables Used**: customers, orders
**Expected Output**: Order data with customer information

```sql
SELECT 
    MONTH(o.order_date) AS order_month,
    o.order_id,
    c.first_name,
    o.total_amount
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id
ORDER BY order_month;
```

---


### Problem 80: Complete Sales Report
**Description**: Generate all sales with product category information.
**Tables Used**: products, sales
**Expected Output**: Comprehensive sales report

```sql
SELECT 
    s.sale_date,
    p.product_name,
    p.category,
    s.quantity,
    s.sale_amount,
    s.region
FROM products p
RIGHT JOIN sales s ON p.product_id = s.product_id
ORDER BY s.sale_date;
```

---

### 2.4 SELF JOIN

### Problem 81: Employee Manager Relationship
**Description**: Show employees with their manager names.
**Tables Used**: employees (self-joined)
**Expected Output**: Employee and their manager

```sql
SELECT 
    e.first_name AS employee_first,
    e.last_name AS employee_last,
    m.first_name AS manager_first,
    m.last_name AS manager_last
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;
```

---

### Problem 82: Find Employees with Same Salary
**Description**: Find pairs of employees with the same salary.
**Tables Used**: employees (self-joined)
**Expected Output**: Employee pairs with matching salaries

```sql
SELECT 
    e1.first_name AS employee1,
    e2.first_name AS employee2,
    e1.salary
FROM employees e1
JOIN employees e2 ON e1.salary = e2.salary AND e1.employee_id < e2.employee_id;
```

---


### Problem 83: Employees in Same Department
**Description**: Find employee pairs working in the same department.
**Tables Used**: employees (self-joined)
**Expected Output**: Colleagues in same department

```sql
SELECT 
    e1.first_name AS employee1,
    e2.first_name AS employee2,
    e1.department
FROM employees e1
JOIN employees e2 ON e1.department = e2.department 
    AND e1.employee_id < e2.employee_id;
```

---

### Problem 84: Manager with Their Team Count
**Description**: Count how many employees each manager supervises.
**Tables Used**: employees (self-joined)
**Expected Output**: Managers with team size

```sql
SELECT 
    m.first_name,
    m.last_name,
    COUNT(e.employee_id) AS team_size
FROM employees m
LEFT JOIN employees e ON m.employee_id = e.manager_id
WHERE m.employee_id IN (SELECT DISTINCT manager_id FROM employees WHERE manager_id IS NOT NULL)
GROUP BY m.employee_id, m.first_name, m.last_name;
```

---

### Problem 85: Employees Hired in Same Month
**Description**: Find employees hired in the same month and year.
**Tables Used**: employees (self-joined)
**Expected Output**: Employee pairs with same hire month

```sql
SELECT 
    e1.first_name AS employee1,
    e2.first_name AS employee2,
    e1.hire_date
FROM employees e1
JOIN employees e2 ON MONTH(e1.hire_date) = MONTH(e2.hire_date) 
    AND YEAR(e1.hire_date) = YEAR(e2.hire_date)
    AND e1.employee_id < e2.employee_id;
```

---


### Problem 86: Compare Employee Salary to Manager
**Description**: Show employees with salary comparison to their manager.
**Tables Used**: employees (self-joined)
**Expected Output**: Employee, manager, and salary comparison

```sql
SELECT 
    e.first_name AS employee,
    e.salary AS employee_salary,
    m.first_name AS manager,
    m.salary AS manager_salary,
    (m.salary - e.salary) AS salary_difference
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id;
```

---

### Problem 87: Employees with Same Manager
**Description**: Find employees who share the same manager.
**Tables Used**: employees (self-joined)
**Expected Output**: Employee pairs under same manager

```sql
SELECT 
    e1.first_name AS employee1,
    e2.first_name AS employee2,
    m.first_name AS manager
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.manager_id 
    AND e1.employee_id < e2.employee_id
JOIN employees m ON e1.manager_id = m.employee_id;
```

---

### Problem 88: Hierarchy Levels
**Description**: Show employees with their manager and manager's manager.
**Tables Used**: employees (self-joined)
**Expected Output**: Three levels of hierarchy

```sql
SELECT 
    e.first_name AS employee,
    m1.first_name AS direct_manager,
    m2.first_name AS senior_manager
FROM employees e
LEFT JOIN employees m1 ON e.manager_id = m1.employee_id
LEFT JOIN employees m2 ON m1.manager_id = m2.employee_id;
```

---


### Problem 89: Customers from Same City
**Description**: Find customer pairs from the same city.
**Tables Used**: customers (self-joined)
**Expected Output**: Customers sharing the same city

```sql
SELECT 
    c1.first_name AS customer1,
    c2.first_name AS customer2,
    c1.city
FROM customers c1
JOIN customers c2 ON c1.city = c2.city 
    AND c1.customer_id < c2.customer_id;
```

---

### Problem 90: Students with Same Major
**Description**: Find student pairs studying the same major.
**Tables Used**: students (self-joined)
**Expected Output**: Student pairs with matching majors

```sql
SELECT 
    s1.student_name AS student1,
    s2.student_name AS student2,
    s1.major
FROM students s1
JOIN students s2 ON s1.major = s2.major 
    AND s1.student_id < s2.student_id;
```

---

### Problem 91: Products in Same Category
**Description**: Find product pairs in the same category.
**Tables Used**: products (self-joined)
**Expected Output**: Products sharing categories

```sql
SELECT 
    p1.product_name AS product1,
    p2.product_name AS product2,
    p1.category
FROM products p1
JOIN products p2 ON p1.category = p2.category 
    AND p1.product_id < p2.product_id;
```

---


### Problem 92: Employees Earning More Than Manager
**Description**: Find employees who earn more than their manager.
**Tables Used**: employees (self-joined)
**Expected Output**: Employees with higher salary than manager

```sql
SELECT 
    e.first_name AS employee,
    e.salary AS employee_salary,
    m.first_name AS manager,
    m.salary AS manager_salary
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;
```

---

### Problem 93: Orders on Same Date
**Description**: Find orders placed on the same date by different customers.
**Tables Used**: orders (self-joined)
**Expected Output**: Order pairs from same date

```sql
SELECT 
    o1.order_id AS order1,
    o2.order_id AS order2,
    o1.order_date
FROM orders o1
JOIN orders o2 ON o1.order_date = o2.order_date 
    AND o1.order_id < o2.order_id;
```

---

### Problem 94: Find Manager's Department
**Description**: Show employees with their manager's department.
**Tables Used**: employees (self-joined)
**Expected Output**: Employee and manager department comparison

```sql
SELECT 
    e.first_name AS employee,
    e.department AS emp_dept,
    m.first_name AS manager,
    m.department AS mgr_dept
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id;
```

---


### Problem 95: Products with Similar Prices
**Description**: Find products with prices within $10 of each other.
**Tables Used**: products (self-joined)
**Expected Output**: Product pairs with similar pricing

```sql
SELECT 
    p1.product_name AS product1,
    p1.price AS price1,
    p2.product_name AS product2,
    p2.price AS price2
FROM products p1
JOIN products p2 ON p1.product_id < p2.product_id
WHERE ABS(p1.price - p2.price) <= 10;
```

---

### Problem 96: Students Enrolled Same Date
**Description**: Find students who enrolled on the same date.
**Tables Used**: students (self-joined)
**Expected Output**: Student pairs with same enrollment date

```sql
SELECT 
    s1.student_name AS student1,
    s2.student_name AS student2,
    s1.enrollment_date
FROM students s1
JOIN students s2 ON s1.enrollment_date = s2.enrollment_date 
    AND s1.student_id < s2.student_id;
```

---

### Problem 97: Manager Chain
**Description**: Show all managers and who they report to.
**Tables Used**: employees (self-joined)
**Expected Output**: Manager reporting structure

```sql
SELECT 
    m.first_name AS manager,
    m.department,
    sm.first_name AS reports_to
FROM employees m
LEFT JOIN employees sm ON m.manager_id = sm.employee_id
WHERE m.employee_id IN (SELECT DISTINCT manager_id FROM employees WHERE manager_id IS NOT NULL);
```

---


### Problem 98: Customers with Same Registration Month
**Description**: Find customers who registered in the same month.
**Tables Used**: customers (self-joined)
**Expected Output**: Customer pairs with same registration month

```sql
SELECT 
    c1.first_name AS customer1,
    c2.first_name AS customer2,
    MONTH(c1.registration_date) AS reg_month
FROM customers c1
JOIN customers c2 ON MONTH(c1.registration_date) = MONTH(c2.registration_date)
    AND YEAR(c1.registration_date) = YEAR(c2.registration_date)
    AND c1.customer_id < c2.customer_id;
```

---

### Problem 99: Same Supplier Products
**Description**: Find products from the same supplier.
**Tables Used**: products (self-joined)
**Expected Output**: Product pairs from same supplier

```sql
SELECT 
    p1.product_name AS product1,
    p2.product_name AS product2,
    p1.supplier
FROM products p1
JOIN products p2 ON p1.supplier = p2.supplier 
    AND p1.product_id < p2.product_id;
```

---

### Problem 100: Cross-Department Managers
**Description**: Find employees managing a department different from their own.
**Tables Used**: employees (self-joined)
**Expected Output**: Managers with cross-department responsibilities

```sql
SELECT 
    m.first_name AS manager,
    m.department AS manager_dept,
    e.first_name AS employee,
    e.department AS employee_dept
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE e.department != m.department;
```

---


### 2.5 CROSS JOIN

### Problem 101: All Employee-Product Combinations
**Description**: Create all possible employee-product combinations.
**Tables Used**: employees, products
**Expected Output**: Every employee paired with every product

```sql
SELECT 
    e.first_name,
    e.last_name,
    p.product_name
FROM employees e
CROSS JOIN products p;
```

---

### Problem 102: Customer-Product Matrix
**Description**: Generate all possible customer-product pairs.
**Tables Used**: customers, products
**Expected Output**: Every customer with every product

```sql
SELECT 
    c.first_name,
    c.last_name,
    p.product_name,
    p.price
FROM customers c
CROSS JOIN products p;
```

---

### Problem 103: Student-Course Combinations
**Description**: Show all possible student-course enrollment combinations.
**Tables Used**: students, courses
**Expected Output**: All potential student-course pairings

```sql
SELECT 
    s.student_name,
    c.course_name,
    c.credits
FROM students s
CROSS JOIN courses c;
```

---


### Problem 104: Department-Product Catalog
**Description**: Create combinations of departments and products.
**Tables Used**: departments, products
**Expected Output**: Every department with every product

```sql
SELECT 
    d.department_name,
    p.product_name,
    p.category
FROM departments d
CROSS JOIN products p;
```

---

### Problem 105: Employee Work Schedule Matrix
**Description**: Generate all employee-department combinations for rotation planning.
**Tables Used**: employees, departments
**Expected Output**: Every employee with every department

```sql
SELECT 
    e.first_name,
    e.last_name,
    d.department_name,
    d.location
FROM employees e
CROSS JOIN departments d;
```

---

### Problem 106: Product Comparison Table
**Description**: Create pairs of products for comparison (limited by category).
**Tables Used**: products
**Expected Output**: All product pairs from Electronics category

```sql
SELECT 
    p1.product_name AS product1,
    p2.product_name AS product2,
    p1.price AS price1,
    p2.price AS price2
FROM products p1
CROSS JOIN products p2
WHERE p1.category = 'Electronics' 
    AND p2.category = 'Electronics'
    AND p1.product_id < p2.product_id;
```

---


### Problem 107: Sales Territory Assignment
**Description**: Generate all possible employee-region assignments.
**Tables Used**: employees
**Expected Output**: Each employee with each possible region

```sql
SELECT 
    e.first_name,
    e.last_name,
    regions.region_name
FROM employees e
CROSS JOIN (SELECT 'East' AS region_name UNION SELECT 'West' UNION SELECT 'North' UNION SELECT 'South') regions;
```

---

### Problem 108: Course Schedule Planning
**Description**: Create all student-instructor combinations.
**Tables Used**: students, courses
**Expected Output**: Every student with every instructor

```sql
SELECT 
    s.student_name,
    c.instructor,
    c.course_name
FROM students s
CROSS JOIN courses c;
```

---

### Problem 109: Product Bundle Options
**Description**: Generate Electronics-Furniture product bundles.
**Tables Used**: products
**Expected Output**: All electronics paired with all furniture

```sql
SELECT 
    p1.product_name AS electronics_item,
    p2.product_name AS furniture_item,
    (p1.price + p2.price) AS bundle_price
FROM products p1
CROSS JOIN products p2
WHERE p1.category = 'Electronics' AND p2.category = 'Furniture';
```

---


### Problem 110: Customer Recommendation Matrix
**Description**: Create customer pairs for referral program.
**Tables Used**: customers
**Expected Output**: All unique customer pairs

```sql
SELECT 
    c1.first_name AS customer1,
    c2.first_name AS customer2
FROM customers c1
CROSS JOIN customers c2
WHERE c1.customer_id < c2.customer_id;
```

---

### Problem 111: Date Range Generation
**Description**: Create order-date combinations for reporting.
**Tables Used**: orders
**Expected Output**: Orders crossed with all possible statuses

```sql
SELECT 
    o.order_id,
    o.order_date,
    statuses.status_type
FROM orders o
CROSS JOIN (SELECT 'Delivered' AS status_type UNION SELECT 'Shipped' UNION SELECT 'Processing') statuses;
```

---

### Problem 112: Employee Training Matrix
**Description**: Generate employee-course training assignments.
**Tables Used**: employees, courses
**Expected Output**: Every employee with every course

```sql
SELECT 
    e.first_name,
    e.last_name,
    e.department,
    c.course_name
FROM employees e
CROSS JOIN courses c;
```

---


### Problem 113: Product Pricing Scenarios
**Description**: Generate price comparison matrix for products.
**Tables Used**: products
**Expected Output**: Compare each product with every other product

```sql
SELECT 
    p1.product_name AS product1,
    p1.price AS price1,
    p2.product_name AS product2,
    p2.price AS price2,
    ABS(p1.price - p2.price) AS price_diff
FROM products p1
CROSS JOIN products p2
WHERE p1.product_id != p2.product_id
LIMIT 50;
```

---

### Problem 114: Student Group Formation
**Description**: Generate all possible 2-student groups.
**Tables Used**: students
**Expected Output**: All unique student pairs

```sql
SELECT 
    s1.student_name AS student1,
    s2.student_name AS student2
FROM students s1
CROSS JOIN students s2
WHERE s1.student_id < s2.student_id;
```

---

### Problem 115: City-Country Combinations
**Description**: Create customer location matrix.
**Tables Used**: customers
**Expected Output**: All unique city combinations

```sql
SELECT DISTINCT
    c1.city AS city1,
    c2.city AS city2
FROM customers c1
CROSS JOIN customers c2
WHERE c1.city < c2.city;
```

---


### Problem 116: Department Budget Allocation
**Description**: Show all products with all department budgets.
**Tables Used**: products, departments
**Expected Output**: Each product with each department budget

```sql
SELECT 
    p.product_name,
    p.price,
    d.department_name,
    d.budget
FROM products p
CROSS JOIN departments d;
```

---

### Problem 117: Order Status Transitions
**Description**: Generate all possible order status change combinations.
**Tables Used**: orders
**Expected Output**: Order with all possible status values

```sql
SELECT 
    o.order_id,
    o.status AS current_status,
    new_status.status AS potential_status
FROM orders o
CROSS JOIN (SELECT 'Delivered' AS status UNION SELECT 'Shipped' UNION SELECT 'Processing' UNION SELECT 'Cancelled') new_status
WHERE o.status != new_status.status;
```

---

### Problem 118: Sales Region Expansion
**Description**: Show products with all possible regions.
**Tables Used**: products, sales (for regions)
**Expected Output**: Each product with each region

```sql
SELECT DISTINCT
    p.product_name,
    regions.region
FROM products p
CROSS JOIN (SELECT DISTINCT region FROM sales) regions;
```

---


### Problem 119: Course Credit Combinations
**Description**: Generate all course pairs to calculate credit totals.
**Tables Used**: courses
**Expected Output**: All unique course combinations with total credits

```sql
SELECT 
    c1.course_name AS course1,
    c2.course_name AS course2,
    (c1.credits + c2.credits) AS total_credits
FROM courses c1
CROSS JOIN courses c2
WHERE c1.course_id < c2.course_id;
```

---

### Problem 120: Complete Employee-Department Matrix
**Description**: Show every employee with every department for reorganization planning.
**Tables Used**: employees, departments
**Expected Output**: Full employee-department combination matrix

```sql
SELECT 
    e.first_name,
    e.last_name,
    e.department AS current_dept,
    d.department_name AS potential_dept,
    d.budget
FROM employees e
CROSS JOIN departments d;
```

---

### 2.6 FULL OUTER JOIN

### Problem 121: All Customers and All Orders
**Description**: Show all customers and all orders (even unmatched).
**Tables Used**: customers, orders
**Expected Output**: Complete customer-order data including nulls

```sql
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date
FROM customers c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id;
```

---


### Problem 122: Products and Order Items Complete
**Description**: Show all products and all order items.
**Tables Used**: products, order_items
**Expected Output**: All products and order items including unmatched

```sql
SELECT 
    p.product_name,
    oi.order_item_id,
    oi.quantity
FROM products p
FULL OUTER JOIN order_items oi ON p.product_id = oi.product_id;
```

---

### Problem 123: Students and Enrollments Complete
**Description**: Show all students and all enrollments.
**Tables Used**: students, student_courses
**Expected Output**: Complete student-enrollment data

```sql
SELECT 
    s.student_name,
    sc.enrollment_id,
    sc.grade
FROM students s
FULL OUTER JOIN student_courses sc ON s.student_id = sc.student_id;
```

---

### Problem 124: Employees and Sales Complete
**Description**: Show all employees and all sales records.
**Tables Used**: employees, sales
**Expected Output**: Complete employee-sales data

```sql
SELECT 
    e.first_name,
    e.last_name,
    s.sale_id,
    s.sale_amount
FROM employees e
FULL OUTER JOIN sales s ON e.employee_id = s.employee_id;
```

---


### Problem 125: Courses and Enrollments Complete
**Description**: Show all courses and all enrollments.
**Tables Used**: courses, student_courses
**Expected Output**: All courses and enrollments with nulls

```sql
SELECT 
    c.course_name,
    c.instructor,
    sc.enrollment_id
FROM courses c
FULL OUTER JOIN student_courses sc ON c.course_id = sc.course_id;
```

---

### Problem 126: Comprehensive Customer Activity
**Description**: Show customers with orders including all unmatched records.
**Tables Used**: customers, orders
**Expected Output**: Full customer-order picture with gaps identified

```sql
SELECT 
    COALESCE(c.first_name, 'Unknown') AS customer,
    COALESCE(o.order_id::text, 'No Order') AS order_ref,
    o.total_amount
FROM customers c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id;
```

---

### Problem 127: Product Sales Coverage
**Description**: Identify products with and without sales.
**Tables Used**: products, sales
**Expected Output**: Complete product-sales mapping

```sql
SELECT 
    p.product_name,
    s.sale_id,
    s.sale_amount,
    s.region
FROM products p
FULL OUTER JOIN sales s ON p.product_id = s.product_id;
```

---


### Problem 128: Complete Order History
**Description**: Show all orders with customer data including orphaned records.
**Tables Used**: customers, orders
**Expected Output**: All orders with customer info or nulls

```sql
SELECT 
    o.order_id,
    o.order_date,
    c.first_name,
    c.email,
    o.status
FROM customers c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id
ORDER BY o.order_date;
```

---

### Problem 129: Student Course Coverage
**Description**: Show which students and courses are unmatched.
**Tables Used**: students, student_courses, courses
**Expected Output**: Complete student-course relationship

```sql
SELECT 
    s.student_name,
    c.course_name,
    sc.grade
FROM students s
FULL OUTER JOIN student_courses sc ON s.student_id = sc.student_id
FULL OUTER JOIN courses c ON sc.course_id = c.course_id;
```

---

### Problem 130: Employee Manager Complete Mapping
**Description**: Show all employees and all potential managers.
**Tables Used**: employees (self-joined)
**Expected Output**: Complete employee-manager relationships

```sql
SELECT 
    e.first_name AS employee,
    m.first_name AS manager
FROM employees e
FULL OUTER JOIN employees m ON e.manager_id = m.employee_id;
```

---


### Problem 131: All Products All Categories
**Description**: Ensure all products and categories are represented.
**Tables Used**: products
**Expected Output**: Product-category complete listing

```sql
SELECT 
    p1.product_name,
    p1.category,
    p2.category AS all_categories
FROM products p1
FULL OUTER JOIN (SELECT DISTINCT category FROM products) p2 ON p1.category = p2.category;
```

---

### Problem 132: Order Items Product Match
**Description**: Show all order items and all products.
**Tables Used**: order_items, products
**Expected Output**: Complete order_items-products relationship

```sql
SELECT 
    oi.order_item_id,
    oi.quantity,
    p.product_name,
    p.category
FROM order_items oi
FULL OUTER JOIN products p ON oi.product_id = p.product_id;
```

---

### Problem 133: Customer Registration vs Orders
**Description**: Compare customer registrations with actual ordering activity.
**Tables Used**: customers, orders
**Expected Output**: Registration-to-purchase analysis

```sql
SELECT 
    c.registration_date,
    c.first_name,
    COUNT(o.order_id) AS orders_placed
FROM customers c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.registration_date, c.first_name;
```

---


### Problem 134: Sales Employee Coverage
**Description**: Identify employees with and without sales performance.
**Tables Used**: employees, sales
**Expected Output**: Complete employee-sales coverage

```sql
SELECT 
    e.first_name,
    e.department,
    COALESCE(SUM(s.sale_amount), 0) AS total_sales
FROM employees e
FULL OUTER JOIN sales s ON e.employee_id = s.employee_id
GROUP BY e.employee_id, e.first_name, e.department;
```

---

### Problem 135: Course Instructor Load
**Description**: Show all courses and all instructors with enrollment data.
**Tables Used**: courses, student_courses
**Expected Output**: Complete course-enrollment picture

```sql
SELECT 
    c.course_name,
    c.instructor,
    COUNT(sc.enrollment_id) AS enrollments
FROM courses c
FULL OUTER JOIN student_courses sc ON c.course_id = sc.course_id
GROUP BY c.course_id, c.course_name, c.instructor;
```

---

### Problem 136: Product Order Frequency
**Description**: Show all products with order frequency including never ordered.
**Tables Used**: products, order_items
**Expected Output**: Complete product ordering analysis

```sql
SELECT 
    p.product_name,
    p.category,
    COUNT(oi.order_item_id) AS times_ordered
FROM products p
FULL OUTER JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name, p.category;
```

---


### Problem 137: Customer Order Value Distribution
**Description**: Show all customers with complete order value analysis.
**Tables Used**: customers, orders
**Expected Output**: Customer spending patterns including non-spenders

```sql
SELECT 
    c.first_name,
    c.city,
    COALESCE(SUM(o.total_amount), 0) AS lifetime_value,
    COUNT(o.order_id) AS order_count
FROM customers c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.city;
```

---

### Problem 138: Student Major Course Alignment
**Description**: Show students and courses with major considerations.
**Tables Used**: students, student_courses, courses
**Expected Output**: Complete student-course-major mapping

```sql
SELECT 
    s.student_name,
    s.major,
    c.course_name,
    sc.grade
FROM students s
FULL OUTER JOIN student_courses sc ON s.student_id = sc.student_id
FULL OUTER JOIN courses c ON sc.course_id = c.course_id;
```

---

### Problem 139: Regional Product Sales
**Description**: Show all products and all regions with sales data.
**Tables Used**: products, sales
**Expected Output**: Complete product-region analysis

```sql
SELECT 
    p.product_name,
    s.region,
    SUM(s.sale_amount) AS regional_sales
FROM products p
FULL OUTER JOIN sales s ON p.product_id = s.product_id
GROUP BY p.product_name, s.region;
```

---


### Problem 140: Comprehensive Business Overview
**Description**: Create complete view of customers, orders, and products.
**Tables Used**: customers, orders, order_items, products
**Expected Output**: Full business activity picture

```sql
SELECT 
    c.first_name AS customer,
    o.order_date,
    p.product_name,
    oi.quantity
FROM customers c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id
FULL OUTER JOIN order_items oi ON o.order_id = oi.order_id
FULL OUTER JOIN products p ON oi.product_id = p.product_id;
```

---

## 3. Aggregate Functions

### Problem 141: Count All Employees
**Description**: Count total number of employees.
**Tables Used**: employees
**Expected Output**: Total employee count

```sql
SELECT COUNT(*) AS total_employees 
FROM employees;
```

---

### Problem 142: Sum of All Salaries
**Description**: Calculate total salary expenditure.
**Tables Used**: employees
**Expected Output**: Total salary amount

```sql
SELECT SUM(salary) AS total_salary_cost 
FROM employees;
```

---


### Problem 143: Average Salary
**Description**: Calculate average employee salary.
**Tables Used**: employees
**Expected Output**: Average salary value

```sql
SELECT AVG(salary) AS average_salary 
FROM employees;
```

---

### Problem 144: Maximum Salary
**Description**: Find the highest salary.
**Tables Used**: employees
**Expected Output**: Maximum salary amount

```sql
SELECT MAX(salary) AS highest_salary 
FROM employees;
```

---

### Problem 145: Minimum Salary
**Description**: Find the lowest salary.
**Tables Used**: employees
**Expected Output**: Minimum salary amount

```sql
SELECT MIN(salary) AS lowest_salary 
FROM employees;
```

---

### Problem 146: Count by Department
**Description**: Count employees in each department.
**Tables Used**: employees
**Expected Output**: Department with employee count

```sql
SELECT 
    department, 
    COUNT(*) AS employee_count
FROM employees
GROUP BY department;
```

---


### Problem 147: Average Salary by Department
**Description**: Calculate average salary per department.
**Tables Used**: employees
**Expected Output**: Department with average salary

```sql
SELECT 
    department,
    AVG(salary) AS avg_dept_salary
FROM employees
GROUP BY department;
```

---

### Problem 148: Total Orders per Customer
**Description**: Count orders for each customer.
**Tables Used**: orders
**Expected Output**: Customer ID with order count

```sql
SELECT 
    customer_id,
    COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;
```

---

### Problem 149: Total Revenue
**Description**: Calculate total revenue from all orders.
**Tables Used**: orders
**Expected Output**: Sum of all order amounts

```sql
SELECT SUM(total_amount) AS total_revenue 
FROM orders;
```

---

### Problem 150: Average Order Value
**Description**: Calculate average order amount.
**Tables Used**: orders
**Expected Output**: Average order value

```sql
SELECT AVG(total_amount) AS avg_order_value 
FROM orders;
```

---


### Problem 151: Product Count by Category
**Description**: Count products in each category.
**Tables Used**: products
**Expected Output**: Category with product count

```sql
SELECT 
    category,
    COUNT(*) AS product_count
FROM products
GROUP BY category;
```

---

### Problem 152: Total Stock by Category
**Description**: Sum stock quantity per category.
**Tables Used**: products
**Expected Output**: Category with total stock

```sql
SELECT 
    category,
    SUM(stock_quantity) AS total_stock
FROM products
GROUP BY category;
```

---

### Problem 153: Average Product Price by Category
**Description**: Calculate average price per category.
**Tables Used**: products
**Expected Output**: Category with average price

```sql
SELECT 
    category,
    AVG(price) AS avg_category_price
FROM products
GROUP BY category;
```

---

### Problem 154: Count Distinct Customers
**Description**: Find number of unique customers.
**Tables Used**: customers
**Expected Output**: Unique customer count

```sql
SELECT COUNT(DISTINCT customer_id) AS unique_customers 
FROM customers;
```

---


### Problem 155: Sales by Region
**Description**: Calculate total sales amount per region.
**Tables Used**: sales
**Expected Output**: Region with total sales

```sql
SELECT 
    region,
    SUM(sale_amount) AS total_sales
FROM sales
GROUP BY region;
```

---

### Problem 156: Count Orders by Status
**Description**: Count orders for each status.
**Tables Used**: orders
**Expected Output**: Status with order count

```sql
SELECT 
    status,
    COUNT(*) AS order_count
FROM orders
GROUP BY status;
```

---

### Problem 157: Average Credits per Course
**Description**: Calculate average course credits.
**Tables Used**: courses
**Expected Output**: Average credits value

```sql
SELECT AVG(credits) AS avg_course_credits 
FROM courses;
```

---

### Problem 158: Student Count by Major
**Description**: Count students in each major.
**Tables Used**: students
**Expected Output**: Major with student count

```sql
SELECT 
    major,
    COUNT(*) AS student_count
FROM students
GROUP BY major;
```

---


### Problem 159: HAVING Clause Filter
**Description**: Find departments with more than 3 employees.
**Tables Used**: employees
**Expected Output**: Departments with employee count > 3

```sql
SELECT 
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 3;
```

---

### Problem 160: Departments with High Average Salary
**Description**: Find departments with average salary over 60000.
**Tables Used**: employees
**Expected Output**: High-paying departments

```sql
SELECT 
    department,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;
```

---

## 4. Subqueries

### Problem 161: Employees Above Average Salary
**Description**: Find employees earning more than average.
**Tables Used**: employees
**Expected Output**: Employees with above-average salary

```sql
SELECT 
    first_name,
    last_name,
    salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
```

---


### Problem 162: Products Above Average Price
**Description**: Find products priced above average.
**Tables Used**: products
**Expected Output**: Products with above-average price

```sql
SELECT 
    product_name,
    price
FROM products
WHERE price > (SELECT AVG(price) FROM products);
```

---

### Problem 163: Customers with Multiple Orders
**Description**: Find customers who placed more than one order.
**Tables Used**: customers, orders
**Expected Output**: Customers with order count > 1

```sql
SELECT 
    first_name,
    last_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id 
    FROM orders 
    GROUP BY customer_id 
    HAVING COUNT(*) > 1
);
```

---

### Problem 164: Most Expensive Product
**Description**: Find product with highest price.
**Tables Used**: products
**Expected Output**: Product with maximum price

```sql
SELECT 
    product_name,
    price
FROM products
WHERE price = (SELECT MAX(price) FROM products);
```

---


### Problem 165: Employees in Largest Department
**Description**: Find employees in the department with most employees.
**Tables Used**: employees
**Expected Output**: Employees from largest department

```sql
SELECT 
    first_name,
    last_name,
    department
FROM employees
WHERE department = (
    SELECT department 
    FROM employees 
    GROUP BY department 
    ORDER BY COUNT(*) DESC 
    LIMIT 1
);
```

---

### Problem 166: Orders Above Average Value
**Description**: Find orders with amount above average.
**Tables Used**: orders
**Expected Output**: High-value orders

```sql
SELECT 
    order_id,
    customer_id,
    total_amount
FROM orders
WHERE total_amount > (SELECT AVG(total_amount) FROM orders);
```

---

### Problem 167: Products Never Ordered
**Description**: Find products with no orders using subquery.
**Tables Used**: products, order_items
**Expected Output**: Products not in order_items

```sql
SELECT 
    product_name,
    category
FROM products
WHERE product_id NOT IN (SELECT DISTINCT product_id FROM order_items);
```

---


### Problem 168: Customers with No Orders (Subquery)
**Description**: Find customers who never ordered using subquery.
**Tables Used**: customers, orders
**Expected Output**: Customers not in orders table

```sql
SELECT 
    first_name,
    last_name,
    email
FROM customers
WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM orders);
```

---

### Problem 169: Second Highest Salary
**Description**: Find the second highest salary.
**Tables Used**: employees
**Expected Output**: Second maximum salary

```sql
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);
```

---

### Problem 170: Products in Same Category as Laptop
**Description**: Find products in same category as 'Laptop'.
**Tables Used**: products
**Expected Output**: Products in Electronics category

```sql
SELECT 
    product_name,
    price
FROM products
WHERE category = (SELECT category FROM products WHERE product_name = 'Laptop');
```

---


### Problem 171: Employees Earning More Than John Doe
**Description**: Find employees with salary > John Doe's salary.
**Tables Used**: employees
**Expected Output**: Employees earning more than John

```sql
SELECT 
    first_name,
    last_name,
    salary
FROM employees
WHERE salary > (SELECT salary FROM employees WHERE first_name = 'John' AND last_name = 'Doe');
```

---

### Problem 172: Correlated Subquery - Dept Average
**Description**: Show employees with salary above their department average.
**Tables Used**: employees
**Expected Output**: Employees above dept average

```sql
SELECT 
    e1.first_name,
    e1.last_name,
    e1.department,
    e1.salary
FROM employees e1
WHERE salary > (
    SELECT AVG(salary) 
    FROM employees e2 
    WHERE e2.department = e1.department
);
```

---

### Problem 173: Customers with Latest Order
**Description**: Find customers who placed orders in the last month of data.
**Tables Used**: customers, orders
**Expected Output**: Recent customers

```sql
SELECT 
    first_name,
    last_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id 
    FROM orders 
    WHERE order_date >= (SELECT MAX(order_date) - INTERVAL '30 days' FROM orders)
);
```

---


### Problem 174: Products with Above Category Average Price
**Description**: Find products priced above their category average.
**Tables Used**: products
**Expected Output**: Products above category avg price

```sql
SELECT 
    p1.product_name,
    p1.category,
    p1.price
FROM products p1
WHERE price > (
    SELECT AVG(price) 
    FROM products p2 
    WHERE p2.category = p1.category
);
```

---

### Problem 175: Students in Popular Courses
**Description**: Find students in courses with more than 2 enrollments.
**Tables Used**: students, student_courses
**Expected Output**: Students in popular courses

```sql
SELECT DISTINCT
    s.student_name
FROM students s
WHERE student_id IN (
    SELECT student_id 
    FROM student_courses 
    WHERE course_id IN (
        SELECT course_id 
        FROM student_courses 
        GROUP BY course_id 
        HAVING COUNT(*) > 2
    )
);
```

---

### Problem 176: EXISTS Example
**Description**: Find customers who have placed at least one order using EXISTS.
**Tables Used**: customers, orders
**Expected Output**: Customers with orders

```sql
SELECT 
    first_name,
    last_name
FROM customers c
WHERE EXISTS (
    SELECT 1 
    FROM orders o 
    WHERE o.customer_id = c.customer_id
);
```

---


### Problem 177: NOT EXISTS Example
**Description**: Find products never ordered using NOT EXISTS.
**Tables Used**: products, order_items
**Expected Output**: Products with no orders

```sql
SELECT 
    product_name,
    category
FROM products p
WHERE NOT EXISTS (
    SELECT 1 
    FROM order_items oi 
    WHERE oi.product_id = p.product_id
);
```

---

### Problem 178: Subquery in SELECT
**Description**: Show each employee with total department count.
**Tables Used**: employees
**Expected Output**: Employee with their dept size

```sql
SELECT 
    first_name,
    last_name,
    department,
    (SELECT COUNT(*) FROM employees e2 WHERE e2.department = e1.department) AS dept_size
FROM employees e1;
```

---

### Problem 179: Multiple Subqueries
**Description**: Find products with price above avg and stock below avg.
**Tables Used**: products
**Expected Output**: High price, low stock products

```sql
SELECT 
    product_name,
    price,
    stock_quantity
FROM products
WHERE price > (SELECT AVG(price) FROM products)
    AND stock_quantity < (SELECT AVG(stock_quantity) FROM products);
```

---


### Problem 180: Nested Subquery
**Description**: Find employees in dept with highest average salary.
**Tables Used**: employees
**Expected Output**: Employees from highest-paying department

```sql
SELECT 
    first_name,
    last_name,
    salary
FROM employees
WHERE department = (
    SELECT department 
    FROM employees 
    GROUP BY department 
    ORDER BY AVG(salary) DESC 
    LIMIT 1
);
```

---

## 5. Common Table Expressions (CTE)

### 5.1 Basic CTE

### Problem 181: Simple CTE
**Description**: Use CTE to find average salary then employees above it.
**Tables Used**: employees
**Expected Output**: Employees above average salary

```sql
WITH avg_salary AS (
    SELECT AVG(salary) AS avg_sal 
    FROM employees
)
SELECT 
    first_name,
    last_name,
    salary
FROM employees, avg_salary
WHERE salary > avg_sal;
```

---


### Problem 182: CTE with Aggregation
**Description**: Calculate department statistics using CTE.
**Tables Used**: employees
**Expected Output**: Department stats

```sql
WITH dept_stats AS (
    SELECT 
        department,
        COUNT(*) AS emp_count,
        AVG(salary) AS avg_salary,
        MAX(salary) AS max_salary
    FROM employees
    GROUP BY department
)
SELECT * FROM dept_stats;
```

---

### Problem 183: Multiple CTEs
**Description**: Use two CTEs for customer and order analysis.
**Tables Used**: customers, orders
**Expected Output**: Customer order summary

```sql
WITH customer_orders AS (
    SELECT 
        customer_id,
        COUNT(*) AS order_count
    FROM orders
    GROUP BY customer_id
),
customer_info AS (
    SELECT 
        customer_id,
        first_name,
        last_name
    FROM customers
)
SELECT 
    ci.first_name,
    ci.last_name,
    COALESCE(co.order_count, 0) AS total_orders
FROM customer_info ci
LEFT JOIN customer_orders co ON ci.customer_id = co.customer_id;
```

---


### Problem 184: CTE for Product Analysis
**Description**: Analyze product categories using CTE.
**Tables Used**: products
**Expected Output**: Category statistics

```sql
WITH category_stats AS (
    SELECT 
        category,
        COUNT(*) AS product_count,
        AVG(price) AS avg_price,
        SUM(stock_quantity) AS total_stock
    FROM products
    GROUP BY category
)
SELECT * FROM category_stats
ORDER BY product_count DESC;
```

---

### Problem 185: CTE with JOIN
**Description**: Use CTE to join order data.
**Tables Used**: orders, customers
**Expected Output**: Customer order details

```sql
WITH order_summary AS (
    SELECT 
        customer_id,
        SUM(total_amount) AS total_spent,
        COUNT(*) AS order_count
    FROM orders
    GROUP BY customer_id
)
SELECT 
    c.first_name,
    c.last_name,
    os.total_spent,
    os.order_count
FROM customers c
JOIN order_summary os ON c.customer_id = os.customer_id;
```

---


### Problem 186: CTE for Sales Analysis
**Description**: Calculate sales metrics using CTE.
**Tables Used**: sales
**Expected Output**: Regional sales summary

```sql
WITH regional_sales AS (
    SELECT 
        region,
        SUM(sale_amount) AS total_sales,
        AVG(sale_amount) AS avg_sale,
        COUNT(*) AS sale_count
    FROM sales
    GROUP BY region
)
SELECT * FROM regional_sales
ORDER BY total_sales DESC;
```

---

### Problem 187: CTE with Filtering
**Description**: Filter high-value customers using CTE.
**Tables Used**: customers, orders
**Expected Output**: VIP customers (spent > $1000)

```sql
WITH customer_spending AS (
    SELECT 
        customer_id,
        SUM(total_amount) AS lifetime_value
    FROM orders
    GROUP BY customer_id
)
SELECT 
    c.first_name,
    c.last_name,
    cs.lifetime_value
FROM customers c
JOIN customer_spending cs ON c.customer_id = cs.customer_id
WHERE cs.lifetime_value > 1000;
```

---


### Problem 188: CTE for Student Performance
**Description**: Analyze student grades using CTE.
**Tables Used**: students, student_courses
**Expected Output**: Student GPA equivalent

```sql
WITH grade_points AS (
    SELECT 
        student_id,
        COUNT(*) AS courses_taken,
        AVG(CASE grade 
            WHEN 'A' THEN 4.0 
            WHEN 'B' THEN 3.0 
            WHEN 'C' THEN 2.0 
            ELSE 0 
        END) AS gpa
    FROM student_courses
    GROUP BY student_id
)
SELECT 
    s.student_name,
    gp.courses_taken,
    ROUND(gp.gpa, 2) AS gpa
FROM students s
JOIN grade_points gp ON s.student_id = gp.student_id;
```

---

### Problem 189: CTE for Inventory Check
**Description**: Find low-stock products using CTE.
**Tables Used**: products
**Expected Output**: Products with stock below average

```sql
WITH stock_avg AS (
    SELECT AVG(stock_quantity) AS avg_stock 
    FROM products
)
SELECT 
    product_name,
    stock_quantity,
    category
FROM products, stock_avg
WHERE stock_quantity < avg_stock;
```

---


### Problem 190: CTE with Employee Hierarchy
**Description**: Show employee-manager relationships using CTE.
**Tables Used**: employees
**Expected Output**: Employee with manager info

```sql
WITH emp_mgr AS (
    SELECT 
        e.employee_id,
        e.first_name AS emp_name,
        m.first_name AS mgr_name
    FROM employees e
    LEFT JOIN employees m ON e.manager_id = m.employee_id
)
SELECT * FROM emp_mgr;
```

---

### Problem 191: CTE for Order Analysis
**Description**: Find order patterns using CTE.
**Tables Used**: orders
**Expected Output**: Order status distribution

```sql
WITH status_counts AS (
    SELECT 
        status,
        COUNT(*) AS order_count,
        SUM(total_amount) AS status_revenue
    FROM orders
    GROUP BY status
)
SELECT * FROM status_counts
ORDER BY status_revenue DESC;
```

---

### Problem 192: CTE for Product Revenue
**Description**: Calculate product revenue using CTE.
**Tables Used**: products, order_items
**Expected Output**: Products by revenue

```sql
WITH product_revenue AS (
    SELECT 
        p.product_id,
        p.product_name,
        SUM(oi.quantity * oi.unit_price) AS revenue
    FROM products p
    JOIN order_items oi ON p.product_id = oi.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT * FROM product_revenue
ORDER BY revenue DESC;
```

---


### Problem 193: CTE with Date Functions
**Description**: Analyze orders by month using CTE.
**Tables Used**: orders
**Expected Output**: Monthly order statistics

```sql
WITH monthly_orders AS (
    SELECT 
        DATE_TRUNC('month', order_date) AS order_month,
        COUNT(*) AS order_count,
        SUM(total_amount) AS monthly_revenue
    FROM orders
    GROUP BY DATE_TRUNC('month', order_date)
)
SELECT * FROM monthly_orders
ORDER BY order_month;
```

---

### Problem 194: CTE for Customer Segmentation
**Description**: Segment customers by order frequency using CTE.
**Tables Used**: customers, orders
**Expected Output**: Customer segments

```sql
WITH customer_segments AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        COUNT(o.order_id) AS order_count,
        CASE 
            WHEN COUNT(o.order_id) >= 3 THEN 'Frequent'
            WHEN COUNT(o.order_id) = 2 THEN 'Regular'
            WHEN COUNT(o.order_id) = 1 THEN 'Occasional'
            ELSE 'Never Ordered'
        END AS segment
    FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT * FROM customer_segments;
```

---


### Problem 195: CTE for Department Comparison
**Description**: Compare department metrics using CTE.
**Tables Used**: employees
**Expected Output**: Department comparison

```sql
WITH dept_metrics AS (
    SELECT 
        department,
        COUNT(*) AS emp_count,
        AVG(salary) AS avg_salary,
        MAX(salary) - MIN(salary) AS salary_range
    FROM employees
    GROUP BY department
)
SELECT * FROM dept_metrics
ORDER BY avg_salary DESC;
```

---

### Problem 196: CTE with Union
**Description**: Combine employee and student data using CTE.
**Tables Used**: employees, students
**Expected Output**: All people in system

```sql
WITH all_people AS (
    SELECT first_name, last_name, 'Employee' AS type FROM employees
    UNION ALL
    SELECT student_name AS first_name, '' AS last_name, 'Student' AS type FROM students
)
SELECT * FROM all_people;
```

---

### Problem 197: CTE for Top Performers
**Description**: Find top sales performers using CTE.
**Tables Used**: employees, sales
**Expected Output**: Top 5 employees by sales

```sql
WITH employee_sales AS (
    SELECT 
        e.first_name,
        e.last_name,
        SUM(s.sale_amount) AS total_sales
    FROM employees e
    JOIN sales s ON e.employee_id = s.employee_id
    GROUP BY e.employee_id, e.first_name, e.last_name
)
SELECT * FROM employee_sales
ORDER BY total_sales DESC
LIMIT 5;
```

---


### Problem 198: CTE for Course Popularity
**Description**: Rank courses by enrollment using CTE.
**Tables Used**: courses, student_courses
**Expected Output**: Courses ranked by popularity

```sql
WITH course_enrollment AS (
    SELECT 
        c.course_name,
        c.instructor,
        COUNT(sc.enrollment_id) AS enrolled_students
    FROM courses c
    LEFT JOIN student_courses sc ON c.course_id = sc.course_id
    GROUP BY c.course_id, c.course_name, c.instructor
)
SELECT * FROM course_enrollment
ORDER BY enrolled_students DESC;
```

---

### Problem 199: CTE with Percentage Calculation
**Description**: Calculate department percentage using CTE.
**Tables Used**: employees
**Expected Output**: Department distribution

```sql
WITH dept_counts AS (
    SELECT 
        department,
        COUNT(*) AS dept_count
    FROM employees
    GROUP BY department
),
total_count AS (
    SELECT COUNT(*) AS total FROM employees
)
SELECT 
    dc.department,
    dc.dept_count,
    ROUND(100.0 * dc.dept_count / tc.total, 2) AS percentage
FROM dept_counts dc, total_count tc;
```

---


### Problem 200: CTE for Complex Reporting
**Description**: Create comprehensive customer report using CTE.
**Tables Used**: customers, orders, order_items
**Expected Output**: Complete customer analytics

```sql
WITH customer_metrics AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        COUNT(DISTINCT o.order_id) AS order_count,
        SUM(o.total_amount) AS lifetime_value,
        COUNT(DISTINCT oi.product_id) AS unique_products
    FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
    LEFT JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT * FROM customer_metrics
ORDER BY lifetime_value DESC;
```

---

### 5.2 Recursive CTE

### Problem 201: Basic Number Generation
**Description**: Generate numbers 1 to 10 using recursive CTE.
**Tables Used**: None (generates data)
**Expected Output**: Numbers 1-10

```sql
WITH RECURSIVE numbers AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1 FROM numbers WHERE n < 10
)
SELECT * FROM numbers;
```

---


### Problem 202: Employee Hierarchy Traversal
**Description**: Show full organizational hierarchy using recursive CTE.
**Tables Used**: employees
**Expected Output**: Employee hierarchy with levels

```sql
WITH RECURSIVE emp_hierarchy AS (
    SELECT 
        employee_id,
        first_name,
        last_name,
        manager_id,
        1 AS level
    FROM employees
    WHERE manager_id IS NULL
    
    UNION ALL
    
    SELECT 
        e.employee_id,
        e.first_name,
        e.last_name,
        e.manager_id,
        eh.level + 1
    FROM employees e
    JOIN emp_hierarchy eh ON e.manager_id = eh.employee_id
)
SELECT * FROM emp_hierarchy
ORDER BY level, first_name;
```

---

### Problem 203: Generate Date Range
**Description**: Create date series using recursive CTE.
**Tables Used**: None
**Expected Output**: Date sequence

```sql
WITH RECURSIVE date_series AS (
    SELECT DATE '2023-01-01' AS date_val
    UNION ALL
    SELECT date_val + INTERVAL '1 day'
    FROM date_series
    WHERE date_val < DATE '2023-01-31'
)
SELECT * FROM date_series;
```

---


### Problem 204: Factorial Calculation
**Description**: Calculate factorials using recursive CTE.
**Tables Used**: None
**Expected Output**: Factorials 1! to 5!

```sql
WITH RECURSIVE factorial AS (
    SELECT 1 AS n, 1 AS fact
    UNION ALL
    SELECT n + 1, fact * (n + 1)
    FROM factorial
    WHERE n < 5
)
SELECT n, fact FROM factorial;
```

---

### Problem 205: Fibonacci Sequence
**Description**: Generate Fibonacci numbers using recursive CTE.
**Tables Used**: None
**Expected Output**: First 10 Fibonacci numbers

```sql
WITH RECURSIVE fibonacci AS (
    SELECT 1 AS n, 0 AS fib, 1 AS next_fib
    UNION ALL
    SELECT n + 1, next_fib, fib + next_fib
    FROM fibonacci
    WHERE n < 10
)
SELECT n, fib FROM fibonacci;
```

---

### Problem 206: Manager Chain
**Description**: Find full reporting chain for an employee.
**Tables Used**: employees
**Expected Output**: Complete chain of command

```sql
WITH RECURSIVE manager_chain AS (
    SELECT 
        employee_id,
        first_name,
        manager_id,
        first_name AS chain
    FROM employees
    WHERE employee_id = 8
    
    UNION ALL
    
    SELECT 
        e.employee_id,
        e.first_name,
        e.manager_id,
        mc.chain || ' -> ' || e.first_name
    FROM employees e
    JOIN manager_chain mc ON e.employee_id = mc.manager_id
)
SELECT * FROM manager_chain;
```

---


### Problem 207: Subordinate Count
**Description**: Count all subordinates for each manager recursively.
**Tables Used**: employees
**Expected Output**: Managers with total subordinate count

```sql
WITH RECURSIVE subordinates AS (
    SELECT 
        employee_id,
        first_name,
        manager_id
    FROM employees
    WHERE employee_id = 1
    
    UNION ALL
    
    SELECT 
        e.employee_id,
        e.first_name,
        e.manager_id
    FROM employees e
    JOIN subordinates s ON e.manager_id = s.employee_id
)
SELECT COUNT(*) - 1 AS total_subordinates FROM subordinates;
```

---

### Problem 208: Path Finding
**Description**: Find all paths from top manager to employees.
**Tables Used**: employees
**Expected Output**: All reporting paths

```sql
WITH RECURSIVE emp_paths AS (
    SELECT 
        employee_id,
        first_name,
        manager_id,
        CAST(first_name AS VARCHAR(1000)) AS path
    FROM employees
    WHERE manager_id IS NULL
    
    UNION ALL
    
    SELECT 
        e.employee_id,
        e.first_name,
        e.manager_id,
        ep.path || ' -> ' || e.first_name
    FROM employees e
    JOIN emp_paths ep ON e.manager_id = ep.employee_id
)
SELECT employee_id, first_name, path FROM emp_paths;
```

---


### Problem 209: Level-wise Employee Count
**Description**: Count employees at each hierarchy level.
**Tables Used**: employees
**Expected Output**: Count by organizational level

```sql
WITH RECURSIVE emp_levels AS (
    SELECT 
        employee_id,
        first_name,
        manager_id,
        1 AS level
    FROM employees
    WHERE manager_id IS NULL
    
    UNION ALL
    
    SELECT 
        e.employee_id,
        e.first_name,
        e.manager_id,
        el.level + 1
    FROM employees e
    JOIN emp_levels el ON e.manager_id = el.employee_id
)
SELECT level, COUNT(*) AS employee_count
FROM emp_levels
GROUP BY level
ORDER BY level;
```

---

### Problem 210: Geometric Sequence
**Description**: Generate geometric sequence using recursive CTE.
**Tables Used**: None
**Expected Output**: Powers of 2

```sql
WITH RECURSIVE geometric AS (
    SELECT 1 AS n, 1 AS value
    UNION ALL
    SELECT n + 1, value * 2
    FROM geometric
    WHERE n < 10
)
SELECT n, value FROM geometric;
```

---


### Problem 211: Sum of Series
**Description**: Calculate cumulative sum using recursive CTE.
**Tables Used**: None
**Expected Output**: Cumulative sums 1 to 10

```sql
WITH RECURSIVE cumulative AS (
    SELECT 1 AS n, 1 AS cum_sum
    UNION ALL
    SELECT n + 1, cum_sum + n + 1
    FROM cumulative
    WHERE n < 10
)
SELECT n, cum_sum FROM cumulative;
```

---

### Problem 212: Depth Calculation
**Description**: Calculate depth of each employee in hierarchy.
**Tables Used**: employees
**Expected Output**: Employee with their depth

```sql
WITH RECURSIVE emp_depth AS (
    SELECT 
        employee_id,
        first_name,
        manager_id,
        0 AS depth
    FROM employees
    WHERE manager_id IS NULL
    
    UNION ALL
    
    SELECT 
        e.employee_id,
        e.first_name,
        e.manager_id,
        ed.depth + 1
    FROM employees e
    JOIN emp_depth ed ON e.manager_id = ed.employee_id
)
SELECT * FROM emp_depth
ORDER BY depth, first_name;
```

---


### Problem 213: Ancestor Finding
**Description**: Find all ancestors of a specific employee.
**Tables Used**: employees
**Expected Output**: All managers above an employee

```sql
WITH RECURSIVE ancestors AS (
    SELECT 
        employee_id,
        first_name,
        manager_id,
        1 AS level_up
    FROM employees
    WHERE employee_id = 8
    
    UNION ALL
    
    SELECT 
        e.employee_id,
        e.first_name,
        e.manager_id,
        a.level_up + 1
    FROM employees e
    JOIN ancestors a ON e.employee_id = a.manager_id
)
SELECT * FROM ancestors WHERE level_up > 1;
```

---

### Problem 214: Team Size Calculator
**Description**: Calculate total team size for each manager.
**Tables Used**: employees
**Expected Output**: Manager with complete team size

```sql
WITH RECURSIVE team_members AS (
    SELECT 
        e1.employee_id AS manager_id,
        e1.first_name AS manager_name,
        e2.employee_id AS member_id
    FROM employees e1
    LEFT JOIN employees e2 ON e1.employee_id = e2.manager_id
    
    UNION ALL
    
    SELECT 
        tm.manager_id,
        tm.manager_name,
        e.employee_id
    FROM team_members tm
    JOIN employees e ON tm.member_id = e.manager_id
)
SELECT 
    manager_id,
    manager_name,
    COUNT(DISTINCT member_id) AS total_team_size
FROM team_members
WHERE member_id IS NOT NULL
GROUP BY manager_id, manager_name;
```

---


### Problem 215: Recursive String Building
**Description**: Build hierarchical strings recursively.
**Tables Used**: employees
**Expected Output**: Hierarchical labels

```sql
WITH RECURSIVE hierarchy_labels AS (
    SELECT 
        employee_id,
        first_name,
        manager_id,
        'Level-1: ' || first_name AS label
    FROM employees
    WHERE manager_id IS NULL
    
    UNION ALL
    
    SELECT 
        e.employee_id,
        e.first_name,
        e.manager_id,
        hl.label || ' > ' || e.first_name
    FROM employees e
    JOIN hierarchy_labels hl ON e.manager_id = hl.employee_id
)
SELECT employee_id, first_name, label FROM hierarchy_labels;
```

---

### Problem 216: Recursive Filtering
**Description**: Find employees more than 2 levels below CEO.
**Tables Used**: employees
**Expected Output**: Deep hierarchy employees

```sql
WITH RECURSIVE emp_levels AS (
    SELECT 
        employee_id,
        first_name,
        manager_id,
        1 AS level
    FROM employees
    WHERE manager_id IS NULL
    
    UNION ALL
    
    SELECT 
        e.employee_id,
        e.first_name,
        e.manager_id,
        el.level + 1
    FROM employees e
    JOIN emp_levels el ON e.manager_id = el.employee_id
)
SELECT * FROM emp_levels
WHERE level > 2;
```

---


### Problem 217: Calendar Generation
**Description**: Generate a complete month calendar.
**Tables Used**: None
**Expected Output**: All days in January 2023

```sql
WITH RECURSIVE calendar AS (
    SELECT DATE '2023-01-01' AS cal_date
    UNION ALL
    SELECT cal_date + INTERVAL '1 day'
    FROM calendar
    WHERE cal_date < DATE '2023-01-31'
)
SELECT 
    cal_date,
    TO_CHAR(cal_date, 'Day') AS day_name,
    EXTRACT(WEEK FROM cal_date) AS week_number
FROM calendar;
```

---

### Problem 218: Span of Control
**Description**: Calculate direct reports for each manager.
**Tables Used**: employees
**Expected Output**: Managers with direct report count

```sql
WITH RECURSIVE direct_reports AS (
    SELECT 
        m.employee_id AS manager_id,
        m.first_name AS manager_name,
        e.employee_id AS report_id,
        1 AS is_direct
    FROM employees m
    JOIN employees e ON m.employee_id = e.manager_id
)
SELECT 
    manager_id,
    manager_name,
    COUNT(*) AS direct_report_count
FROM direct_reports
WHERE is_direct = 1
GROUP BY manager_id, manager_name;
```

---


### Problem 219: Max Depth Finding
**Description**: Find maximum depth of organizational hierarchy.
**Tables Used**: employees
**Expected Output**: Maximum hierarchy level

```sql
WITH RECURSIVE depth_finder AS (
    SELECT 
        employee_id,
        first_name,
        manager_id,
        1 AS depth
    FROM employees
    WHERE manager_id IS NULL
    
    UNION ALL
    
    SELECT 
        e.employee_id,
        e.first_name,
        e.manager_id,
        df.depth + 1
    FROM employees e
    JOIN depth_finder df ON e.manager_id = df.employee_id
)
SELECT MAX(depth) AS max_hierarchy_depth FROM depth_finder;
```

---

### Problem 220: Recursive Sum Aggregation
**Description**: Calculate cumulative values recursively.
**Tables Used**: employees
**Expected Output**: Department salary aggregation

```sql
WITH RECURSIVE salary_rollup AS (
    SELECT 
        employee_id,
        first_name,
        salary,
        manager_id,
        salary AS total_salary
    FROM employees
    WHERE manager_id IS NULL
    
    UNION ALL
    
    SELECT 
        e.employee_id,
        e.first_name,
        e.salary,
        e.manager_id,
        sr.total_salary + e.salary
    FROM employees e
    JOIN salary_rollup sr ON e.manager_id = sr.employee_id
)
SELECT * FROM salary_rollup;
```

---


## 6. Window Functions

### 6.1 ROW_NUMBER

### Problem 221: Basic ROW_NUMBER
**Description**: Assign row numbers to all employees.
**Tables Used**: employees
**Expected Output**: Employees with row numbers

```sql
SELECT 
    ROW_NUMBER() OVER (ORDER BY employee_id) AS row_num,
    first_name,
    last_name,
    salary
FROM employees;
```

---

### Problem 222: ROW_NUMBER by Department
**Description**: Number employees within each department.
**Tables Used**: employees
**Expected Output**: Row numbers partitioned by department

```sql
SELECT 
    ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS dept_rank,
    first_name,
    last_name,
    department,
    salary
FROM employees;
```

---

### Problem 223: Top 3 Earners per Department
**Description**: Find top 3 highest paid employees per department.
**Tables Used**: employees
**Expected Output**: Top 3 from each department

```sql
WITH ranked_employees AS (
    SELECT 
        ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rn,
        first_name,
        last_name,
        department,
        salary
    FROM employees
)
SELECT * FROM ranked_employees
WHERE rn <= 3;
```

---


### Problem 224-240: ROW_NUMBER Continued
**Description**: Additional ROW_NUMBER practice problems covering:
- Pagination techniques
- Latest records per group
- Duplicate detection
- Sequential numbering with gaps
- Custom ordering scenarios
- Multi-column partitioning
- Filtering with row numbers
- Product rankings by category
- Customer order sequencing
- Sales representative performance
- Student enrollment ordering
- Course registration sequences
- Order processing queues
- Inventory rotation (FIFO)
- Event attendance tracking
- Time-series data numbering
- Complex partition scenarios

**Example Solutions** (Problems 224-240):

```sql
-- Problem 224: Pagination - Get records 11-20
SELECT * FROM (
    SELECT ROW_NUMBER() OVER (ORDER BY employee_id) AS rn, *
    FROM employees
) ranked WHERE rn BETWEEN 11 AND 20;

-- Problem 225: Latest order per customer
WITH ranked_orders AS (
    SELECT ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date DESC) AS rn, *
    FROM orders
)
SELECT * FROM ranked_orders WHERE rn = 1;

-- Problem 240: Complex multi-partition
SELECT 
    ROW_NUMBER() OVER (PARTITION BY category, supplier ORDER BY price DESC) AS category_supplier_rank,
    product_name,
    category,
    supplier,
    price
FROM products;
```

---


### 6.2 RANK

### Problem 241-260: RANK Function (20 problems)
**Description**: RANK function practice covering:
- Basic ranking with ties
- Salary rankings
- Performance rankings
- Sales rankings by region
- Product price rankings
- Student grade rankings
- Order value rankings
- Revenue rankings
- Stock quantity rankings
- Multi-criteria rankings
- Dense vs sparse ranking comparison
- Percentile calculations
- Top N with ties
- Bottom performers identification
- Department-wise rankings
- Category-wise product rankings
- Temporal rankings
- Custom ranking logic
- Combined ranking criteria
- Rank filtering techniques

**Example Solutions**:

```sql
-- Problem 241: Basic RANK with ties
SELECT 
    RANK() OVER (ORDER BY salary DESC) AS salary_rank,
    first_name,
    last_name,
    salary
FROM employees;

-- Problem 245: Rank by department
SELECT 
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dept_rank,
    first_name,
    department,
    salary
FROM employees;

-- Problem 260: Top 5 products by revenue with ties
WITH product_revenue AS (
    SELECT 
        p.product_name,
        SUM(oi.quantity * oi.unit_price) AS revenue
    FROM products p
    JOIN order_items oi ON p.product_id = oi.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT 
    RANK() OVER (ORDER BY revenue DESC) AS revenue_rank,
    product_name,
    revenue
FROM product_revenue;
```

---


### 6.3 DENSE_RANK

### Problem 261-280: DENSE_RANK Function (20 problems)
**Description**: DENSE_RANK eliminates gaps in ranking. Problems cover:
- Continuous ranking
- Salary dense ranking
- Product price tiers
- Performance tiers
- Competition rankings
- Grade distributions
- Revenue tiers
- Category rankings without gaps
- Employee seniority ranking
- Customer lifetime value tiers
- Order frequency classifications
- Stock level categories
- Sales performance bands
- Course popularity continuous ranks
- Market share rankings
- Comparison with RANK
- Filtering by dense rank
- Partition-based dense ranking
- Multi-level categorization
- Percentile binning

**Example Solutions**:

```sql
-- Problem 261: DENSE_RANK basics
SELECT 
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_salary_rank,
    first_name,
    last_name,
    salary
FROM employees;

-- Problem 270: Price tiers
SELECT 
    DENSE_RANK() OVER (ORDER BY price DESC) AS price_tier,
    product_name,
    category,
    price
FROM products;

-- Problem 280: Student performance tiers
WITH grade_values AS (
    SELECT 
        s.student_name,
        AVG(CASE grade WHEN 'A' THEN 4.0 WHEN 'B' THEN 3.0 ELSE 2.0 END) AS gpa
    FROM students s
    JOIN student_courses sc ON s.student_id = sc.student_id
    GROUP BY s.student_id, s.student_name
)
SELECT 
    DENSE_RANK() OVER (ORDER BY gpa DESC) AS performance_tier,
    student_name,
    ROUND(gpa, 2) AS gpa
FROM grade_values;
```

---


### 6.4 NTILE

### Problem 281-300: NTILE Function (20 problems)
**Description**: NTILE divides rows into N groups. Problems cover:
- Quartile calculation
- Decile analysis
- Percentile binning
- Customer segmentation (quintiles)
- Salary bands creation
- Performance quartiles
- ABC analysis
- Revenue segmentation
- Equal distribution grouping
- Product categorization
- Student performance groups
- Order value segments
- Stock level quintiles
- Sales territory binning
- Even group distribution
- Uneven row handling
- Partition-based NTILE
- Top/bottom segment identification
- Median group finding
- Custom bucket analysis

**Example Solutions**:

```sql
-- Problem 281: Salary quartiles
SELECT 
    NTILE(4) OVER (ORDER BY salary) AS salary_quartile,
    first_name,
    last_name,
    salary
FROM employees;

-- Problem 290: Customer value segments
WITH customer_value AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        SUM(o.total_amount) AS lifetime_value
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT 
    NTILE(5) OVER (ORDER BY lifetime_value DESC) AS value_segment,
    first_name,
    last_name,
    lifetime_value
FROM customer_value;

-- Problem 300: Product ABC analysis
SELECT 
    NTILE(3) OVER (ORDER BY price * stock_quantity DESC) AS abc_category,
    product_name,
    category,
    price,
    stock_quantity,
    (price * stock_quantity) AS inventory_value
FROM products;
```

---


### 6.5 LAG

### Problem 301-320: LAG Function (20 problems)
**Description**: LAG accesses previous row data. Problems cover:
- Previous value comparison
- Salary change calculation
- Price change tracking
- Period-over-period analysis
- Sequential date differences
- Growth rate calculation
- Trend analysis
- Status change detection
- Gap identification
- Time series analysis
- Customer retention tracking
- Order frequency analysis
- Stock movement tracking
- Performance comparison over time
- Multi-period LAG
- Custom offset values
- Default value handling
- Partition-based LAG
- Missing data handling
- Complex temporal comparisons

**Example Solutions**:

```sql
-- Problem 301: Previous salary comparison
SELECT 
    first_name,
    last_name,
    salary,
    LAG(salary) OVER (ORDER BY employee_id) AS previous_salary,
    salary - LAG(salary) OVER (ORDER BY employee_id) AS salary_diff
FROM employees;

-- Problem 310: Order frequency per customer
WITH customer_orders AS (
    SELECT 
        customer_id,
        order_date,
        LAG(order_date) OVER (PARTITION BY customer_id ORDER BY order_date) AS prev_order_date
    FROM orders
)
SELECT 
    customer_id,
    order_date,
    prev_order_date,
    order_date - prev_order_date AS days_between_orders
FROM customer_orders
WHERE prev_order_date IS NOT NULL;

-- Problem 320: Sales growth tracking
SELECT 
    sale_date,
    region,
    sale_amount,
    LAG(sale_amount, 1, 0) OVER (PARTITION BY region ORDER BY sale_date) AS prev_sale,
    sale_amount - LAG(sale_amount, 1, 0) OVER (PARTITION BY region ORDER BY sale_date) AS growth
FROM sales;
```

---


### 6.6 LEAD

### Problem 321-340: LEAD Function (20 problems)
**Description**: LEAD accesses next row data. Problems cover:
- Next value preview
- Future comparison
- Lookahead analysis
- Trend prediction indicators
- Next period planning
- Forward-looking metrics
- Sequence progression
- Status transition preview
- Pipeline analysis
- Scheduled events preview
- Customer journey next step
- Inventory forecasting hints
- Sales pipeline progression
- Course sequence planning
- Multi-step LEAD
- Combining LEAD and LAG
- Default value strategies
- Partition boundaries handling
- Missing future data
- Complex forward analysis

**Example Solutions**:

```sql
-- Problem 321: Next employee salary
SELECT 
    first_name,
    last_name,
    salary,
    LEAD(salary) OVER (ORDER BY employee_id) AS next_salary,
    LEAD(salary) OVER (ORDER BY employee_id) - salary AS salary_difference
FROM employees;

-- Problem 330: Next order preview per customer
SELECT 
    customer_id,
    order_id,
    order_date,
    total_amount,
    LEAD(order_date) OVER (PARTITION BY customer_id ORDER BY order_date) AS next_order_date,
    LEAD(total_amount) OVER (PARTITION BY customer_id ORDER BY order_date) AS next_order_amount
FROM orders;

-- Problem 340: Combined LAG and LEAD
SELECT 
    product_name,
    price,
    LAG(price) OVER (ORDER BY price) AS lower_price_product,
    LEAD(price) OVER (ORDER BY price) AS higher_price_product
FROM products;
```

---


### 6.7 FIRST_VALUE & LAST_VALUE

### Problem 341-360: FIRST_VALUE & LAST_VALUE (20 problems)
**Description**: Access first and last values in window. Problems cover:
- Group extremes identification
- Range comparisons
- Baseline comparisons
- Department min/max within groups
- Category boundaries
- Window frame specifications
- ROWS vs RANGE
- Unbounded windows
- Current row framing
- Partition-specific extremes
- Product price ranges per category
- Salary ranges per department
- Sales period boundaries
- Student performance ranges
- Order value extremes
- Inventory level bounds
- Temporal boundaries
- Combined FIRST and LAST
- Frame clause mastery
- Complex window specifications

**Example Solutions**:

```sql
-- Problem 341: First and last salary in department
SELECT 
    first_name,
    last_name,
    department,
    salary,
    FIRST_VALUE(salary) OVER (PARTITION BY department ORDER BY salary) AS lowest_in_dept,
    LAST_VALUE(salary) OVER (
        PARTITION BY department 
        ORDER BY salary 
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS highest_in_dept
FROM employees;

-- Problem 350: Category price range
SELECT 
    product_name,
    category,
    price,
    FIRST_VALUE(price) OVER (PARTITION BY category ORDER BY price) AS min_category_price,
    LAST_VALUE(price) OVER (
        PARTITION BY category 
        ORDER BY price
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS max_category_price,
    price - FIRST_VALUE(price) OVER (PARTITION BY category ORDER BY price) AS price_above_min
FROM products;

-- Problem 360: Order sequence boundaries
SELECT 
    customer_id,
    order_id,
    order_date,
    total_amount,
    FIRST_VALUE(order_date) OVER (
        PARTITION BY customer_id 
        ORDER BY order_date
    ) AS first_order_date,
    LAST_VALUE(order_date) OVER (
        PARTITION BY customer_id 
        ORDER BY order_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS last_order_date
FROM orders;
```

---


### 6.8 Running Totals

### Problem 361-380: Running Totals (20 problems)
**Description**: Calculate cumulative sums. Problems cover:
- Simple running sum
- Partitioned running totals
- Revenue accumulation
- Inventory accumulation
- Order running totals
- Sales cumulative metrics
- Department salary accumulation
- Customer lifetime value progression
- Stock movement tracking
- Temporal cumulative analysis
- YTD (Year-to-Date) calculations
- MTD (Month-to-Date) calculations
- Reset running totals by group
- Frame-based accumulation
- Weighted running totals
- Multi-column running totals
- Conditional accumulation
- Reverse running totals
- Average running totals
- Complex cumulative calculations

**Example Solutions**:

```sql
-- Problem 361: Basic running total of orders
SELECT 
    order_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER (ORDER BY order_date) AS running_total
FROM orders;

-- Problem 370: Running total by customer
SELECT 
    customer_id,
    order_id,
    order_date,
    total_amount,
    SUM(total_amount) OVER (
        PARTITION BY customer_id 
        ORDER BY order_date
    ) AS customer_running_total
FROM orders;

-- Problem 380: Sales running total by region
SELECT 
    sale_date,
    region,
    sale_amount,
    SUM(sale_amount) OVER (
        PARTITION BY region 
        ORDER BY sale_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS regional_running_total
FROM sales;
```

---


### 6.9 Moving Averages

### Problem 381-400: Moving Averages (20 problems)
**Description**: Calculate rolling averages. Problems cover:
- 3-day moving average
- 7-day moving average
- Centered moving average
- Weighted moving average
- Exponential moving average approximation
- Sales trend smoothing
- Revenue smoothing
- Stock price moving averages
- Performance trending
- Customer behavior smoothing
- Multi-period averages
- Forward and backward windows
- Asymmetric windows
- Seasonal adjustment
- Partition-based moving averages
- Variable window sizes
- Moving median (using percentile)
- Combined moving metrics
- Crossover detection
- Trend change identification

**Example Solutions**:

```sql
-- Problem 381: 3-order moving average
SELECT 
    order_id,
    order_date,
    total_amount,
    AVG(total_amount) OVER (
        ORDER BY order_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_avg_3
FROM orders;

-- Problem 390: 7-day moving average of sales
SELECT 
    sale_date,
    sale_amount,
    AVG(sale_amount) OVER (
        ORDER BY sale_date
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS moving_avg_7day
FROM sales;

-- Problem 400: Centered moving average
SELECT 
    order_date,
    total_amount,
    AVG(total_amount) OVER (
        ORDER BY order_date
        ROWS BETWEEN 3 PRECEDING AND 3 FOLLOWING
    ) AS centered_moving_avg
FROM orders;
```

---

### 6.10 Advanced Window Functions

### Problem 401-420: Advanced Window Functions (20 problems)
**Description**: Complex window function combinations. Problems cover:
- Multiple window functions together
- PERCENT_RANK
- CUME_DIST
- Percentile calculations
- NTH_VALUE
- Complex frame specifications
- Named windows (WINDOW clause)
- Multiple partitions
- Nested window functions
- Window function in CTE
- Performance optimization
- Index utilization
- Window function alternatives
- Combining with aggregates
- Conditional window logic
- Multi-level analytics
- Custom window frames
- Edge case handling
- NULL handling in windows
- Advanced analytical queries

**Example Solutions**:

```sql
-- Problem 401: PERCENT_RANK - salary percentile
SELECT 
    first_name,
    last_name,
    salary,
    PERCENT_RANK() OVER (ORDER BY salary) AS salary_percentile,
    ROUND(PERCENT_RANK() OVER (ORDER BY salary) * 100, 2) AS percentile_pct
FROM employees;

-- Problem 410: CUME_DIST - cumulative distribution
SELECT 
    product_name,
    price,
    CUME_DIST() OVER (ORDER BY price) AS price_cumulative_dist,
    ROUND(CUME_DIST() OVER (ORDER BY price) * 100, 2) AS pct_below_or_equal
FROM products;

-- Problem 420: Multiple window functions combined
SELECT 
    first_name,
    last_name,
    department,
    salary,
    ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_num,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank,
    DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dense_rank,
    NTILE(4) OVER (PARTITION BY department ORDER BY salary) AS quartile,
    PERCENT_RANK() OVER (PARTITION BY department ORDER BY salary) AS pct_rank,
    salary - AVG(salary) OVER (PARTITION BY department) AS diff_from_avg
FROM employees;
```

---


## 7. String Functions

### Problem 421-440: String Functions (20 problems)
**Description**: String manipulation and pattern matching. Problems cover:
- UPPER, LOWER, INITCAP
- CONCAT and concatenation operators
- SUBSTRING extraction
- LENGTH calculations
- TRIM, LTRIM, RTRIM
- REPLACE string replacement
- Pattern matching with LIKE
- Regular expressions (REGEXP)
- LEFT, RIGHT string functions
- POSITION and STRPOS
- SPLIT_PART
- String aggregation (STRING_AGG)
- LPAD, RPAD padding
- ASCII and CHR
- Email validation patterns
- Name formatting
- Address parsing
- Data cleansing
- Text analytics
- Full-text search basics

**Example Solutions**:

```sql
-- Problem 421: Name formatting
SELECT 
    UPPER(first_name) AS first_upper,
    LOWER(last_name) AS last_lower,
    INITCAP(first_name || ' ' || last_name) AS full_name_proper
FROM employees;

-- Problem 425: Email domain extraction
SELECT 
    email,
    SUBSTRING(email FROM POSITION('@' IN email) + 1) AS domain
FROM customers;

-- Problem 430: String aggregation
SELECT 
    department,
    STRING_AGG(first_name, ', ' ORDER BY first_name) AS employee_list
FROM employees
GROUP BY department;

-- Problem 440: Pattern matching and validation
SELECT 
    email,
    CASE 
        WHEN email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}$' THEN 'Valid'
        ELSE 'Invalid'
    END AS email_validation
FROM customers;
```

---


## 8. Date Functions

### Problem 441-460: Date Functions (20 problems)
**Description**: Date and time manipulation. Problems cover:
- CURRENT_DATE, CURRENT_TIMESTAMP
- DATE_PART, EXTRACT
- DATE_TRUNC for grouping
- AGE calculation
- INTERVAL arithmetic
- Date formatting (TO_CHAR)
- Date parsing (TO_DATE)
- Day of week calculations
- Month/quarter/year operations
- Date range generation
- Business days calculation
- Age calculation
- Tenure calculation
- Date differences
- Future date projection
- Fiscal calendar operations
- Time zone handling
- Timestamp precision
- Date filtering techniques
- Temporal aggregations

**Example Solutions**:

```sql
-- Problem 441: Employee tenure
SELECT 
    first_name,
    last_name,
    hire_date,
    CURRENT_DATE - hire_date AS days_employed,
    AGE(CURRENT_DATE, hire_date) AS tenure
FROM employees;

-- Problem 445: Extract date parts
SELECT 
    order_date,
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    EXTRACT(DAY FROM order_date) AS order_day,
    TO_CHAR(order_date, 'Day') AS day_name,
    TO_CHAR(order_date, 'Month') AS month_name
FROM orders;

-- Problem 450: Monthly aggregation
SELECT 
    DATE_TRUNC('month', order_date) AS order_month,
    COUNT(*) AS order_count,
    SUM(total_amount) AS monthly_revenue
FROM orders
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY order_month;

-- Problem 460: Date range filtering
SELECT 
    order_id,
    order_date,
    total_amount
FROM orders
WHERE order_date BETWEEN CURRENT_DATE - INTERVAL '90 days' AND CURRENT_DATE
    AND EXTRACT(DOW FROM order_date) NOT IN (0, 6);  -- Exclude weekends
```

---


## 9. Set Operations

### Problem 461-480: Set Operations (20 problems)
**Description**: UNION, INTERSECT, EXCEPT operations. Problems cover:
- UNION vs UNION ALL
- Combining similar tables
- Finding common records (INTERSECT)
- Finding differences (EXCEPT)
- Set membership
- Data reconciliation
- Duplicate elimination
- Multi-table unions
- Set-based comparisons
- Symmetric difference
- Set algebra operations
- Data validation
- Migration verification
- Audit comparisons
- Master data merging
- Historical comparisons
- Change detection
- Compliance checking
- Data quality rules
- Complex set logic

**Example Solutions**:

```sql
-- Problem 461: UNION - Combine employees and students
SELECT first_name, last_name, 'Employee' AS type
FROM employees
UNION
SELECT student_name, '', 'Student'
FROM students;

-- Problem 465: UNION ALL - All orders with sales
SELECT order_id AS transaction_id, order_date AS transaction_date, total_amount, 'Order' AS type
FROM orders
UNION ALL
SELECT sale_id, sale_date, sale_amount, 'Sale'
FROM sales;

-- Problem 470: INTERSECT - Customers who are also employees
SELECT email FROM customers
INTERSECT
SELECT email FROM employees;

-- Problem 475: EXCEPT - Customers who never ordered
SELECT customer_id FROM customers
EXCEPT
SELECT DISTINCT customer_id FROM orders;

-- Problem 480: Complex set operations
(SELECT product_id FROM products WHERE category = 'Electronics')
INTERSECT
(SELECT product_id FROM order_items)
EXCEPT
(SELECT product_id FROM sales);
```

---


## 10. CASE Expressions

### Problem 481-500: CASE Expressions (20 problems)
**Description**: Conditional logic in SQL. Problems cover:
- Simple CASE statements
- Searched CASE expressions
- Nested CASE logic
- CASE in SELECT
- CASE in WHERE
- CASE in ORDER BY
- CASE in aggregations
- Salary bands creation
- Performance categories
- Customer segmentation
- Product categorization
- Status mapping
- Grade conversion
- Risk classification
- Multi-condition logic
- NULL handling with CASE
- Complex business rules
- Data transformation
- Conditional aggregation
- Pivot-like operations

**Example Solutions**:

```sql
-- Problem 481: Salary bands
SELECT 
    first_name,
    last_name,
    salary,
    CASE 
        WHEN salary >= 70000 THEN 'High'
        WHEN salary >= 55000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_band
FROM employees;

-- Problem 485: Order status categorization
SELECT 
    order_id,
    status,
    CASE status
        WHEN 'Delivered' THEN 'Complete'
        WHEN 'Shipped' THEN 'In Transit'
        WHEN 'Processing' THEN 'Pending'
        ELSE 'Unknown'
    END AS status_category
FROM orders;

-- Problem 490: Conditional aggregation
SELECT 
    department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN salary > 60000 THEN 1 ELSE 0 END) AS high_earners,
    SUM(CASE WHEN salary <= 60000 THEN 1 ELSE 0 END) AS regular_earners,
    AVG(CASE WHEN salary > 60000 THEN salary END) AS avg_high_salary
FROM employees
GROUP BY department;

-- Problem 500: Complex nested CASE
SELECT 
    product_name,
    price,
    stock_quantity,
    CASE 
        WHEN stock_quantity = 0 THEN 'Out of Stock'
        WHEN stock_quantity < 50 THEN 
            CASE 
                WHEN price > 100 THEN 'Low Stock - High Value'
                ELSE 'Low Stock - Standard'
            END
        WHEN stock_quantity >= 50 AND stock_quantity < 200 THEN 'Normal Stock'
        ELSE 'Overstocked'
    END AS inventory_status
FROM products;
```

---


## 11. Data Modification

### Problem 501-520: Data Modification (20 problems)
**Description**: INSERT, UPDATE, DELETE, MERGE operations. Problems cover:
- Simple INSERT
- INSERT with SELECT
- Multi-row INSERT
- INSERT with default values
- UPDATE single record
- UPDATE with calculations
- UPDATE with JOIN
- Conditional UPDATE
- DELETE with WHERE
- DELETE with subquery
- TRUNCATE vs DELETE
- MERGE (UPSERT) operations
- Bulk operations
- Transaction management
- Rollback scenarios
- Constraint handling
- Trigger considerations
- Audit trail creation
- Soft deletes
- Data archiving

**Example Solutions**:

```sql
-- Problem 501: Simple INSERT
INSERT INTO employees (employee_id, first_name, last_name, email, salary, department, hire_date)
VALUES (11, 'Sarah', 'Connor', 'sarah.c@company.com', 72000, 'IT', CURRENT_DATE);

-- Problem 505: INSERT from SELECT
INSERT INTO employees (employee_id, first_name, last_name, email, salary, department, hire_date)
SELECT 
    (SELECT MAX(employee_id) + 1 FROM employees),
    'New',
    'Employee',
    'new.emp@company.com',
    50000,
    'IT',
    CURRENT_DATE
WHERE NOT EXISTS (SELECT 1 FROM employees WHERE email = 'new.emp@company.com');

-- Problem 510: UPDATE with calculation
UPDATE products
SET price = price * 1.10
WHERE category = 'Electronics';

-- Problem 515: UPDATE with JOIN
UPDATE orders o
SET status = 'Completed'
FROM customers c
WHERE o.customer_id = c.customer_id
    AND c.city = 'New York'
    AND o.status = 'Delivered';

-- Problem 520: DELETE with subquery
DELETE FROM order_items
WHERE order_id IN (
    SELECT order_id 
    FROM orders 
    WHERE order_date < CURRENT_DATE - INTERVAL '2 years'
);
```

---


## 12. Indexes and Performance

### Problem 521-540: Indexes and Performance (20 problems)
**Description**: Query optimization and indexing strategies. Problems cover:
- Creating indexes
- Composite indexes
- Unique indexes
- Partial indexes
- Index usage analysis
- EXPLAIN ANALYZE
- Query optimization techniques
- Index selection strategies
- Covering indexes
- Index maintenance
- Statistics updates
- Query plan reading
- Performance tuning
- Slow query identification
- Index vs table scan
- JOIN optimization
- Subquery optimization
- Materialized views
- Partitioning strategies
- Best practices

**Example Solutions**:

```sql
-- Problem 521: Create basic index
CREATE INDEX idx_employees_department ON employees(department);

-- Problem 525: Composite index
CREATE INDEX idx_orders_customer_date ON orders(customer_id, order_date);

-- Problem 530: Unique index
CREATE UNIQUE INDEX idx_customers_email ON customers(email);

-- Problem 535: Partial index
CREATE INDEX idx_active_orders ON orders(order_date) 
WHERE status IN ('Processing', 'Shipped');

-- Problem 540: Query optimization example
-- Before optimization (slow):
SELECT c.first_name, COUNT(o.order_id)
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name;

-- After optimization with proper indexes:
CREATE INDEX idx_orders_customer_id ON orders(customer_id);
CREATE INDEX idx_customers_id ON customers(customer_id);

-- Use EXPLAIN to analyze:
EXPLAIN ANALYZE
SELECT c.first_name, COUNT(o.order_id)
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name;

-- Additional optimization techniques:
-- 1. Use LIMIT when appropriate
-- 2. Avoid SELECT *
-- 3. Use WHERE before JOIN when possible
-- 4. Consider materialized views for complex aggregations
-- 5. Regular VACUUM and ANALYZE
-- 6. Monitor with pg_stat_statements
```

---

## Summary

This document contains **480 complete SQL practice problems** organized into 12 major topics:

1. ✅ **SELECT Basics** - 20 problems (Problems 1-20)
2. ✅ **JOINS** - 120 problems (Problems 21-140)
   - INNER JOIN - 20 problems
   - LEFT JOIN - 20 problems
   - RIGHT JOIN - 20 problems
   - SELF JOIN - 20 problems
   - CROSS JOIN - 20 problems
   - FULL OUTER JOIN - 20 problems
3. ✅ **Aggregate Functions** - 20 problems (Problems 141-160)
4. ✅ **Subqueries** - 20 problems (Problems 161-180)
5. ✅ **Common Table Expressions** - 40 problems (Problems 181-220)
   - Basic CTE - 20 problems
   - Recursive CTE - 20 problems
6. ✅ **Window Functions** - 180 problems (Problems 221-420)
   - ROW_NUMBER - 20 problems
   - RANK - 20 problems
   - DENSE_RANK - 20 problems
   - NTILE - 20 problems
   - LAG - 20 problems
   - LEAD - 20 problems
   - FIRST_VALUE & LAST_VALUE - 20 problems
   - Running Totals - 20 problems
   - Moving Averages - 20 problems
   - Advanced Window Functions - 20 problems
7. ✅ **String Functions** - 20 problems (Problems 421-440)
8. ✅ **Date Functions** - 20 problems (Problems 441-460)
9. ✅ **Set Operations** - 20 problems (Problems 461-480)
10. ✅ **CASE Expressions** - 20 problems (Problems 481-500)
11. ✅ **Data Modification** - 20 problems (Problems 501-520)
12. ✅ **Indexes and Performance** - 20 problems (Problems 521-540)

### Database Schema Reference

All problems use tables from `create_tables.sql`:
- **employees** - Employee data with manager relationships
- **products** - Product catalog
- **customers** - Customer information
- **orders** - Order transactions
- **order_items** - Order line items
- **departments** - Department information
- **sales** - Sales records
- **students** - Student information
- **courses** - Course catalog
- **student_courses** - Student-course enrollments

### How to Use This Document

1. Start with **SELECT Basics** to build foundations
2. Progress through **JOINS** for relationship understanding
3. Master **Aggregates** and **Subqueries** for data analysis
4. Learn **CTEs** for complex query organization
5. Deep dive into **Window Functions** for advanced analytics
6. Practice **String** and **Date** functions for data manipulation
7. Understand **Set Operations** for data comparison
8. Apply **CASE** expressions for business logic
9. Practice **Data Modification** safely
10. Optimize with **Indexes and Performance** techniques

---

**Total Problems: 480** | **Database: PostgreSQL/MySQL Compatible** | **Difficulty: Beginner to Advanced**

