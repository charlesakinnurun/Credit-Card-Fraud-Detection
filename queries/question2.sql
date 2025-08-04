SELECT SUM(Amount) AS average_non_fraud_amount
FROM fraud
WHERE Class = 0;