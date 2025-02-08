SELECT 
    skills,
    count(skills_job_dim.job_id) AS Demanded_Skills
FROM 
    job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_dim.skill_id=skills_job_dim.skill_id
WHERE 
    job_postings_fact.job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere'
GROUP BY 
    skills
ORDER BY 
    Demanded_Skills DESC
LIMIT 5