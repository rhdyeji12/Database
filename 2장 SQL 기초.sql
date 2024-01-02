#날짜 : 2024/01/02
#이름 : 공예지
#내용 : 2장 SQL 기초

# 실습 2-1
CREATE TABLE `Uer1` (
	`uid`  VARCHAR(10),
    `name` VARCHAR(10),
    `hp`   CHAR(13),
    `age`  INT
);

DROP TABLE `Uer1`;

# 실습 2-2
INSERT INTO `User1` VALUES ('A101', '김유신', '010-1234-1111', 25);
	INSERT INTO `User1` VALUES ('A102', '김춘추', '010-1234-2222', 23);
    INSERT INTO `User1` VALUES ('A103', '김춘추', '010-1234-3333', 32);
	INSERT INTO `User1` (`uid`, `name`, `age`) VALUES ('A104', '강감찬', 45);
    INSERT INTO `User1` SET `uid` = 'A105', `name`='이순신', `hp`='010-1234-5555';
    
# 실습 2-3
SELECT * FROM `Uer1`;
SELECT * FROM `Uer1` WHERE `uid` = 'A101';
SELECT * FROM `Uer1` WHERE `name` = '김춘추'; 
SELECT * FROM `Uer1` WHERE `age` <30;
SELECT * FROM `Uer1` WHERE `age` >= 30;
SELECT `uid`, `name`, `age` FROM `User1`;

# 실습 2-4
UPDATE `User1` SET `hp`='010-1234-4444' WHERE `uid`='A104';
UPDATE `User1` SET `age`= 51 WHERE `uid`='A105';
UPDATE `User1` SET 	`hp`='010-1234-1001', `age`=27 WHERE `uid`='A101';

# 실습 2-5
DELETE FROM `User1` WHERE `uid`='A101';
DELETE FROM `User1` WHERE `uid`='A102' AND `age`=25;
DELETE FROM `User1` WHERE `age` >= 30;


# 실습 2-6
ALTER TABLE `User1` ADD `gender` TINYINT;
ALTER TABLE `User1` ADD `birth` CHAR(10) AFTER `name`;
ALTER TABLE `User1` MODIFY `gender` CHAR(1);
ALTER TABLE `User1` MODIFY `age` TINYINT;
ALTER TABLE `User1` DROP `gender`;


# 실습 2-7
CREATE TABLE `User1Copy` LIKE `User1`;
INSERT INTO `Uer1Copy` SELECT * FROM `User1`;

# 실습 2-8
CREATE table `TblUser' (
   `user_id`    VARCHAR(10),
   `user_name`	 VARCHAR(10),
   `user_hp`	 CHAR(13),
   `user_age`	 TINYINT,
   `user_addr`  VARCHAR(100)
);
DROP
















