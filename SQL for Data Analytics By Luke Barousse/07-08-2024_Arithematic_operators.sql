-- ARITHMATIC OPERATORS 
-- We are working with a new dataset caleed invoices hence forth. 
-- SELECT project_company, 
-- 		nerd_id,nerd_role, 
--         hours_rate AS  rate_original, 
--         hours_rate - 5 AS rate_drop,
--         hours_rate + 5 AS rate_hike
-- FROM invoices_fact

/* -- EXAMPLE 
1. SELECT clause
For performing calculations on data retrived from the database.
Example: SELECT salary, salary + 0.1 AS bonus FROM employees;

2. WHERE clause
For filtering data based on conditions that may involve arithmetic or logical operations. 
Example: SELECT * 
		 FROM orders 
         WHERE (quality * unit_price) > 100; 
         
3. ORDER BY clause
For sorting the results based on experssions involving operations. 
Example: SELECT name, age, (current_date - birth_date) / 365 AS age_years 
		FROM people 
        ORDER BY (current_date - birth_date) / 365;
        
4. GROUP BY and HAVING clause 
For gtouping rows that have the same values in specified columns and filtering groups with conditions involving operations.
Example: SELECT department, 
		SUM (salary) 
        FROM employees
        GROUP BY department 
        HAVING SUM (salary) > 100000; */ 
       
-- * Multiplication Operator 
SELECT project_company, 
		nerd_id,nerd_role, 
        hours_spent,
        hours_rate AS  rate_original, 
        hours_rate + 5 AS rate_hike, 
        (hours_rate + 5) * hours_spent AS project_total
FROM invoices_fact 
WHERE project_total > 1000

-- project  total (after hike) = rate_hike * hours_spent 

-- % Modulus operator

-- Modulus (returns the remainder of a division)
-- If an employee worked 10 hrs, using 10%8 would give 2, indicating the employee worked 2 hours beyond the standard 8 - hr workday 
-- hours_spent % 8 AS extra_hours

SELECT activity_id, 
	   hours_spent, 
       hours_spent % 8 AS extra_hours
FROM invoices_fact
WHERE (hours_spent BETWEEN 8 AND 16) AND extra_hours > 0
ORDER BY hours_spent
