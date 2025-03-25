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

--------------------------------------------------------------------------------------------------
-- WHAT IS THE DIFFENRENCE B/W VARCHAR & NVARCHAR?

-- In SQL Server, both VARCHAR and NVARCHAR are data types used to store text, but they have some key differences primarily related to how they store the data and the types of data they are intended to handle:
-- 1. Character Encoding
-- VARCHAR: Stands for Variable Character. It uses non-Unicode character encoding (such as ASCII) and is designed to store standard characters that fit within the extended ASCII set. Each character in a VARCHAR field typically requires one byte of storage, depending on the collation (character set and rules for text comparison and sorting) used by the database.
-- NVARCHAR: Stands for National Variable Character. It uses Unicode, specifically UTF-16, allowing it to store any character from any language supported by Unicode. Each character in an NVARCHAR field requires two bytes of storage. This broader support makes NVARCHAR ideal for multilingual databases.
-- 2. Storage Size
-- VARCHAR: It can store up to 8000 characters. Because it uses single-byte characters for the most common character sets, it's more storage-efficient when handling data that is exclusively in the English language or contains no special characters outside the ASCII set.
-- NVARCHAR: It can also store up to 4000 characters (or up to 8000 bytes). Because each character uses two bytes, even if the character could be stored in one byte using VARCHAR.
-- 3. Usage
-- VARCHAR: Should be used when you are certain your data will not need to include characters from multiple languages or special symbols not covered by the ASCII set. It's more space-efficient in these cases, which can also lead to performance benefits in terms of storage and speed when handling large volumes of text data.
-- NVARCHAR: Should be used when dealing with international data that might include multiple languages. It's essential in global applications where various locales, character sets, and special characters are expected.
-- 4. Performance
-- VARCHAR: Generally faster with operations in databases configured with default ASCII collation because it uses less space and the operations are inherently less complex due to the simpler encoding.
-- NVARCHAR: Can be slower due to double the storage requirement per character, which can impact performance on large text processing operations. However, the performance hit is often considered negligible compared to the advantage of supporting international character sets.
-- 5. Collation and Comparison
-- VARCHAR and NVARCHAR data types can have different collations, which can affect how string comparison and sorting operations are performed. Care must be taken when comparing strings of these two types directly due to potential collation conflicts.
---------------------------------------------------------------------------------------------------

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

---------------------------------------------------------------------------------------------------------
-- DELETE FUNCTIONS LIKE TRUNCATE WHEN WHERE CLAUSE IS REMOVED.

-- DELETE Command without WHERE Clause
-- Logs: DELETE is a DML (Data Manipulation Language) operation that logs each row deletion individually in the transaction log. This means it can generate a lot of log data and therefore can be slow for large tables because it processes each row individually.
-- Transaction Support: Because it logs all changes, you can roll back a DELETE operation if it's performed within a transaction. This provides flexibility in transaction management.
-- Trigger Execution: DELETE operations will fire any delete triggers defined on the table, which can be used to enforce business rules or maintain data integrity.
-- Retention of Table Structure and Properties: DELETE retains all table structures, indexes, constraints, and properties. It only removes the data.
-- TRUNCATE Command
-- Logs: TRUNCATE is a DDL (Data Definition Language) operation that deallocates the data pages used by the table and logs only the deallocations. This means it uses fewer resources and is much faster than DELETE for removing all rows from a large table.
-- Transaction Support: TRUNCATE can be part of a transaction and can be rolled back provided it has not been committed yet.
-- Trigger Execution: Standard TRUNCATE does not fire delete triggers because it does not log individual row deletions.
-- Reset of Identity Values: TRUNCATE resets any identity column specifications to the seed value specified or the default. This is not the case with DELETE, where identity column values continue incrementing from the last used value.
-- Permissions: TRUNCATE requires at least ALTER table permissions, whereas DELETE only needs DELETE permissions.
---------------------------------------------------------------------------------------------------------


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

---------------------------------------------------------------------------------------------
-- In SQL Server, temporary tables come in two primary forms: local temporary tables and global temporary tables. The lifespan of each type of temporary table is governed by different rules:

-- 1. Local Temporary Tables
-- Syntax: Local temporary tables are created using a single hash symbol as a prefix (e.g., #TableName).
-- Lifespan: A local temporary table is automatically dropped when the session that created it ends, or the connection to the SQL Server is closed. Additionally, if created inside a stored procedure or batch, they are dropped automatically at the end of the procedure or batch.
-- Scope: These tables are visible only to the connection that created them and cannot be accessed by other sessions or connections.

-- 2. Global Temporary Tables
-- Syntax: Global temporary tables are created using double hash symbols as a prefix (e.g., ##TableName).
-- Lifespan: A global temporary table is dropped automatically when the last session that is using it ends. This means it remains in the database as long as there is at least one active session referencing it.
-- Scope: These tables are visible to all sessions and connections. Any user or connection can query a global temporary table as long as it exists.
------------------------------------------------------------------------------------------------------

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