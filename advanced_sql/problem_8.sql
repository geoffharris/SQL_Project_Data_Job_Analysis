SELECT
    q1_job_postings.job_title_short,
    q1_job_postings.job_location,
    q1_job_postings.job_via,
    q1_job_postings.job_posted_date::date,
    q1_job_postings.salary_year_avg
FROM (
    SELECT * from jan_jobs
    UNION ALL
    SELECT * from feb_jobs
    UNION ALL
    SELECT  * from mar_jobs
) AS q1_job_postings
WHERE
    q1_job_postings.salary_year_avg > 80000 AND
    q1_job_postings.job_title_short = 'Data Analyst'
ORDER BY
    q1_job_postings.salary_year_avg DESC