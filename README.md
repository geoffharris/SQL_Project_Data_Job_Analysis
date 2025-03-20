# Introduction
Dive into the data job market! Focusing on data analyst roles, this project explores top-paying jobs, in-demand skills and where high demand meets high salary in data analytics.

SQL Queries are located here: [project_sql folder](/project_sql/)

# Background
Driven by a quest to navigate the data analyst job market more effectively, this project was born from a desire to pinpoint top-paid and in-demand skills, streamlining others work to find optimal jobs.

Data comes from an [SQL Course](https://lukebarousse.com/sql). It's packed with insights on job titles, salaries, locations and essential skills for data professionals.

### The questions I wanted to answer through these SQL queries were:
1. What are the top-paying data analyst jobs?
2. What skills are required for these jobs?
3. What skills are most in demand for data analysts?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn?

# Tools I Used
For my deep dive into the data analyst job market, I used several key tools:
- **SQL**: The backbone of my analysis, allowing me to query the database and unearth critical insights.
- **PostgreSQL**: The chosen DBMS, ideal for handling the job-posting data.
- **VS Code**: IDE for database management and writing/executing SQL queries.
- **Git & GitHub**: Essential for version control and sharing my SQL scripts & analysis, ensuring collaboration and project tracking.

# The Analysis
Each query for this project aimed at investigating specific aspects of the data analyst job market. Here's how I approached each question:

### 1. Top-Paying Data Analyst Jobs
To identify the highest-paying roles, I filtered data analyst positions by average yearly salary and location, focusing on remote jobs. This query highlights the high-paying opportunities in the field.

```sql
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
```
![Top-paying roles](assets\1_top_paying_jobs.jpg)

*Bar graph visualizing the salary for the top 10 salaries for data analysts; ChatGPT generated this graph from my SQL query results*

# What I Learned

- **Complex Query Crafting**: Using CTEs or Subqueries to query custom temporary data sets.
- **Data Aggregation**: Using SQL features like GROUP BY to turn aggregate functions like COUNT() and AVG() into data-summarizing functions.
- **Analytics**: Practiced turning questions about a dataset into actionable insights using SQL queries.

# Conclusions

### Insights
From the analysis, several general insights emerged:

1. **Top-Paying Data Analyst Jobs**: The highest-paying jobs for data analysts that allow remote work offer a wide range of salaries, topping out at $650,000!
2. **Skills for Top-Paying Jobs**: High-paying data analyst jobs require advanced proficincy in SQL, suggesting it's a critical skill for earning a top salary.
3. **Most In-Demand Skills**: SQL is also the most demanded skill in the data analyst job market, thus making it essential for job seekers.
4. **Skills with Higher Salaries**: Specialized skills such as SVN and Solidity, are associated with the highest average salaries, indicating a premium on niche expertise.
5. **Optimal Skills for Job Market Value**: SQL leads in demand and offers for a high average salary, positioning it as one of the most optimal skills for data analysts to learn to maximize their market value.

### Closing Thoughts
This project enhanced my SQL skills and provided valuable insights into the data analyst job market. The findings from this analysis serve as a guide to prioritizing skill development and job search efforts.