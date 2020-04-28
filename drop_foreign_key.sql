ALTER TABLE `job_types` 
DROP FOREIGN KEY `fk_job_types_job_categories`,
DROP INDEX `fk_job_types_job_categories_idx`;

ALTER TABLE `jobs` 
DROP FOREIGN KEY `fk_jobs_job_types`,
DROP FOREIGN KEY `fk_jobs_job_categories`, 
DROP INDEX `fk_jobs_job_categories_idx` ,
DROP INDEX `fk_jobs_job_types_idx`;

ALTER TABLE `jobs_basic_abilities` 
DROP FOREIGN KEY `fk_jobs_basic_abilities_jobs`,
DROP FOREIGN KEY `fk_jobs_basic_abilities_basic_abilities`, 
DROP INDEX `fk_jobs_basic_abilities_jobs_idx` ,
DROP INDEX `fk_jobs_basic_abilities_basic_abilities_idx`;

ALTER TABLE `jobs_career_paths` 
DROP FOREIGN KEY `fk_jobs_career_paths_jobs`,
DROP FOREIGN KEY `fk_jobs_career_paths_affiliates`, 
DROP INDEX `fk_jobs_career_paths_jobs_idx` ,
DROP INDEX `fk_jobs_career_paths_affiliates_idx`;

ALTER TABLE `jobs_personalities` 
DROP FOREIGN KEY `fk_jobs_personalities_jobs`,
DROP FOREIGN KEY `fk_jobs_personalities_personalities`, 
DROP INDEX `fk_jobs_personalities_jobs_idx` ,
DROP INDEX `fk_jobs_personalities_personalities_idx`;

ALTER TABLE `jobs_practical_skills` 
DROP FOREIGN KEY `fk_jobs_practical_skills_jobs`,
DROP FOREIGN KEY `fk_jobs_practical_skills_practical_skills`, 
DROP INDEX `fk_jobs_practical_skills_jobs_idx` ,
DROP INDEX `fk_jobs_practical_skills_practical_skills_idx`;

ALTER TABLE `jobs_rec_qualifications` 
DROP FOREIGN KEY `fk_jobs_rec_qualifications_jobs`,
DROP FOREIGN KEY `fk_jobs_rec_qualifications_affiliates`, 
DROP INDEX `fk_jobs_rec_qualifications_jobs_idx` ,
DROP INDEX `fk_jobs_rec_qualifications_affiliates_idx`;

ALTER TABLE `jobs_req_qualifications` 
DROP FOREIGN KEY `fk_jobs_req_qualifications_jobs`,
DROP FOREIGN KEY `fk_jobs_req_qualifications_affiliates`, 
DROP INDEX `fk_jobs_req_qualifications_jobs_idx` ,
DROP INDEX `fk_jobs_req_qualifications_affiliates_idx`;

ALTER TABLE `jobs_tools` 
DROP FOREIGN KEY `fk_jobs_tools_jobs`,
DROP FOREIGN KEY `fk_jobs_tools_affiliates`, 
DROP INDEX `fk_jobs_tools_jobs_idx` ,
DROP INDEX `fk_jobs_tools_affiliates_idx`;
