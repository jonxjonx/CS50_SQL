-- Represent the details of companies
CREATE TABLE `companies` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `company_link` VARCHAR(70) NOT NULL,
    `email` VARCHAR(50),
    `location` VARCHAR(70) NOT NULL,
    PRIMARY KEY(`id`)
);

-- Represent the details of job postings
CREATE TABLE `job_postings` (
    `id` INT AUTO_INCREMENT,
    `company_id` INT NOT NULL,
    `job_title` VARCHAR(40) NOT NULL,
    `department` VARCHAR(40) NOT NULL,
    `date_posted` DATE NOT NULL,
    `job_link` VARCHAR(70) NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`company_id`) REFERENCES `companies`(`id`)
);

-- Represent the details of job requirements
CREATE TABLE `job_requirements` (
    `id` INT AUTO_INCREMENT,
    `job_id` INT NOT NULL,
    `degree_type` ENUM('BA', 'MA', 'PhD') NOT NULL,
    `year_of_exp` TINYINT NOT NULL,
    `skill_set` SET('Python', 'PyTorch', 'C', 'SQL', 'Tableau', 'AWS') NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`job_id`) REFERENCES `job_postings`(`id`)
);

-- Represent the details of job application status
CREATE TABLE `job_status` (
    `id` INT AUTO_INCREMENT,
    `job_id` INT NOT NULL,
    `status` ENUM('Applied', 'Not Applied', 'Interviewed', 'Offered', 'Rejected') NOT NULL,
    `date_applied` DATE NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`job_id`) REFERENCES `job_postings`(`id`)
);
