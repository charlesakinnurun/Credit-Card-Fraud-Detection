SELECT MIN(Amount) AS min_non_fraud_amount
FROM fraud
WHERE Class = 0;