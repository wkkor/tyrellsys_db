-- MySQL Workbench Synchronization
-- Generated: 2020-04-27 16:30
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: User
SET
  @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS,
  UNIQUE_CHECKS = 0;

SET
  @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS,
  FOREIGN_KEY_CHECKS = 0;

SET
  @OLD_SQL_MODE = @@SQL_MODE,
  SQL_MODE = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE TABLE IF NOT EXISTS `affiliates` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` INT(11) NULL DEFAULT NULL,
  `deleted` TIMESTAMP NULL DEFAULT NULL,
  `name` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 883 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `basic_abilities` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `deleted` TIMESTAMP NULL DEFAULT NULL,
  `name` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 101 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `job_categories` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `sort_order` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `created_by` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `created` TIMESTAMP NULL DEFAULT NULL,
  `modified` TIMESTAMP NULL DEFAULT NULL,
  `deleted` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 31 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `job_types` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `job_category_id` INT(11) NULL DEFAULT NULL,
  `sort_order` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `created_by` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `created` TIMESTAMP NULL DEFAULT NULL,
  `modified` TIMESTAMP NULL DEFAULT NULL,
  `deleted` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_job_types_job_categories_idx` (`job_category_id` ASC) VISIBLE,
  CONSTRAINT `fk_job_types_job_categories` FOREIGN KEY (`job_category_id`) REFERENCES `job_categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 61 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `media_id` INT(11) NULL DEFAULT NULL,
  `job_category_id` INT(11) NULL DEFAULT NULL,
  `job_type_id` INT(11) NULL DEFAULT NULL,
  `description` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `detail` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `business_skill` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `knowledge` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `location` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `activity` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `academic_degree_doctor` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `academic_degree_master` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `academic_degree_professional` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `academic_degree_bachelor` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `salary_statistic_group` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `salary_range_first_year` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `salary_range_average` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `salary_range_remarks` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `restriction` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `estimated_total_workers` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `remarks` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `url` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `seo_description` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `seo_keywords` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `sort_order` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `publish_status` INT(11) NULL DEFAULT NULL,
  `version` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `created_by` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `created` TIMESTAMP NULL DEFAULT NULL,
  `modified` TIMESTAMP NULL DEFAULT NULL,
  `deleted` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_jobs_job_types_idx` (`job_type_id` ASC) VISIBLE,
  INDEX `fk_jobs_job_categories_idx` (`job_category_id` ASC) VISIBLE,
  CONSTRAINT `fk_jobs_job_categories` FOREIGN KEY (`job_category_id`) REFERENCES `job_categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jobs_job_types` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1501 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `jobs_basic_abilities` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `job_id` INT(11) NULL DEFAULT NULL,
  `basic_ability_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_jobs_basic_abilities_jobs_idx` (`job_id` ASC) VISIBLE,
  INDEX `fk_jobs_basic_abilities_basic_abilities_idx` (`basic_ability_id` ASC) VISIBLE,
  CONSTRAINT `fk_jobs_basic_abilities_jobs` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jobs_basic_abilities_basic_abilities` FOREIGN KEY (`basic_ability_id`) REFERENCES `basic_abilities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 3035 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `jobs_career_paths` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `job_id` INT(11) NULL DEFAULT NULL,
  `affiliate_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_jobs_career_paths_jobs_idx` (`job_id` ASC) VISIBLE,
  INDEX `fk_jobs_career_paths_affiliates_idx` (`affiliate_id` ASC) VISIBLE,
  CONSTRAINT `fk_jobs_career_paths_jobs` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jobs_career_paths_affiliates` FOREIGN KEY (`affiliate_id`) REFERENCES `affiliates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 6071 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `jobs_personalities` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `job_id` INT(11) NULL DEFAULT NULL,
  `personality_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_jobs_personalities_jobs_idx` (`job_id` ASC) VISIBLE,
  INDEX `fk_jobs_personalities_personalities_idx` (`personality_id` ASC) VISIBLE,
  CONSTRAINT `fk_jobs_personalities_jobs` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jobs_personalities_personalities` FOREIGN KEY (`personality_id`) REFERENCES `personalities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 3035 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `jobs_practical_skills` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `job_id` INT(11) NULL DEFAULT NULL,
  `practical_skill_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_jobs_practical_skills_jobs_idx` (`job_id` ASC) VISIBLE,
  INDEX `fk_jobs_practical_skills_practical_skills_idx` (`practical_skill_id` ASC) VISIBLE,
  CONSTRAINT `fk_jobs_practical_skills_jobs` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jobs_practical_skills_practical_skills` FOREIGN KEY (`practical_skill_id`) REFERENCES `practical_skills` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 3535 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `jobs_rec_qualifications` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `job_id` INT(11) NULL DEFAULT NULL,
  `affiliate_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_jobs_rec_qualifications_jobs_idx` (`job_id` ASC) VISIBLE,
  INDEX `fk_jobs_rec_qualifications_affiliates_idx` (`affiliate_id` ASC) VISIBLE,
  CONSTRAINT `fk_jobs_rec_qualifications_jobs` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jobs_rec_qualifications_affiliates` FOREIGN KEY (`affiliate_id`) REFERENCES `affiliates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 4035 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `jobs_req_qualifications` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `job_id` INT(11) NULL DEFAULT NULL,
  `affiliate_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_jobs_req_qualifications_jobs_idx` (`job_id` ASC) VISIBLE,
  INDEX `fk_jobs_req_qualifications_affiliates_idx` (`affiliate_id` ASC) VISIBLE,
  CONSTRAINT `fk_jobs_req_qualifications_jobs` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jobs_req_qualifications_affiliates` FOREIGN KEY (`affiliate_id`) REFERENCES `affiliates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 6571 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `jobs_tools` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `job_id` INT(11) NULL DEFAULT NULL,
  `affiliate_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_jobs_tools_jobs_idx` (`job_id` ASC) VISIBLE,
  INDEX `fk_jobs_tools_affiliates_idx` (`affiliate_id` ASC) VISIBLE,
  CONSTRAINT `fk_jobs_tools_jobs` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_jobs_tools_affiliates` FOREIGN KEY (`affiliate_id`) REFERENCES `affiliates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 4035 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `personalities` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `deleted` TIMESTAMP NULL DEFAULT NULL,
  `name` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 31 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `practical_skills` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `deleted` TIMESTAMP NULL DEFAULT NULL,
  `name` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 51 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_unicode_ci;

SET
  SQL_MODE = @OLD_SQL_MODE;

SET
  FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;

SET
  UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;