SELECT
    COUNT(job_id) AS num_jobs_posted,
    EXTRACT(MONTH FROM job_posted_date) AS MONTH
FROM
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    month
ORDER BY
    num_jobs_posted DESC

SELECT * FROM job_postings_fact
LIMIT 10

SELECT
    COUNT(job_title_short) AS job_title,
    EXTRACT(MONTH FROM job_posted_date) AS month
FROM job_postings_fact
GROUP BY
    month
LIMIT 100


CREATE TABLE jan_jobs AS 
    SELECT 
        *
    FROM job_postings_fact
    WHERE
        EXTRACT(MONTH FROM job_posted_date) = 1;

CREATE TABLE feb_jobs AS 
    SELECT 
        *
    FROM job_postings_fact
    WHERE
        EXTRACT(MONTH FROM job_posted_date) = 2;

CREATE TABLE mar_jobs AS 
    SELECT 
        *
    FROM job_postings_fact
    WHERE
        EXTRACT(MONTH FROM job_posted_date) = 3;

SELECT job_posted_date
    FROM feb_jobs
