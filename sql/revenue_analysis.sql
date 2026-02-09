-- Revenue & profitability analysis (generic SQL)
-- Adjust table/column names after you load the dataset.

-- Monthly revenue trend
SELECT
  strftime('%Y-%m', transaction_date) AS month,
  SUM(revenue) AS total_revenue
FROM tech_financials
GROUP BY month
ORDER BY month;

-- Profit margin trend
SELECT
  strftime('%Y-%m', transaction_date) AS month,
  SUM(profit) * 1.0 / NULLIF(SUM(revenue), 0) AS profit_margin
FROM tech_financials
GROUP BY month
ORDER BY month;
