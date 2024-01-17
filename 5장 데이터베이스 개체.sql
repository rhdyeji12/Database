# 날짜 : 2024/01/08
# 이름 : 공예지
# 내용 : 제 5장 데이터베이스 개체



###################
# 인덱스
###############

#실습 5-1
show index from `User1`;
show index from `User2`;
show index from `User2`;


#실습 5-2
create index `idx_user1_uid` on `User1` (`uid`);
analyze table `User1`

#실습 5-3
drop index `idx_user1_uid` on `User1`;

############
#뷰#
###########

#실습 5-4
create view `vw_user1` as (
	select `name`, `hp`, `age` from `USer1`
    );
    
    
create view `vw_user4_age_under 30` as (select * from `User4` where	`age` <30}
create view `vw_member_with_sales` as(
select
a. `uid` as `wlrdnjsdkdlel`
b. `ame`

#실습 5-5

#실습 5-7
delimiter $
create procedure proc-test1()
begin
	select * from `Member` ;
    select * from `Department`;
    end $$
	Delimiter;
    
    call proc_test1();

#실습 5-8
delimiter $$
create procedure proc_test2(in_userName VARCHAR(10))
begin
	select * from `Memger` where `name` =_userName;
end $$
delimiter ;

call proc_test('김유신');

delimiter $$
	create procedure proc_test3(in_pos varchar(10), in_dep tinyint)
    begin
		select * FROM `Member` where `pos`=_pos AND `dep`=_dep;
        end $$
        delimiter;
        
call proc_test3(`차장`, 101);

delimiter $$
create procedure proc_test4(in_pos varchar(10), out _count int)
begin 
	select count(*) into_count from `Member` where `pos`=_pos;
    end $$
    delimiter;
    
    call proc_test4('대리', @_count);
    select concat('_count : ', @_count)
    
    #실습 5-9
    delimiter $$
		create procedure proc_test5(IN_name CARCHAR(10))
    begin
		declare userId VARCHAR(10);
        select `uid` into userId from `Member` where `name` = _name;
        select * from `Sales` where `uid` = usderId;
        end $$
        delimiter;
	call proc_test5('김유신');
    
    delimiter $$
		create procedure proc_test6()
        begin
			declare num1 int;
            declare num2 int;
            
            set num1 = 1;
            set num2 = 2;
            
            if (num1 > num2) then
				select 'num1이 num2보다 크다.' as `결과2`;
                else
                select 'num1이 num2보다 작다.' as `결과2`;
			end if;
		end $$
		delimiter;
		
        call proc_test 6();
        
        delimiter $$
			create procedure proc_test7()
            begin
				declare sum int;
                declare num int;
                
                set sum = 0;
                set num = 1;
                
                while (num<=10) do
					set num = sum + num;
                    set num = num + 1;
				end while;
                
                select sum AS '1부터 10까지 합계';
                end $$
                delimiter;
                
                call proc_test7();
    
    



    