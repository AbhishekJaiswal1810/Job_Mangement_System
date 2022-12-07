CREATE OR REPLACE FUNCTION count_job_types(jobType VARCHAR2)
return number
is
cjt number;
Begin
SELECT COUNT(*) into cjt FROM job_posting
WHERE JOB_TYPE = jobType;
return (cjt);
END;
/

SELECT 'full-time' as job_type, count_job_types('full-time') as "Number of job posted" FROM DUAL;


CREATE OR REPLACE FUNCTION get_count(skillType VARCHAR2)
return number
is
applicant_number number;
Begin
select
    COUNT(a.skill_set_id) 
    into applicant_number
from applicant_skill a
join skill_set s on s.id = a.skill_set_id
where SKILL_NAME = skillType;
return (applicant_number);
END;
/

SELECT 'Python' as Skill_Name, get_count('Python') as Numbers_of_Applicants FROM DUAL;