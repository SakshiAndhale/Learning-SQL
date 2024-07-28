-- PRACTICE RPOBLEMS 

/* 1. Get the unique (distinct) job locations in the job_postings_fact table. Order in alphabetical order(ascending order) 
SELECT DISTINCT job_location
FROM job_postings_fact
ORDER BY 
         job_location ASC
*/

/* 2. In the job_postings_fact table get the columns job_id, job_title_short, job_location, and job_via columns. And order it in ascending order by job_location.

SELECT job_id, job_title_short, job_location, job_via 
FROM job_postings_fact
ORDER BY job_location ASC */ 

/* 3. In the job_postings_fact table get the columns job_id, job_title_short, job_location, job_via, and salary_year_avg columns. And only look at rows where job_title_short is "Data Engineer" 

SELECT job_id, job_title_short, job_location, job_via, salary_year_avg
FROM job_postings_fact
WHERE job_title_short = 'Data Engineer' */
