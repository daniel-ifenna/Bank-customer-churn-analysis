SELECT *
FROM bank_customer_churn;

SELECT *
FROM bank_customer_churn
WHERE age = '';

WITH DUPLICATED AS(
	SELECT *,
    ROW_NUMBER()OVER(PARTITION BY customer_id, credit_score, country, gender, age, tenure, balance, 
						products_number, credit_card, active_member, estimated_salary, churn ORDER BY churn) AS Count_duplicate
	FROM bank_customer_churn)
    SELECT *
    FROM DUPLICATED
    WHERE count_duplicate > 1;
    
    SELECT DISTINCT country
    FROM bank_customer_churn
    ORDER BY 1;
    
    SELECT COUNT(*)
    FROM bank_customer_churn
    WHERE churn = 1;
    
     SELECT GENDER, country, COUNT(GENDER)
    FROM bank_customer_churn
    WHERE churn = 1
    GROUP BY GENDER, country;
    
    