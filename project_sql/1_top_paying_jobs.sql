/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying remote jobs and their associated company names
- Only show jobs with a salary
- Highlight the top-paying opportuinities for Data Analysts, offering insights into employement priorities
*/

SELECT
    jobs.job_id,
    jobs.job_title,
    jobs.job_location,
    jobs.job_schedule_type,
    jobs.salary_year_avg,
    jobs.job_posted_date,
    companies.name
FROM
    job_postings_fact AS jobs
LEFT JOIN company_dim AS companies ON companies.company_id = jobs.company_id
WHERE
    job_title LIKE '%Data Analys%' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10