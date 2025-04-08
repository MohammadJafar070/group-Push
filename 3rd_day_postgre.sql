/* 1 */
create table states (
state_id int primary key,
state_name varchar(50)
)

create table students1(
sid int primary key,
sname varchar(40),
state_id int,
foreign key(state_id) references states(state_id)
)

insert into states values (1,'karnataka');
insert into states values (2,'kerala');

insert into students1 values(101,'ram',2);
insert into students1 values(102,'raju',1);

select * from students1
select * from states

/* 2 */
create table country(
count_id int primary key,
count_name varchar(40)
)

create table states1(
state_id int primary key,
state_name varchar(40),
count_id int,
foreign key(count_id) references country(count_id)
)

create table city(
city_id int primary key,
city_name varchar(40),
state_id int,
foreign key(state_id) references states1(state_id)
)

create table employee2(
e_id int,
e_name varchar(40),
city_id int,
foreign key(city_id) references city(city_id)
)

insert into country values (1,'India')

insert into states1 values (1,'karnataka',1);
insert into states1 values (2,'Tamil Nadu',1);
insert into states1 values (3,'Kerala',1);

insert into city values (1,'bangalore',1);
insert into city values (2,'Hydrabad',2);
insert into city values (3,'Pune',3);

insert into employee2 values (1,'Tallin',1);
insert into employee2 values (2,'Rakshita',2);
insert into employee2 values (3,'Soundarya',3);

select * from country
select * from states1
select * from city
select * from employee2

/* 3 */
create country1 (
count_id int primary key,
count_name varchar(40)
)

create table state2 (
state_id int primary key,
state_name varchar(40),
count_id int,
foreign key (count_id) references country1(count_id)
)

create table subject (
subject_id int primary key,
subj_name varchar(40)
)

create table students5 (
student_id int,
stud_name varchar(40),
state_id int,
subject_id int,
foreign key(state_id) references state2(state_id),
foreign key(subject_id) references subject(subject_id)
)

insert into country1 values (1,'India');

insert into state2 values (1,'karnataka',1);