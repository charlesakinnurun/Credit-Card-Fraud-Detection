SELECT Time,COUNT(*) AS NumberOfTransactions
FROM fraud
GROUP BY Time
ORDER BY Time;