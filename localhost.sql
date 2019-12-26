-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 19-12-26 14:57
-- 서버 버전: 5.5.59-log
-- PHP 버전: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `bsknou`
--
CREATE DATABASE IF NOT EXISTS `bsknou` DEFAULT CHARACTER SET euckr COLLATE euckr_korean_ci;
USE `bsknou`;

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE `member` (
  `userID` varchar(50) NOT NULL,
  `userPW` varchar(50) NOT NULL,
  `IP` varchar(100) NOT NULL,
  `logDate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=euckr;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`userID`, `userPW`, `IP`, `logDate`) VALUES
('admin', '12345', '', '2019-12-24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
