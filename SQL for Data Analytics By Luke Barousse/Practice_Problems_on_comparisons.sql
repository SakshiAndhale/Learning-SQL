-- PRACTICE PROBLEMS ON COMPARISONS 

/* 1. In the job_postings_fact table get the job_id, job_title_short, job_location, job_via, and salary_year_avg columns. Only return rows where the job location is in 'Tampa, FL'*/
-- SELECT job_id, job_title_short, job_location, job_via, salary_year_avg
-- FROM job_postings_fact
-- WHERE job_location IN 'Tampa, FL'

/* 2. In the job_postings_fact table get the job_id, job_title_short, job_location, job_via, and salary_year_avg columns. Only return 'Full-Time' jobs (Hint: look at the job_schedule_type column)*/
-- SELECT job_id, job_title_short, job_location, job_via, salary_year_avg
-- FROM job_postings_fact 
-- WHERE job_schedule_type = 'Full-time'

/* 3. In the job_postings_fact table get the job_id, job_title_short, job_location, job_via, salary_year_avg columns. Only look at jobs that are not 'Part-time' jobs (Hint: Look at the job_schedule_type columns) */ 
-- SELECT job_id, job_title_short, job_location, job_via, salary_year_avg
-- FROM job_postings_fact
-- WHERE NOT job_schedule_type = 'Part-time'
