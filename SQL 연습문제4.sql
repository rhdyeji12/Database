#날짜 : 2024/01/11
#이름 : 공예지
#내용 : SQL 연습문제4

#실습 4-1
CREATE DATABASE `BookStore`;
CREATE USER 'bookstore'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `BookStore`.* TO 'bookstore'@'%';
GRANT ALL PRIVILEGES ON `BookStore`.* TO 'rhdyeji12'@'%';
FLUSH PRIVILEGES;

#실습 4-2
create table `Customer`(
	`custId`	int auto_increment not null primary key,
	`name`		varchar(10) not null,
	`address`	varchar(20) default null,
	`phone`		varchar(13) default null
    );
    
    create table `Product` (
		`bookId`	int not null primary key,
		`bookname`	varchar(20) not null,
        `publisher`	varchar(20) not null,
        `price`		int default null
        );
	
    create table `Order`(
		`orderId`	int auto_increment not null primary key, 
        `custId`	int not null,
        `bookId`	int not null,
        `salePrice`	int not null,
        `orderDate`	date not null
        );
        
	insert into `Customer` values (null, '박지성', '영국 맨체스타', '000-5000-0001');
	insert into `Customer` values (null, '김연아', '대한민국 서울', '000-6000-0001');
    insert into `Customer` values (null, '장미란', '대한민국 강원도', '000-7000-0001');
    insert into `Customer` values (null, '추신수', '미국 클리블랜드', '000-8000-0001');
    insert into `Customer` values (null, '박세리', '대한민국 대전', null);

	insert into `Product` values (1, '축구의 역사', '굿스포츠', 7000);
	insert into `Product` values (2, '축구아는 여자', '나무수', 13000);
    insert into `Product` values (3, '축구의 이해', '대한미디어', 22000);
    insert into `Product` values (4, '골프 바이블', '대한미디어', 35000);
    insert into `Product` values (5, '피겨 교본', '굿스포츠', 8000);
    insert into `Product` values (6, '역도 단계별기술', '굿스포츠', 6000);
    insert into `Product` values (7, '야구의 추억', '이상미디어', 20000);
    insert into `Product` values (8, '야구를 부탁해', '이상미디어', 13000);
    insert into `Product` values (9, '올림픽 이야기', '삼성당', 7500);
    insert into `Product` values (10, 'Olympic Champions', 'Pearson', 13000);

	insert into `Order` values (null, 1, 1, 6000, '2014-07-01');
    insert into `Order` values (null, 1, 3, 21000, '2014-07-03');
    insert into `Order` values (null, 2, 5, 8000, '2014-07-03');
    insert into `Order` values (null, 3, 6, 6000, '2014-07-04');
    insert into `Order` values (null, 4, 7, 20000, '2014-07-05');
    insert into `Order` values (null, 1, 2, 12000, '2014-07-07');
    insert into `Order` values (null, 4, 8, 13000, '2014-07-07');
    insert into `Order` values (null, 3, 10, 12000, '2014-07-08');
    insert into `Order` values (null, 2, 10, 7000, '2014-07-09');
    insert into `Order` values (null, 3, 8, 13000, '2014-07-10');
    

#실습 4-4
select `custId`, `name`, `address` from customer;

#실습 4-5
select `bookname`, `price` from product;

#실습 4-6
select `price`, `bookname` from product;

#실습 4-7
select * from product;

#실습 4-8
select `publisher` from product;

#실습 4-9
select distinct `publisher` from product;

#실습 4-10
select * from product where price >20000;

#실습 4-11
select * from product where price <20000;

#실습 4-12
select * from product where price >10000 and price <=20000;

#실습 4-13
select `bookid`, `bookname`, `price` from product where price >= 15000 and price <=30000;

#실습 4-14
select * from product where bookId in(2,3,5);

#실습 4-15
select * from product where bookid%2 = 0;

#실습 4-16
select * from customer where name like '박%'; 

#실습 4-17
select * from customer where address like '대한민국%';

#실습 4-18
select * from customer where phone is not null;

#실습 4-19
select * from product where publisher in('굿스포츠','대한미디어');

#실습 4-20
select `publisher` from product where bookname = '축구의 역사';

#실습 4-21
select `publisher` from product where bookname like'%축구%';

#실습 4-22
select * from product where bookname like '_구%';

#실습 4-23
select * from product where bookname like '%축구%' and price >=20000; 

#실습 4-24
select * from product order by bookname; 

#실습 4-25
select * from product order by price, bookname asc;

#실습 4-26
select * from product order by price desc, publisher asc;

#실습 4-27
select * from product order by price desc limit 3;

#실습 4-28
select * from product order by price asc limit 3;

#실습 4-29
select sum(salePrice)"총판매액" from `order`;  

#실습 4-30
select sum(salePrice)  as"총판매액", 
		avg(salePrice) as"평균값", 
        min(salePrice) as"최저", 
        max(salePrice) as"최고"
	from `Order`;
   
#실습 4-31
select count(orderId)"판매건수" from `Order`;

#실습 4-32


#실습 4-33
#실습 4-34
#실습 4-35
#실습 4-36
#실습 4-37
#실습 4-38
#실습 4-39
#실습 4-40
#실습 4-41
#실습 4-42
#실습 4-43
#실습 4-44
#실습 4-45
#실습 4-46
