create table 주문테이블(
주문번호 varchar(16) not null,
고객번호 varchar(16) not null,
주문일 varchar(8) not null,
주문가격 decimal(15,2) not null,
배송도시 varchar(256),
배송완료일 varchar(8),
결제금액 varchar(8),
할인금액 decimal(15,2) not null,
primary key( 주문번호 )
)

select * from 주문테이블

exec sp_rename '주문테이블.배송도시', '배송도시코드', 'column'
alter table 주문테이블 alter column 배송도시코드 int
select * from 주문테이블


create table employees
(
UID int not null,
primary key(uid)
)
create table salaries
(
emp_no int not null,
salary int not null,
from_date date not null,
to_date date,
foreign key(emp_no) references employees (uid) on delete cascade,
primary key(emp_no, from_date)
)


select * from employees
select * from salaries

insert into employees (UID) values (1002)
insert into salaries (emp_no, salary, from_date) values (1002, 40000000, '2017-07-01')
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES
(1002, 2000000, '2012-07-01', '2013-06-30'),
(1002, 3000000, '2013-07-01', '2014-06-30'),
(1002, 4000000, '2014-07-01', '2015-06-30')

select * from employees
select * from salaries
