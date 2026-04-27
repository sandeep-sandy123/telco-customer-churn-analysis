CREATE DATABASE TelcoChurn;
USE TelcoChurn;

SELECT COUNT(*) AS total_rows FROM [Telco-Customer-Churn];

--Query 1
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CAST(Churn AS INT)) AS churned,
    ROUND(SUM(CAST(Churn AS INT)) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM [Telco-Customer-Churn]
GROUP BY Contract
ORDER BY churn_rate_pct DESC;

--Query 2 
SELECT 
    OnlineSecurity,
    COUNT(*) AS total_customers,
    SUM(CAST(Churn AS INT)) AS churned,
    ROUND(SUM(CAST(Churn AS INT)) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM [Telco-Customer-Churn]
GROUP BY OnlineSecurity
ORDER BY churn_rate_pct DESC;

--Query 3
SELECT 
    CASE 
        WHEN MonthlyCharges <= 30 THEN 'Low'
        WHEN MonthlyCharges <= 60 THEN 'Mid'
        WHEN MonthlyCharges <= 90 THEN 'High'
        ELSE 'Premium'
    END AS charge_segment,
    COUNT(*) AS total_customers,
    SUM(CAST(Churn AS INT)) AS churned,
    ROUND(SUM(CAST(Churn AS INT)) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM [Telco-Customer-Churn]
GROUP BY 
    CASE 
        WHEN MonthlyCharges <= 30 THEN 'Low'
        WHEN MonthlyCharges <= 60 THEN 'Mid'
        WHEN MonthlyCharges <= 90 THEN 'High'
        ELSE 'Premium'
    END
ORDER BY churn_rate_pct DESC;