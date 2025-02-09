use [space]

select * from employee
select * from project

insert into project values
(20, 'Penny', 4649, 'Aukland'),
(21, 'Kile', 9376, 'Delhi'),
(22, 'Lpi', 3633, 'Chandigarh'),
(23, 'Queens', 8523, 'Chennai')

select * from employee inner join project on employee.id = project.pid
select * from employee inner join project on employee.id = project.pid

select * from employee e inner join project p on e.id = p.pid
select * from employee e inner join project p on e.id = p.pid

select e.id, e.name, e.age, e.salary, e.department, p.project_name, p.pincode, p.office from employee e inner join project p on e.id = p.pid

select e.id, e.name, e.age, e.salary, e.department, p.project_name, p.pincode, p.office from employee e inner join project p on e.id = p.pid where e.name like 'a%'

select e.id, e.name, e.age, e.salary, e.department, p.project_name, p.pincode, p.office from employee e inner join project p on e.id = p.pid where p.office = 'Chennai'

select e.id, e.name, e.age, e.salary, e.department, p.project_name, p.pincode, p.office into emp_j from employee e inner join project p on e.id = p.pid
select * from emp_j

select * from employee e full join project p on e.id = p.pid

select * from employee e RIGHT join project p on e.id = p.pid

select * from employee e LEFT join project p on e.id = p.pid

select * from employee

select * from project

select * from employee e cross join project

CREATE TABLE TechnologyDetails (
    CID INT,
    Technology VARCHAR(50),
    CountZone INT,
    SQL INT,
    Location VARCHAR(50)
);

INSERT INTO TechnologyDetails (CID, Technology, CountZone, SQL, Location) VALUES
(1, 'SQL', 567, NULL, 'South'),
(2, 'JAVA', 555, NULL, 'East'),
(3, 'PYTHON', 587, NULL, 'North'),
(4, 'excel', 996, NULL, 'West'),
(5, 'SQL', 756, NULL, 'South'),
(6, 'Java', 786, NULL, 'East'),
(7, 'Data Analyst', 564, NULL, 'North'),
(8, 'Java', 123, NULL, 'West'),
(9, 'SQL', 321, NULL, 'South'),
(10, 'JAVA', 456, NULL, 'East'),
(30, 'PYTHON', 654, NULL, 'North'),
(31, 'excel', 789, NULL, 'West'),
(32, 'SQL', 987, NULL, 'North'),
(33, 'Data Analyst', 562, NULL, 'West');

create table Company (CID int , technology varchar(255) ,Count int, zone varchar (255)) insert into Company values (1, 'SQL' , 567 , 'South'), (2 , 'JAVA' , 555, 'East'), (3 , 'PYTHON' , 587 , ' North'), (4 , 'excel' , 996 , 'West'), (5 , 'SQL' ,756 , 'South'), (6 , 'Java' , 786 , ' East'), (7 ,'Data Analyst' , 564 , ' North'), (8 ,'Java' , 123 , ' West'), (9 ,'SQL' ,321 , ' South'), (10 , 'JAVA' , 456 , ' East'), (30 , 'PYTHON' , 654, 'North'), (31 , 'excel' , 789 , 'West'), (32 , 'SQL ' , 987 , 'North'), (33 , 'Data Analyst' , 562 , ' West') select * from company

select * from employee e inner join project p on e.id=p.pid inner join company c on p.pid=c.cid

select e.id, e.name, e.age, e.department, e.city, p.project_name, p.pincode, p.office, c.technology, c.count, c.zone from employee e inner join project p on e.id = p.pid inner join company c on p.pid = c.cid where c.zone = 'south' select e.id, e.name, e.age, e.department, e.city, p.project_name, p.pincode, p.office, c.technology, c.count, c.zone into emp_join from employee e inner join project p on e.id = p.pid inner join company c on p.pid = c.cid select * from emp_join