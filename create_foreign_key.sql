ALTER TABLE `job_types` 
ADD INDEX `fk_job_types_job_categories_idx` (`job_category_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_job_types_job_categories`
  FOREIGN KEY (`job_category_id`)
  REFERENCES `job_categories` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `jobs` 
ADD INDEX `fk_jobs_job_types_idx` (`job_type_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_job_types`
  FOREIGN KEY (`job_type_id`)
  REFERENCES `job_types` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD INDEX `fk_jobs_job_categories_idx` (`job_category_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_job_categories`
  FOREIGN KEY (`job_category_id`)
  REFERENCES `job_categories` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `jobs_basic_abilities` 
ADD INDEX `fk_jobs_basic_abilities_jobs_idx` (`job_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_basic_abilities_jobs`
  FOREIGN KEY (`job_id`)
  REFERENCES `jobs` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD INDEX `fk_jobs_basic_abilities_basic_abilities_idx` (`basic_ability_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_basic_abilities_basic_abilities`
  FOREIGN KEY (`basic_ability_id`)
  REFERENCES `basic_abilities` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `jobs_career_paths` 
ADD INDEX `fk_jobs_career_paths_jobs_idx` (`job_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_career_paths_jobs`
  FOREIGN KEY (`job_id`)
  REFERENCES `jobs` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD INDEX `fk_jobs_career_paths_affiliates_idx` (`affiliate_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_career_paths_affiliates`
  FOREIGN KEY (`affiliate_id`)
  REFERENCES `affiliates` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `jobs_personalities` 
ADD INDEX `fk_jobs_personalities_jobs_idx` (`job_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_personalities_jobs`
  FOREIGN KEY (`job_id`)
  REFERENCES `jobs` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD INDEX `fk_jobs_personalities_personalities_idx` (`personality_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_personalities_personalities`
  FOREIGN KEY (`personality_id`)
  REFERENCES `personalities` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `jobs_practical_skills` 
ADD INDEX `fk_jobs_practical_skills_jobs_idx` (`job_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_practical_skills_jobs`
  FOREIGN KEY (`job_id`)
  REFERENCES `jobs` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD INDEX `fk_jobs_practical_skills_practical_skills_idx` (`practical_skill_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_practical_skills_practical_skills`
  FOREIGN KEY (`practical_skill_id`)
  REFERENCES `practical_skills` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `jobs_rec_qualifications` 
ADD INDEX `fk_jobs_rec_qualifications_jobs_idx` (`job_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_rec_qualifications_jobs`
  FOREIGN KEY (`job_id`)
  REFERENCES `jobs` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD INDEX `fk_jobs_rec_qualifications_affiliates_idx` (`affiliate_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_rec_qualifications_affiliates`
  FOREIGN KEY (`affiliate_id`)
  REFERENCES `affiliates` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `jobs_req_qualifications` 
ADD INDEX `fk_jobs_req_qualifications_jobs_idx` (`job_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_req_qualifications_jobs`
  FOREIGN KEY (`job_id`)
  REFERENCES `jobs` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD INDEX `fk_jobs_req_qualifications_affiliates_idx` (`affiliate_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_req_qualifications_affiliates`
  FOREIGN KEY (`affiliate_id`)
  REFERENCES `affiliates` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `jobs_tools` 
ADD INDEX `fk_jobs_tools_jobs_idx` (`job_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_tools_jobs`
  FOREIGN KEY (`job_id`)
  REFERENCES `jobs` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD INDEX `fk_jobs_tools_affiliates_idx` (`affiliate_id` ASC) VISIBLE,
ADD CONSTRAINT `fk_jobs_tools_affiliates`
  FOREIGN KEY (`affiliate_id`)
  REFERENCES `affiliates` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
