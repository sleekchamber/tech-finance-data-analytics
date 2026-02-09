-- Risk indicators (generic SQL)

-- Expense spike detection (monthly)
SELECT
  strftime('%Y-%m', transaction_date) AS month,
  SUM(expenses) AS total_expenses
FROM tech_financials
GROUP BY month
ORDER BY month;

-- Revenue volatility proxy (monthly change)
WITH monthly AS (
  SELECT
    strftime('%Y-%m', transaction_date) AS month,
    SUM(revenue) AS total_revenue
  FROM tech_financials
  GROUP BY month
)
SELECT
  month,
  total_revenue,
  total_revenue - LAG(total_revenue) OVER (ORDER BY month) AS revenue_change
FROM monthly
ORDER BY month;
