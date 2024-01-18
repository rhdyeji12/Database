
# 날짜 : 2024/01/18
# 이름 : 공예지
# 내용 : 8장 트랜잭션과 병행제어 실습하기

# 실습 8-1
-- 트렌젝션 시작
start transaction;
select * from `bank_account`;
update `bank_account` set
		`a_balance` = `a_balance` - 10000
	where 
		`a_no` = '101-11-1001';

update `bank_account` set
		`a_balance` = `a_balance` +10000
	where
		`a_no` = '101-11-1212';
        
commit;
select * from `bank_account`;

# 실습 8-2  
-- 트랜잭션 rollback
start transaction;
update `bank_account` set
		`a_balance` = `a_balance` -10000
	where	
		`a_no` = '101-11-1001';
update `bank_account` set
			`a_balance` = `a_balance` +10000
	where
		`a_no` = '101-11-1212';
        
 select*from `bank_account`;
 rollback;
 select*from `bank_account`;
 
 # 실습 8-3 커밋 off
 select @@autocommit;
 set autocommit = 0;
 update `bank_account` set
			`a_balance` = `a_balance` - 10000
		where
			`a_no` = '101-11-1001';
            
select * from `bank_account`;
 
 
