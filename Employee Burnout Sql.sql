--Q1. How many high-risk employees?

SELECT risk_category, COUNT(*) 
FROM "hr-employee"
GROUP BY risk_category
ORDER BY COUNT(*) DESC;


--Q2. Total revenue at risk?

SELECT SUM(revenue_at_risk) AS total_revenue_risk
FROM "hr-employee";


--Q3. Which department is most risky?

SELECT "Department", SUM(revenue_at_risk) AS total_risk
FROM "hr-employee"
GROUP BY "Department"
ORDER BY total_risk DESC;


--Q4. Top 10 employees to save?

SELECT "EmployeeNumber", attrition_probability, revenue_at_risk, risk_category
FROM "hr-employee"
ORDER BY revenue_at_risk DESC
LIMIT 10;


--Q5: Burnout by department?

SELECT "Department", AVG(burnout_score) AS avg_burnout
FROM "hr-employee"
GROUP BY "Department"
ORDER BY avg_burnout DESC;


--Q6: Action distribution?

SELECT recommended_action, COUNT(*)
FROM "hr-employee"
GROUP BY recommended_action
ORDER BY COUNT(*) DESC;



--Q7. High salary + high risk?

SELECT *
FROM "hr-employee"
WHERE attrition_probability > 0.7
AND annual_salary > 200000;