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

/* 4. In the job_postings_fact table get the job_id, job_title_short, job_location, job_via, and salary_year_avg columns. Only look at hobs that are not posted 'via LinkedIn'*/
-- SELECT job_id, job_title_short, job_location, job_via, salary_year_avg
-- FROM job_postings_fact
-- WHERE job_via <> 'via LinkedIn'

/* 5. In the job_postings_fact table get the job_id, job_title_short, job_location, job_via, and salary_year_avg columns. Only get jobs that have an average yearly salary of $65,000 or greater*/
-- SELECT job_id, job_title_short, job_location, job_via, salary_year_avg
-- FROM job_postings_fact
-- WHERE salary_year_avg >= 65000
-- ORDER BY salary_year_avg

/* 6. In the job_postings_fact table get the job_id, job_title_short, job_location, job_via, and salary_year_avg columns. Only get jobs that have an average yearly salary greater than $55,000*/
-- SELECT job_id, job_title_short, job_location, job_via, salary_year_avg
-- FROM job_postings_fact
-- WHERE salary_year_avg > 55000
-- ORDER BY salary_year_avg


/* 7. In the job_postings_fact table get the job_id, job_title_short, job_location, job_via, and salary_year_avg columns. Only get jobs that have an average yearly salary less than $110000*/
-- SELECT job_id, job_title_short, job_location, job_via, salary_year_avg
-- FROM job_postings_fact
-- WHERE salary_year_avg < 110000
-- ORDER BY salary_year_avg
