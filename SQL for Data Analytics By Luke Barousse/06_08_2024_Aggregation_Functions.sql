-- AGGREGATION FUNCTIONS 
-- Aggregation functions : These functions compute a single result from input values. 
-- SUM() : Adds together all values in a specific columns. 
-- COUNT() : Counts the number of rows that match a specified criterion. 
-- AVG() : Calculates the average values of a numeric columns. 
-- MAX() : Finds the maximum values ina set of values. 
-- MIN() : Finda the minimum values ina set of values. 

/* Used in conjunction with GROUP BY and/or HAVING
GROUP BY 
- Group rows that share a property so that aggregate functions can be applied 
- Example:
SELECT department, 
SUM(salary) AS department_salary 
FROM employees 
GROUP BY department;

HAVING 
Filter groups based on the result of an aggregate function (unlike WHERE, which filters rows) 
example:
SELECT department, 
	COUNT(employee_id) 
FROM employees 
GROUP BY department 
HAVING COUNT(emplyee_id) > 10;
 
SELECT SUM(salary_year_avg) AS salary_sum
FROM job_postings_fact 

SELECT SUM(salary_year_avg) AS salary_sum
	   COUNT(*) AS count_rows
FROM job_postings_fact 

- Count unique rows 
COUNT(DISTINCT column) - gives the distinct count of rows that match the specified criteria

SELECT COUNT(DISTINCT job_title_short) AS job_type_total 
FROM job_postings_fact 

AVG - Average of column 

SELECT AVG(salary_year_avg) AS salary_avg,
	   MIN(salary_year_avg) AS salary_min,
       MAX(salary_year_avg) AS salary_max
FROM job_posting_fact
WHERE job_title_short = 'Data Analyst' 


GROUP BY 
- Group rows that have the same values into summary rows 
eg total number of sales by each item 
NOTE : if you have an aggregate function, you need to inclued every column thats not agggregared (if not it gives an error) 

HAVING 

- filter query based on aggregate functions and groupings 
Used because you cant use aggregate function in WHERE 

HAVING AVG (salary_year_avg) > 75000

SELECT job_title_short AS jobs, 
		AVG (salary_year_avg) AS salary_avg, 
        MIN (salary_year_avg) AS salary_min,
        MAX (salary_year_avg) AS salary_max 
FROM job_postings_fact 
GROUP BY job_title_short 
HAVING COUNT(job_title_short) > 100
ORDER BY salary_avg 
