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