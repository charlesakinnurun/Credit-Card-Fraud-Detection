# Introduction
![Credit Fraud Detection](assets/fraud.jpg)
***
The provided CREDIT CARD.csv file is a dataset containing credit card transaction information. The file includes columns for Time, Amount, and Class, along with 28 other anonymized features labeled V1 through V28. The Class column is particularly important as it indicates whether a transaction is fraudulent (Class = 1) or not (Class = 0). This dataset can be used for analyzing and detecting fraudulent credit card transactions.
***
🔍 SQL queries? Check them out [here](/queries/):
# Background
Driven by a quest to understand and analyze transactional anomalies, this analysis leverages a comprehensive dataset on credit card transactions. The aim is to pinpoint key metrics impacting fraudulent activity, identify trends in transaction features and amounts, and uncover actionable insights into the factors contributing to fraud. The analysis focuses on metrics such as transaction time, transaction amount, and various anonymized features (V1-V28) to maximize the understanding of fraudulent transaction dynamics. A key metric is the 'Class' column, which distinguishes between legitimate and fraudulent transactions.
# Questions
1. Count of Fraudulent and Non-Fraudulent Transactions: How many transactions are fraudulent (Class = 1) and how many are non-fraudulent (Class = 0)?
2. Total Amount of Fraudulent Transactions: What is the total amount of money involved in fraudulent transactions?
3. Average Amount of Non-Fraudulent Transactions: What is the average transaction amount for non-fraudulent transactions?
4. Transactions with Amount Greater Than a Certain Value: List all transactions where the Amount is greater than 500.
5. Transactions within a Specific Time Range: Find all transactions that occurred between 100 and 500 seconds (inclusive) from the first transaction.
6. Maximum Transaction Amount for Fraudulent Transactions: What is the maximum transaction amount among all fraudulent transactions?
7. Minimum Transaction Amount for Non-Fraudulent Transactions: What is the minimum transaction amount among all non-fraudulent transactions?
8. Count of Transactions per Unique Time Value: How many transactions occurred at each unique Time value?
9. Transactions with 'V' Columns Meeting a Condition: List all transactions where V1 is less than -2.0 and V2 is greater than 0.5.
10. Fraudulent Transactions Ordered by Amount: List all fraudulent transactions, ordered by Amount in descending order.
# Tools I Used
For my deep dive into the digital advertising strategies, I harnessed the power of several key tools:
- **SQL:** The backbone of my analysis, allowing me to query the database and unearth critical insights.
- **MySQL:** The chosen database management system, ideal for handling the job posting data.
- **Visual Studio Code:** My go-to for database management and executing SQL queries.
- **Git & GitHub:** Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking.
# Database Creation
```sql
CREATE SCHEMA `creditcard`;
```
# Table Creation
```sql
CREATE TABLE fraud(
    Time INT,
    V1 DECIMAL(10,9),
    V2 DECIMAL(10,9),
    V3 DECIMAL(10,9),
    V4 DECIMAL(10,9),
    V5 DECIMAL(10,9),
    V6 DECIMAL(10,9),
    V7 DECIMAL(10,9),
    V8 DECIMAL(10,9),
    V9 DECIMAL(10,9),
    V10 DECIMAL(10,9),
    V11 DECIMAL(10,9),
    V12 DECIMAL(10,9),
    V13 DECIMAL(10,9),
    V14 DECIMAL(10,9),
    V15 DECIMAL(10,9),
    V16 DECIMAL(10,9),
    V17 DECIMAL(10,9),
    V18 DECIMAL(10,9),
    V19 DECIMAL(10,9),
    V20 DECIMAL(10,9),
    V21 DECIMAL(10,9),
    V22 DECIMAL(10,9),
    V23 DECIMAL(10,9),
    V24 DECIMAL(10,9),
    V25 DECIMAL(10,9),
    V26 DECIMAL(10,9),
    V27 DECIMAL(10,9),
    V28 DECIMAL(10,9),
    Amount FLOAT,
    Class INT
);
```
# Analysis
#### Transactions with 'V' Columns Meeting a Condition: List all transactions where V1 is less than -2.0 and V2 is greater than 0.5.
```sql
SELECT * FROM fraud
WHERE V1 < -2.0 AND V2 > 0.5;
```
#### Fraudulent Transactions Ordered by Amount: List all fraudulent transactions, ordered by Amount in descending order.
```sql
SELECT * FROM fraud
WHERE Class = 1
ORDER BY Amount DESC;
```
#### Count of Transactions per Unique Time Value: How many transactions occurred at each unique Time value?
```sql
SELECT Time,COUNT(*) AS NumberOfTransactions
FROM fraud
GROUP BY Time
ORDER BY Time;
```
#### Maximum Transaction Amount for Fraudulent Transactions: What is the maximum transaction amount among all fraudulent transactions?
```sql
SELECT MAX(Amount) AS max_fraud_amount
FROM fraud
WHERE Class =  1;
```
The remaining queries are provided below.
[Queries](/queries/)
# What I Learned
Throughout this adventure, I've turbocharged my data analysis toolkit with some serious firepower using SQL:
- **🧩 Advanced Data Manipulation:** I've mastered the art of handling educational data, including filtering by school type or location, and transforming data to compare metrics across different institutions.
- **📊 Data Aggregation:** I've become comfortable using groupby() to analyze aggregate functions like mean() and sum() to understand average test scores and total funding, and used pivot_table to get a comprehensive view of how different factors impact student outcomes.
- **💡 Analytical Wizardry:** I've leveled up my real-world puzzle-solving skills by turning questions about educational disparities into actionable, insightful Pandas operations and analyses.
# Conclusion
This project, by analyzing the credit card transaction data, has provided valuable insights into understanding fraudulent activity and transactional anomalies. The findings from this analysis serve as a guide to identifying key metrics and trends that impact fraud. Analysts and data scientists can gain a deeper understanding of fraud dynamics by focusing on high-impact indicators like transaction time, transaction amount, and other anonymized features (V1-V28). This exploration highlights the importance of continuous data analysis and adaptation to emerging fraud patterns to ensure informed decision-making and a deeper understanding of fraud detection.
