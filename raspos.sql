-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- 호스트: localhost
-- 처리한 시간: 13-11-01 17:51
-- 서버 버전: 5.5.30-log
-- PHP 버전: 5.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 데이터베이스: `raspos`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `price`
--

CREATE TABLE IF NOT EXISTS `price` (
  `date` date NOT NULL,
  `code` varchar(15) NOT NULL,
  `name` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `sold_book`
--

CREATE TABLE IF NOT EXISTS `sold_book` (
  `yearmonth` varchar(8) NOT NULL,
  `sellday` date NOT NULL,
  `time` time NOT NULL,
  `totalprice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
