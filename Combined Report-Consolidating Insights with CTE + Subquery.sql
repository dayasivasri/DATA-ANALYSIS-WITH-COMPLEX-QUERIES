WITH avg_by_category AS (
  SELECT category, AVG(amount) AS avg_amount
  FROM daily_sales
  GROUP BY category
),
sales_with_avg AS (
  SELECT
    ds.sale_date,
    ds.category,
    ds.amount,
    aba.avg_amount,
    CASE WHEN ds.amount > aba.avg_amount THEN 'Above Avg' ELSE 'Below Avg' END AS performance
  FROM daily_sales ds
  JOIN avg_by_category aba ON ds.category = aba.category
)
SELECT * FROM sales_with_avg
ORDER BY category, sale_date;
