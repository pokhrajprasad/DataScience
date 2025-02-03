-- create database space
-- use space

-- create table employee
-- (
-- id int, 
-- name varchar(255), 
-- age int, 
-- gender varchar(255), 
-- salary int, 
-- department varchar(255), 
-- city varchar(255)
-- )

--drop table employee

-- select * from employee

-- insert into employee VALUES
-- (1, 'Anuj', 32, 'Male', 40000, 'It', 'Delhi')

-- insert into employee VALUES
-- (2, 'Anjali', 24, 'Female', 45000, 'HR', 'Dehradun'),
-- (3, 'Rajat', 30, 'Male', 35000, 'Accounts', 'Jaipur'),
-- (4, 'Riya', 27, 'Female', 55000, 'It', 'Chennai'),
-- (5, 'Rahul', 32, 'Male', 45000, 'HR', 'Pune'),
-- (6, 'Gopal', 30, 'Male', 60000, 'It', 'Bhopal'),
-- (7, 'Vini', 27, 'Female', 44000, 'Accounts', 'Chennai'),
-- (8, 'Badal', 40, 'Male', 59000, 'It', 'Kochi')

-- select id, name, age  from employee

-- insert into  employee VALUES
-- (9, 'Abhay', 39, 'Male', 57000, 'Marketing', 'Bhopal')

-- select distinct * from employee

-- select top(2) * from employee

-- select top(3) * from employee

-- select * from employee where gender = 'Male'

-- select * from employee where department = 'HR'

-- select * from employee where id = 7

-- delete from employee where id = 8

-- select * from employee where name = 'Abhay'

-- delete top(2) from employee where name = 'Abhay'

-- delete from employee where name = 'Abhay'

-- select * from employee

-- insert into employee (id, name, age) VALUES
-- (8, 'Amit', 48),
-- (9, 'kunal', 32),
-- (11, 'Shivani', 50),
-- (12, 'Rani', 26)

-- insert into employee (id, name, age, gender) VALUES
-- (10, 'Tanuj', 40, 'Male')

-- update employee set salary = 56000 where name = 'Anuj'
-- update employee set department = 'Marketing' where id = 7

-- select * from employee

-- update employee set gender = 'Male', salary = 72000, department = 'IT', city = 'Delhi' where name = 'Amit'
-- update employee set gender = 'Male', salary = 62000, department = 'Accounts', city = 'Mumbai'where name = 'kunal'

-- update employee set name = 'Kunal' where id =9

-- update employee set gender = 'Female' where gender is null

-- update employee set salary = 85000, department = 'HR', city = 'Bhopal' where name = 'Shivani'
-- update employee set salary = 32000, department = 'IT', city = 'Surat' where name = 'Rani'

-- update employee set salary = 25000, department = 'IT', city = 'Lucknow' where id = 10

-- select * from employee

-- alter table employee add country varchar(255)

-- update employee set country = 'India' where country is null

-- alter table employee add phone int, email varchar(255)

-- alter table employee drop column phone
-- alter table employee drop column email

-- select * into emp1 from employee
-- select * into emp_male from employee where gender = 'Male'
-- select * into emp_female from employee where gender = 'Female'
-- select id, name, age, gender into emp2 from employee

-- select * from emp1
-- select * from emp_male
-- select * from emp_female
-- select * from emp2

-- delete from emp1 where name = 'Anuj'
-- delete from emp1 where gender = 'male'

-- truncate table emp1

-- drop table emp2
-- drop table emp_female

-- create table #zoo
-- (
--     id int,
--     name varchar(255),
--     location varchar(255)
-- )

-- select * from #zoo

-- insert into #zoo VALUES
-- (1,'Kite','Lucknow'),
-- (2,'Del','Delhi')

-- select * into #info from employee

-- select * from #info

-- create table school
-- (
--     id int,
--     name varchar(255),
--     science int,
--     maths int,
--     english int
-- )

-- insert into school VALUES
-- (1,'Adam',88,56,67),
-- (2,'John',89,78,67),
-- (3,'Marry',67,56,99),
-- (4,'Clyde',78,78,89),
-- (5,'Arun',86,99,76),
-- (6,'Shivanshu',75,76,89),
-- (7,'Nipun',45,88,76),
-- (8,'Romel',67,55,66),
-- (9,'Vijit',89,78,56),
-- (10,'Rasik',90,88,67)

-- select * from school