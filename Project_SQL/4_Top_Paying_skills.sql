SELECT 
    skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM 
    job_postings_fact 
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_dim.skill_id=skills_job_dim.skill_id
WHERE 
    job_postings_fact.job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    job_location = 'Anywhere'
GROUP BY 
    skills
ORDER BY
    avg_salary DESC
LIMIT 25





-- Big Data & Cloud Dominance: Skills like PySpark, Databricks, and GCP lead the highest salaries, reflecting the demand for cloud and distributed data processing solutions.
-- AI & Machine Learning Focus: Tools such as Watson, DataRobot, and Scikit-Learn emphasize the growing importance of AI-driven analytics roles.
-- Data Tools & DevOps Integration: The blend of analytics and DevOps is evident with high-paying skills like GitLab, Kubernetes, and Jenkins alongside data tools like Pandas and Jupyter.




-- [
--   {
--     "skills": "pyspark",
--     "avg_salary": "208172"
--   },
--   {
--     "skills": "bitbucket",
--     "avg_salary": "189155"
--   },
--   {
--     "skills": "couchbase",
--     "avg_salary": "160515"
--   },
--   {
--     "skills": "watson",
--     "avg_salary": "160515"
--   },
--   {
--     "skills": "datarobot",
--     "avg_salary": "155486"
--   },
--   {
--     "skills": "gitlab",
--     "avg_salary": "154500"
--   },
--   {
--     "skills": "swift",
--     "avg_salary": "153750"
--   },
--   {
--     "skills": "jupyter",
--     "avg_salary": "152777"
--   },
--   {
--     "skills": "pandas",
--     "avg_salary": "151821"
--   },
--   {
--     "skills": "elasticsearch",
--     "avg_salary": "145000"
--   },
--   {
--     "skills": "golang",
--     "avg_salary": "145000"
--   },
--   {
--     "skills": "numpy",
--     "avg_salary": "143513"
--   },
--   {
--     "skills": "databricks",
--     "avg_salary": "141907"
--   },
--   {
--     "skills": "linux",
--     "avg_salary": "136508"
--   },
--   {
--     "skills": "kubernetes",
--     "avg_salary": "132500"
--   },
--   {
--     "skills": "atlassian",
--     "avg_salary": "131162"
--   },
--   {
--     "skills": "twilio",
--     "avg_salary": "127000"
--   },
--   {
--     "skills": "airflow",
--     "avg_salary": "126103"
--   },
--   {
--     "skills": "scikit-learn",
--     "avg_salary": "125781"
--   },
--   {
--     "skills": "jenkins",
--     "avg_salary": "125436"
--   },
--   {
--     "skills": "notion",
--     "avg_salary": "125000"
--   },
--   {
--     "skills": "scala",
--     "avg_salary": "124903"
--   },
--   {
--     "skills": "postgresql",
--     "avg_salary": "123879"
--   },
--   {
--     "skills": "gcp",
--     "avg_salary": "122500"
--   },
--   {
--     "skills": "microstrategy",
--     "avg_salary": "121619"
--   }
-- ]