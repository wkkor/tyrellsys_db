ALTER TABLE `jobs` 
ADD INDEX `idx_jobs_combine_01` (`publish_status` ASC, `deleted` ASC, `job_category_id` ASC, `job_type_id` ASC) VISIBLE;

ALTER TABLE `job_categories` 
ADD INDEX `idx_job_categories_deleted` (`deleted` ASC, `id` ASC) VISIBLE;

ALTER TABLE `job_types` 
ADD INDEX `idx_job_types_deleted` (`deleted` ASC, `id` ASC) VISIBLE;

ALTER TABLE `personalities` 
ADD INDEX `idx_personalities_deleted` (`deleted` ASC, `id` ASC) VISIBLE;

ALTER TABLE `jobs_personalities` 
ADD INDEX `idx_jobs_personalities_combine_01` (`job_id` ASC, `personality_id` ASC) VISIBLE,
ADD INDEX `idx_jobs_personalities_combine_02` (`personality_id` ASC, `job_id` ASC) VISIBLE;

ALTER TABLE `practical_skills` 
ADD INDEX `idx_practical_skills_deleted` (`deleted` ASC, `id` ASC) VISIBLE;

ALTER TABLE `jobs_practical_skills` 
ADD INDEX `idx_jobs_practical_skills_combine_01` (`job_id` ASC, `practical_skill_id` ASC) VISIBLE,
ADD INDEX `idx_jobs_practical_skills_combine_02` (`practical_skill_id` ASC, `job_id` ASC) VISIBLE;

ALTER TABLE `basic_abilities` 
ADD INDEX `idx_basic_abilities_deleted` (`deleted` ASC, `id` ASC) VISIBLE;

ALTER TABLE `jobs_basic_abilities` 
ADD INDEX `idx_jobs_basic_abilities_combine_01` (`job_id` ASC, `basic_ability_id` ASC) VISIBLE,
ADD INDEX `idx_jobs_basic_abilities_combine_02` (`basic_ability_id` ASC, `job_id` ASC) VISIBLE;

ALTER TABLE `affiliates` 
ADD INDEX `idx_affiliates_combine_01` (`deleted` ASC, `type` ASC, `id` ASC) VISIBLE;

ALTER TABLE `jobs_tools` 
ADD INDEX `idx_jobs_tools_combine_01` (`job_id` ASC, `affiliate_id` ASC) VISIBLE;

ALTER TABLE `jobs_career_paths` 
ADD INDEX `idx_jobs_career_paths_combine_01` (`job_id` ASC, `affiliate_id` ASC) VISIBLE,
ADD INDEX `idx_jobs_career_paths_combine_02` (`affiliate_id` ASC, `job_id` ASC) VISIBLE;

ALTER TABLE `jobs_rec_qualifications` 
ADD INDEX `idx_jobs_rec_qualifications_combine_01` (`job_id` ASC, `affiliate_id` ASC) VISIBLE,
ADD INDEX `idx_jobs_rec_qualifications_combine_02` (`affiliate_id` ASC, `job_id` ASC) VISIBLE;

ALTER TABLE `jobs_req_qualifications` 
ADD INDEX `idx_jobs_req_qualifications_combine_01` (`job_id` ASC, `affiliate_id` ASC) VISIBLE,
ADD INDEX `idx_jobs_req_qualifications_combine_02` (`affiliate_id` ASC, `job_id` ASC) VISIBLE;
