WITH category_daily AS (
  SELECT
    sale_date,
    category,
    amount,
    SUM(amount) OVER (PARTITION BY category ORDER BY sale_date) AS running_total
  FROM daily_sales
),
previous_day AS (
  SELECT
    sale_date,
    category,
    amount,
    running_total,
    LAG(running_total) OVER (PARTITION BY category ORDER BY sale_date) AS prev_running_total
  FROM category_daily
)
SELECT
  sale_date,
  category,
  amount,
  running_total,
  prev_running_total,
  (running_total - COALESCE(prev_running_total, 0)) AS daily_increment
FROM previous_day
ORDER BY category, sale_date;
