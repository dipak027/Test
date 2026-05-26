// SQL Topics Data Structure
const sqlTopicsData = [
    {
        id: 1,
        title: "SELECT Basics",
        theory: [
            "<strong>What it is:</strong> SELECT statement is the foundation of SQL queries, used to retrieve data from database tables",
            "<strong>Purpose:</strong> Query specific columns, filter rows with WHERE, sort with ORDER BY, and limit results",
            "<strong>Key Components:</strong> SELECT (columns), FROM (tables), WHERE (filters), ORDER BY (sorting), LIMIT (row count)"
        ],
        pseudoCode: `SELECT column1, column2
FROM table_name
WHERE condition
ORDER BY column1 ASC;`,
        exampleProblems: [
            { title: "Get all products", desc: "Retrieve all records from products table", table: "products", output: "All product data" },
            { title: "Filter by price", desc: "Find products where price > 100", table: "products", output: "Expensive products" }
        ],
