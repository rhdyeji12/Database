use `shopping`;
insert into `Users` values ('user1', '김유신', '1976-01-21','M','010-1101-1976','kimys@nvaer.com', 0, 1, '서울', '2022-01-10 10:50:12'); 
insert into `Users` values ('user2', '계백', '1975-06-11','M','010-1102-1975', null, 1000, 1,'서울', '2022-01-10 10:50:12'); 
insert into `Users` values ('user3', '김춘추', '1989-05-30','M','010-1103-1989',null, 1200, 2, '서울', '2022-01-10 10:50:12'); 
insert into `Users` values ('user4', '이사부', '1979-04-13','M','010-2101-1979','leesabu@gmail.com', 2600, 1, '서울', '2022-01-10 10:50:12'); 
insert into `Users` values ('user5', '장보고', '1966-09-12','M','010-2104-1966','jangbg@naver.com', 9400, 4, '대전', '2022-01-10 10:50:12'); 
insert into `Users` values ('user6', '선덕여왕', '1979-07-28','M','010-3101-1979','queen@naver.com', 1600, 2, '대전', '2022-01-10 10:50:12'); 
insert into `Users` values ('user7', '강감찬', '1984-06-15','F','010-4101-1984','kang@daum.net', 800, 0, '대구', '2022-01-10 10:50:12'); 
insert into `Users` values ('user8', '신사임당', '1965-10-21','M','010-5101-1965','sinsa@gmail.com', 1500, 1, '대구', '2022-01-10 10:50:12'); 
insert into `Users` values ('user9', '이이', '1972-11-28','F','010-6101-1972','leelee@nate.com', 3400, 3, '브신', '2022-01-10 10:50:12'); 
insert into `Users` values ('user10', '허난설현', '1922-09-07','F','010-7103-1992', null, 4100, 3, '광주', '2022-01-10 10:50:12'); 

insert into `Points`(`userId`,`point`,`pointDesc`,`pointDate`) values ('user1', 1000, '회원가입 1000 적립', '2022-01-10 10:50:12');
insert into `Points` (`userId`,`point`,`pointDesc`,`pointDate`) values ('user1', 6000, '상품구매 5% 적립', '2022-01-10 10:50:12');
insert into `Points` (`userId`,`point`,`pointDesc`,`pointDate`) values ('user3', 2835, '상품구매 5% 적립', '2022-01-10 10:50:12');
insert into `Points`(`userId`,`point`,`pointDesc`,`pointDate`)  values ('user7', 3610, '상품구매 5% 적립', '2022-01-10 10:50:12');
insert into `Points` (`userId`,`point`,`pointDesc`,`pointDate`) values ('user5', 3000, '이벤트 응모 3000 적립', '2022-01-10 10:50:12');
insert into `Points`(`userId`,`point`,`pointDesc`,`pointDate`) values ('user2', 1000, '회원가입 1000 적립', '2022-01-10 10:50:12');
insert into `Points`(`userId`,`point`,`pointDesc`,`pointDate`) values ('user2', 2000, '이벤트 응모 2000 적립', '2022-01-10 10:50:12');
insert into `Points`(`userId`,`point`,`pointDesc`,`pointDate`) values ('user2', 2615, '상품구매 5% 적립', '2022-01-10 10:50:12');
insert into `Points` (`userId`,`point`,`pointDesc`,`pointDate`)values ('user3', 1500, '이벤트 응모 1500 적립', '2022-01-10 10:50:12');
insert into `Points`(`userId`,`point`,`pointDesc`,`pointDate`) values ('user6', 15840, '상품구매 2% 적립', '2022-01-10 10:50:12');

insert into `Sellers` values (10001 , '(주)다팔아', '02-201-1976', '정우성', '서울' );
insert into `Sellers` values (10002 , '판매의 민족', '02-102-1975', '이정재', '서울' );
insert into `Sellers` values (10003 , '멋남', '031-103-1989', '원빈', '경기' );
insert into `Sellers` values (10004 , '스타일살아', '032-201-1979', '이나영', '경기' );
insert into `Sellers` values (10005 , '(주)삼성전자', '02-214-1966', '장동건', '서울' );
insert into `Sellers` values (10006 , '복실이옷짱', '051-301-1979', '고소영', '부산' );
insert into `Sellers` values (10007 , '컴퓨존(주)', '055-401-1984', '유재석', '대구' );
insert into `Sellers` values (10008 , '(주)LG전자', '02-511-1965', '강호종', '서울' );
insert into `Sellers` values (10009 , '굿바디스포츠', '070-6101-1972', '조인성', '부산' );
insert into `Sellers` values (10010 , '누리푸드', '051-710-1992', '강동원', '부산' );

insert into `Categories` values (10, '여성의류패션');
insert into `Categories` values (11, '남성의류패션');
insert into `Categories` values (12, '식품.생필품');
insert into `Categories` values (13, '취미.반려견');
insert into `Categories` values (14, '홈.문구');
insert into `Categories` values (15, '자동차.공구');
insert into `Categories` values (16, '스포츠.건강');
insert into `Categories` values (17, '컴퓨터.가전.디지털');
insert into `Categories` values (18, '여행');
insert into `Categories` values (19, '도서');

SET SQL_SAFE_UPDATES = 0;
delete from `Products`;

insert into `Products` values ( 100101, 11, '10003', '반팔티 L~2XL', 869, 25000, 132,20);
insert into `Products` values ( 100110, 10, '10004', '트레이닝 통바지', 1602, 38000, 398,15);
insert into `Products` values ( 110101, 10, '10003', '신상 여성운동화', 160, 76000, 40,5 );
insert into `Products` values ( 120101, 12, '10010', '암소 1등급 구이셋트 1.2kg', default, 150000,87,15 );
insert into `Products` values ( 120103, 12, '10010', '바로구이 부채살 250g', default, 21000,61,10 );
insert into `Products` values ( 130101, 13, '10006', '[ANF] 식스프리 강아지사료', 58, 56000,142,0 );
insert into `Products` values ( 130112, 13, '10006', '중대형 사계절 강아지옷', 120, 15000,80,0 );
insert into `Products` values ( 141001, 14, '10001', '라떼 2인 소파/방수 패브릭', default, 320000,42,0 );
insert into `Products` values ( 170115, 17, '10007', '지포스 3080 그래픽카드', 28, 900000,12,12 );
insert into `Products` values ( 160103, 16, '10009', '치닝디핑 33BR 철봉', 32, 120000,28,0 );

insert into `Orders` values ('22010210001', 'user2', 52300, '서울시 마포구 121', 1,'2022-01-10 10:50:12');
insert into `Orders` values ('22010210002', 'user3', 56700, '서울시 강남구 21-1', 1,'2022-01-10 10:50:12');
insert into `Orders` values ('22010210010', 'user4', 72200, '서울시 강서구 큰대로 38', 2,'2022-01-10 10:50:12');
insert into `Orders` values ('22010310001', 'user5', 127000, '경기도 광주시 초월로 21', 1,'2022-01-10 10:50:12');
insert into `Orders` values ('22010310100', 'user1', 120000, '경기도 수원시 120번지', 0,'2022-01-10 10:50:12');
insert into `Orders` values ('22010410101', 'user6', 792000, '부산시 남구 21-1', 2,'2022-01-10 10:50:12');
insert into `Orders` values ('22010510021', 'user7', 92200, '부산시 부산진구 56 10층', 4,'2022-01-10 10:50:12');
insert into `Orders` values ('22010510027', 'user8', 112000, '대구시 팔달로 19', 3,'2022-01-10 10:50:12');
insert into `Orders` values ('22010510031', 'user10', 792000, '대전시 한밭로 24-1', 2,'2022-01-10 10:50:12');
insert into `Orders` values ('22010710110', 'user9', 94500, '광주시 충열로 11', 1,'2022-01-10 10:50:12');

insert into `Orderitems` (`orderNo`, `prodNo`,`itemPrice`, `itemDiscount`, `itemCount`) values ( 22010210001, '100110',38000 ,15 ,1 );
insert into `Orderitems` (`orderNo`, `prodNo`,`itemPrice`, `itemDiscount`, `itemCount`) values ( 22010210001, '100101',25000 ,20 ,1 );
insert into `Orderitems` (`orderNo`, `prodNo`,`itemPrice`, `itemDiscount`, `itemCount`) values ( 22010210002, '120103',21000 ,10 ,3 );
insert into `Orderitems` (`orderNo`, `prodNo`,`itemPrice`, `itemDiscount`, `itemCount`) values ( 22010310001, '130112', 15000, 0,1 );
insert into `Orderitems` (`orderNo`, `prodNo`,`itemPrice`, `itemDiscount`, `itemCount`) values ( 22010310001, '130101', 56000, 0,2 );
insert into `Orderitems` (`orderNo`, `prodNo`,`itemPrice`, `itemDiscount`, `itemCount`) values ( 22010210010, '110101', 76000, 5,1 );
insert into `Orderitems` (`orderNo`, `prodNo`,`itemPrice`, `itemDiscount`, `itemCount`) values ( 22010310100, '160103', 120000, 0, 1);
insert into `Orderitems` (`orderNo`, `prodNo`,`itemPrice`, `itemDiscount`, `itemCount`) values ( 22010410101, '170115', 900000, 12,1 );
insert into `Orderitems` (`orderNo`, `prodNo`,`itemPrice`, `itemDiscount`, `itemCount`) values ( 22010510021, '110101', 76000, 5, 1);
insert into `Orderitems` (`orderNo`, `prodNo`,`itemPrice`, `itemDiscount`, `itemCount`) values ( 22010510027, '130101', 56000, 0, 2);
insert into `Orderitems` (`orderNo`, `prodNo`,`itemPrice`, `itemDiscount`, `itemCount`) values ( 22010510021, '100101', 25000, 20,1 );
insert into `Orderitems` (`orderNo`, `prodNo`,`itemPrice`, `itemDiscount`, `itemCount`) values ( 22010510031, '170115', 900000, 12,1 );
insert into `Orderitems` (`orderNo`, `prodNo`,`itemPrice`, `itemDiscount`, `itemCount`) values (22010710110 , '120103', 21000, 10,5 );

SET SQL_SAFE_UPDATES = 0;
delete from `Carts`;

insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user1', '100101' , 1, '2022-01-10 10:50:12'); 
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user1', '100110' , 2, '2022-01-10 10:50:12'); 
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user3', '120103' , 1 , '2022-01-10 10:50:12'); 
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user4', '130112' , 1 , '2022-01-10 10:50:12'); 
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user5', '130101' , 1 , '2022-01-10 10:50:12'); 
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user2', '110101' , 3 , '2022-01-10 10:50:12'); 
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user2', '160103' , 1 , '2022-01-10 10:50:12'); 
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user2', '170115' , 1 , '2022-01-10 10:50:12'); 
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user3', '110101' , 1 , '2022-01-10 10:50:12'); 
insert into `Carts` (`userId`, `prodNo`, `cartProdCount`, `cartProdDate`) values ('user6', '130101' , 1 , '2022-01-10 10:50:12'); 

#문제 1
select userName, prodName, cartProdCount 
from Carts a
join Products b
on a.prodNo = b.prodNo
join Users c
on c.userId = a.userId
where cartProdCount >= 2;

#문제 2
select prodNo, cateNo, prodName, prodPrice, sellerManager, sellerPhone 
from Products a
join Sellers b
on a.sellerNo = b.sellerNo;

#문제 3
 select a.userId, userName, userHp, coalesce(sum(userPoint+point),0) as '총합'
 from Users a
 left join Points b
 on a.userId = b.userId
 GROUP BY a.userId, userName, userHp;
 
 select 
	a.`userId`, 
	`userName`, 
	`userHp`, 
	`userPoint`, 
	IF(SUM(`point`) IS NULL, 0, SUM(`point`)) as `적립총합`
from `Users` as a
left join `Points` as b on a.userId = b.userId
group by a.`userId`;
 
 
 #문제 4
 select orderNo, a.userId, userName, orderTotalPrice, orderdate
 from Orders a
 join Users b
 on a.userId = b.userId
 where orderTotalPrice >= 100000 
 order by orderTotalPrice DESC, userName ASC;
 
 #문제 5 (보류)
 #select orderNo, c.userId, userName, prodName, orderDate

#문제 6
select prodNo, prodName, prodPrice, prodDiscount, floor(prodPrice*(1-prodDiscount/100)) as '할인된 가격'
from Products;
 
 #문제 7 고소영이 판매하는 모든 상품의 상품번호, 상품명, 상품가격, 재고수량, 판매자이름
select prodNo, prodName, prodPrice, prodStock, sellerBizName
from Products a
join Sellers b
on a.sellerNo = b.sellerNo
where `sellerManager` = '고소영';

#문제 8 아직 상품을 판매하지 않은 판매자 번호, 판매자 상호, 판매자 이름, 판매자 연락처

#문제 9 

#문제 10

 








