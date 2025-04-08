create table employee6 (
eid int,
ename varchar(40),
salary numeric(10,2),
dept varchar(50),
age int
)

insert into employee6 values (2,'Bob', 60000, 'IT', 30);
insert into employee6 values (3,'Charlie', 70000, 'Finance', 35);
insert into employee6 values (4,'David', 60000, 'IT', 28);
insert into employee6 values (5,'Eve', 80000, 'HR', 40);
insert into employee6 values (6,'Anil', 50000, 'IT', 32);
insert into employee6 values (7,'Alice', 75000, 'IT', 25);
insert into employee6 values (8,'Mick', 60000, 'HR', 35);
insert into employee6 values (9,'Bruce', 55000, 'Finance', 22);
insert into employee6 values (1,'Al%ce', 65000, 'IT', 25);
insert into employee6 values (10,'Mic', null, 'IT', 25);


select * from employee6;
select * from employee6 where salary>55000 order by salary asc;
select * from employee6 where eid not in(3, 4, 6);
select * from employee6 limit 2 offset 5;

-- assignment
select * from employee6 where salary is not null order by salary desc limit 1;
select * from employee6 order by salary desc limit 1 offset 2;