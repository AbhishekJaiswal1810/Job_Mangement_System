--grant permission to applicant role--
grant select, delete, update, insert on applicant_profile to applicant;
grant select, delete, update, insert on job_applications to applicant;
grant select, delete, update, insert on applicant_skill to applicant;
grant select on job_posting to applicant;
grant select on company to applicant;
grant select on recruiter to applicant;
grant select on skill_set to applicant;
grant select on job_skill to applicant;

--grant permission to recruiter role--
grant select on applicant_profile to recruiter;
grant select, update on job_applications to recruiter;
grant select on applicant_skill to recruiter;
grant select, delete, update, insert on job_posting to recruiter;
grant select on company to recruiter;
grant select, update on recruiter to recruiter;
grant select, update, delete on skill_set to recruiter;
grant select, delete, update, insert on job_skill to recruiter;


--grant permission to company manager role--
grant select on job_posting to Company_Manager;
grant select, update, insert on company to Company_Manager;
grant select, delete, update, insert on recruiter to Company_Manager;


grant applicant to applicant1;
grant recruiter to recruiter1;
grant company_manager to companymanager1;

