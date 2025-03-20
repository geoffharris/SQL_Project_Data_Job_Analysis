/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs
- Add the specific skills required for these roles
*/

-- Create a CTE identifying the top-paying jobs result set
WITH top_paying_jobs AS (
    SELECT
        jobs.job_id,
        jobs.job_title,
        jobs.salary_year_avg,
        companies.name
    FROM
        job_postings_fact AS jobs
    LEFT JOIN company_dim AS companies ON companies.company_id = jobs.company_id
    WHERE
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)

SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC

/*
Skill Frequency Breakdown in Top-Paying Data Analyst Jobs
Here’s how frequently each skill appears in the dataset:

SQL (8), Python (7), Tableau (6) – These are the most common skills, indicating that core data manipulation, analysis, and visualization tools are in high demand.
R (4), Snowflake (3), Pandas (3), Excel (3) – R and Snowflake (a cloud data warehouse) highlight the importance of statistical programming and cloud data management. Pandas and Excel remain essential for data handling.
Azure, AWS, Power BI, Oracle, Go, Git-related tools (2 each) – Cloud platforms, BI tools, and version control are also valuable skills.
Less Frequent but High-Paying Skills (1 occurrence each) – Databricks, PySpark, Hadoop, Jenkins, Jupyter, Crystal Reports, PowerPoint, Flow suggest that big data, automation, and reporting tools can be lucrative even if they’re less common.
Key Insights:
SQL and Python are essential – Most high-paying jobs require at least one.
Cloud and Big Data knowledge boost salary – Snowflake, Azure, AWS, Databricks, PySpark, and Hadoop align with higher salaries.
Visualization & Reporting are key – Tableau, Power BI, Excel, PowerPoint, and Crystal Reports show that presenting insights is just as important as finding them.
*/