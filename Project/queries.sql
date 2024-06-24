-- Add a new company
INSERT INTO `companies` (`id`, `name`, `company_link`, `email`, `location`)
VALUES (1, 'Micron', 'micron.com', 'admin@micron.com', 'Singapore');

-- Add a new job posting
INSERT INTO `job_postings` (`id`, `company_id`, `job_title`, `department`, `date_posted`, `job_link`)
VALUES (1, 1, 'Data Analyst', 'Data Science', '2024-06-24', 'micron.com/job/1');

-- Add a new job posting
INSERT INTO `job_postings` (`id`, `company_id`, `job_title`, `department`, `date_posted`, `job_link`)
VALUES (2, 1, 'Data Scientist', 'Artificial Intelligence', '2024-06-22', 'micron.com/job/2');

-- Add a new job requirement
INSERT INTO `job_requirements` (`id`, `job_id`, `degree_type`, `year_of_exp`, `skill_set`)
VALUES (1, 1, 'BA', '1', 'Python,SQL,Tableau');

-- Add a new job requirement
INSERT INTO `job_requirements` (`id`, `job_id`, `degree_type`, `year_of_exp`, `skill_set`)
VALUES (2, 2, 'MA', '3', 'Python,PyTorch,SQL,Tableau,AWS');

-- Add a new job status
INSERT INTO `job_status` (`id`, `job_id`, `status`, `date_applied`)
VALUES (1, 2, 'Applied', '2024-06-23');


-- Find details of job postings of Micron
SELECT * FROM `job_postings` WHERE `company_id` = (SELECT `id` FROM `companies` WHERE `name` = 'Micron');

-- Find the skill set required for a Data Analyst in Micron
SELECT `skill_set` FROM `job_requirements` WHERE `job_id` = (SELECT `id` FROM `job_postings` WHERE `company_id` =
(SELECT `id` FROM `companies` WHERE `name` = 'Micron') AND `job_title` = 'Data Analyst');

-- Check the status of the job application for Data Scientist in Micron
SELECT `status` FROM `job_status` WHERE `job_id` = (SELECT `id` FROM `job_postings` WHERE `company_id` =
(SELECT `id` FROM `companies` WHERE `name` = 'Micron') AND `job_title` = 'Data Scientist');

-- Update the status of the job application for Data Scientist in Micron
UPDATE `job_status`
SET `status` = 'Interviewed'
WHERE `id` = 1;
