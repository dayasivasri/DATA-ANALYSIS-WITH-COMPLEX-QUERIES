# DATA-ANALYSIS-WITH-COMPLEX-QUERIES
*Company*: Codetech IT Solutions
*Name*:DAYA SIVASRI
*Intern-ID*:CT04DH2291
*domain*: SQL
*duration*: 4 weeks
*Mentor*: Neela Santhosh
*Description*:In modern data analysis, mastering SQL's advanced capabilities—particularly window functions, Common Table Expressions (CTEs), and subqueries—elevates your ability to extract meaningful patterns and trends from complex datasets. These powerful tools empower analysts to write modular, readable queries that remain both expressive and efficient.
Window Functions: Dynamic Insights Without Losing Detail
Window functions, such as SUM() OVER, LAG(), and RANK(), perform calculations across row sets related to the current row without collapsing those rows into aggregated results. This makes them invaluable for insights like running totals, rankings, or comparisons across time or categories—while preserving record-level detail. For instance, calculating a running total of sales per category across days enables trend tracking; using LAG() allows you to compare current and previous values directly 
DataLemur
Mode
. Whether it's for cumulative sums, moving averages, or percentiles, window functions maintain context while allowing aggregated intelligence to permeate your output.
Common Table Expressions (CTEs): Clarity, Modularity, and Power
CTEs—defined using WITH—are temporary, named result sets that exist only within the execution of a single statement. They shine when breaking complex logic into readable, reusable components. This structure enhances maintainability, reduces duplication, and even enables recursive querying, such as exploring hierarchical relationships 
Medium
Wikipedia
. Within CTEs, you can construct intermediate tables that feed into further analysis, promoting cleaner and more comprehensible query flows. For repeated calculations or when organizing multi-part logic, CTEs dramatically improve readability 
GeeksforGeeks
Crunchy Data
Subqueries: Precise Nesting for Focused Insights
Subqueries—nested within SELECT, FROM, WHERE, or HAVING clauses—serve as on‑the‑fly mini‑queries whose results influence the outer query. They are perfect for scenarios like comparing values to a category average, isolating records above a threshold, or dynamically filtering based on aggregated data 
SQLPad
DataLemur
. Correlated subqueries, which reference columns in the outer query for each row, offer precision in analyses that require row-specific context, such as comparing an employee’s salary to the departmental average.
Synergy: Combining for Sophisticated Analysis
When used together, these tools unlock layered analytical workflows. A CTE can encapsulate base data, window functions can add time‑series dynamics, and subqueries can serve as final filters or comparative tools. Such design enables modular, optimized SQL pipelines—cleanly organized and highly interpretable.
Advantages & Best Practices
Readability & Maintenance: Structuring logic into named sections (via CTEs) improves clarity, especially in collaboration or review. Subqueries aid precision in situational logic 
DataLemur
GeeksforGeeks
Reusability: CTEs allow reuse of logic across multiple branches; less code duplication means easier maintenance 
Stack Overflow
StrataScratch
Performance: While theoretical performance between CTEs and subqueries is often similar, reusing heavy computations via CTEs can reduce overhead. However, always validate using EXPLAIN plans or tests in your environment 
Stack Overflow
StrataScratch
Real-World Application
Imagine analyzing daily sales across categories:
Use a CTE to compute total daily sales.
Apply a window function to calculate cumulative sales and compare each day to the previous via LAG().
Use a subquery to flag days where sales exceeded the category average.
This layered approach results in a clean, modular, and insightful report—highlighting trends, anomalies, and performance at both macro and micro levels.
#output:
<img width="380" height="118" alt="Image" src="https://github.com/user-attachments/assets/3ca7e972-d824-4a4f-a552-971658dc3679" />
