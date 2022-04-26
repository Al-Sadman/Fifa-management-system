-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 06:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fifa`
--

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` varchar(255) NOT NULL,
  `player_name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `nation` varchar(255) DEFAULT NULL,
  `club` varchar(255) DEFAULT NULL,
  `league` varchar(255) DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `strong_foot` varchar(255) DEFAULT NULL,
  `weak_foot` varchar(255) DEFAULT NULL,
  `skill_move` varchar(255) DEFAULT NULL,
  `Skill_boost` varchar(255) DEFAULT NULL,
  `special_trait` varchar(255) DEFAULT NULL,
  `pace` int(11) DEFAULT NULL,
  `shooting` int(11) DEFAULT NULL,
  `pass` int(11) DEFAULT NULL,
  `agility` int(11) DEFAULT NULL,
  `defence` int(11) DEFAULT NULL,
  `physical` int(11) DEFAULT NULL,
  `reflexes` int(11) DEFAULT NULL,
  `diving` int(11) DEFAULT NULL,
  `positioning` int(11) DEFAULT NULL,
  `handling` int(11) DEFAULT NULL,
  `kicking` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `player_name`, `position`, `nation`, `club`, `league`, `season`, `weight`, `height`, `strong_foot`, `weak_foot`, `skill_move`, `Skill_boost`, `special_trait`, `pace`, `shooting`, `pass`, `agility`, `defence`, `physical`, `reflexes`, `diving`, `positioning`, `handling`, `kicking`) VALUES
('38201e95-1384-47de-abf0-73e475b14385', 'ron', 'st', 'potugal', 'man u', 'dgg', 2, 7, '78', 'right', 'lrft', 'dribbler', 'undefined', 'dribbler', 79, 33, 33, 56, 56, 2, 0, 0, 0, 0, 0),
('9b3b518f-688f-4025-abaa-17df11f1edcb', 'neymar jr.', 'rb', 'brazil1', 'psg', 'league 1', 2020, 75, '5 feet 3 inches', 'left', 'right', 'flair', 'undefined', 'speed dribbler', 94, 90, 95, 87, 67, 78, 0, 0, 0, 0, 0),
('a57ab381-00d9-4f83-acf3-8ca905b5fc2e', 'messi', 'rw', 'argentina', 'psg', 'league 1', 2022, 80, '5 feet 4 inch', 'right', 'left', 'rainbow', 'agility', 'speed dribbler', 90, 88, 97, 96, 80, 76, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `squads`
--

CREATE TABLE `squads` (
  `ID` varchar(100) NOT NULL,
  `squad` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`squad`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `squads`
--

INSERT INTO `squads` (`ID`, `squad`) VALUES
('14e80512-c878-411e-bc0e-f78b22973c0e', '{\"id\":\"14e80512-c878-411e-bc0e-f78b22973c0e\",\"user_id\":\"1\",\"name\":\"squad1\",\"formation\":\"4-4-2\",\"sub_players\":[null,null,null,null,null,null,null],\"main_players\":[{\"player_id\":\"9b3b518f-688f-4025-abaa-17df11f1edcb\",\"player_name\":\"neymar jr.\",\"position\":\"lw\",\"nation\":\"brazil\",\"club\":\"psg\",\"league\":\"league 1\",\"season\":\"2022\",\"weight\":\"75\",\"height\":\"5 feet 3 inches\",\"strong_foot\":\"left\",\"weak_foot\":\"right\",\"skill_move\":\"flair\",\"Skill_boost\":\"pace boost\",\"special_trait\":\"speed dribbler\",\"pace\":\"94\",\"shooting\":\"90\",\"pass\":\"95\",\"agility\":\"87\",\"defence\":\"67\",\"physical\":\"78\",\"reflexes\":\"0\",\"diving\":\"0\",\"positioning\":\"0\",\"handling\":\"0\",\"kicking\":\"0\"},{\"player_id\":\"a57ab381-00d9-4f83-acf3-8ca905b5fc2e\",\"player_name\":\"messi\",\"position\":\"rw\",\"nation\":\"argentina\",\"club\":\"psg\",\"league\":\"league 1\",\"season\":\"2022\",\"weight\":\"80\",\"height\":\"5 feet 4 inch\",\"strong_foot\":\"right\",\"weak_foot\":\"left\",\"skill_move\":\"rainbow\",\"Skill_boost\":\"agility\",\"special_trait\":\"speed dribbler\",\"pace\":\"90\",\"shooting\":\"88\",\"pass\":\"97\",\"agility\":\"96\",\"defence\":\"80\",\"physical\":\"76\",\"reflexes\":\"0\",\"diving\":\"0\",\"positioning\":\"0\",\"handling\":\"0\",\"kicking\":\"0\"},null,null,null,null,null,null,null,null,null]}'),
('4d0d0e99-2103-48f7-922a-ddcf6d0bb8b8', '{\"id\":\"4d0d0e99-2103-48f7-922a-ddcf6d0bb8b8\",\"user_id\":\"1\",\"name\":\"sadf\",\"formation\":\"4-4-2\",\"sub_players\":[null,null,null,null,null,null,null],\"main_players\":[{\"player_id\":\"9b3b518f-688f-4025-abaa-17df11f1edcb\",\"player_name\":\"neymar jr.\",\"position\":\"lw\",\"nation\":\"brazil1\",\"club\":\"psg\",\"league\":\"league 1\",\"season\":\"2022\",\"weight\":\"75\",\"height\":\"5 feet 3 inches\",\"strong_foot\":\"left\",\"weak_foot\":\"right\",\"skill_move\":\"flair\",\"Skill_boost\":\"undefined\",\"special_trait\":\"speed dribbler\",\"pace\":\"94\",\"shooting\":\"90\",\"pass\":\"95\",\"agility\":\"87\",\"defence\":\"67\",\"physical\":\"78\",\"reflexes\":\"0\",\"diving\":\"0\",\"positioning\":\"0\",\"handling\":\"0\",\"kicking\":\"0\"},null,null,null,null,null,null,null,null,null,null]}'),
('6f4e2963-c1e9-488f-b638-73d9986b7bf0', '{\"id\":\"6f4e2963-c1e9-488f-b638-73d9986b7bf0\",\"user_id\":\"1\",\"name\":\"random\",\"formation\":\"4-4-2\",\"sub_players\":[null,null,null,null,null,null,null],\"main_players\":[{\"player_id\":\"9b3b518f-688f-4025-abaa-17df11f1edcb\",\"player_name\":\"neymar jr.\",\"position\":\"lw\",\"nation\":\"brazil1\",\"club\":\"psg\",\"league\":\"league 1\",\"season\":\"2022\",\"weight\":\"75\",\"height\":\"5 feet 3 inches\",\"strong_foot\":\"left\",\"weak_foot\":\"right\",\"skill_move\":\"flair\",\"Skill_boost\":\"undefined\",\"special_trait\":\"speed dribbler\",\"pace\":\"94\",\"shooting\":\"90\",\"pass\":\"95\",\"agility\":\"87\",\"defence\":\"67\",\"physical\":\"78\",\"reflexes\":\"0\",\"diving\":\"0\",\"positioning\":\"0\",\"handling\":\"0\",\"kicking\":\"0\"},{\"player_id\":\"a57ab381-00d9-4f83-acf3-8ca905b5fc2e\",\"player_name\":\"messi\",\"position\":\"rw\",\"nation\":\"argentina\",\"club\":\"psg\",\"league\":\"league 1\",\"season\":\"2022\",\"weight\":\"80\",\"height\":\"5 feet 4 inch\",\"strong_foot\":\"right\",\"weak_foot\":\"left\",\"skill_move\":\"rainbow\",\"Skill_boost\":\"agility\",\"special_trait\":\"speed dribbler\",\"pace\":\"90\",\"shooting\":\"88\",\"pass\":\"97\",\"agility\":\"96\",\"defence\":\"80\",\"physical\":\"76\",\"reflexes\":\"0\",\"diving\":\"0\",\"positioning\":\"0\",\"handling\":\"0\",\"kicking\":\"0\"},null,null,null,null,null,null,null,null,null]}'),
('aec71d94-87a8-4c29-b187-df9583a25b87', '{\"id\":\"aec71d94-87a8-4c29-b187-df9583a25b87\",\"user_id\":\"1\",\"name\":\"hello\",\"formation\":\"4-4-2\",\"sub_players\":[null,null,null,null,null,null,null],\"main_players\":[{\"player_id\":\"9b3b518f-688f-4025-abaa-17df11f1edcb\",\"player_name\":\"neymar jr.\",\"position\":\"lw\",\"nation\":\"brazil\",\"club\":\"psg\",\"league\":\"league 1\",\"season\":\"2022\",\"weight\":\"75\",\"height\":\"5 feet 3 inches\",\"strong_foot\":\"left\",\"weak_foot\":\"right\",\"skill_move\":\"flair\",\"Skill_boost\":\"pace boost\",\"special_trait\":\"speed dribbler\",\"pace\":\"94\",\"shooting\":\"90\",\"pass\":\"95\",\"agility\":\"87\",\"defence\":\"67\",\"physical\":\"78\",\"reflexes\":\"0\",\"diving\":\"0\",\"positioning\":\"0\",\"handling\":\"0\",\"kicking\":\"0\"},null,null,null,null,null,null,null,null,null,null]}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `transaction_code` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `email`, `password`, `user_id`, `bank_name`, `transaction_code`, `account_no`) VALUES
('sadman', 'sadmanahmed316@gmail.com', '12345', '388afe11-886a-4769-a205-aac23b24f291', NULL, NULL, NULL),
('a', 'a', 'a', '673b02ee-d4bb-4961-ba66-2576a4eed20a', NULL, NULL, NULL),
('a', 'a', 'a', '9f987a55-5628-4c13-9608-65860eb7aa95', NULL, NULL, NULL),
('sadman', 'sadman311@gmail.com', '123456', 'b3a539cd-2198-4d71-8dd9-5f90da1f010a', NULL, NULL, NULL),
('admin', 'admin', 'admin01', 'bde0e6a6-e80c-407a-a2a7-14570e1fbb3d', NULL, NULL, NULL),
('a', 'a', 'a', 'c7cb9516-e36f-476e-b3d8-9c5f6fba05c5', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `squads`
--
ALTER TABLE `squads`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
