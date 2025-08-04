SELECT Class,COUNT(*) AS TransactionCount
FROM fraud
GROUP BY Class;