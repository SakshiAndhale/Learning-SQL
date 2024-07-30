-- WILDCARDS 
-- Wildcards are used to substitute one or more characters in a string 
-- Wildcards are used with the LIKE operator 
-- All of this ( i.e LIKE, % and _ ) is used in the WHERE clause 

-- % Percentage Sign 
-- % represents zero, one or more characters
-- Example
-- WHERE job_title LIKE '%Analyst%'

-- SELECT job_id, job_title_short, job_location, job_via, salary_year_avg
-- FROM job_postings_fact
-- WHERE job_title LIKE '%Business%Analyst%'

-- _ Underscore Sign 
-- _ represents one, single character 
-- In the following example using _ well only be able ti find entries which mention Business Analyst 

-- SELECT job_id, job_title_short, job_location, job_via, salary_year_avg
-- FROM job_postings_fact
-- WHERE job_title LIKE '%Business_Analyst%'
