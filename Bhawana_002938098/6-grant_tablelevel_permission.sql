--grant permission to applicant role--
grant select, delete, update on applicant_profile to applicant;
grant select, delete, update on job_applications to applicant;
grant select, delete, update on applicant_skill to applicant;
grant select on job_posting to applicant;
grant select on company to applicant;
grant select on recruiter to applicant;
grant select on skill_set to applicant;
grant select on job_skill to applicant;

--revoke insert on applicant_profile from applicant;
--revoke insert on job_applications from applicant;
--revoke insert on applicant_skill from applicant;


grant execute on sp_insert_applicantprofile to applicant;
grant execute on sp_jobapplications to applicant;
grant execute on sp_insert_applicantskill to applicant;


--grant permission to recruiter role--
grant select on applicant_profile to recruiter;
grant select, update on job_applications to recruiter;
grant select on applicant_skill to recruiter;
grant select, delete, update on job_posting to recruiter;
grant select on company to recruiter;
grant select, update on recruiter to recruiter;
grant select, update, delete on skill_set to recruiter;
grant select, delete, update on job_skill to recruiter;

--revoke insert on job_posting from recruiter;
--revoke insert on job_skill from recruiter;

grant execute on sp_jobposting to recruiter;
grant execute on sp_insert_jobskill to recruiter;

--grant permission to company manager role--
grant select on job_posting to Company_Manager;
grant select, update, insert on company to Company_Manager;
grant select, delete, update on recruiter to Company_Manager;

--revoke insert on recruiter from company_manager;

grant execute on sp_insertrecruiter to company_manager;


grant create view, create procedure, create sequence, create trigger to applicant;
grant create view, create procedure, create sequence, create trigger to recruiter;
grant create view, create procedure, create sequence, create trigger to company_manager;
grant create trigger to applicant;
grant create trigger to recruiter;
grant create trigger to company_manager;


grant applicant to applicant1;
grant recruiter to recruiter1;
grant company_manager to companymanager1;
