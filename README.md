# 🎯 SQL Learning Roadmap - Complete Package

## 📦 What's Included

This package contains everything you need to master SQL in an organized, trackable way:

### 1. **create_tables.sql** - Database Setup
- Complete SQL script to create all practice tables
- Includes 10 tables with realistic data:
  - `employees` - Employee information with self-referencing manager
  - `products` - Product catalog with categories
  - `customers` - Customer database
  - `orders` & `order_items` - E-commerce order system
  - `departments` - Department information
  - `sales` - Sales transactions
  - `students`, `courses`, `student_courses` - Educational database

**How to use:**
```sql
-- Run this in your SQL environment (MySQL, PostgreSQL, SQL Server, etc.)
source create_tables.sql;
-- OR copy-paste the entire content and execute
```

### 2. **SQL_Progress_Tracker.csv** - Excel-Compatible Tracker
- **240 problems** organized by topic
- Columns: Topic, Sub-Topic, Problem Number, Description, Status, Notes, Date Completed
- Open in Excel/Google Sheets to track your progress
- Mark problems as "Completed" or "In Progress"
- Add notes for each problem

**Topics Covered (20 problems each):**
1. SELECT Basics
2. JOINS (Inner, Left, Right, Self, Cross, Full Outer)
3. Aggregate Functions (COUNT, SUM, AVG, MIN, MAX, GROUP BY, HAVING)
4. Subqueries (Correlated, EXISTS, ANY, ALL)
5. CTE - Common Table Expressions (including Recursive CTEs)
6. Window Functions (ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD, etc.)
7. String Functions (CONCAT, SUBSTRING, REPLACE, etc.)
8. Date Functions (DATEADD, DATEDIFF, date parts, etc.)
9. Set Operations (UNION, INTERSECT, EXCEPT)
10. CASE Expressions (Simple, Searched, with aggregates)
11. Data Modification (INSERT, UPDATE, DELETE, MERGE, Transactions)
12. Indexes and Performance (Index types, optimization, execution plans)

### 3. **index.html** - Interactive Roadmap (In Progress)
- Web-based interactive learning interface
- Click topics to expand/collapse content
- Mark problems as completed with checkboxes
- Real-time progress tracking
- Tab-based navigation: Theory → Practice → Solutions

### 4. **styles.css** - Beautiful Styling
- Modern, responsive design
- Purple gradient theme
- Mobile-friendly
- Print-friendly for offline use

## 🚀 Quick Start Guide

### Step 1: Set Up Your Database
1. Open your SQL client (MySQL Workbench, pgAdmin, SQL Server Management Studio, etc.)
2. Run the `create_tables.sql` script
3. Verify tables are created:
```sql
SELECT 'Employees' as Table_Name, COUNT(*) as Rows FROM employees
UNION ALL SELECT 'Products', COUNT(*) FROM products;
```

### Step 2: Open Your Progress Tracker
1. Open `SQL_Progress_Tracker.csv` in Excel or Google Sheets
2. Familiarize yourself with the 240 problems
3. Create a copy for backup

### Step 3: Start Learning
1. Pick a topic from the tracker
2. Read the theory (you can find theory in online resources or SQL documentation)
3. Practice the 20 problems for that topic
4. Mark each as "Completed" in your tracker
5. Add notes about what you learned

## 📊 Progress Tracking System

### In Excel/CSV:
- **Status Column**: Mark as "Pending", "In Progress", or "Completed"
- **Notes Column**: Add your learning notes, mistakes, or insights
- **Date Completed**: Track when you finished each problem
- Use filters to see: All problems, Pending only, Completed only
- Use formulas to calculate your progress percentage

### Example Formula for Progress:
```excel
=COUNTIF(E:E,"Completed")/COUNTA(E:E)*100
```

## 🎯 Learning Strategy

### For Beginners:
1. Start with SELECT Basics
2. Move to JOINS
3. Then Aggregate Functions
4. Follow the topic order in the tracker

### For Intermediate:
1. Focus on CTEs, Window Functions, and Subqueries
2. These are commonly asked in interviews
3. Practice recursive CTEs thoroughly

### For Advanced:
1. Master Window Functions completely
2. Focus on Performance and Indexes
3. Learn query optimization
4. Study execution plans

## 📝 Sample Problems by Topic

### SELECT Basics - Example Problems:
1. Select all products
2. Select specific columns (product_name, price)
3. Filter by price > 100
4. Sort by price DESC
5. Filter by category 'Electronics' AND price < 500
6. Use DISTINCT to get unique categories
7. LIMIT results to top 10
8. Use BETWEEN for price range
9. Use IN operator for multiple values
10. Pattern matching with LIKE
... (continues to 20)

### JOINS - Example Problems:
1. INNER JOIN employees and departments
2. LEFT JOIN customers and orders
3. Find customers with no orders
4. Self join for employee-manager relationship
5. Three-table join (orders, customers, products)
... (continues to 20)

### Window Functions - Example Problems:
1. Row number for each employee
2. Rank employees by salary
3. Calculate running total of sales
4. Moving average of last 3 months
5. LAG to find previous month's sales
... (continues to 20)

## 💡 Tips for Success

1. **Practice Daily**: Solve at least 3-5 problems daily
2. **Write by Hand First**: Plan your query before typing
3. **Understand, Don't Memorize**: Focus on understanding the logic
4. **Use Comments**: Comment your complex queries
5. **Optimize**: Always think about query performance
6. **Review**: Revisit solved problems after a week

## 🔗 Additional Resources

- **SQL Documentation**: Check official docs for your database
- **SQLZoo**: Great for interactive practice
- **LeetCode Database**: For interview preparation
- **HackerRank SQL**: Structured learning path

## 📈 Milestones

- [ ] Complete SELECT Basics (20 problems)
- [ ] Master all JOIN types (20 problems)
- [ ] Understand Aggregate Functions (20 problems)
- [ ] Write Complex Subqueries (20 problems)
- [ ] Use CTEs Effectively (20 problems)
- [ ] Master Window Functions (20 problems)
- [ ] Handle String/Date Functions (40 problems)
- [ ] Understand Set Operations (20 problems)
- [ ] Use CASE Expressions (20 problems)
- [ ] Perform Data Modifications (20 problems)
- [ ] Optimize with Indexes (20 problems)

**Total: 240 Problems = SQL Mastery! 🏆**

## 🤝 How to Use This Roadmap

1. **Week 1-2**: SELECT Basics + JOINS (40 problems)
2. **Week 3**: Aggregate Functions (20 problems)
3. **Week 4**: Subqueries + CTEs (40 problems)
4. **Week 5-6**: Window Functions + String Functions (40 problems)
5. **Week 7**: Date Functions + Set Operations (40 problems)
6. **Week 8**: CASE + Data Modification (40 problems)
7. **Week 9**: Indexes and Performance (20 problems)
8. **Week 10**: Review and practice complex problems

## 🎓 Completion Certificate

Once you complete all 240 problems:
- You'll have solid SQL fundamentals
- Ready for technical interviews
- Can handle real-world database tasks
- Understand query optimization
- Ready for advanced topics (stored procedures, triggers, etc.)

---

## 📞 Next Steps

1. Run `create_tables.sql` to set up your practice database
2. Open `SQL_Progress_Tracker.csv` in Excel
3. Start with Problem 1 in SELECT Basics
4. Mark your progress after each problem
5. Review and revise regularly

**Happy Learning! 🚀**
