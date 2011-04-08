-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2011 年 04 月 07 日 19:29
-- 服务器版本: 5.1.36
-- PHP 版本: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- 数据库: `eecs394`
--

-- --------------------------------------------------------

--
-- 表的结构 `logins`
--

CREATE TABLE IF NOT EXISTS `logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(10) CHARACTER SET utf8 NOT NULL,
  `authority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `logins`
--

INSERT INTO `logins` (`id`, `email`, `password`, `authority`) VALUES
(1, 'liusiyang61@gmail.com', '1', 2);

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8,
  `mpdclass` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `datepresented` date NOT NULL,
  `patentnumber` varchar(50) CHARACTER SET ucs2 NOT NULL,
  `person1` int(11) DEFAULT NULL,
  `person2` int(11) DEFAULT NULL,
  `person3` int(11) DEFAULT NULL,
  `person4` int(11) DEFAULT NULL,
  `person5` int(11) DEFAULT NULL,
  `person6` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`,`patentnumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `mpdclass`, `datepresented`, `patentnumber`, `person1`, `person2`, `person3`, `person4`, `person5`, `person6`) VALUES
(1, 'product1', NULL, NULL, '2011-01-01', '111111111111111', 1, 2, 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sponser` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=gb2312 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `sponser`) VALUES
(1, 'yang', 'yang@gmail.com', NULL),
(2, 'tina', 'tina@gmail.com', 'nu'),
(3, 'cary', 'cary@gmail.com', NULL);