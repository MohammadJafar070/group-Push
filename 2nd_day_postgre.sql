/* 1 */
CREATE TABLE employee (emp_name CHAR(25), emp_ID INT , emp_address TEXT, email VARCHAR(50), date_of_joining DATE, salary INT);

select * from employee

INSERT INTO employee (emp_name, emp_ID, emp_address, email, date_of_joining, salary) VALUES
('John Doe', 101, '123 Main St, New York, NY', 'john.doe@email.com', '2020-05-15', 60000),
('Alice Smith', 102, '456 Elm St, Los Angeles, CA', 'alice.smith@email.com', '2019-08-20', 75000),
('Michael Johnson', 103, '789 Oak St, Chicago, IL', 'michael.j@email.com', '2021-03-10', 58000),
('Emily Davis', 104, '321 Pine St, Houston, TX', 'emily.d@email.com', '2018-11-05', 82000),
('Robert Brown', 105, '654 Cedar St, Phoenix, AZ', 'robert.b@email.com', '2017-07-25', 91000),
('Jessica Wilson', 106, '987 Birch St, Denver, CO', 'jessica.w@email.com', '2022-09-12', 54000),
('David Martinez', 107, '741 Maple St, Miami, FL', 'david.m@email.com', '2016-02-18', 97000),
('Sophia Anderson', 108, '159 Spruce St, Seattle, WA', 'sophia.a@email.com', '2023-01-30', 50000),
('Daniel Thomas', 109, '258 Ash St, Dallas, TX', 'daniel.t@email.com', '2019-06-14', 68000),
('Olivia Hernandez', 110, '369 Willow St, Atlanta, GA', 'olivia.h@email.com', '2020-10-07', 72000);

/* 2 */
create table customer(customer_id int, customer_name char(25), customer_address text)
/* 3 */
create table numbers(id int, mobile_number bigint, pi_value decimal(5,2), salary real)

insert into numbers(id, mobile_number, pi_value, salary) values (1, 9876543210, 12.43, 500000.45),
(100, 10000000000, 12345.67, 123.456),
(250, 99999999999, 98765.43, 987.654),
(500, 50000000000, 54321.99, 321.987),
(750, 25000000000, 67890.12, 654.321),
(1000, 75000000000, 13579.24, 987.123);

select * from numbers

/* 4 */
create table datetime (joining date, timings time, started timestamp);

INSERT INTO datetime (joining, timings, started) VALUES
('2025-04-04', '09:00:00', '2025-04-04 09:00:00'),
('2024-12-31', '14:30:15', '2024-12-31 14:30:15'),
('2023-06-15', '08:45:30', '2023-06-15 08:45:30'),
('2022-01-01', '00:00:00', '2022-01-01 00:00:00'),
('2021-10-20', '23:59:59', '2021-10-20 23:59:59');

select * from datetime
/* 5 */
create table homeruns (players int, nam char(25), runs integer[]);

insert into homeruns values (12,'jadu','{12, 23, 34}');

select * from homeruns

/* 6 */
create table nul_values_not (
	sip_id int not null, 
	enumt varchar(30), 
	salary int default 1000,
	age int check (age between 18 and 25)	
);

insert into nul_values_not(sip_id, enumt, salary, age) values (101, 'bahubali', 100000, 16);

select * from nul_values_not

/* 7 */
create table employee1 (
employee_id int primary key,
employee_name char(25) not null,
email varchar(50) unique,
age int check (age between 18 and 25),
city char(15) default 'Bangalore'
);

insert into employee1 (employee_id, employee_name, email, age, city) values (123, 'Tallin', 'tallin@gmail.com', 22, 'Bangalore')

select * from employee1

/* 8 */
create table customer1 (
customer_id int primary key,
customer_name char(25) not null,
email varchar(25) unique,
address char(15) not null default 'Chennai',
age int check (age between 18 and 25)
);

insert into customer1 (customer_id, customer_name, email, address, age) values (123, 'Tallin', 'tallin@gmail.com','hydrabad',20);

select * from customer1