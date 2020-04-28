ALTER TABLE `jobs` 
DROP INDEX `idx_jobs_combine_01`;

ALTER TABLE `job_categories` 
DROP INDEX `idx_job_categories_deleted`;

ALTER TABLE `job_types` 
DROP INDEX `idx_job_types_deleted`;

ALTER TABLE `personalities` 
DROP INDEX `idx_personalities_deleted`;

ALTER TABLE `jobs_personalities` 
DROP INDEX `idx_jobs_personalities_combine_01`,
DROP INDEX `idx_jobs_personalities_combine_02`;

ALTER TABLE `practical_skills` 
DROP INDEX `idx_practical_skills_deleted`;

ALTER TABLE `jobs_practical_skills` 
DROP INDEX `idx_jobs_practical_skills_combine_01`,
DROP INDEX `idx_jobs_practical_skills_combine_02`;

ALTER TABLE `basic_abilities` 
DROP INDEX `idx_basic_abilities_deleted`;

ALTER TABLE `jobs_basic_abilities` 
DROP INDEX `idx_jobs_basic_abilities_combine_01`,
DROP INDEX `idx_jobs_basic_abilities_combine_02`;

ALTER TABLE `affiliates` 
DROP INDEX `idx_affiliates_combine_01`;

ALTER TABLE `jobs_tools` 
DROP INDEX `idx_jobs_tools_combine_01`;

ALTER TABLE `jobs_career_paths` 
DROP INDEX `idx_jobs_career_paths_combine_01`,
DROP INDEX `idx_jobs_career_paths_combine_02`;

ALTER TABLE `jobs_rec_qualifications` 
DROP INDEX `idx_jobs_rec_qualifications_combine_01`,
DROP INDEX `idx_jobs_rec_qualifications_combine_02`;

ALTER TABLE `jobs_req_qualifications` 
DROP INDEX `idx_jobs_req_qualifications_combine_01`,
DROP INDEX `idx_jobs_req_qualifications_combine_02`;
