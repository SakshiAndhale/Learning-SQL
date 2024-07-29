-- COMPARISONS & LOGICAL OPERATORS 
-- used within the WHERE or HAVING clause 
-- Used in conjunction with comparison operators: =, <>, <,>,>=,<= 
-- Used in conjunction with logical operators AND, OR, BETWEEEN and IN 

-- NOT EQUAL TO OPERATOR 
-- Symbol: <> and NOT 
-- Example WHERE job_via <> 'via LinkedIn' 

/*SELECT job_id, job_title_short, job_via, salary_year_avg
FROM job_postings_fact
WHERE job_via <> 'via Ai-Jobs.net'*/ 

-- GREATER THAN & GREATER THAN OR EQUAL TO OPERATOR
SELECT job_id, job_title_short, job_via, salary_year_avg
FROM job_posting_fact
WHERE salary_year_avg > 50000
ORDER BY salary_year_avg

-- LESS THAN & LESS THAN OR EQUAL TO OPERATOR
-- Works the same way as the above
-- Example
SELECT job_id, job_title_short, job_via, salary_year_avg
FROM job_posting_fact
WHERE salary_year_avg > 50000
ORDER BY salary_year_avg

-- AND OPERATOR
-- Great in conditions where you need to meet multiple conditions
-- Only shows records where all conditions are true
-- Can have multiple AND conditions

SELECT job_id, job_title_short, job_via, salary_year_avg
FROM job_posting_fact
WHERE salary_year_avg > 50000
     AND job_title = 'Data Analyst'
ORDER BY salary_year_avg

-- OR OPERATOR
-- OR only shows records where any of the conditions are true
-- can have multiple OR conditions

SELECT job_id, job_title_short, job_via, salary_year_avg
FROM job_posting_fact
WHERE salary_year_avg > 50000
     OR job_title = 'Data Analyst'
ORDER BY salary_year_avg

-- BETWEEN OPERATOR
-- Gets values within a given range
-- an alternative to using AND, <= and >=

SELECT job_id, job_title_short, job_via, salary_year_avg
FROM job_posting_fact
WHERE salary_year_avg BETWEEN 50000 AND 90000
ORDER BY salary_year_avg

-- IN OPERATOR
-- Specify multiple values in a WHERE clause
-- Alternative to using OR operator

SELECT job_id, job_title_short, job_via, salary_year_avg
FROM job_posting_fact
WHERE job_location IN ('Boston, MA', 'Anywhere')


