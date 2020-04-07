
-- Execute all SQL inside a transaction to improve performance

SET autocommit = 0;
CREATE DATABASE `mysql_database_jpa` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

-- Set default database
USE mysql_database_jpa;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(11) DEFAULT NULL
) DEFAULT CHARSET=utf8;

CREATE TABLE `user` (
  `id` bigint(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `birthday` date NULL,
  `active` tinyint(4) DEFAULT NULL,  
  `create_date` datetime DEFAULT NULL,  
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;

CREATE TABLE `roles` (
  `id` bigint(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;

CREATE TABLE `user_roles` (
  `id` bigint(11) NOT NULL,
  `user_id` bigint(11) NOT NULL,
  `role_id` bigint(11) NOT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;

INSERT INTO `hibernate_sequence` VALUES (500);

INSERT INTO `user`(`id`,`name`,`password`,`email`,`description`,`birthday`,`active`,`create_date`) VALUES
	  ('1', 'user01', 'password', 'mail01@gmail.com', 'Mo ta cho User 01', '2014-10-17', '1', '2018-09-25 10:20:30')
	 ,('2', 'user02', 'password', 'mail02@gmail.com', 'Mo ta cho User 02', '2014-12-17', '1', '2018-09-27 11:21:31')
	 ,('3', 'user03', 'password', 'mail03@gmail.com', 'Mo ta cho User 03', '2018-10-20', '1', '2018-04-29 10:15:30')
	 ,('4', 'user04', 'password', 'mail04@gmail.com', 'Mo ta cho User 04', '2018-10-28', '0', '2012-05-30 02:03:04')
	 ,('5', 'user05', 'password', 'mail05@gmail.com', 'Mo ta cho User 05', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('6', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('7', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('8', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('9', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('10', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('11', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('12', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')	 
	 ,('14', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('15', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('16', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('17', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('18', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('19', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('20', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('21', 'user06', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 
	 ,('22', 'user15', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('23', 'user35', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('24', 'user27', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('25', 'user19', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('26', 'user32', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('27', 'user14', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('28', 'user24', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
	 ,('29', 'user38', 'password', 'mail06@gmail.com', 'Mo ta cho User 06', '2019-10-25', '0', '2015-05-26 04:05:06')
;	 

INSERT INTO `roles` (`id`, `name`) VALUES
	 ('1', 'ROLE_ADMIN')
	,('2', 'ROLE_USER')
	,('3', 'ROLE_SECURITY_OFFICER')
;

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`) VALUES
	 ('1', '1', '1')
	,('2', '1', '2')
	,('3', '1', '3')
	,('4', '2', '1')
	,('5', '2', '2')
	,('6', '3', '1')
	,('7', '3', '2')
	,('8', '4', '1')
	,('9', '4', '2')
	,('10', '4', '3')
;

COMMIT;

SET autocommit = 1;
