/* =====================================================
   Tech–Finance Data Analytics
   SQL Analysis File
   ===================================================== */

/* ------------------------------
   1. Monthly Revenue Summary
   ------------------------------ */
SELECT
    month,
    SUM(revenue) AS total_revenue,
    SUM(expenses) AS total_expenses,
    SUM(profit) AS total_profit
FROM clean_financials
GROUP BY month
ORDER BY month;


/* ------------------------------
   2. Revenue Growth Rate
   ------------------------------ */
SELECT
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY month) AS previous_month_revenue,
    ROUND(
        (revenue - LAG(revenue) OVER (ORDER BY month)) 
        / LAG(revenue) OVER (ORDER BY month) * 100,
        2
    ) AS revenue_growth_pct
FROM clean_financials;


/* ------------------------------
   3. Monthly Recurring Revenue (MRR)
   ------------------------------ */
SELECT
    month,
    SUM(amount) AS monthly_recurring_revenue
FROM clean_customers
GROUP BY month
ORDER BY month;


/* ------------------------------
   4. Average Revenue Per User (ARPU)
   ------------------------------ */
SELECT
    month,
    ROUND(AVG(amount), 2) AS arpu
FROM clean_customers
GROUP BY month
ORDER BY month;


/* ------------------------------
   5. Revenue by Subscription Tier
   ------------------------------ */
SELECT
    subscription_tier,
    SUM(amount) AS total_revenue
FROM clean_customers
GROUP BY subscription_tier
ORDER BY total_revenue DESC;


/* ------------------------------
   6. Churn Rate by Subscription Tier
   ------------------------------ */
SELECT
    subscription_tier,
    ROUND(AVG(churned) * 100, 2) AS churn_rate_pct
FROM clean_customers
GROUP BY subscription_tier;


/* ------------------------------
   7. Customer Retention Rate
   ------------------------------ */
SELECT
    100 - ROUND(AVG(churned) * 100, 2) AS retention_rate_pct
FROM clean_customers;


/* ------------------------------
   8. Profit Margin Trend
   ------------------------------ */
SELECT
    month,
    ROUND(AVG(profit_margin) * 100, 2) AS avg_profit_margin_pct
FROM clean_financials
GROUP BY month
ORDER BY month;
