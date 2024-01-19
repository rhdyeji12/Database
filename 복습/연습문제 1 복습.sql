
-- 실습 2-4
select * from bank_account;

-- 실습 2-5
select * from bank_customer;

-- 실습 2-6
 select * from bank_transaction;
 
 -- 실습 2-7
 select c_name, c_no from bank_customer;
 
 -- 실습 2-8
 select a_item_dist, a_item_name from bank_account;
 
 -- 실습 2-9
 select distinct a_item_dist, a_item_name from bank_account;
 
 -- 실습 2-10
 select * from bank_account where a_balance >= 1000000 limit 3;
 
 -- 실습 2-11
 select * from bank_customer where c_addr like '경기도%';
 
 -- 실습 2-12
 select * from bank_customer where c_dist = 2;
 
 -- 실습 2-13
 select * from bank_transaction where t_dist=1;
 
 -- 실습 2-14
 select * from bank_transaction where t_dist=2 order by t_amount desc;
 
 -- 실습 2-15
SELECT 
  FORMAT(SUM(t_amount), 0) AS '입금총합',
  FORMAT(ROUND(AVG(t_amount), 1), 1) AS '입금평균'
FROM 
  bank_transaction
WHERE 
  t_dist = 1;
  
  -- 실습 2-16
  select max(t_amount)as '큰금액', min(t_amount)as '작은금액' from bank_transaction where t_dist =2;
  
  -- 실습 2-17
  select * from bank_account where a_item_dist = 'S1' order by a_balance desc;
  
  -- 실습 2-18
  select * from bank_account where a_item_dist = 'S1' order by a_balance desc limit 1 ;
  
  -- 실습 2-19
  select * from bank_transaction where t_amount order by t_dist, t_amount desc;
  
  -- 실습 2-20
  select 
  count(case when t_dist = 1 then 1 end) as '입금 건수' , 
  count(case when t_dist = 2 then 1 end) as '출금 건수' ,
  count(case when t_dist = 3 then 1 end) as '조회 건수'
  from bank_transaction;
  
  SELECT 
	COUNT(if(`t_dist`=1, 1, null)) AS `입금 건수`,
	COUNT(if(`t_dist`=2, 1, null)) AS `출금 건수`,
	COUNT(if(`t_dist`=3, 1, null)) AS `조회 건수`
FROM `bank_transaction`;

-- 실습 2-12
select 
	t_dist,
	case 
        when t_dist = 1 then '입금'
        when t_dist = 2 then '출금'
        else '조회' end as 'type',
t_a_no, t_amount
from bank_transaction;

-- 실습 2-22
select t_dist, count(t_no) from bank_transaction group by t_dist;
  
-- 실습 2-23
select t_a_no, t_dist, sum(`t_amount`)  
from bank_transaction
where t_dist = 1
group by t_a_no;

-- 실습 2-24
select t_a_no, t_dist, sum(t_amount) as `합계`
from bank_transaction
where t_dist = 1
group by t_a_no
having `합계` >= 100000 order by `합계` desc;

-- 실습 2-25
select * from bank_account 
join bank_transaction;


-- 실습 2-26
select a_no `계좌번호` , a_item_name `계좌이름`, a_c_no `주민번호(사업자번호)`, c_name`고객명`, a_balance`현재잔액`
from bank_account a
join bank_customer b
on a.a_c_no = b.c_no;

-- 실습 2-27
select * from bank_transaction a
join bank_account b
on a.t_a_no = b.a_no;

-- 실습 2-28
SELECT 
	`t_no` AS `거래번호`,
	`t_a_no` AS `계좌번호`,
	`a_c_no` AS `고객번호(주민번호)`,
	`t_dist` AS `거래구분`,
	`t_amount` AS `거래금액`,
	`t_datetime` AS `거래일자`
FROM `bank_account` AS a
JOIN `bank_transaction` AS b
ON a.a_no = b.t_a_no;

-- 실습 2-29
select t_no, a_no, c_no, t_dist, a_item_name, c_name, t_amount, t_datetime
from bank_transaction a
join bank_account b
on a.t_a_no = b.a_no
join bank_customer c
on b.a_c_no = c.c_no
where t_dist = 1
order by t_amount desc;

-- 실습 2-30
SELECT 
	ANY_VALUE(`t_no`),
	ANY_VALUE(`a_no`),
	`c_no`,
	ANY_VALUE(`t_dist`) AS `구분`,
	ANY_VALUE(`a_item_name`),
	ANY_VALUE(`c_name`),
	COUNT(`t_no`) AS `거래건수`
FROM `bank_transaction` AS a
JOIN `bank_account`  as b ON a.t_a_no = b.a_no
JOIN `bank_customer` as c ON b.a_c_no = c.c_no
WHERE `t_dist` IN(1, 2) AND `c_dist` = 1
group by `c_no`
ORDER BY `구분`, `거래건수` DESC;




  
  

