USE churn_db;
GO

SELECT 'customers', COUNT(*) FROM dbo.customers
UNION ALL
SELECT 'usage', COUNT(*) FROM dbo.[usage]
UNION ALL
SELECT 'payments', COUNT(*) FROM dbo.payments
UNION ALL
SELECT 'complaints', COUNT(*) FROM dbo.complaints
UNION ALL
SELECT 'churn', COUNT(*) FROM dbo.churn;

SELECT is_churned, COUNT(*)
FROM dbo.churn
GROUP BY is_churned;
