SELECT
    COUNT(job_id) AS number_of_jobs,
    CASE
        WHEN job_location  = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM
    job_postings_fact
WHERE
    job_title LIKE '%Data Analys%'
GROUP BY
    location_category