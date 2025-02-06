-- use space
-- select * from employee

-- insert into employee (name, age, gender) values
-- ('Mark',32,'Male'),
-- ('Lucie',43,'Male')

-- select * from employee

-- update employee set id = 13 where name = 'Mark'
-- update employee set id = 14 where name = 'Lucie'

-- alter table employee alter column id int not null

-- alter table employee alter column id int null

-- insert into employee (name, age, gender) VALUES
-- ('Rohan',34,'male')

-- select * from employee

-- sp_help 'dbo.employee'

-- update employee set salary = 70000, department = 'HR', City = 'Oslo', country = 'Norway' where id = 13
-- update employee set salary = 70000, department = 'Marketing', City = 'Seattle', country = 'USA' where id = 14
-- update employee set salary = 70000, department = 'IT', City = 'Pune', country = 'India' where name = 'Rohan'

-- select * from employee

-- insert into employee VALUES
-- (16,'Ankita',7,'Female',35000,'Accounts','Bhopal','India')

-- alter table employee add CONSTRAINT C_age check (age between 15 and 60)

-- update employee set age = 27 where name = 'Ankita'

-- insert into employee values (17,'Jhonny',15,'Male',45000,'IT','Mumbai','India')

-- alter table employee drop CONSTRAINT C_age

-- alter table empoloyee add CONSTRAINT c_sal check
-- (salary > 2000 and age > 7)

-- alter table employee add CONSTRAINT df_country default 'India' for country

-- insert into employee (id, name, age, gender) VALUES
-- (17, 'Himanshu', 29, 'Male')

-- select * from employee

-- update employee set country = 'Australia' where name = 'Himanshu'

-- sp_rename 'employee.name', 'FirstName'

-- select * from employee

-- sp_rename 'employee.firstname', 'name'

-- select * from employee

-- use space

-- select * from employee

-- update employee set id = 18 where name = 'Himanshu'

-- alter table employee add CONSTRAINT uni_id UNIQUE(id)

-- insert into employee values (2, 'Saurav', 29, 'Male', 54000, 'HR', 'Jaipur', 'India')
-- insert into employee values (19, 'Saurav', 29, 'Male', 54000, 'HR', 'Jaipur', 'India')

-- alter table employee drop CONSTRAINT uni_id

-- SELECT *
-- FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS

-- select * from employee

-- alter table employee alter column id int not null

-- update employee set id = 19 where name ='Rohan'

-- alter table employee add CONSTRAINT pri_k_id PRIMARY key(id)

-- update employee set id = 15 where name ='Rohan'

-- insert into employee values (18,'Priya',39,'Female',79000,'Account','Chennai','India')

-- alter table employee drop constraint pri_k_id

-- alter table employee alter column name varchar(255) not null

-- alter table employee add constraint pri_k_name primary key(name)

-- select * from employee

-- alter table employee drop constraint pri_k_name

-- alter table employee add constraint pri_k_id primary key(id)

-- create table project( Pid int, Project_name varchar(255), pincode int, office varchar(255))

-- select * from project


-- insert into project values 
-- (1,'Kite',8643,'Seattle'),
-- (2,'Leo',5553,'Oslo'),
-- (3,'Griffy',6783,'Noida'),
-- (4,'Tim',5564,'Gurgaon'),
-- (5,'Yen',5532,'Bangalore'),
-- (6,'Den',6789,'Aukland'),
-- (7,'Bowl',5643,'New York'),
-- (8,'Pen',5677,'Chennai'),
-- (9,'FOS',3457,'Mumbai'),
-- (10,'OLB',3345,'Tokyo'), 
-- (11,'Version',6677,'Noida'),
-- (12,'Sand',6789,'Los Angles'),
-- (13,'Raf',8853,'Sydney')

-- select * from employee	   
-- select * from project

-- delete employee where id = 17
 
-- update employee set id = 17 where name = 'Himanshu'
-- update employee set id = 18 where name = 'Saurav'

-- alter table project add constraint for_key foreign key(pid) references employee(id)

-- insert into project values (20,'Shim',3648, 'Delhi')

-- insert into employee values (20,'Mark',39, 'Male',67000, 'Marketing','New Jersy', 'USA')

-- insert into project values (21,'Yen',3648,'Kolkata')
-- insert into employee values (21,'Sherry',39, 'Female',67000, 'Marketing','Ohio', 'USA')

-- select * from employee

-- DELETE from employee where id = 21
-- DELETE from project where pid = 21


-- DELETE from employee where id = 18

-- alter table project drop constraint for_key 