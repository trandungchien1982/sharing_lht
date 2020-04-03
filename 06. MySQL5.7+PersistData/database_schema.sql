
-- Execute all SQL inside a transaction to improve performance

SET autocommit = 0;
CREATE DATABASE `oauth2_authorization_db2` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

-- Set default database
USE oauth2_authorization_db2;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salary` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `user`
	 (`id`,`age`,`password`,`salary`,`username`) VALUES
	 ('1', '33', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu', '3456', 'Alex123')
	,('2', '23', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu', '7823', 'Tom234')
	,('3', '45', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu', '4234', 'Adam')
	,('4', '67', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu', '42344', 'Adam4')
	,('5', '5', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu', '42345', 'Adam5')
	,('6', '6', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu', '42346', 'Adam6')
	,('7', '7', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu', '42347', 'Adam7')	
	,('8', '8', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu', '42348', 'Adam8')	
	,('9', '9', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu', '42349', 'Adam9')		
	,('10', '10', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu', '42349', 'Adam10')			
	,('12', '20', '$2a$04$I9Q2sDc4QGGg5WNTLmsz0.fvGv3OjoZyj81PrSFyGOqMphqfS2qKu', '42349', 'Adam10')			
	,('14', '24', 'Noi buon hoa phuong', '42349', 'Adam10')			
;

COMMIT;

SET autocommit = 1;
