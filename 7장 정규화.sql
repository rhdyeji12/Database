# 날짜 : 2024/01/18
# 이름 : 공예지
# 내용 : 7장 정규화 실습하기

create database Book;
use Book;
create table `Bookorder` (
`orderNo`       int,
`orderDate`		date,
`userId`		varchar(10),
`userName`  	varchar(10),
`userAddr`		varchar(50),
`bookNo`		int,
`bookName`		varchar(20),
`count` 		int,
`price`			int
);

insert into `BookOrder` values ( 10001, now(), 'a101' , '김유신','김해' , 101, '프로그래밍', 1, 28000 );
insert into `BookOrder` values ( 10002, now(), 'a102' , '김춘추', '경주', 101,'프로그래밍',1 , 28000);
insert into `BookOrder` values ( 10002, now(), 'a102' , '김춘추', '경주', 102,'자료구조', 2,32000);
insert into `BookOrder` values ( 10003, now(), 'a103' , '장보고', '완도', 102,'자료구조', 2, 32000);
insert into `BookOrder` values ( 10004, now(), 'a104' , '강감찬', '서울', 110,'데이터베이스', 1, 25000);
insert into `BookOrder` values ( 10005, now(), 'a105' , '이순신', '서울', 110,'데이터베이스', 1,25000 );
insert into `BookOrder` values ( 10005, now(), 'a105' , '이순신', '서울', 102,'자료구조', 1, 16000 );


insert into `UserOrder` values (10001, now(), 'a101');
insert into `UserOrder` values (10002, now(), 'a102');
insert into `UserOrder` values (10003, now(), 'a103');
insert into `UserOrder` values (10004, now(), 'a104');
insert into `UserOrder` values (10005, now(), 'a105');


insert into `Order` values (10001, 101, 1, 28000);
insert into `Order` values (10002, 101, 1, 28000);
insert into `Order` values (10002, 102, 2, 32000);
insert into `Order` values (10003, 102, 2, 32000);
insert into `Order` values (10004, 110, 1, 25000);
insert into `Order` values (10005, 110, 1, 25000);
insert into `Order` values (10004, 102, 1, 16000);


insert into `Book` values (101, '프로그래밍');
insert into `Book` values (102, '자료구조');
insert into `Book` values (110, '데이터베이스');


insert into `User` values ('a101', '김유신', '김해');
insert into `User` values ('a102', '김춘추', '경주');
insert into `User` values ('a103', '장보고', '완도');
insert into `User` values ('a104', '강감찬', '서울');
insert into `User` values ('a105', '이순신', '서울');


