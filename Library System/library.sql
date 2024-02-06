-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2024 at 05:41 PM
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
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` int(11) NOT NULL,
  `book_isbn` varchar(40) NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `book_publisher` varchar(50) NOT NULL,
  `book_edition` varchar(50) NOT NULL,
  `book_genre` varchar(20) NOT NULL,
  `book_price` int(11) NOT NULL,
  `book_pages` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `book_isbn`, `book_name`, `book_publisher`, `book_edition`, `book_genre`, `book_price`, `book_pages`) VALUES
(1, '9780451524935', 'Nineteen Eighty-Four', 'Penguin Books', '70th Anniversary', 'Dystopian fiction', 676, 272),
(2, '9780547928220', 'The Lord of the Rings', 'Houghton Mifflin Harcourt', '50th Anniversary', 'Fantasy', 1974, 1137),
(3, '9780590352612', 'Harry Potter and the Sorcerer\'s Stone', 'Scholastic Press', 'Anniversary', 'Fantasy', 564, 309),
(4, '9780425235810', 'To Kill a Mockingbird', 'Grand Central Publishing', '50th Anniversary', 'Historical fiction', 564, 324),
(5, '9780679725206', 'The Great Gatsby by F. Scott Fitzgerald', 'Scribner', 'New', 'Fiction', 564, 180),
(6, '9780143439518', 'Pride and Prejudice by Jane Austen', 'Penguin Classics', 'Revised', 'Classic Fiction', 564, 288),
(7, '9780345391803', 'The Hitchhiker\'s Guide to the Galaxy by D.Adams', 'Del Rey', 'Revised', 'Science Fiction', 451, 184),
(8, '9780316769080', 'The Catcher in the Rye by J.D. Salinger', 'Little, Brown and Company', 'New', 'Fiction', 676, 224),
(9, '9780451524935', '1984 by George Orwell', 'Penguin Books', ' 70th Anniversary', 'Dystopian Fiction', 676, 328),
(10, '9780375831009', 'The Book Thief by Markus Zusak', 'Knopf Books for Young Readers', '10th Anniversary', 'Historical fiction', 902, 552),
(11, '9780062568408', 'The Alchemist by Paulo Coelho', 'HarperOne', '25th Anniversary', 'Philo fiction', 676, 182),
(12, '9780544240224', 'The Martian by Andy Weir', 'Crown Publishing Group', '1st', 'Science fiction', 846, 369),
(13, '9780060253068', 'Charlotte\'s Web by E.B. White', 'HarperCollins', '75th Anniversary', 'Chi literature', 564, 224),
(14, '9780399226456', 'The Very Hungry Caterpillar by Eric Carle', 'Puffin Books', '50th Anniversary', 'Chi\'s literature', 564, 24),
(15, '9780399221110', 'Alexander and the T, H, NG, VBD by Judith Viorst', 'HarperCollins', '50th Anniversary', 'Chi\'s literature', 564, 64),
(16, '9780345492549', 'A Discovery of Witches by Deborah Harkness', 'Penguin Books', 'Mass Market', 'Para Romance', 563, 576),
(17, '780316241052', 'Leviathan Wakes by James S.A. Corey', 'Hachette Book Group', 'Trade paperback', 'Space opera, mystery', 619, 569),
(18, '9780785742545', 'Mexican Gothic by Silvia Moreno-Garcia', 'Harper Perennial', 'Trade paperback', 'Gothic horror', 845, 304),
(19, '9780143130090', 'The Haunting of Hill House by Shirley Jackson ', 'Penguin Classics', 'Classic', 'Psychological horror', 789, 246),
(20, '9780062951705', 'Beach Read by Emily Henry', 'Penguin Random House', 'Paperback', 'Contemporary Romance', 620, 352),
(21, '9780593100021', 'The Spanish Love Deception by Elena Armas', 'Berkley Books', 'Paperback', 'Contemporary Romance', 563, 384),
(22, '9780451492544', 'Well Met by Jen DeLuca ', 'Penguin Random House', 'Paperback', 'Contemporary Romance', 563, 320),
(23, '9781101905905', 'A Gentleman in Moscow by Amor Towles', 'Viking', 'Hardcover', 'Historical Fiction', 902, 416),
(24, '9780316249872', 'Circe by Madeline Miller', 'Little, Brown and Company', 'Hardcover', 'Mythology', 902, 390),
(25, '9780307270001', 'The Girl with the Dragon Tattoo by Stieg Larsson', 'Vintage Books', 'Paperback', 'Mystery, Thriller', 845, 485),
(26, '9780743243059', 'The Glass Castle by Jeannette Walls', ' Scribner', 'Paperback', 'Memoir', 789, 288),
(27, '9780307479257', 'Wild by Cheryl Strayed', 'Knopf', 'Paperback', 'Memoir', 845, 422),
(28, '9780147295090', 'Becoming by Michelle Obama', 'Crown Publishing Group', 'Hardcover', 'Memoir', 902, 448),
(29, '9780307270216', 'Born on a Blue Day by Daniel Tammet ', 'Vintage Books', 'Paperback', 'Memoir', 845, 288),
(30, '9780812982706', 'Just Mercy by Bryan Stevenson', 'One World', 'Paperback', 'Memoir', 845, 384),
(31, '9780316208522', 'Born a Crime by Trevor Noah', 'Crown Publishing Group', 'Paperback', 'Memoir', 563, 432);

-- --------------------------------------------------------

--
-- Table structure for table `issued_books`
--

CREATE TABLE `issued_books` (
  `IID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `BID` int(11) NOT NULL,
  `ISSUED_DATE` varchar(20) NOT NULL,
  `PERIOD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issued_books`
--

INSERT INTO `issued_books` (`IID`, `UID`, `BID`, `ISSUED_DATE`, `PERIOD`) VALUES
(1, 3, 6, '06-02-2024', 7);

-- --------------------------------------------------------

--
-- Table structure for table `returned_books`
--

CREATE TABLE `returned_books` (
  `rid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `return_date` varchar(50) NOT NULL,
  `fine` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `returned_books`
--

INSERT INTO `returned_books` (`rid`, `bid`, `uid`, `return_date`, `fine`) VALUES
(1, 8, 2, '15-02-2024', 89);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UID` int(11) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `USER_TYPE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UID`, `USERNAME`, `PASSWORD`, `USER_TYPE`) VALUES
(1, 'admin', 'admin', 1),
(2, 'user', 'user', 0),
(3, 'student', 'student', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `issued_books`
--
ALTER TABLE `issued_books`
  ADD PRIMARY KEY (`IID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `BID` (`BID`);

--
-- Indexes for table `returned_books`
--
ALTER TABLE `returned_books`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `issued_books`
--
ALTER TABLE `issued_books`
  MODIFY `IID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `returned_books`
--
ALTER TABLE `returned_books`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issued_books`
--
ALTER TABLE `issued_books`
  ADD CONSTRAINT `issued_books_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`UID`),
  ADD CONSTRAINT `issued_books_ibfk_2` FOREIGN KEY (`BID`) REFERENCES `books` (`bid`);

--
-- Constraints for table `returned_books`
--
ALTER TABLE `returned_books`
  ADD CONSTRAINT `returned_books_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`UID`),
  ADD CONSTRAINT `returned_books_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `books` (`bid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
