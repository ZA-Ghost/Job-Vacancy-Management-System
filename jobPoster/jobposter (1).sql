-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 08:42 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobposter`
--

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `jobTitle` varchar(20) NOT NULL,
  `jobReference` varchar(100) NOT NULL,
  `job_post` varchar(5000) NOT NULL,
  `closing_date` date NOT NULL,
  `jobStatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id`, `date`, `jobTitle`, `jobReference`, `job_post`, `closing_date`, `jobStatus`) VALUES
(10, '2023-12-21', 'Java Developer', 'JD_201', 'Responsibilities\r\n\r\n\r\nEngage with the macro-environment to look for new opportunities, capabilities and trends that would add value to the required development work\r\nSuggest changes in executing work processes to better drive value and benefits for the business\r\nPrepare and share recommendations for process and systems improvements in relevant area of accountability\r\nActively participate in team, cross-discipline and vendor-driven collaboration sessions or forums to increase understanding of the working environment (current and planned)\r\nBusiness alignment \r\nPartner with Business stakeholders to create integrated roadmaps to enable business requirements delivery \r\nSolution design and build\r\nConsolidate and prepare solution design documentation\r\nApply standards and governance in such a way as to develop the best fit solution for business\r\nCoordinate and apply various coding efforts\r\nCollate data on coding progress achieved\r\nAddress and develop solutions to problems and risks arising from coding efforts\r\nDesign relevant test scripts/ test cases to best determine system readiness and usability \r\nService handover\r\nProvide second tier support as required\r\n\r\n\r\nRequirements \r\n\r\nDegree in relevant Technology OR Science OR Engineering field of study \r\n8 - 10 years java experience. \r\nStrong back end and front end development skills\r\nStrong SQL skills, especially on MSSQL\r\nExperience with workflow tools like TIBCO AMX / Camundo an advantage\r\nExperience with rules engines like Drools and advantage \r\nRelevant system/application development language\r\nRelevant development frameworks\r\nCoding for security best practice\r\nAgile/DevOps principles and applications\r\nBespoke BU/FA knowledge \r\nCorporate and investment banking domain (preferred)\r\nRelevant banking regulations (preferred)\r\nin an Agile/DevOps environment (preferred)\r\n\r\n\r\nSolid experience in the following technologies:\r\nSOA\r\nMicroservices\r\nDocker\r\nJava\r\nAngular\r\nNodeJS\r\nBootstrap\r\nSpring boot\r\nHibernate\r\nTomcat\r\nJboss\r\nNexus\r\nTeamcity\r\nMaven\r\nKafka', '2023-12-30', 'open'),
(11, '2023-12-01', 'Python Developer', 'PD_01', 'Responsibilities\r\n\r\n\r\nEngage with the macro-environment to look for new opportunities, capabilities and trends that would add value to the required development work\r\nSuggest changes in executing work processes to better drive value and benefits for the business\r\nPrepare and share recommendations for process and systems improvements in relevant area of accountability\r\nActively participate in team, cross-discipline and vendor-driven collaboration sessions or forums to increase understanding of the working environment (current and planned)\r\nBusiness alignment \r\nPartner with Business stakeholders to create integrated roadmaps to enable business requirements delivery \r\nSolution design and build\r\nConsolidate and prepare solution design documentation\r\nApply standards and governance in such a way as to develop the best fit solution for business\r\nCoordinate and apply various coding efforts\r\nCollate data on coding progress achieved\r\nAddress and develop solutions to problems and risks arising from coding efforts\r\nDesign relevant test scripts/ test cases to best determine system readiness and usability \r\nService handover\r\nProvide second tier support as required\r\n\r\n\r\nRequirements \r\n\r\nDegree in relevant Technology OR Science OR Engineering field of study \r\n8 - 10 years java experience. \r\nStrong back end and front end development skills\r\nStrong SQL skills, especially on MSSQL\r\nExperience with workflow tools like TIBCO AMX / Camundo an advantage\r\nExperience with rules engines like Drools and advantage \r\nRelevant system/application development language\r\nRelevant development frameworks\r\nCoding for security best practice\r\nAgile/DevOps principles and applications\r\nBespoke BU/FA knowledge \r\nCorporate and investment banking domain (preferred)\r\nRelevant banking regulations (preferred)\r\nin an Agile/DevOps environment (preferred)\r\n\r\n\r\nSolid experience in the following technologies:\r\nSOA\r\nMicroservices\r\nDocker\r\nJava\r\nAngular\r\nNodeJS\r\nBootstrap\r\nSpring boot\r\nHibernate\r\nTomcat\r\nJboss\r\nNexus\r\nTeamcity\r\nMaven\r\nKafka', '2023-12-19', 'open'),
(12, '2023-12-19', 'C# Developer', 'CD_01', 'Responsibilities\r\n\r\n\r\nEngage with the macro-environment to look for new opportunities, capabilities and trends that would add value to the required development work\r\nSuggest changes in executing work processes to better drive value and benefits for the business\r\nPrepare and share recommendations for process and systems improvements in relevant area of accountability\r\nActively participate in team, cross-discipline and vendor-driven collaboration sessions or forums to increase understanding of the working environment (current and planned)\r\nBusiness alignment \r\nPartner with Business stakeholders to create integrated roadmaps to enable business requirements delivery \r\nSolution design and build\r\nConsolidate and prepare solution design documentation\r\nApply standards and governance in such a way as to develop the best fit solution for business\r\nCoordinate and apply various coding efforts\r\nCollate data on coding progress achieved\r\nAddress and develop solutions to problems and risks arising from coding efforts\r\nDesign relevant test scripts/ test cases to best determine system readiness and usability \r\nService handover\r\nProvide second tier support as required\r\n\r\n\r\nRequirements \r\n\r\nDegree in relevant Technology OR Science OR Engineering field of study \r\n8 - 10 years java experience. \r\nStrong back end and front end development skills\r\nStrong SQL skills, especially on MSSQL\r\nExperience with workflow tools like TIBCO AMX / Camundo an advantage\r\nExperience with rules engines like Drools and advantage \r\nRelevant system/application development language\r\nRelevant development frameworks\r\nCoding for security best practice\r\nAgile/DevOps principles and applications\r\nBespoke BU/FA knowledge \r\nCorporate and investment banking domain (preferred)\r\nRelevant banking regulations (preferred)\r\nin an Agile/DevOps environment (preferred)\r\n\r\n\r\nSolid experience in the following technologies:\r\nSOA\r\nMicroservices\r\nDocker\r\nJava\r\nAngular\r\nNodeJS\r\nBootstrap\r\nSpring boot\r\nHibernate\r\nTomcat\r\nJboss\r\nNexus\r\nTeamcity\r\nMaven\r\nKafka', '2023-12-26', 'closed'),
(13, '2023-12-21', 'PHP Developer', 'PHP_D', 'Responsibilities\r\n\r\n\r\nEngage with the macro-environment to look for new opportunities, capabilities and trends that would add value to the required development work\r\nSuggest changes in executing work processes to better drive value and benefits for the business\r\nPrepare and share recommendations for process and systems improvements in relevant area of accountability\r\nActively participate in team, cross-discipline and vendor-driven collaboration sessions or forums to increase understanding of the working environment (current and planned)\r\nBusiness alignment \r\nPartner with Business stakeholders to create integrated roadmaps to enable business requirements delivery \r\nSolution design and build\r\nConsolidate and prepare solution design documentation\r\nApply standards and governance in such a way as to develop the best fit solution for business\r\nCoordinate and apply various coding efforts\r\nCollate data on coding progress achieved\r\nAddress and develop solutions to problems and risks arising from coding efforts\r\nDesign relevant test scripts/ test cases to best determine system readiness and usability \r\nService handover\r\nProvide second tier support as required\r\n\r\n\r\nRequirements \r\n\r\nDegree in relevant Technology OR Science OR Engineering field of study \r\n8 - 10 years java experience. \r\nStrong back end and front end development skills\r\nStrong SQL skills, especially on MSSQL\r\nExperience with workflow tools like TIBCO AMX / Camundo an advantage\r\nExperience with rules engines like Drools and advantage \r\nRelevant system/application development language\r\nRelevant development frameworks\r\nCoding for security best practice\r\nAgile/DevOps principles and applications\r\nBespoke BU/FA knowledge \r\nCorporate and investment banking domain (preferred)\r\nRelevant banking regulations (preferred)\r\nin an Agile/DevOps environment (preferred)\r\n\r\n\r\nSolid experience in the following technologies:\r\nSOA\r\nMicroservices\r\nDocker\r\nJava\r\nAngular\r\nNodeJS\r\nBootstrap\r\nSpring boot\r\nHibernate\r\nTomcat\r\nJboss\r\nNexus\r\nTeamcity\r\nMaven\r\nKafka', '2023-12-23', 'closed');

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

CREATE TABLE `logindetails` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `usertype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logindetails`
--

INSERT INTO `logindetails` (`username`, `password`, `usertype`) VALUES
('ghost_za', 'ghost_za', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logindetails`
--
ALTER TABLE `logindetails`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
