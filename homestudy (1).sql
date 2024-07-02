-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 10:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestudy`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_title` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_title`, `status`) VALUES
(1, 'mathematics', 1),
(2, 'french', 1),
(3, 'english', 1),
(7, 'Biology', 1);

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `chapter` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `posted_date` date NOT NULL,
  `deadline_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `homework`
--

INSERT INTO `homework` (`id`, `course_id`, `class`, `chapter`, `file`, `posted_date`, `deadline_date`, `status`) VALUES
(1, 2, 'class1', 'new chapter', 'Homework/French Quizzes.docx', '2024-07-02', '2024-07-03', 'posted');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `chapter` text NOT NULL,
  `frenchContent` longtext NOT NULL,
  `englishContent` longtext NOT NULL,
  `date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `course_id`, `class`, `chapter`, `frenchContent`, `englishContent`, `date`, `status`) VALUES
(9, 2, 'class2', 'Le petit déjeuner / Breakfast', 'Bonjour maman', 'hello mom', '2024-06-30', '1'),
(10, 2, 'class2', 'Le petit déjeuner / Breakfast', 'Bonjour me chère. qu\'est-ce que tu veux pour ton petit-déjeuner?', 'hello my dear what do you want for your breakfast?', '2024-06-30', '1'),
(11, 2, 'class1', 'Le petit déjeuner / Breakfast', 'Bonjour maman', 'hello mom', '2024-06-30', '1'),
(12, 2, 'class1', 'Le petit déjeuner / Breakfast', 'Bonjour me chère. qu\'est-ce que tu veux pour ton petit-déjeuner?', 'hello my dear what do you want for your breakfast?', '2024-06-30', '1'),
(13, 2, 'class1', 'Le petit déjeuner / Breakfast', 'du thé ou du café?', 'tea or coffe?', '2024-06-30', '1'),
(14, 2, 'class1', 'Le petit déjeuner / Breakfast', 'Je veux du thé', 'I want tea', '2024-06-30', '1'),
(15, 2, 'class1', 'Le petit déjeuner / Breakfast', 'D\'accord, avec du lait?', 'Okay, with milk?', '2024-06-30', '1'),
(16, 2, 'class1', 'Le petit déjeuner / Breakfast', 'Oui maman, avec un peu de lait et du surce', 'yes mom, with a little milk and sugar', '2024-06-30', '1'),
(17, 2, 'class1', 'Le petit déjeuner / Breakfast', 'tu vuex prendre du pain ou tu préfères des céréales?', 'Do you want to have vread or do you prefer cereals?', '2024-06-30', '1'),
(18, 2, 'class1', 'Le petit déjeuner / Breakfast', 'J\'aime bein prendre du pain avec du beurre et de la confiture', 'I like to have bread with butter and jam', '2024-06-30', '1'),
(19, 2, 'class1', 'Le petit déjeuner / Breakfast', 'est ce qu\'il ya de la confiture de fraise?', 'is there an strawberry jam?', '2024-06-30', '1'),
(20, 2, 'class1', 'Le petit déjeuner / Breakfast', 'Oui, il y a de la confiture de fraise et de la confiture de pommes', 'Yes, there is strawberry jam and apple jam', '2024-06-30', '1'),
(21, 2, 'class1', 'Le petit déjeuner / Breakfast', 'j\'ai aussi un pot de miel, si tu veux', 'I also have a jar of honey, if you want', '2024-06-30', '1'),
(22, 2, 'class1', 'Le petit déjeuner / Breakfast', 'Non maman, je ne veux pas de miel', 'No mom, I don\'t want honey', '2024-06-30', '1');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `content`) VALUES
(1, 'Authors often misinterpret the lettuce as a folklore rabbi, when in actuality it feels more like an uncursed bacon. Pursued distances show us how mother-in-laws can be charleses. Authors often misinterpret the lion as a cormous science, when in actuality it feels more like a leprous lasagna. Recent controversy aside, their band was, in this moment, a racemed suit. The clutch of a joke becomes a togaed chair. The first pickled chess is.'),
(2, 'In modern times the first scrawny kitten is, in its own way, an input. An ostrich is the beginner of a roast. An appressed exhaust is a gun of the mind. A recorder is a grade from the right perspective. A hygienic is the cowbell of a skin. Few can name a dun brazil that isn\'t a highbrow playroom. The unwished beast comes from a thorny oxygen. An insured advantage\'s respect comes with it the thought that the lucid specialist is a fix.'),
(3, 'Typing Pal’s training program covers every aspect of proper typing technique, offering a complete and customized program with hundreds of activities that are suitable for beginners and veterans alike. Our method has helped millions of users achieve their goals.'),
(4, 'You will see improvement in a few weeks if you practice often, concentrate on accuracy over speed and adopt the proper technique. The hardest part is forgetting your bad habits, even if it means typing more slowly at first.'),
(5, 'Kila mtu ana haki ya kuelimishwa. Elimu yapasa itolewe bure hasa ile ya madarasa ya chini. Elimu ya masarasa ya chini ihudhuriwe kwa lazima. Elimu ya ufundi na ustadi iwe wazi kwa wote. Na elimu ya juu iwe wazi kwa wote kwa kutegemea sifa ya mtu.\r\n2) Elimu itolewe kwa madhumuni ya kuendeleza barabara hali ya binadamu, na kwa shabaha ya kukuza haki za binadamu na uhuru wake wa asili. Elimu ni wajibu ikuze hali ya kueleana, kuvumiliana na ya urafiki kati ya mataifa na kati ya watu wa rangi na dini mbali-mbali.Kadhalika ni wajibu iendeleze shughuli za Umoja wa Mataifa za kudumisha amani.\r\n3) Ni haki ya wazazi kuchagua aina ya elimu ya kufunzwa watoto wao.'),
(6, ' Elimu itolewe kwa madhumuni ya kuendeleza barabara hali ya binadamu, na kwa shabaha ya kukuza haki za binadamu na uhuru wake wa asili. Elimu ni wajibu ikuze hali ya kueleana, kuvumiliana na ya urafiki kati ya mataifa na kati ya watu wa rangi na dini mbali-mbali.Kadhalika ni wajibu iendeleze shughuli za Umoja wa Mataifa za kudumisha amani');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `option_1` varchar(255) NOT NULL,
  `option_2` varchar(255) NOT NULL,
  `option_3` varchar(255) NOT NULL,
  `option_4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question`, `answer`, `option_1`, `option_2`, `option_3`, `option_4`) VALUES
(4, 7, 'What is CSS Stand for ?', 'cascanding sytle sheet', 'casss style sheet', 'cascanding sytle sheet', 'case scale square', 'case sheet scale'),
(6, 6, 'Nous avons _________ un gateau pour ton anniversaire.', 'Mangé', 'Manger', 'Mangeions', 'Mangé', 'Mangons'),
(7, 6, 'Tu ________ en bonne humor.', 'étais', 'Etre', 'étais', 'Es', 'été'),
(8, 6, 'Elles __________ a Paris.', 'Sont allées', 'Aller', 'Sont allé', 'Ont allé', 'Sont allées'),
(9, 6, 'J______________ appeller toi.', 'Oubliais', 'Oubliais', 'Oublier', 'Oublié', 'Oublie'),
(10, 6, 'Elle est Morte.', 'False', 'False', 'True', 'none', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `chapter` varchar(255) NOT NULL,
  `posted_date` date NOT NULL,
  `deadline_date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `course_id`, `class`, `chapter`, `posted_date`, `deadline_date`, `status`) VALUES
(6, 2, 'class1', 'Le petit déjeuner / Breakfast', '2024-07-01', '2024-07-02', '1'),
(7, 1, 'class1', 'Le petit déjeuner / Breakfast', '2024-07-01', '2024-07-03', '1');

-- --------------------------------------------------------

--
-- Table structure for table `scramble`
--

CREATE TABLE `scramble` (
  `id` int(11) NOT NULL,
  `word` varchar(191) NOT NULL,
  `hint` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scramble`
--

INSERT INTO `scramble` (`id`, `word`, `hint`) VALUES
(1, 'addition', 'The process of adding numbers'),
(2, 'meeting', 'Event in which people come together'),
(3, 'number', 'Math symbol used for counting'),
(4, 'exchange', 'The act of trading'),
(5, 'new', 'buying something for the first time');

-- --------------------------------------------------------

--
-- Table structure for table `studentwork`
--

CREATE TABLE `studentwork` (
  `id` int(11) NOT NULL,
  `homework_id` int(10) NOT NULL,
  `userCode` varchar(15) NOT NULL,
  `file` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentwork`
--

INSERT INTO `studentwork` (`id`, `homework_id`, `userCode`, `file`, `date`, `status`) VALUES
(2, 1, 'STUD-7849', 'StudentWork/STUD-7849_Document-4563 (1).docx', '2024-07-02', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `no` varchar(10) NOT NULL,
  `class` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(191) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `no`, `class`, `name`, `email`, `phone`, `password`, `user_type`, `status`) VALUES
(2, 'STUD-7849', 'class1', 'hubert hirwa', '', '0742241398', '123', 'student', 'unactive'),
(3, 'LEC-7383', '', 'Yolly One', 'yolly@gmail.com', '0781794795', '1234', 'lecture', 'active'),
(4, '', '', 'Hubert Developer', 'hhirwa1390@stu.ke', '0742241398', 'Admin123!', 'admin', 'active'),
(5, 'LEC-3158', '', 'new text', 'text@gmail.com', '73733733', '123', 'lecture', 'unactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scramble`
--
ALTER TABLE `scramble`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentwork`
--
ALTER TABLE `studentwork`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `scramble`
--
ALTER TABLE `scramble`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `studentwork`
--
ALTER TABLE `studentwork`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
