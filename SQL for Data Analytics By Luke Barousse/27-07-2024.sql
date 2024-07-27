/* Helps select all the columns in given database
SELECT 
FROM job_postings_fact */

-- TO select specific columns
-- Say I want only job_title_short and job_title..Ill use the following
-- SELECT job_title, job_title_short
-- FROM job_postings_fact

-- Lets look at some best practices while writing SQL queries 

-- 1. If there are multiple column names or titles, list them one after the other on different lines, seperated by a comma, so that they are easier to read. 
-- For Example, instead of writting SELECT job_title, job_title_short its better to write it as
-- SELECT job_title, 
--        job_title_short 

-- 2. Another menthod we can use to specify the columns that we need is by this syntax: database name. column title 
-- Example, job_postings_fact.job_title_short will give us the same result as 
-- SELECT job_title_short
-- FROM job_postings_fact
-- This is essential when combining various databases as this helps cut down on the bulk and enhance readability  

-- LIMIT 5
-- Using LIMIT, as evident by the name, will help limit the visible results and help in cutting down the response time 

-- DISTINCT 
-- SELECT DISTINCT job_title_short
-- FROM job_postings_fact;
-- The above helps us locate all the distinct values from job_title_short 
-- SELECT DISTINCT salary_year_avg
-- FROM job_postings_fact;
-- Now we have 2739 distinct values of average salary mentioned in the data 

-- WHERE Statement 
-- SELECT job_title_short, 
-- 	   job_location, 
--        job_via, 
--        salary_year_avg
-- FROM job_postings_fact
-- WHERE
-- 	 job_title_short = 'Data Analyst'
     
-- WE have found 9848 rows where data analyst is listed 

-- SELECT job_title_short, 
-- 	      job_location, 
--        job_via, 
--        salary_year_avg
-- FROM job_postings_fact
-- WHERE
-- 	  salary_year_avg > 90000
      
-- We find rows where average saalary is greater than 90000 dollars 

-- ORDER BY
-- THis is used to specify a columns and order it by a value
-- ORder by will come directly last, the only thing that will come after order by is limit key word
SELECT job_title_short, 
 	   job_location, 
        job_via, 
       salary_year_avg
FROM job_postings_fact
WHERE
	 job_title_short = 'Data Analyst'
ORDER BY
		salary_year_avg DESC

-- WHAT ORDER SHOULD YOU BE WRITTING THESE COMMANDS IN? 
-- SELECT 
-- FROM 
-- WHERE 
-- GROUP BY 
-- HAVING 
-- ORDER BY 
-- LIMIT 

-- NOTE: This is seperate from how the order of a query is executed, but instead the order in it must be written