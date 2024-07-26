-- * Helps select all the columns in given database
-- SELECT * 
-- FROM job_postings_fact 

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
