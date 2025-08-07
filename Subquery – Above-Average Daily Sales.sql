SELECT 
  sale_date,
  category,
  amount
FROM daily_sales ds
WHERE amount > (
  SELECT AVG(amount)
  FROM daily_sales
  WHERE category = ds.category
);
