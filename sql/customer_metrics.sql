-- Customer metrics (generic SQL)

-- ARPU (Average Revenue Per User) by month
SELECT
  strftime('%Y-%m', transaction_date) AS month,
  SUM(amount) * 1.0 / COUNT(DISTINCT customer_id) AS arpu
FROM customer_transactions
GROUP BY month
ORDER BY month;

-- Churn rate example (if you have churn_flag 1/0 by month)
SELECT
  strftime('%Y-%m', snapshot_date) AS month,
  AVG(churn_flag) AS churn_rate
FROM customer_status
GROUP BY month
ORDER BY month;
