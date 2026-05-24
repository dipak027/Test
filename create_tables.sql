-- ========================================
-- SQL LEARNING DATABASE SETUP
-- Complete table creation script
-- ========================================

-- Drop existing tables if they exist
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS student_courses;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;

-- ========================================
-- 1. EMPLOYEES TABLE
-- Used for: SELECT, WHERE, JOINs, Aggregations
-- ========================================
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10, 2),
    department VARCHAR(50),
    hire_date DATE,
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

INSERT INTO employees VALUES
(1, 'John', 'Doe', 'john.doe@company.com', 75000, 'IT', '2020-01-15', NULL),
(2, 'Jane', 'Smith', 'jane.smith@company.com', 65000, 'HR', '2019-03-20', NULL),
(3, 'Bob', 'Johnson', 'bob.j@company.com', 55000, 'IT', '2021-06-10', 1),
(4, 'Alice', 'Williams', 'alice.w@company.com', 60000, 'Sales', '2020-08-05', NULL),
(5, 'Charlie', 'Brown', 'charlie.b@company.com', 52000, 'IT', '2021-09-12', 1),
(6, 'Diana', 'Davis', 'diana.d@company.com', 58000, 'HR', '2020-11-18', 2),
(7, 'Eve', 'Miller', 'eve.m@company.com', 70000, 'Sales', '2019-05-22', 4),
(8, 'Frank', 'Wilson', 'frank.w@company.com', 48000, 'IT', '2022-01-30', 1),
(9, 'Grace', 'Moore', 'grace.m@company.com', 62000, 'HR', '2021-04-14', 2),
(10, 'Henry', 'Taylor', 'henry.t@company.com', 67000, 'Sales', '2020-07-08', 4);



-- ========================================
-- 2. PRODUCTS TABLE
-- Used for: SELECT, WHERE, Aggregations
-- ========================================
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT,
    supplier VARCHAR(50)
);

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 899.99, 50, 'TechCorp'),
(2, 'Mouse', 'Electronics', 25.50, 200, 'TechCorp'),
(3, 'Keyboard', 'Electronics', 45.00, 150, 'TechCorp'),
(4, 'Monitor', 'Electronics', 299.99, 75, 'DisplayCo'),
(5, 'Desk Chair', 'Furniture', 199.99, 30, 'FurniWorld'),
(6, 'Desk', 'Furniture', 349.99, 25, 'FurniWorld'),
(7, 'Notebook', 'Stationery', 3.99, 500, 'PaperPlus'),
(8, 'Pen Set', 'Stationery', 12.99, 300, 'PaperPlus'),
(9, 'USB Cable', 'Electronics', 8.99, 400, 'TechCorp'),
(10, 'Headphones', 'Electronics', 79.99, 100, 'AudioMax'),
(11, 'Webcam', 'Electronics', 65.00, 80, 'TechCorp'),
(12, 'Desk Lamp', 'Furniture', 35.50, 120, 'FurniWorld'),
(13, 'File Organizer', 'Stationery', 18.99, 150, 'PaperPlus'),
(14, 'Printer', 'Electronics', 199.99, 40, 'PrintPro'),
(15, 'Paper Ream', 'Stationery', 6.99, 600, 'PaperPlus');



-- ========================================
-- 3. CUSTOMERS TABLE
-- Used for: JOINs, Subqueries
-- ========================================
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    city VARCHAR(50),
    country VARCHAR(50),
    registration_date DATE
);

INSERT INTO customers VALUES
(1, 'Michael', 'Scott', 'michael.s@email.com', '555-0101', 'New York', 'USA', '2021-01-10'),
(2, 'Pam', 'Beesly', 'pam.b@email.com', '555-0102', 'Los Angeles', 'USA', '2021-02-15'),
(3, 'Jim', 'Halpert', 'jim.h@email.com', '555-0103', 'Chicago', 'USA', '2021-03-20'),
(4, 'Dwight', 'Schrute', 'dwight.s@email.com', '555-0104', 'Houston', 'USA', '2021-04-12'),
(5, 'Angela', 'Martin', 'angela.m@email.com', '555-0105', 'Phoenix', 'USA', '2021-05-18'),
(6, 'Kevin', 'Malone', 'kevin.m@email.com', '555-0106', 'Philadelphia', 'USA', '2021-06-22'),
(7, 'Oscar', 'Martinez', 'oscar.m@email.com', '555-0107', 'San Antonio', 'USA', '2021-07-30'),
(8, 'Ryan', 'Howard', 'ryan.h@email.com', '555-0108', 'San Diego', 'USA', '2021-08-14'),
(9, 'Kelly', 'Kapoor', 'kelly.k@email.com', '555-0109', 'Dallas', 'USA', '2021-09-05'),
(10, 'Toby', 'Flenderson', 'toby.f@email.com', '555-0110', 'San Jose', 'USA', '2021-10-11');



-- ========================================
-- 4. ORDERS TABLE
-- Used for: JOINs, Aggregations, Date functions
-- ========================================
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(1, 1, '2023-01-15', 950.48, 'Delivered'),
(2, 2, '2023-01-20', 75.50, 'Delivered'),
(3, 1, '2023-02-10', 349.99, 'Delivered'),
(4, 3, '2023-02-14', 125.98, 'Shipped'),
(5, 4, '2023-03-05', 899.99, 'Delivered'),
(6, 2, '2023-03-18', 245.48, 'Delivered'),
(7, 5, '2023-04-02', 65.00, 'Processing'),
(8, 6, '2023-04-15', 534.97, 'Shipped'),
(9, 3, '2023-05-01', 79.99, 'Delivered'),
(10, 7, '2023-05-10', 199.99, 'Delivered'),
(11, 1, '2023-05-22', 45.00, 'Delivered'),
(12, 8, '2023-06-03', 299.99, 'Processing'),
(13, 9, '2023-06-18', 150.47, 'Shipped'),
(14, 4, '2023-07-05', 899.99, 'Delivered'),
(15, 10, '2023-07-20', 35.50, 'Delivered');



-- ========================================
-- 5. ORDER_ITEMS TABLE
-- Used for: Complex JOINs, Aggregations
-- ========================================
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(1, 1, 1, 1, 899.99),
(2, 1, 2, 2, 25.50),
(3, 2, 3, 1, 45.00),
(4, 2, 7, 3, 3.99),
(5, 2, 8, 1, 12.99),
(6, 3, 6, 1, 349.99),
(7, 4, 10, 1, 79.99),
(8, 4, 3, 1, 45.00),
(9, 5, 1, 1, 899.99),
(10, 6, 4, 1, 299.99),
(11, 7, 11, 1, 65.00),
(12, 8, 6, 1, 349.99),
(13, 8, 5, 1, 199.99),
(14, 9, 10, 1, 79.99),
(15, 10, 14, 1, 199.99);



-- ========================================
-- 6. DEPARTMENTS TABLE
-- Used for: JOINs, Aggregations
-- ========================================
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(50),
    budget DECIMAL(12, 2)
);

INSERT INTO departments VALUES
(1, 'IT', 'Building A', 500000),
(2, 'HR', 'Building B', 300000),
(3, 'Sales', 'Building C', 400000),
(4, 'Marketing', 'Building B', 350000),
(5, 'Finance', 'Building A', 450000);

-- ========================================
-- 7. SALES TABLE
-- Used for: Window functions, Aggregations, CTEs
-- ========================================
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    employee_id INT,
    product_id INT,
    sale_date DATE,
    quantity INT,
    sale_amount DECIMAL(10, 2),
    region VARCHAR(50),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO sales VALUES
(1, 4, 1, '2023-01-15', 2, 1799.98, 'East'),
(2, 7, 2, '2023-01-20', 5, 127.50, 'West'),
(3, 4, 10, '2023-02-05', 3, 239.97, 'East'),
(4, 7, 3, '2023-02-10', 4, 180.00, 'West'),
(5, 4, 1, '2023-03-01', 1, 899.99, 'East'),
(6, 7, 4, '2023-03-15', 2, 599.98, 'West'),
(7, 4, 14, '2023-04-05', 3, 599.97, 'East'),
(8, 7, 5, '2023-04-20', 1, 199.99, 'West'),
(9, 4, 1, '2023-05-10', 1, 899.99, 'East'),
(10, 7, 10, '2023-05-25', 5, 399.95, 'West');



-- ========================================
-- 8. STUDENTS TABLE
-- Used for: Many-to-Many relationships, JOINs
-- ========================================
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    enrollment_date DATE,
    major VARCHAR(50)
);

INSERT INTO students VALUES
(1, 'Emma Watson', 'emma.w@university.edu', '2022-09-01', 'Computer Science'),
(2, 'Liam Johnson', 'liam.j@university.edu', '2022-09-01', 'Mathematics'),
(3, 'Olivia Brown', 'olivia.b@university.edu', '2022-09-01', 'Physics'),
(4, 'Noah Davis', 'noah.d@university.edu', '2023-01-15', 'Computer Science'),
(5, 'Ava Wilson', 'ava.w@university.edu', '2023-01-15', 'Chemistry'),
(6, 'Ethan Moore', 'ethan.m@university.edu', '2023-01-15', 'Mathematics');

-- ========================================
-- 9. COURSES TABLE
-- Used for: Many-to-Many relationships, JOINs
-- ========================================
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT,
    instructor VARCHAR(100)
);

INSERT INTO courses VALUES
(1, 'Database Systems', 3, 'Dr. Smith'),
(2, 'Data Structures', 4, 'Prof. Johnson'),
(3, 'Calculus I', 4, 'Dr. Williams'),
(4, 'Physics I', 4, 'Prof. Brown'),
(5, 'Chemistry I', 3, 'Dr. Davis'),
(6, 'Linear Algebra', 3, 'Prof. Miller');



-- ========================================
-- 10. STUDENT_COURSES (Junction Table)
-- Used for: Many-to-Many relationships, Complex JOINs
-- ========================================
CREATE TABLE student_courses (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO student_courses VALUES
(1, 1, 1, '2022-09-01', 'A'),
(2, 1, 2, '2022-09-01', 'A'),
(3, 2, 2, '2022-09-01', 'B'),
(4, 2, 3, '2022-09-01', 'A'),
(5, 2, 6, '2022-09-01', 'A'),
(6, 3, 4, '2022-09-01', 'B'),
(7, 3, 3, '2022-09-01', 'A'),
(8, 4, 1, '2023-01-15', 'B'),
(9, 4, 2, '2023-01-15', 'A'),
(10, 5, 5, '2023-01-15', 'A'),
(11, 5, 3, '2023-01-15', 'B'),
(12, 6, 3, '2023-01-15', 'A'),
(13, 6, 6, '2023-01-15', 'A');

-- ========================================
-- VERIFICATION QUERIES
-- Run these to verify data was inserted correctly
-- ========================================

SELECT 'Employees Count' as Table_Name, COUNT(*) as Row_Count FROM employees
UNION ALL
SELECT 'Products Count', COUNT(*) FROM products
UNION ALL
SELECT 'Customers Count', COUNT(*) FROM customers
UNION ALL
SELECT 'Orders Count', COUNT(*) FROM orders
UNION ALL
SELECT 'Order_Items Count', COUNT(*) FROM order_items
UNION ALL
SELECT 'Departments Count', COUNT(*) FROM departments
UNION ALL
SELECT 'Sales Count', COUNT(*) FROM sales
UNION ALL
SELECT 'Students Count', COUNT(*) FROM students
UNION ALL
SELECT 'Courses Count', COUNT(*) FROM courses
UNION ALL
SELECT 'Student_Courses Count', COUNT(*) FROM student_courses;
