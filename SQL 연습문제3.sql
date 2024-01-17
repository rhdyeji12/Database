#날짜 : 2024/01/10
#이름 : 공예지
#내용 : SQL 연습문제 3

#실습 3-1
CREATE DATABASE `College`;
CREATE USER 'college'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON College.* TO 'college'@'%';
GRANT ALL PRIVILEGES ON College.* TO 'rhdyeji12'@'%';
FLUSH PRIVILEGES;

#실습 3-2
create table `Student`(
	`stdNO`			varchar(8) primary key,
    `stdName`		varchar(20) not null,
    `stdHp`			varchar(13) not null,
    `stdYear`		int not null,
    `stdAddress`	varchar(100) default null
    );
    
create table `Lecture`(
	`lecNo`			int primary key,
    `lecName`		varchar(20) not null,
    `lecCredit` 	int not null,
    `lecTime`		int not null,
    `lecClass`		varchar(10) default null
    );
    
create table `Register`(
		`regStdNo`			varchar(8) not null,
        `regLecNo`			int not null,
        `regMidScore`		int default null,
        `regFinalScore`		int default null,
        `regTotalScore`		int default null,
        `regGrade`			char(1) default null
        );

insert into `Student` values ('20201016', '김유신', '010-1234-1001', 3, null);
insert into `Student` values ('20201126', '김춘추', '010-1234-1002', 3, '경상남도 경주시');
insert into `Student` values ('20210216', '장보고', '010-1234-1003', 2, '전라남도 완도시');
insert into `Student` values ('20210326', '강감찬', '010-1234-1004', 2, '서울시 영등포구');
insert into `Student` values ('20220416', '이순신', '010-1234-1005', 1, '부산시 부산진구');
insert into `Student` values ('20220521', '송상현', '010-1234-1006', 1, '부산시 동래구');

insert into `Lecture` values (159, '인지행동심리학', 3, 40, '본304');
insert into `Lecture` values (167, '운영체제론', 3, 25, '본805');    
insert into `Lecture` values (234, '중급 영문법', 3, 20, '본201');
insert into `Lecture` values (239, '세법 개론', 3, 40, '본204');
insert into `Lecture` values (248, '빅데이터 개론', 3, 20, '본801');
insert into `Lecture` values (253, '컴퓨팅사고와 코딩', 2, 10, '본802');
insert into `Lecture` values (349, '사회복지 마케팅', 2, 50, '본301');

insert into `Register` (`regStdNo`, `regLecNo`) values ('20201126', 234);
insert into `Register` (`regStdNo`, `regLecNo`) values ('20201016', 248);
insert into `Register` (`regStdNo`, `regLecNo`) values ('20201016', 253);
insert into `Register` (`regStdNo`, `regLecNo`) values ('20201126', 239);
insert into `Register` (`regStdNo`, `regLecNo`) values ('20210216', 349);
insert into `Register` (`regStdNo`, `regLecNo`) values ('20210326', 349);
insert into `Register` (`regStdNo`, `regLecNo`) values ('20201016', 167);
insert into `Register` (`regStdNo`, `regLecNo`) values ('20220416', 349);

#실습 3-4
select * from Lecture;

#실습 3-5
select * from Student;

#실습 3-6
select * from Register;

#실습 3-7
select * from Student where stdYear = 3;

#실습 3-8
select * from Lecture where lecCredit = 2;

#실습 3-9
update `Register` set `regMidScore` = 36
    
    
#실습 3-10


#실습 3-11
select * from Register order by regTotalScore DESC;

#실습 3-12
select * from Register where regLecNO = 349
order by regTotalScore DESC;

#실습 3-13
select * from Lecture where lecTime >= 30;

#실습 3-14
select lecName, lecClass from Lecture;

#실습 3-15
select stdNO, stdName from Student;

#실습 3-16
select * from Student where stdAddress is NULL;

#실습 3-17
select * from Student where stdAddress like '부산%';

#실습 3-18
select * from Student as 

#실습 3-19

#실습 3-20

#실습 3-21

