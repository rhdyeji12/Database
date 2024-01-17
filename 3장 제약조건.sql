#날짜 : 2024/01/03
#이름 : 공예지
#내용 : 3장 제약조건

#실습 3-1
CREATE TABLE `User2` (
	`uid`   VARCHAR(10) primary key,
    `name`  VARCHAR(10),
    `birth` VARCHAR(10),
	`addr`  VARCHAR(50));

#실습 3-2

INSERT INTO `User2` (`uid`, `name`, `birth`, `addr`) VALUES ('A101', '김유신', '1968-05-09', '경남 김해시');
INSERT INTO `User2` (`uid`, `name`, `birth`, `addr`) VALUES ('A102', '김춘추', '1972-11-23', '경남 경주시');
INSERT INTO `User2` (`uid`, `name`, `birth`, `addr`) VALUES ('A103', '장보고', '1978-03-01', '전남 완도군');
INSERT INTO `User2` (`uid`, `name`, `birth`, `addr`) VALUES ('A105', '강감찬', '1979-08-16', '서울시 관악구');
INSERT INTO `User2` (`uid`, `name`, `birth`, `addr`) VALUES ('A106', '이순신', '1981-05-23', '부산시 진구');


#실습 3-3
CREATE TABLE `User3` (
`uid`   VARCHAR(10) PRIMARY KEY,
`name`  VARCHAR(10),
`birth` CHAR(10),
`hp`    CHAR(13) UNIQUE, 
`addr`  VARCHAR(50)
);


#실습 3-4
INSERT INTO `User3` (`uid`, `name`, `birth`,`hp`, `addr`) VALUES ('A101', '김유신', '1968-05-09','010-1234-1111', '경남 김해시');
INSERT INTO `User3` (`uid`, `name`, `birth`,`hp`, `addr`) VALUES ('A102', '김춘추', '1972-11-23', '010-1234-2222','경남 경주시');
INSERT INTO `User3` (`uid`, `name`, `birth`,`hp`, `addr`) VALUES ('A103', '장보고', '1978-03-01', '010-1234-3333','전남 완도군');
INSERT INTO `User3` (`uid`, `name`, `birth`,`hp`, `addr`) VALUES ('A104', '강감찬', '1979-08-16', '010-1234-4444','서울시 관악구');
INSERT INTO `User3` (`uid`, `name`, `birth`,`hp`, `addr`) VALUES ('A105', '이순신', '1981-05-23', '010-1234-5555','부산시 진구');


#실습 3-5
create table `Parent` (
	`pid`    VARCHAR(10) PRIMARY KEY,
	`name`   VARCHAR(10),
	`birth`  CHAR(10),
	`addr`   VARCHAR(100)
);
create table `child` (
	`cid`    VARCHAR(10) PRIMARY KEY,
	`name`   VARCHAR(10),
	`hp`     CHAR(13) UNIQUE,
	`parent` VARCHAR(100)
);

drop table `Parent`;
drop table `Child`;

#실습 3-6
INSERT INTO `Parent` VALUES('P101','김유신','1968-05-09','경남 김해시');
INSERT INTO `Parent` VALUES('P102','김춘추','1972-11-23','경남 경주시');
INSERT INTO `Parent` VALUES('P103','장보고','1978-03-01','전남 완도시');
INSERT INTO `Parent` VALUES('P104','강감찬','1979-08-16','서울시 관악구');
INSERT INTO `Parent` VALUES('P105','이순신','1981-05-23','부산시 진구');

INSERT INTO `Child`  VALUES('c101','김철수','010-1234-1001','P101');
INSERT INTO `Child`  VALUES('c102','김영희','010-1234-1002','P101');
INSERT INTO `Child`  VALUES('c103','강철수','010-1234-1003','P103');
INSERT INTO `Child`  VALUES('c104','이철수','010-1234-10040','P107');


#실습 3-7
create table `User4` (
`uid`			varchar(10) primary key,
`name`			varchar(10) not null,
`gender`		char(1),
`age`			int default 1,
`hp`			char(13) unique,
`addr`			varchar(20)
);

drop table `User4`;

INSERT INTO `User4` VALUES ('A101', '김유신', 'M', 25, '010-1234-1111', '경남 김해시'); 
INSERT INTO `User4` VALUES ('A102', '김춘추', 'M', 25, '010-1234-2222', '경남 경주시') ;
INSERT INTO `User4` VALUES ('A103', '장보고', 'M', 35, '010-1234-3333', '전남 완도시') ;
INSERT INTO `User4` VALUES ('A104', '강감찬', 'M', 42, '010-1234-4444', '서울시 관악구'); 
INSERT INTO `User4`
				(`uid`, `name`, `gender`, `hp`, `addr`)
 VALUES 
 ('A105', '이순신', 'M','010-1234-5555', '부산시 진구'); 
INSERT INTO `User4` VALUES ('A106', '신사임당', 'F', 32, NULL, '강릉시') ;
INSERT INTO `User4` VALUES ('A107', '허난설현', 'F', 27, NULL, '경기도 광주시') ;



#실습 3-8
#실습 3-9
create table `User5`(
	`seq` int primary key auto_increment,
    `name` varchar(10) not null,
    `gender` char(1) check (`gender` in ('M', 'F')),
	`age` int default 1 check (`age` > 0 and `age` < 100),
    `addr` varchar(20)
);

#실습 3-10

insert into `User5`(`name`, `gender`, `age`, `addr`) values ('김유신', 'M', '25', '경남 김해시');
insert into `User5`(`name`, `gender`, `age`, `addr`) values ('김춘추', 'M', '23', '경남 경주시');
insert into `User5` (`name`, `gender`, `age`, `addr`)values ('장보고', 'M', '35', '전남 완도시');
insert into `User5`(`name`, `gender`, `age`, `addr`) values ('강감찬', 'M', '42', '서울시 관악구');
insert into `User5` (`name`, `gender`, `age`, `addr`)values ('이순신', 'M', '51', '부산시');
insert into `User5`(`name`, `gender`, `age`, `addr`) values ('신사임당', 'F', '28', '강릉시');




