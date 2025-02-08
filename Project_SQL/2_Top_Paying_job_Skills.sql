with top_paying_skills AS (
    SELECT 
        job_id,
        job_title,
        company_dim.name as company_name,
        salary_year_avg
    FROM
    job_postings_fact
    LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND  
        job_location = 'Anywhere' AND 
        salary_year_avg is not NULL 
    ORDER BY 
        salary_year_avg DESC
    LIMIT 10 
)
SELECT 
    top_paying_skills.*,
    skills_dim.skills
FROM 
    top_paying_skills
INNER JOIN skills_job_dim on top_paying_skills.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_dim.skill_id=skills_job_dim.skill_id
ORDER BY
    salary_year_avg DESC   



